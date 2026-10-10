package in.dragonbra.javasteam.steam.handlers.steamnotifications.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineMessageNotificationCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class OfflineMessageNotificationCallback extends CallbackMsg {
    private final List<SteamID> friendsWithOfflineMessages;
    private final int messageCount;

    public OfflineMessageNotificationCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver2.CMsgClientOfflineMessageNotification.Builder builder = (SteammessagesClientserver2.CMsgClientOfflineMessageNotification.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientOfflineMessageNotification.class, packetMsg).getBody();
        this.messageCount = builder.getOfflineMessages();
        List<Integer> friendsWithOfflineMessagesList = builder.getFriendsWithOfflineMessagesList();
        Intrinsics.checkNotNullExpressionValue(friendsWithOfflineMessagesList, "getFriendsWithOfflineMessagesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(friendsWithOfflineMessagesList, 10));
        Iterator<T> it = friendsWithOfflineMessagesList.iterator();
        while (it.hasNext()) {
            arrayList.add(new SteamID(((Integer) it.next()).intValue()));
        }
        this.friendsWithOfflineMessages = arrayList;
    }

    public final int getMessageCount() {
        return this.messageCount;
    }

    public final List<SteamID> getFriendsWithOfflineMessages() {
        return this.friendsWithOfflineMessages;
    }
}
