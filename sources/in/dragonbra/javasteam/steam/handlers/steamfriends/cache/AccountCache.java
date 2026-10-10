package in.dragonbra.javasteam.steam.handlers.steamfriends.cache;

import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AccountCache {
    private final User localUser = new User(null, null, null, 0, null, null, 63, null);
    private final AccountList<User> users = new AccountList<>(User.class);
    private final AccountList<Clan> clans = new AccountList<>(Clan.class);

    public final User getLocalUser() {
        return this.localUser;
    }

    public final AccountList<User> getUsers() {
        return this.users;
    }

    public final AccountList<Clan> getClans() {
        return this.clans;
    }

    public final User getUser(SteamID steamId) {
        Intrinsics.checkNotNullParameter(steamId, "steamId");
        return isLocalUser(steamId) ? this.localUser : (User) this.users.getAccount(steamId);
    }

    public final boolean isLocalUser(SteamID steamID) {
        return Intrinsics.areEqual(this.localUser.getSteamID(), steamID);
    }
}
