package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PersonaChangeCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PersonaChangeCallback extends CallbackMsg {
    private final String name;
    private final EResult result;

    public PersonaChangeCallback(JobID jobID, SteammessagesClientserverFriends.CMsgPersonaChangeResponse.Builder msg) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(msg, "msg");
        setJobID(jobID);
        EResult eResultFrom = EResult.from(msg.getResult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        String playerName = msg.getPlayerName();
        Intrinsics.checkNotNullExpressionValue(playerName, "getPlayerName(...)");
        this.name = playerName;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final String getName() {
        return this.name;
    }
}
