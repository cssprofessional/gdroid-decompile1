package in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetLobbyListCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GetLobbyListCallback extends CallbackMsg {
    private final int appID;
    private final List<Lobby> lobbies;
    private final EResult result;

    public GetLobbyListCallback(JobID jobID, int i, EResult result, List<Lobby> lobbies) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(lobbies, "lobbies");
        this.appID = i;
        this.result = result;
        this.lobbies = lobbies;
        setJobID(jobID);
    }

    public final int getAppID() {
        return this.appID;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final List<Lobby> getLobbies() {
        return this.lobbies;
    }
}
