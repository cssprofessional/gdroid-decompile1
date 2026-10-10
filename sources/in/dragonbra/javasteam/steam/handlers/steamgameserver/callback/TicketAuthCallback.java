package in.dragonbra.javasteam.steam.handlers.steamgameserver.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EAuthSessionResponse;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TicketAuthCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TicketAuthCallback extends CallbackMsg {
    private final EAuthSessionResponse authSessionResponse;
    private final GameID gameID;
    private final int state;
    private final SteamID steamID;
    private final int ticketCrc;
    private final int ticketSequence;

    public TicketAuthCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver.CMsgClientTicketAuthComplete.Builder builder = (SteammessagesClientserver.CMsgClientTicketAuthComplete.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientTicketAuthComplete.class, packetMsg).getBody();
        this.steamID = new SteamID(builder.getSteamId());
        this.gameID = new GameID(builder.getGameId());
        this.state = builder.getEstate();
        this.authSessionResponse = EAuthSessionResponse.from(builder.getEauthSessionResponse());
        this.ticketCrc = builder.getTicketCrc();
        this.ticketSequence = builder.getTicketSequence();
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final GameID getGameID() {
        return this.gameID;
    }

    public final int getState() {
        return this.state;
    }

    public final EAuthSessionResponse getAuthSessionResponse() {
        return this.authSessionResponse;
    }

    public final int getTicketCrc() {
        return this.ticketCrc;
    }

    public final int getTicketSequence() {
        return this.ticketSequence;
    }
}
