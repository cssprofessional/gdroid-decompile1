package in.dragonbra.javasteam.steam.handlers.steamfriends;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlayerNickname.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PlayerNickname {
    private final String nickname;
    private final SteamID steamID;

    public PlayerNickname(SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNickname nickname) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        this.steamID = new SteamID(nickname.getSteamid());
        String nickname2 = nickname.getNickname();
        Intrinsics.checkNotNullExpressionValue(nickname2, "getNickname(...)");
        this.nickname = nickname2;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final String getNickname() {
        return this.nickname;
    }
}
