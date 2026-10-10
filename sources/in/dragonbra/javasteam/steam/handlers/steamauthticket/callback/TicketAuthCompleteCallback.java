package in.dragonbra.javasteam.steam.handlers.steamauthticket.callback;

import in.dragonbra.javasteam.enums.EAuthSessionResponse;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TicketAuthCompleteCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TicketAuthCompleteCallback extends CallbackMsg {
    private final EAuthSessionResponse authSessionResponse;
    private final GameID gameID;
    private final SteamID ownerSteamID;
    private final int state;
    private final SteamID steamID;
    private final int ticketCRC;
    private final int ticketSequence;

    public TicketAuthCompleteCallback(JobID targetJobID, SteammessagesClientserver.CMsgClientTicketAuthComplete.Builder body) {
        Intrinsics.checkNotNullParameter(targetJobID, "targetJobID");
        Intrinsics.checkNotNullParameter(body, "body");
        EAuthSessionResponse eAuthSessionResponseFrom = EAuthSessionResponse.from(body.getEauthSessionResponse());
        Intrinsics.checkNotNullExpressionValue(eAuthSessionResponseFrom, "from(...)");
        this.authSessionResponse = eAuthSessionResponseFrom;
        this.state = body.getEstate();
        this.gameID = new GameID(body.getGameId());
        this.ownerSteamID = new SteamID(body.getOwnerSteamId());
        this.steamID = new SteamID(body.getSteamId());
        this.ticketCRC = body.getTicketCrc();
        this.ticketSequence = body.getTicketSequence();
        setJobID(targetJobID);
    }

    public final EAuthSessionResponse getAuthSessionResponse() {
        return this.authSessionResponse;
    }

    public final int getState() {
        return this.state;
    }

    public final GameID getGameID() {
        return this.gameID;
    }

    public final SteamID getOwnerSteamID() {
        return this.ownerSteamID;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final int getTicketCRC() {
        return this.ticketCRC;
    }

    public final int getTicketSequence() {
        return this.ticketSequence;
    }
}
