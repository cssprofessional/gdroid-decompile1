package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.base.Msg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.generated.MsgChannelEncryptRequest;
import in.dragonbra.javasteam.generated.MsgChannelEncryptResponse;
import in.dragonbra.javasteam.generated.MsgChannelEncryptResult;
import in.dragonbra.javasteam.steam.CMClient;
import in.dragonbra.javasteam.util.KeyDictionary;
import in.dragonbra.javasteam.util.crypto.CryptoHelper;
import in.dragonbra.javasteam.util.crypto.RSACrypto;
import in.dragonbra.javasteam.util.event.EventArgs;
import in.dragonbra.javasteam.util.event.EventHandler;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
public class EnvelopeEncryptedConnection extends Connection {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger logger = LogManager.getLogger(EnvelopeEncryptedConnection.class);
    private INetFilterEncryption encryption;
    private final Connection inner;
    private final EventHandler<EventArgs> onConnected;
    private final EventHandler<DisconnectedEventArgs> onDisconnected;
    private final EventHandler<NetMsgEventArgs> onNetMsgReceived;
    private EncryptionState state;
    private final EUniverse universe;

    public enum EncryptionState {
        DISCONNECTED,
        CONNECTED,
        CHALLENGED,
        ENCRYPTED
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$in$dragonbra$javasteam$enums$EMsg;

        static {
            int[] iArr = new int[EMsg.values().length];
            $SwitchMap$in$dragonbra$javasteam$enums$EMsg = iArr;
            try {
                iArr[EMsg.ChannelEncryptRequest.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ChannelEncryptResult.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public EnvelopeEncryptedConnection(Connection connection, EUniverse eUniverse) {
        EventHandler eventHandler = new EventHandler<EventArgs>() { // from class: in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.1
            @Override // in.dragonbra.javasteam.util.event.EventHandler
            public void handleEvent(Object obj, EventArgs eventArgs) {
                EnvelopeEncryptedConnection.this.state = EncryptionState.CONNECTED;
            }
        };
        this.onConnected = eventHandler;
        EventHandler<DisconnectedEventArgs> eventHandler2 = new EventHandler<DisconnectedEventArgs>() { // from class: in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.2
            @Override // in.dragonbra.javasteam.util.event.EventHandler
            public void handleEvent(Object obj, DisconnectedEventArgs disconnectedEventArgs) {
                EnvelopeEncryptedConnection.this.state = EncryptionState.DISCONNECTED;
                EnvelopeEncryptedConnection.this.encryption = null;
                EnvelopeEncryptedConnection envelopeEncryptedConnection = EnvelopeEncryptedConnection.this;
                envelopeEncryptedConnection.disconnected.handleEvent(envelopeEncryptedConnection, disconnectedEventArgs);
            }
        };
        this.onDisconnected = eventHandler2;
        EventHandler<NetMsgEventArgs> eventHandler3 = new EventHandler<NetMsgEventArgs>() { // from class: in.dragonbra.javasteam.networking.steam3.EnvelopeEncryptedConnection.3
            @Override // in.dragonbra.javasteam.util.event.EventHandler
            public void handleEvent(Object obj, NetMsgEventArgs netMsgEventArgs) {
                if (EnvelopeEncryptedConnection.this.state == EncryptionState.ENCRYPTED) {
                    byte[] bArrProcessIncoming = EnvelopeEncryptedConnection.this.encryption.processIncoming(netMsgEventArgs.getData());
                    EnvelopeEncryptedConnection envelopeEncryptedConnection = EnvelopeEncryptedConnection.this;
                    envelopeEncryptedConnection.netMsgReceived.handleEvent(envelopeEncryptedConnection, netMsgEventArgs.withData(bArrProcessIncoming));
                    return;
                }
                IPacketMsg packetMsg = CMClient.getPacketMsg(netMsgEventArgs.getData());
                if (!EnvelopeEncryptedConnection.this.isExpectedEMsg(packetMsg.getMsgType())) {
                    EnvelopeEncryptedConnection.logger.debug("Rejected EMsg: " + String.valueOf(packetMsg.getMsgType()) + " during channel setup");
                    return;
                }
                int i = AnonymousClass4.$SwitchMap$in$dragonbra$javasteam$enums$EMsg[packetMsg.getMsgType().ordinal()];
                if (i == 1) {
                    EnvelopeEncryptedConnection.this.handleEncryptRequest(packetMsg);
                } else {
                    if (i != 2) {
                        return;
                    }
                    EnvelopeEncryptedConnection.this.handleEncryptResult(packetMsg);
                }
            }
        };
        this.onNetMsgReceived = eventHandler3;
        if (connection == null) {
            throw new IllegalArgumentException("inner connection is null");
        }
        this.inner = connection;
        this.universe = eUniverse;
        connection.getNetMsgReceived().addEventHandler(eventHandler3);
        connection.getConnected().addEventHandler(eventHandler);
        connection.getDisconnected().addEventHandler(eventHandler2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEncryptRequest(IPacketMsg iPacketMsg) {
        byte[] bArrEncrypt;
        Msg msg = new Msg(MsgChannelEncryptRequest.class, iPacketMsg);
        EUniverse universe = ((MsgChannelEncryptRequest) msg.getBody()).getUniverse();
        long protocolVersion = ((MsgChannelEncryptRequest) msg.getBody()).getProtocolVersion();
        Logger logger2 = logger;
        logger2.debug("Got encryption request. Universe: " + String.valueOf(universe) + " Protocol ver: " + protocolVersion);
        if (protocolVersion != 1) {
            logger2.debug("Encryption handshake protocol version mismatch!");
        }
        EUniverse eUniverse = this.universe;
        if (universe != eUniverse) {
            logger2.debug("Expected universe " + String.valueOf(eUniverse) + " but server reported universe " + String.valueOf(universe));
        }
        byte[] byteArray = msg.getPayload().getLength() >= 16 ? msg.getPayload().toByteArray() : null;
        byte[] publicKey = KeyDictionary.getPublicKey(universe);
        if (publicKey == null) {
            logger2.debug("HandleEncryptRequest got request for invalid universe! Universe: " + String.valueOf(universe) + " Protocol ver: " + protocolVersion);
            disconnect(false);
        }
        Msg msg2 = new Msg(MsgChannelEncryptResponse.class);
        byte[] bArrGenerateRandomBlock = CryptoHelper.generateRandomBlock(32);
        RSACrypto rSACrypto = new RSACrypto(publicKey);
        if (byteArray != null) {
            byte[] bArr = new byte[bArrGenerateRandomBlock.length + byteArray.length];
            System.arraycopy(bArrGenerateRandomBlock, 0, bArr, 0, bArrGenerateRandomBlock.length);
            System.arraycopy(byteArray, 0, bArr, bArrGenerateRandomBlock.length, byteArray.length);
            bArrEncrypt = rSACrypto.encrypt(bArr);
        } else {
            bArrEncrypt = rSACrypto.encrypt(bArrGenerateRandomBlock);
        }
        byte[] bArrCrcHash = CryptoHelper.crcHash(bArrEncrypt);
        try {
            msg2.writeBytes(bArrEncrypt);
            msg2.writeBytes(bArrCrcHash);
            msg2.writeInt(0);
        } catch (IOException e) {
            logger.debug(e);
        }
        if (byteArray != null) {
            this.encryption = new NetFilterEncryptionWithHMAC(bArrGenerateRandomBlock);
        } else {
            this.encryption = new NetFilterEncryption(bArrGenerateRandomBlock);
        }
        this.state = EncryptionState.CHALLENGED;
        send(msg2.serialize());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEncryptResult(IPacketMsg iPacketMsg) {
        Msg msg = new Msg(MsgChannelEncryptResult.class, iPacketMsg);
        Logger logger2 = logger;
        logger2.debug("Encryption result: " + String.valueOf(((MsgChannelEncryptResult) msg.getBody()).getResult()));
        if (((MsgChannelEncryptResult) msg.getBody()).getResult() == EResult.OK && this.encryption != null) {
            this.state = EncryptionState.ENCRYPTED;
            this.connected.handleEvent(this, EventArgs.EMPTY);
        } else {
            logger2.debug("Encryption channel setup failed");
            disconnect(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isExpectedEMsg(EMsg eMsg) {
        int iOrdinal = this.state.ordinal();
        if (iOrdinal == 0) {
            return false;
        }
        if (iOrdinal == 1) {
            return eMsg == EMsg.ChannelEncryptRequest;
        }
        if (iOrdinal == 2) {
            return eMsg == EMsg.ChannelEncryptResult;
        }
        if (iOrdinal == 3) {
            return true;
        }
        throw new IllegalStateException("Unreachable - landed up in undefined state.");
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void connect(InetSocketAddress inetSocketAddress, int i) {
        this.inner.connect(inetSocketAddress, i);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void disconnect(boolean z) {
        this.inner.disconnect(z);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void send(byte[] bArr) {
        if (this.state == EncryptionState.ENCRYPTED) {
            bArr = this.encryption.processOutgoing(bArr);
        }
        this.inner.send(bArr);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetAddress getLocalIP() {
        return this.inner.getLocalIP();
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetSocketAddress getCurrentEndPoint() {
        return this.inner.getCurrentEndPoint();
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public ProtocolTypes getProtocolTypes() {
        return this.inner.getProtocolTypes();
    }
}
