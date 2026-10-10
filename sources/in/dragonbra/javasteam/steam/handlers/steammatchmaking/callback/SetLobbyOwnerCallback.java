package in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SetLobbyOwnerCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SetLobbyOwnerCallback extends CallbackMsg {
    private final int appID;
    private final SteamID lobbySteamID;
    private final EResult result;

    public SetLobbyOwnerCallback(JobID jobID, int i, EResult result, SteamID lobbySteamID) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(lobbySteamID, "lobbySteamID");
        this.appID = i;
        this.result = result;
        this.lobbySteamID = lobbySteamID;
        setJobID(jobID);
    }

    public final int getAppID() {
        return this.appID;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final SteamID getLobbySteamID() {
        return this.lobbySteamID;
    }
}
