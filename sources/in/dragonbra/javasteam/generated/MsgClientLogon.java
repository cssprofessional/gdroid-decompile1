package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientLogon implements ISteamSerializableMessage {
    public static final int CurrentProtocol = 65581;
    public static final int ObfuscationMask = -1163005939;
    public static final int ProtocolVerMajorMask = -65536;
    public static final int ProtocolVerMinorMask = 65535;
    public static final short ProtocolVerMinorMinClients = 25;
    public static final short ProtocolVerMinorMinForAnyProtoBufMessages = 28;
    public static final short ProtocolVerMinorMinForCegApplyPESig = 27;
    public static final short ProtocolVerMinorMinForCellId = 18;
    public static final short ProtocolVerMinorMinForClientInstanceIDs = 44;
    public static final short ProtocolVerMinorMinForEnhancedAppList = 40;
    public static final short ProtocolVerMinorMinForExtendedMsgHdr = 17;
    public static final short ProtocolVerMinorMinForGzipMultiMessages = 43;
    public static final short ProtocolVerMinorMinForMachineAuth = 33;
    public static final short ProtocolVerMinorMinForMarketingMessages2 = 27;
    public static final short ProtocolVerMinorMinForNewVoiceCallAuthorize = 44;
    public static final short ProtocolVerMinorMinForOSType = 26;
    public static final short ProtocolVerMinorMinForProtoBufLoggedOffMessage = 28;
    public static final short ProtocolVerMinorMinForProtoBufMultiMessages = 28;
    public static final short ProtocolVerMinorMinForProtoBufServiceModuleCalls = 42;
    public static final short ProtocolVerMinorMinForSendingProtocolToUFS = 30;
    public static final short ProtocolVerMinorMinForServerAvailablityMsgs = 24;
    public static final short ProtocolVerMinorMinForSessionIDLast = 19;
    public static final short ProtocolVerMinorMinForSessionIDLastAnon = 36;
    public static final short ProtocolVerMinorMinForSteamGuardNotificationUI = 41;
    public static final short ProtocolVerMinorMinForSupportingEMsgClientEncryptPct = 14;
    public static final short ProtocolVerMinorMinForSupportingEMsgMulti = 12;
    public static final short ProtocolVerMinorMinGameServers = 4;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientLogon;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        new BinaryWriter(outputStream).close();
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void deserialize(InputStream inputStream) throws IOException {
        new BinaryReader(inputStream).close();
    }
}
