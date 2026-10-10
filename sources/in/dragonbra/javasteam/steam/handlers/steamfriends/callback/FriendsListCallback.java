package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.handlers.steamfriends.Friend;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendsListCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendsListCallback extends CallbackMsg {
    private final List<Friend> friendList;
    private final boolean isIncremental;

    public FriendsListCallback(SteammessagesClientserverFriends.CMsgClientFriendsList.Builder msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.isIncremental = msg.getBincremental();
        List<SteammessagesClientserverFriends.CMsgClientFriendsList.Friend> friendsList = msg.getFriendsList();
        Intrinsics.checkNotNullExpressionValue(friendsList, "getFriendsList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(friendsList, 10));
        for (SteammessagesClientserverFriends.CMsgClientFriendsList.Friend friend : friendsList) {
            Intrinsics.checkNotNull(friend);
            arrayList.add(new Friend(friend));
        }
        this.friendList = arrayList;
    }

    public final boolean isIncremental() {
        return this.isIncremental;
    }

    public final List<Friend> getFriendList() {
        return this.friendList;
    }
}
