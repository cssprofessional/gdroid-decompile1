package in.dragonbra.javasteam.steam.handlers.steammatchmaking.callback;

import in.dragonbra.javasteam.enums.EChatRoomEnterResponse;
import in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JoinLobbyCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class JoinLobbyCallback extends CallbackMsg {
    private final int appID;
    private final EChatRoomEnterResponse chatRoomEnterResponse;
    private final Lobby lobby;

    public JoinLobbyCallback(JobID jobID, int i, EChatRoomEnterResponse chatRoomEnterResponse, Lobby lobby) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(chatRoomEnterResponse, "chatRoomEnterResponse");
        this.appID = i;
        this.chatRoomEnterResponse = chatRoomEnterResponse;
        this.lobby = lobby;
        setJobID(jobID);
    }

    public final int getAppID() {
        return this.appID;
    }

    public final EChatRoomEnterResponse getChatRoomEnterResponse() {
        return this.chatRoomEnterResponse;
    }

    public final Lobby getLobby() {
        return this.lobby;
    }
}
