package in.dragonbra.javasteam.steam.handlers.steamfriends;

import in.dragonbra.javasteam.enums.EFriendRelationship;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Friend.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Friend {
    private final EFriendRelationship relationship;
    private final SteamID steamID;

    public Friend(SteammessagesClientserverFriends.CMsgClientFriendsList.Friend friend) {
        Intrinsics.checkNotNullParameter(friend, "friend");
        this.steamID = new SteamID(friend.getUlfriendid());
        EFriendRelationship eFriendRelationshipFrom = EFriendRelationship.from(friend.getEfriendrelationship());
        this.relationship = eFriendRelationshipFrom == null ? EFriendRelationship.None : eFriendRelationshipFrom;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final EFriendRelationship getRelationship() {
        return this.relationship;
    }
}
