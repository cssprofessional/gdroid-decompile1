package in.dragonbra.javasteam.steam;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.base.PacketClientMsg;
import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.base.PacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.generated.MsgClientLogon;
import in.dragonbra.javasteam.generated.MsgClientServerUnavailable;
import in.dragonbra.javasteam.networking.steam3.Connection;
import in.dragonbra.javasteam.networking.steam3.DisconnectedEventArgs;
import in.dragonbra.javasteam.networking.steam3.NetMsgEventArgs;
import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.discovery.ServerQuality;
import in.dragonbra.javasteam.steam.discovery.ServerRecord;
import in.dragonbra.javasteam.steam.discovery.SmartCMServerList;
import in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.IDebugNetworkListener;
import in.dragonbra.javasteam.util.MsgUtil;
import in.dragonbra.javasteam.util.NetHelpers;
import in.dragonbra.javasteam.util.Strings;
import in.dragonbra.javasteam.util.event.EventArgs;
import in.dragonbra.javasteam.util.event.EventHandler;
import in.dragonbra.javasteam.util.event.ScheduledFunction;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.EnumSet;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CMClient {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger logger = LogManager.getLogger(CMClient.class);
    private Integer cellID;
    private final SteamConfiguration configuration;
    private Connection connection;
    private IDebugNetworkListener debugNetworkListener;
    private boolean expectDisconnection;
    private final ScheduledFunction heartBeatFunc;
    private String ipCountryCode;
    private boolean isConnected;
    private InetAddress publicIP;
    private Integer sessionID;
    private long sessionToken;
    private SteamID steamID;
    private final Object connectionLock = new Object();
    private final EventHandler<NetMsgEventArgs> netMsgReceived = new EventHandler() { // from class: in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda0
        @Override // in.dragonbra.javasteam.util.event.EventHandler
        public final void handleEvent(Object obj, EventArgs eventArgs) {
            this.f$0.lambda$new$0(obj, (NetMsgEventArgs) eventArgs);
        }
    };
    private final EventHandler<EventArgs> connected = new EventHandler() { // from class: in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda1
        @Override // in.dragonbra.javasteam.util.event.EventHandler
        public final void handleEvent(Object obj, EventArgs eventArgs) {
            this.f$0.lambda$new$1(obj, eventArgs);
        }
    };
    private final EventHandler<DisconnectedEventArgs> disconnected = new EventHandler<DisconnectedEventArgs>() { // from class: in.dragonbra.javasteam.steam.CMClient.1
        @Override // in.dragonbra.javasteam.util.event.EventHandler
        public void handleEvent(Object obj, DisconnectedEventArgs disconnectedEventArgs) {
            CMClient.logger.debug("EventHandler `disconnected` called. User Initiated: " + disconnectedEventArgs.isUserInitiated() + ", Expected Disconnection: " + CMClient.this.expectDisconnection);
            CMClient.this.isConnected = false;
            if (!disconnectedEventArgs.isUserInitiated() && !CMClient.this.expectDisconnection) {
                CMClient.this.getServers().tryMark(CMClient.this.connection.getCurrentEndPoint(), CMClient.this.connection.getProtocolTypes(), ServerQuality.BAD);
            }
            CMClient.this.sessionID = null;
            CMClient.this.steamID = null;
            CMClient.this.connection.getNetMsgReceived().removeEventHandler(CMClient.this.netMsgReceived);
            CMClient.this.connection.getConnected().removeEventHandler(CMClient.this.connected);
            CMClient.this.connection.getDisconnected().removeEventHandler(this);
            CMClient.this.connection = null;
            CMClient.this.heartBeatFunc.stop();
            CMClient.this.onClientDisconnected(disconnectedEventArgs.isUserInitiated() || CMClient.this.expectDisconnection);
        }
    };

    public void onClientDisconnected(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Object obj, NetMsgEventArgs netMsgEventArgs) {
        onClientMsgReceived(getPacketMsg(netMsgEventArgs.getData()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Object obj, EventArgs eventArgs) {
        logger.debug("EventHandler `connected` called");
        getServers().tryMark(this.connection.getCurrentEndPoint(), this.connection.getProtocolTypes(), ServerQuality.GOOD);
        this.isConnected = true;
        try {
            onClientConnected();
        } catch (Exception e) {
            logger.error("Unhandled exception after connecting: ", e);
            disconnect(false);
        }
    }

    public CMClient(SteamConfiguration steamConfiguration) {
        if (steamConfiguration == null) {
            throw new IllegalArgumentException("configuration is null");
        }
        this.configuration = steamConfiguration;
        this.heartBeatFunc = new ScheduledFunction(new Runnable() { // from class: in.dragonbra.javasteam.steam.CMClient$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientHeartBeat.class, EMsg.ClientHeartBeat);
        ((SteammessagesClientserverLogin.CMsgClientHeartBeat.Builder) clientMsgProtobuf.getBody()).setSendReply(true);
        send(clientMsgProtobuf);
    }

    public void receiveTestPacketMsg(IPacketMsg iPacketMsg) {
        onClientMsgReceived(iPacketMsg);
    }

    public void setIsConnected(boolean z) {
        this.isConnected = z;
    }

    public void connect() {
        connect(null);
    }

    public void connect(ServerRecord serverRecord) {
        synchronized (this.connectionLock) {
            try {
                try {
                    disconnect(true);
                    this.expectDisconnection = false;
                    if (serverRecord == null) {
                        serverRecord = getServers().getNextServerCandidate(this.configuration.getProtocolTypes());
                    }
                } catch (Exception e) {
                    logger.debug("Failed to connect to Steam network", e);
                    onClientDisconnected(false);
                }
                if (serverRecord == null) {
                    logger.error("No CM servers available to connect to");
                    onClientDisconnected(false);
                    return;
                }
                Connection connectionCreateConnection = createConnection(serverRecord.getProtocolTypes());
                this.connection = connectionCreateConnection;
                connectionCreateConnection.getNetMsgReceived().addEventHandler(this.netMsgReceived);
                this.connection.getConnected().addEventHandler(this.connected);
                this.connection.getDisconnected().addEventHandler(this.disconnected);
                logger.debug(String.format("Connecting to %s with protocol %s, and with connection impl %s", serverRecord.getEndpoint(), serverRecord.getProtocolTypes(), this.connection.getClass().getSimpleName()));
                this.connection.connect(serverRecord.getEndpoint());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void disconnect() {
        disconnect(true);
    }

    private void disconnect(boolean z) {
        synchronized (this.connectionLock) {
            try {
                this.heartBeatFunc.stop();
                Connection connection = this.connection;
                if (connection != null) {
                    connection.disconnect(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void send(IClientMsg iClientMsg) {
        if (iClientMsg == null) {
            throw new IllegalArgumentException("A value for 'msg' must be supplied");
        }
        Integer num = this.sessionID;
        if (num != null) {
            iClientMsg.setSessionID(num.intValue());
        }
        SteamID steamID = this.steamID;
        if (steamID != null) {
            iClientMsg.setSteamID(steamID);
        }
        try {
            IDebugNetworkListener iDebugNetworkListener = this.debugNetworkListener;
            if (iDebugNetworkListener != null) {
                iDebugNetworkListener.onOutgoingNetworkMessage(iClientMsg.getMsgType(), iClientMsg.serialize());
            }
        } catch (Exception e) {
            logger.debug("DebugNetworkListener threw an exception", e);
        }
        Connection connection = this.connection;
        if (connection != null) {
            connection.send(iClientMsg.serialize());
        }
    }

    public boolean onClientMsgReceived(IPacketMsg iPacketMsg) {
        if (iPacketMsg == null) {
            logger.debug("Packet message failed to parse, shutting down connection");
            disconnect(false);
            return false;
        }
        if (iPacketMsg.getMsgType() != EMsg.Multi) {
            try {
                IDebugNetworkListener iDebugNetworkListener = this.debugNetworkListener;
                if (iDebugNetworkListener != null) {
                    iDebugNetworkListener.onIncomingNetworkMessage(iPacketMsg.getMsgType(), iPacketMsg.getData());
                }
            } catch (Exception e) {
                logger.debug("debugNetworkListener threw an exception", e);
            }
        }
        int i = AnonymousClass2.$SwitchMap$in$dragonbra$javasteam$enums$EMsg[iPacketMsg.getMsgType().ordinal()];
        if (i == 1) {
            handleMulti(iPacketMsg);
        } else if (i == 2) {
            handleLogOnResponse(iPacketMsg);
        } else if (i == 3) {
            handleLoggedOff(iPacketMsg);
        } else if (i == 4) {
            handleServerUnavailable(iPacketMsg);
        } else if (i == 5) {
            handleSessionToken(iPacketMsg);
        }
        return true;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.CMClient$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$in$dragonbra$javasteam$enums$EMsg;

        static {
            int[] iArr = new int[EMsg.values().length];
            $SwitchMap$in$dragonbra$javasteam$enums$EMsg = iArr;
            try {
                iArr[EMsg.Multi.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ClientLogOnResponse.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ClientLoggedOff.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ClientServerUnavailable.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ClientSessionToken.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ChannelEncryptRequest.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ChannelEncryptResponse.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$enums$EMsg[EMsg.ChannelEncryptResult.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public void onClientConnected() {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientHello.class, EMsg.ClientHello);
        ((SteammessagesClientserverLogin.CMsgClientHello.Builder) clientMsgProtobuf.getBody()).setProtocolVersion(MsgClientLogon.CurrentProtocol);
        send(clientMsgProtobuf);
    }

    private Connection createConnection(EnumSet<ProtocolTypes> enumSet) {
        Connection connectionCreateConnection = this.configuration.getConnectionFactory().createConnection(this.configuration, enumSet);
        if (connectionCreateConnection != null) {
            return connectionCreateConnection;
        }
        logger.error(String.format("Connection factory returned null connection for protocols %s", enumSet));
        throw new IllegalArgumentException("Connection factory returned null connection.");
    }

    public static IPacketMsg getPacketMsg(byte[] bArr) {
        if (bArr.length < 4) {
            logger.debug("PacketMsg too small to contain a message, was only " + bArr.length + " bytes. Message: " + Strings.toHex(bArr));
            return null;
        }
        int intLe = 0;
        try {
            Buffer bufferWrite = new Buffer().write(bArr);
            try {
                intLe = bufferWrite.readIntLe();
                bufferWrite.close();
            } finally {
            }
        } catch (IOException e) {
            logger.debug("Exception while getting EMsg code", e);
        }
        EMsg msg = MsgUtil.getMsg(intLe);
        int i = AnonymousClass2.$SwitchMap$in$dragonbra$javasteam$enums$EMsg[msg.ordinal()];
        if (i == 6 || i == 7 || i == 8) {
            try {
                return new PacketMsg(msg, bArr);
            } catch (IOException e2) {
                logger.debug("Exception deserializing emsg " + String.valueOf(msg) + " (" + MsgUtil.isProtoBuf(intLe) + ").", e2);
            }
        }
        try {
            if (MsgUtil.isProtoBuf(intLe)) {
                return new PacketClientMsgProtobuf(msg, bArr);
            }
            return new PacketClientMsg(msg, bArr);
        } catch (IOException e3) {
            logger.debug("Exception deserializing emsg " + String.valueOf(msg) + " (" + MsgUtil.isProtoBuf(intLe) + ").", e3);
            return null;
        }
    }

    private void handleMulti(IPacketMsg iPacketMsg) {
        if (!iPacketMsg.isProto()) {
            logger.debug("HandleMulti got non-proto MsgMulti!!");
            return;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesBase.CMsgMulti.class, iPacketMsg);
        try {
            Buffer bufferWrite = new Buffer().write(((SteammessagesBase.CMsgMulti.Builder) clientMsgProtobuf.getBody()).getMessageBody().toByteArray());
            try {
                BufferedSource bufferedSourceBuffer = ((SteammessagesBase.CMsgMulti.Builder) clientMsgProtobuf.getBody()).getSizeUnzipped() > 0 ? Okio.buffer(new GzipSource(bufferWrite)) : bufferWrite;
                while (onClientMsgReceived(getPacketMsg(bufferedSourceBuffer.readByteArray(bufferedSourceBuffer.readIntLe()))) && !bufferedSourceBuffer.exhausted()) {
                    try {
                    } finally {
                    }
                }
                bufferedSourceBuffer.close();
                if (bufferWrite != null) {
                    bufferWrite.close();
                }
            } finally {
            }
        } catch (IOException e) {
            logger.error("error in handleMulti()", e);
        }
    }

    private void handleLogOnResponse(IPacketMsg iPacketMsg) {
        if (!iPacketMsg.isProto()) {
            logger.debug("Got non-proto logon response, this is indicative of no logon attempt after connecting.");
            return;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientLogonResponse.class, iPacketMsg);
        EResult eResultFrom = EResult.from(((SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder) clientMsgProtobuf.getBody()).getEresult());
        EResult eResultFrom2 = EResult.from(((SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder) clientMsgProtobuf.getBody()).getEresultExtended());
        Logger logger2 = logger;
        logger2.debug("handleLogOnResponse got response: " + String.valueOf(eResultFrom) + ", extended: " + String.valueOf(eResultFrom2));
        if (eResultFrom == EResult.OK) {
            this.sessionID = Integer.valueOf(clientMsgProtobuf.getProtoHeader().getClientSessionid());
            this.steamID = new SteamID(clientMsgProtobuf.getProtoHeader().getSteamid());
            this.cellID = Integer.valueOf(((SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder) clientMsgProtobuf.getBody()).getCellId());
            this.publicIP = NetHelpers.getIPAddress(((SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder) clientMsgProtobuf.getBody()).getPublicIp());
            this.ipCountryCode = ((SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder) clientMsgProtobuf.getBody()).getIpCountryCode();
            this.heartBeatFunc.stop();
            this.heartBeatFunc.setDelay(((long) ((SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder) clientMsgProtobuf.getBody()).getLegacyOutOfGameHeartbeatSeconds()) * 1000);
            this.heartBeatFunc.start();
            return;
        }
        if (eResultFrom == EResult.TryAnotherCM || eResultFrom == EResult.ServiceUnavailable) {
            Connection connection = this.connection;
            if (connection != null) {
                getServers().tryMark(connection.getCurrentEndPoint(), connection.getProtocolTypes(), ServerQuality.BAD);
            } else {
                logger2.error("Connection was null trying to mark endpoint bad.");
            }
        }
    }

    private void handleLoggedOff(IPacketMsg iPacketMsg) {
        this.sessionID = null;
        this.steamID = null;
        this.cellID = null;
        this.publicIP = null;
        this.ipCountryCode = null;
        this.heartBeatFunc.stop();
        if (iPacketMsg.isProto()) {
            EResult eResultFrom = EResult.from(((SteammessagesClientserverLogin.CMsgClientLoggedOff.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientLoggedOff.class, iPacketMsg).getBody()).getEresult());
            Logger logger2 = logger;
            logger2.debug("handleLoggedOff got " + String.valueOf(eResultFrom));
            if (eResultFrom == EResult.TryAnotherCM || eResultFrom == EResult.ServiceUnavailable) {
                Connection connection = this.connection;
                if (connection != null) {
                    getServers().tryMark(connection.getCurrentEndPoint(), connection.getProtocolTypes(), ServerQuality.BAD);
                    return;
                } else {
                    logger2.error("Connection was null trying to mark endpoint bad.");
                    return;
                }
            }
            return;
        }
        logger.debug("handleLoggedOff got unexpected response: " + String.valueOf(iPacketMsg.getMsgType()));
    }

    private void handleServerUnavailable(IPacketMsg iPacketMsg) {
        ClientMsg clientMsg = new ClientMsg(MsgClientServerUnavailable.class, iPacketMsg);
        logger.debug("A server of type " + String.valueOf(((MsgClientServerUnavailable) clientMsg.getBody()).getEServerTypeUnavailable()) + "was not available for request: " + String.valueOf(EMsg.from(((MsgClientServerUnavailable) clientMsg.getBody()).getEMsgSent())));
        disconnect(false);
    }

    private void handleSessionToken(IPacketMsg iPacketMsg) {
        this.sessionToken = ((SteammessagesClientserver.CMsgClientSessionToken.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientSessionToken.class, iPacketMsg).getBody()).getToken();
    }

    public SteamConfiguration getConfiguration() {
        return this.configuration;
    }

    public SmartCMServerList getServers() {
        return this.configuration.getServerList();
    }

    public InetAddress getLocalIP() {
        Connection connection = this.connection;
        if (connection == null) {
            return null;
        }
        return connection.getLocalIP();
    }

    public InetSocketAddress getCurrentEndpoint() {
        Connection connection = this.connection;
        if (connection == null) {
            return null;
        }
        return connection.getCurrentEndPoint();
    }

    public InetAddress getPublicIP() {
        return this.publicIP;
    }

    public String getIpCountryCode() {
        return this.ipCountryCode;
    }

    public EUniverse getUniverse() {
        return this.configuration.getUniverse();
    }

    public boolean isConnected() {
        return this.isConnected;
    }

    public boolean isDisconnected() {
        return !this.isConnected && this.connection == null;
    }

    public long getSessionToken() {
        return this.sessionToken;
    }

    public Integer getCellID() {
        return this.cellID;
    }

    public Integer getSessionID() {
        return this.sessionID;
    }

    public SteamID getSteamID() {
        return this.steamID;
    }

    public long getConnectionTimeout() {
        return this.configuration.getConnectionTimeout();
    }

    public IDebugNetworkListener getDebugNetworkListener() {
        return this.debugNetworkListener;
    }

    public void setDebugNetworkListener(IDebugNetworkListener iDebugNetworkListener) {
        this.debugNetworkListener = iDebugNetworkListener;
    }

    public boolean isExpectDisconnection() {
        return this.expectDisconnection;
    }

    public void setExpectDisconnection(boolean z) {
        this.expectDisconnection = z;
    }
}
