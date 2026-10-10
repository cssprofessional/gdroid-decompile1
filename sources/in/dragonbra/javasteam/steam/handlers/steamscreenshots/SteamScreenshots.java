package in.dragonbra.javasteam.steam.handlers.steamscreenshots;

import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamscreenshots.callback.ScreenshotAddedCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.GameID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamScreenshots.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamScreenshots extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);
    public static final int SCREENSHOT_THUMBNAIL_WIDTH = 200;

    public final AsyncJobSingle<ScreenshotAddedCallback> addScreenshot(ScreenshotDetails details) {
        Intrinsics.checkNotNullParameter(details, "details");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.class, EMsg.ClientUCMAddScreenshot, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        if (details.getGameID() != null) {
            SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder builder = (SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody();
            GameID gameID = details.getGameID();
            Intrinsics.checkNotNull(gameID);
            builder.setAppid(gameID.getAppID());
        }
        ((SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody()).setCaption(details.getCaption());
        ((SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody()).setFilename(details.getUfsImageFilePath());
        ((SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody()).setPermissions(details.getPrivacy().code());
        ((SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody()).setThumbname(details.getUsfThumbnailFilePath());
        ((SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody()).setWidth(details.getWidth());
        ((SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody()).setHeight(details.getHeight());
        ((SteammessagesClientserverUcm.CMsgClientUCMAddScreenshot.Builder) clientMsgProtobuf.getBody()).setRtime32Created((int) (details.getCreationTime().getTime() / 1000));
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        CallbackMsg callback = Companion.getCallback(packetMsg);
        if (callback == null) {
            return;
        }
        getClient().postCallback(callback);
    }

    /* JADX INFO: compiled from: SteamScreenshots.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamScreenshots.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientUCMAddScreenshotResponse.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CallbackMsg getCallback(IPacketMsg iPacketMsg) {
            if (WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()] == 1) {
                return new ScreenshotAddedCallback(iPacketMsg);
            }
            return null;
        }
    }
}
