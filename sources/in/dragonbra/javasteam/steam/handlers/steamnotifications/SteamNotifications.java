package in.dragonbra.javasteam.steam.handlers.steamnotifications;

import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.CommentNotificationsCallback;
import in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.ItemAnnouncementsCallback;
import in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.OfflineMessageNotificationCallback;
import in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.UserNotificationsCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamNotifications.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamNotifications extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);

    public final void requestCommentNotifications() {
        getClient().send(new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientRequestCommentNotifications.class, EMsg.ClientRequestCommentNotifications, 0, 4, null));
    }

    public final void requestItemAnnouncements() {
        getClient().send(new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientRequestItemAnnouncements.class, EMsg.ClientRequestItemAnnouncements, 0, 4, null));
    }

    public final void requestOfflineMessageCount() {
        getClient().send(new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientRequestOfflineMessageCount.class, EMsg.ClientChatRequestOfflineMessageCount, 0, 4, null));
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

    /* JADX INFO: compiled from: SteamNotifications.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamNotifications.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientUserNotifications.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EMsg.ClientChatOfflineMessageNotification.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EMsg.ClientCommentNotifications.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EMsg.ClientItemAnnouncements.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
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
            int i = WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()];
            if (i == 1) {
                return new UserNotificationsCallback(iPacketMsg);
            }
            if (i == 2) {
                return new OfflineMessageNotificationCallback(iPacketMsg);
            }
            if (i == 3) {
                return new CommentNotificationsCallback(iPacketMsg);
            }
            if (i != 4) {
                return null;
            }
            return new ItemAnnouncementsCallback(iPacketMsg);
        }
    }
}
