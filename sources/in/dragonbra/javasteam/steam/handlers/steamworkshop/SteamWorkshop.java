package in.dragonbra.javasteam.steam.handlers.steamworkshop;

import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamworkshop.callback.UserActionPublishedFilesCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamWorkshop.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamWorkshop extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);

    public final AsyncJobSingle<UserActionPublishedFilesCallback> enumeratePublishedFilesByUserAction(EnumerationUserDetails details) {
        Intrinsics.checkNotNullParameter(details, "details");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserAction.class, EMsg.ClientUCMEnumeratePublishedFilesByUserAction, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserAction.Builder) clientMsgProtobuf.getBody()).setAction(details.getUserAction().code());
        ((SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserAction.Builder) clientMsgProtobuf.getBody()).setAppId(details.getAppID());
        ((SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserAction.Builder) clientMsgProtobuf.getBody()).setStartIndex(details.getStartIndex());
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

    /* JADX INFO: compiled from: SteamWorkshop.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamWorkshop.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientUCMEnumeratePublishedFilesByUserActionResponse.ordinal()] = 1;
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
                return new UserActionPublishedFilesCallback(iPacketMsg);
            }
            return null;
        }
    }
}
