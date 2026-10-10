package in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback;

import in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LobbyDataCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LobbyDataCallback extends CallbackMsg {
    private final int appID;
    private final Lobby lobby;

    public LobbyDataCallback(JobID jobID, int i, Lobby lobby) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(lobby, "lobby");
        this.appID = i;
        this.lobby = lobby;
        setJobID(jobID);
    }

    public final int getAppID() {
        return this.appID;
    }

    public final Lobby getLobby() {
        return this.lobby;
    }
}
