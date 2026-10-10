package in.dragonbra.javasteam.steam.handlers.steamscreenshots.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.UGCHandle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScreenshotAddedCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ScreenshotAddedCallback extends CallbackMsg {
    private final EResult result;
    private final UGCHandle screenshotID;

    public ScreenshotAddedCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponse.class, packetMsg);
        SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponse.Builder builder = (SteammessagesClientserverUcm.CMsgClientUCMAddScreenshotResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.screenshotID = new UGCHandle(builder.getScreenshotid());
    }

    public final EResult getResult() {
        return this.result;
    }

    public final UGCHandle getScreenshotID() {
        return this.screenshotID;
    }
}
