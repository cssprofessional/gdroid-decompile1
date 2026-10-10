package in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback;

import in.dragonbra.javasteam.steam.handlers.steammatchmaking.Member;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserJoinedLobbyCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UserJoinedLobbyCallback extends CallbackMsg {
    private final int appID;
    private final SteamID lobbySteamID;
    private final Member user;

    public UserJoinedLobbyCallback(int i, SteamID lobbySteamID, Member user) {
        Intrinsics.checkNotNullParameter(lobbySteamID, "lobbySteamID");
        Intrinsics.checkNotNullParameter(user, "user");
        this.appID = i;
        this.lobbySteamID = lobbySteamID;
        this.user = user;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final SteamID getLobbySteamID() {
        return this.lobbySteamID;
    }

    public final Member getUser() {
        return this.user;
    }
}
