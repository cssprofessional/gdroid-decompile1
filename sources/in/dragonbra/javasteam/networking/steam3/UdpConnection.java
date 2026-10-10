package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.enums.EUdpPacketType;
import in.dragonbra.javasteam.generated.ChallengeData;
import in.dragonbra.javasteam.generated.ConnectData;
import in.dragonbra.javasteam.util.NetHelpers;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class UdpConnection extends Connection {
    private static final int AHEAD_COUNT = 3;
    private static final int RESEND_COUNT = 3;
    private static final long RESEND_DELAY = 3000;
    private static final long TIMEOUT_DELAY = 60000;
    private InetSocketAddress currentEndPoint;
    private Map<Integer, UdpPacket> inPackets;
    private int inSeq;
    private int inSeqAcked;
    private int inSeqHandled;
    private NetLoop netLoop;
    private Thread netThread;
    private long nextResend;
    private final List<UdpPacket> outPackets = new ArrayList();
    private int outSeq;
    private int outSeqAcked;
    private int outSeqSent;
    private int remoteConnId;
    private final DatagramSocket sock;
    private volatile AtomicReference<State> state;
    private long timeout;
    private static final Logger logger = LogManager.getLogger(UdpConnection.class);
    private static int SOURCE_CONN_ID = 512;

    public enum State {
        DISCONNECTED,
        CHALLENGE_REQ_SENT,
        CONNECT_SENT,
        CONNECTED,
        DISCONNECTING
    }

    public UdpConnection() {
        try {
            this.sock = new DatagramSocket();
            this.state = new AtomicReference<>(State.DISCONNECTED);
        } catch (SocketException e) {
            throw new IllegalStateException("couldn't create datagram socket", e);
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void connect(InetSocketAddress inetSocketAddress, int i) {
        this.outPackets.clear();
        this.inPackets = new HashMap();
        this.currentEndPoint = null;
        this.remoteConnId = 0;
        this.outSeq = 1;
        this.outSeqSent = 0;
        this.outSeqAcked = 0;
        this.inSeq = 0;
        this.inSeqAcked = 0;
        this.inSeqHandled = 0;
        logger.debug("connecting to " + String.valueOf(inetSocketAddress));
        this.netLoop = new NetLoop(inetSocketAddress);
        Thread thread = new Thread(this.netLoop, "UdpConnection Thread");
        this.netThread = thread;
        thread.start();
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void disconnect(boolean z) {
        if (this.netThread == null) {
            return;
        }
        State state = this.state.get();
        State state2 = State.DISCONNECTED;
        if (state != state2 && this.state.getAndSet(State.DISCONNECTING) == state2) {
            this.state.set(state2);
        }
        if (this.state.get() == State.DISCONNECTING) {
            sendSequenced(new UdpPacket(EUdpPacketType.Disconnect));
        }
        SOURCE_CONN_ID += 256;
        onDisconnected(z);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void send(byte[] bArr) {
        if (this.state.get() == State.CONNECTED) {
            sendData(new MemoryStream(bArr));
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetAddress getLocalIP() {
        return NetHelpers.getLocalIP(this.sock);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetSocketAddress getCurrentEndPoint() {
        return this.currentEndPoint;
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public ProtocolTypes getProtocolTypes() {
        return ProtocolTypes.UDP;
    }

    private void sendData(MemoryStream memoryStream) {
        int length = (int) ((memoryStream.getLength() / 1244) + 1);
        UdpPacket[] udpPacketArr = new UdpPacket[length];
        for (int i = 0; i < length; i++) {
            UdpPacket udpPacket = new UdpPacket(EUdpPacketType.Data, memoryStream, Math.min(1244L, memoryStream.getLength() - (((long) i) * 1244)));
            udpPacketArr[i] = udpPacket;
            udpPacket.getHeader().setMsgSize((int) memoryStream.getLength());
        }
        sendSequenced(udpPacketArr);
    }

    private void sendSequenced(UdpPacket udpPacket) {
        synchronized (this.outPackets) {
            udpPacket.getHeader().setSeqThis(this.outSeq);
            udpPacket.getHeader().setMsgStartSeq(this.outSeq);
            udpPacket.getHeader().setPacketsInMsg(1);
            this.outPackets.add(udpPacket);
            this.outSeq++;
        }
    }

    private void sendSequenced(UdpPacket[] udpPacketArr) {
        synchronized (this.outPackets) {
            try {
                int i = this.outSeq;
                for (UdpPacket udpPacket : udpPacketArr) {
                    sendSequenced(udpPacket);
                    udpPacket.getHeader().setPacketsInMsg(udpPacketArr.length);
                    udpPacket.getHeader().setMsgStartSeq(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPacket(UdpPacket udpPacket) {
        udpPacket.getHeader().setSourceConnID(SOURCE_CONN_ID);
        udpPacket.getHeader().setDestConnID(this.remoteConnId);
        this.inSeqAcked = this.inSeq;
        udpPacket.getHeader().setSeqAck(this.inSeqAcked);
        logger.debug(String.format("Sent -> %s Seq %d Ack %d; %d bytes; Message: %d bytes %d packets", udpPacket.getHeader().getPacketType(), Integer.valueOf(udpPacket.getHeader().getSeqThis()), Integer.valueOf(udpPacket.getHeader().getSeqAck()), Short.valueOf(udpPacket.getHeader().getPayloadSize()), Integer.valueOf(udpPacket.getHeader().getMsgSize()), Integer.valueOf(udpPacket.getHeader().getPacketsInMsg())));
        byte[] data = udpPacket.getData();
        try {
            this.sock.send(new DatagramPacket(data, 0, data.length, this.currentEndPoint.getAddress(), this.currentEndPoint.getPort()));
            if (this.outSeqSent == this.outSeqAcked) {
                this.nextResend = System.currentTimeMillis() + RESEND_DELAY;
            }
            if (udpPacket.getHeader().getSeqThis() > 0) {
                this.outSeqSent = udpPacket.getHeader().getSeqThis();
            }
        } catch (IOException e) {
            logger.debug("Critical socket failure", e);
            this.state.set(State.DISCONNECTING);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAck() {
        sendPacket(new UdpPacket(EUdpPacketType.Datagram));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPendingMessages() {
        synchronized (this.outPackets) {
            try {
                if (System.currentTimeMillis() > this.nextResend && this.outSeqSent > this.outSeqAcked) {
                    if (this.state.get() == State.DISCONNECTING) {
                        this.outPackets.clear();
                    }
                    logger.debug("Sequenced packet resend required");
                    for (int i = 0; i < 3 && i < this.outPackets.size(); i++) {
                        sendPacket(this.outPackets.get(i));
                    }
                    this.nextResend = System.currentTimeMillis() + RESEND_DELAY;
                } else {
                    int i2 = this.outSeqSent;
                    int i3 = this.outSeqAcked;
                    if (i2 < i3 + 3) {
                        for (int i4 = i2 - i3; i4 < 3 && i4 < this.outPackets.size(); i4++) {
                            sendPacket(this.outPackets.get(i4));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int readyMessageParts() {
        UdpPacket udpPacket = this.inPackets.get(Integer.valueOf(this.inSeqHandled + 1));
        if (udpPacket == null) {
            return 0;
        }
        for (int i = 1; i < udpPacket.getHeader().getPacketsInMsg(); i++) {
            if (!this.inPackets.containsKey(Integer.valueOf(this.inSeqHandled + 1 + i))) {
                return 0;
            }
        }
        return udpPacket.getHeader().getPacketsInMsg();
    }

    private boolean dispatchMessage() {
        int i = readyMessageParts();
        if (i == 0) {
            return false;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i2 = 0; i2 < i; i2++) {
            Map<Integer, UdpPacket> map = this.inPackets;
            int i3 = this.inSeqHandled + 1;
            this.inSeqHandled = i3;
            UdpPacket udpPacket = map.get(Integer.valueOf(i3));
            this.inPackets.remove(Integer.valueOf(this.inSeqHandled));
            try {
                byteArrayOutputStream.write(udpPacket.getPayload().toByteArray());
            } catch (IOException unused) {
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        logger.debug("Dispatching message: " + byteArray.length + " bytes");
        onNetMsgReceived(new NetMsgEventArgs(byteArray, this.currentEndPoint));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void receivePacket(UdpPacket udpPacket) {
        int i;
        if (udpPacket.isValid()) {
            if (this.remoteConnId <= 0 || udpPacket.getHeader().getSourceConnID() == this.remoteConnId) {
                logger.debug(String.format("<- Recv'd %s Seq %d Ack %d; %d bytes; Message: %d bytes %d packets", udpPacket.getHeader().getPacketType(), Integer.valueOf(udpPacket.getHeader().getSeqThis()), Integer.valueOf(udpPacket.getHeader().getSeqAck()), Short.valueOf(udpPacket.getHeader().getPayloadSize()), Integer.valueOf(udpPacket.getHeader().getMsgSize()), Integer.valueOf(udpPacket.getHeader().getPacketsInMsg())));
                if (udpPacket.getHeader().getPacketType() == EUdpPacketType.Data && udpPacket.getHeader().getSeqThis() < this.inSeq) {
                    sendAck();
                    return;
                }
                if (this.outSeqAcked < udpPacket.getHeader().getSeqAck()) {
                    int seqAck = udpPacket.getHeader().getSeqAck();
                    this.outSeqAcked = seqAck;
                    if (this.outSeqSent < seqAck) {
                        this.outSeqSent = seqAck;
                    }
                    this.outPackets.removeIf(new Predicate() { // from class: in.dragonbra.javasteam.networking.steam3.UdpConnection$$ExternalSyntheticLambda1
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return this.f$0.lambda$receivePacket$0((UdpPacket) obj);
                        }
                    });
                    this.nextResend = System.currentTimeMillis() + RESEND_DELAY;
                }
                if (udpPacket.getHeader().getSeqThis() == this.inSeq + 1) {
                    do {
                        i = this.inSeq;
                        this.inSeq = i + 1;
                    } while (this.inPackets.containsKey(Integer.valueOf(i + 2)));
                }
                int i2 = AnonymousClass1.$SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType[udpPacket.getHeader().getPacketType().ordinal()];
                if (i2 == 1) {
                    receiveChallenge(udpPacket);
                    return;
                }
                if (i2 == 2) {
                    receiveAccept(udpPacket);
                    return;
                }
                if (i2 == 3) {
                    receiveData(udpPacket);
                    return;
                }
                if (i2 == 4) {
                    logger.debug("Disconnected by server");
                    this.state.set(State.DISCONNECTED);
                } else if (i2 != 5) {
                    logger.debug("Received unexpected packet type " + String.valueOf(udpPacket.getHeader().getPacketType()));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$receivePacket$0(UdpPacket udpPacket) {
        return udpPacket.getHeader().getSeqThis() <= this.outSeqAcked;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.networking.steam3.UdpConnection$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType;

        static {
            int[] iArr = new int[EUdpPacketType.values().length];
            $SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType = iArr;
            try {
                iArr[EUdpPacketType.Challenge.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType[EUdpPacketType.Accept.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType[EUdpPacketType.Data.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType[EUdpPacketType.Disconnect.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType[EUdpPacketType.Datagram.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private void receiveChallenge(UdpPacket udpPacket) {
        if (UdpConnection$$ExternalSyntheticBackportWithForwarding0.m(this.state, State.CHALLENGE_REQ_SENT, State.CONNECT_SENT)) {
            try {
                ChallengeData challengeData = new ChallengeData();
                challengeData.deserialize(udpPacket.getPayload());
                ConnectData connectData = new ConnectData();
                connectData.setChallengeValue(challengeData.getChallengeValue() ^ (-1540956373));
                MemoryStream memoryStream = new MemoryStream();
                connectData.serialize(memoryStream.asOutputStream());
                memoryStream.seek(0L, SeekOrigin.BEGIN);
                sendSequenced(new UdpPacket(EUdpPacketType.Connect, memoryStream));
                this.inSeqHandled = udpPacket.getHeader().getSeqThis();
            } catch (IOException e) {
                logger.debug(e);
            }
        }
    }

    private void receiveAccept(UdpPacket udpPacket) {
        if (UdpConnection$$ExternalSyntheticBackportWithForwarding0.m(this.state, State.CONNECT_SENT, State.CONNECTED)) {
            logger.debug("Connection established");
            this.remoteConnId = udpPacket.getHeader().getSourceConnID();
            this.inSeqHandled = udpPacket.getHeader().getSeqThis();
            onConnected();
        }
    }

    private void receiveData(UdpPacket udpPacket) {
        if ((this.state.get() == State.CONNECTED || this.state.get() == State.DISCONNECTING) && udpPacket.getHeader().getSeqThis() > this.inSeqHandled && !this.inPackets.containsKey(Integer.valueOf(udpPacket.getHeader().getSeqThis()))) {
            this.inPackets.put(Integer.valueOf(udpPacket.getHeader().getSeqThis()), udpPacket);
            while (dispatchMessage()) {
            }
        }
    }

    public class NetLoop implements Runnable {
        public NetLoop(InetSocketAddress inetSocketAddress) {
            UdpConnection.this.currentEndPoint = inetSocketAddress;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            boolean z2;
            DatagramPacket datagramPacket = new DatagramPacket(new byte[2048], 2048);
            try {
                UdpConnection.this.sock.setSoTimeout(150);
            } catch (SocketException e) {
                UdpConnection.logger.debug(e);
            }
            boolean z3 = true;
            if (UdpConnection.this.currentEndPoint != null) {
                UdpConnection.this.timeout = System.currentTimeMillis() + UdpConnection.TIMEOUT_DELAY;
                UdpConnection.this.nextResend = System.currentTimeMillis() + UdpConnection.RESEND_DELAY;
                if (!UdpConnection$$ExternalSyntheticBackportWithForwarding0.m(UdpConnection.this.state, State.DISCONNECTED, State.CHALLENGE_REQ_SENT)) {
                    UdpConnection.this.state.set(State.DISCONNECTING);
                    z = true;
                    z2 = false;
                } else {
                    UdpConnection.this.sendPacket(new UdpPacket(EUdpPacketType.ChallengeReq));
                    z = false;
                    z2 = false;
                }
            } else {
                z = false;
                z2 = false;
            }
            while (true) {
                if (UdpConnection.this.state.get() == State.DISCONNECTED) {
                    break;
                }
                try {
                    try {
                        UdpConnection.this.sock.receive(datagramPacket);
                        z2 = true;
                    } catch (IOException e2) {
                        UdpConnection.logger.debug("Exception while reading packer", e2);
                        UdpConnection.this.state.set(State.DISCONNECTED);
                        z3 = z;
                        UdpConnection.this.sock.close();
                        UdpConnection.logger.debug("Calling onDisconnected");
                        UdpConnection.this.onDisconnected(z3);
                    }
                } catch (SocketTimeoutException e3) {
                    if (System.currentTimeMillis() > UdpConnection.this.timeout) {
                        UdpConnection.logger.debug("Connection timed out", e3);
                        UdpConnection.this.state.set(State.DISCONNECTED);
                        z3 = z;
                        UdpConnection.this.sock.close();
                        UdpConnection.logger.debug("Calling onDisconnected");
                        UdpConnection.this.onDisconnected(z3);
                    }
                }
                UdpConnection.this.sock.setSoTimeout(10);
                while (z2) {
                    if (datagramPacket.getAddress().equals(UdpConnection.this.currentEndPoint.getAddress()) || datagramPacket.getPort() == UdpConnection.this.currentEndPoint.getPort()) {
                        UdpConnection.this.timeout = System.currentTimeMillis() + UdpConnection.TIMEOUT_DELAY;
                        UdpConnection.this.receivePacket(new UdpPacket(new MemoryStream(datagramPacket.getData())));
                        try {
                            UdpConnection.this.sock.receive(datagramPacket);
                            z2 = true;
                        } catch (SocketTimeoutException unused) {
                            z2 = false;
                        }
                    }
                }
                Object obj = UdpConnection.this.state.get();
                State state = State.DISCONNECTED;
                if (obj != state) {
                    UdpConnection.this.sendPendingMessages();
                }
                if (UdpConnection.this.inSeq != UdpConnection.this.inSeqAcked) {
                    UdpConnection.this.sendAck();
                }
                if (UdpConnection.this.state.get() == State.DISCONNECTING && UdpConnection.this.outPackets.isEmpty()) {
                    UdpConnection.logger.debug("Graceful disconnect completed");
                    UdpConnection.this.state.set(state);
                    break;
                }
            }
            UdpConnection.this.sock.close();
            UdpConnection.logger.debug("Calling onDisconnected");
            UdpConnection.this.onDisconnected(z3);
        }
    }
}
