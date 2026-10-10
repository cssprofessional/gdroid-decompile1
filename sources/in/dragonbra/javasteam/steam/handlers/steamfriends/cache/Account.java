package in.dragonbra.javasteam.steam.handlers.steamfriends.cache;

import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class Account {
    private byte[] avatarHash;
    private String name;
    private SteamID steamID = new SteamID();

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final void setSteamID(SteamID steamID) {
        Intrinsics.checkNotNullParameter(steamID, "<set-?>");
        this.steamID = steamID;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final byte[] getAvatarHash() {
        return this.avatarHash;
    }

    public final void setAvatarHash(byte[] bArr) {
        this.avatarHash = bArr;
    }
}
