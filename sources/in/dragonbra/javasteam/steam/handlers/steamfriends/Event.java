package in.dragonbra.javasteam.steam.handlers.steamfriends;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.types.GlobalID;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Event.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Event {
    private final Date eventTime;
    private final GameID gameID;
    private final String headline;
    private final GlobalID id;
    private final boolean isJustPosted;

    public Event(SteammessagesClientserver.CMsgClientClanState.Event clanEvent) {
        Intrinsics.checkNotNullParameter(clanEvent, "clanEvent");
        this.id = new GlobalID(clanEvent.getGid());
        this.eventTime = new Date(((long) clanEvent.getEventTime()) * 1000);
        String headline = clanEvent.getHeadline();
        Intrinsics.checkNotNullExpressionValue(headline, "getHeadline(...)");
        this.headline = headline;
        this.gameID = new GameID(clanEvent.getGameId());
        this.isJustPosted = clanEvent.getJustPosted();
    }

    public final GlobalID getId() {
        return this.id;
    }

    public final Date getEventTime() {
        return this.eventTime;
    }

    public final String getHeadline() {
        return this.headline;
    }

    public final GameID getGameID() {
        return this.gameID;
    }

    public final boolean isJustPosted() {
        return this.isJustPosted;
    }
}
