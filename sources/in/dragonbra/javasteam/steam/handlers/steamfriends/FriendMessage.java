package in.dragonbra.javasteam.steam.handlers.steamfriends;

import in.dragonbra.javasteam.types.SteamID;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendMessage.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendMessage {
    private final String message;
    private final SteamID steamID;
    private final Date timestamp;
    private final boolean unread;

    public FriendMessage(SteamID steamID, boolean z, String message, Date timestamp) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        this.steamID = steamID;
        this.unread = z;
        this.message = message;
        this.timestamp = timestamp;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final boolean getUnread() {
        return this.unread;
    }

    public final String getMessage() {
        return this.message;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }
}
