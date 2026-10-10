package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.generated.MsgClientGetLegacyGameKeyResponse;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LegacyGameKeyCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LegacyGameKeyCallback extends CallbackMsg {
    private final int appID;
    private String key;
    private final EResult result;

    public LegacyGameKeyCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsg clientMsg = new ClientMsg(MsgClientGetLegacyGameKeyResponse.class, packetMsg);
        MsgClientGetLegacyGameKeyResponse msgClientGetLegacyGameKeyResponse = (MsgClientGetLegacyGameKeyResponse) clientMsg.getBody();
        setJobID(clientMsg.getTargetJobID());
        this.appID = msgClientGetLegacyGameKeyResponse.getAppId();
        EResult result = msgClientGetLegacyGameKeyResponse.getResult();
        Intrinsics.checkNotNullExpressionValue(result, "getResult(...)");
        this.result = result;
        if (msgClientGetLegacyGameKeyResponse.getLength() > 0) {
            int length = msgClientGetLegacyGameKeyResponse.getLength() - 1;
            byte[] byteArray = clientMsg.getPayload().toByteArray();
            Intrinsics.checkNotNull(byteArray);
            Charset US_ASCII = StandardCharsets.US_ASCII;
            Intrinsics.checkNotNullExpressionValue(US_ASCII, "US_ASCII");
            this.key = new String(byteArray, 0, length, US_ASCII);
        }
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final String getKey() {
        return this.key;
    }

    public final void setKey(String str) {
        this.key = str;
    }
}
