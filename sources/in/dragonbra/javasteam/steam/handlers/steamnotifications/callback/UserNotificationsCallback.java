package in.dragonbra.javasteam.steam.handlers.steamnotifications.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.handlers.steamnotifications.Notification;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserNotificationsCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UserNotificationsCallback extends CallbackMsg {
    private final List<Notification> notifications;

    public UserNotificationsCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        List<SteammessagesClientserver2.CMsgClientUserNotifications.Notification> notificationsList = ((SteammessagesClientserver2.CMsgClientUserNotifications.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientUserNotifications.class, packetMsg).getBody()).getNotificationsList();
        Intrinsics.checkNotNullExpressionValue(notificationsList, "getNotificationsList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(notificationsList, 10));
        Iterator<T> it = notificationsList.iterator();
        while (it.hasNext()) {
            arrayList.add(new Notification((SteammessagesClientserver2.CMsgClientUserNotifications.Notification) it.next()));
        }
        this.notifications = arrayList;
    }

    public final List<Notification> getNotifications() {
        return this.notifications;
    }
}
