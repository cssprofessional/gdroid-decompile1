package in.dragonbra.javasteam.steam.handlers.steamauthticket.callback;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TicketAcceptedCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TicketAcceptedCallback extends CallbackMsg {
    private final List<Integer> activeTicketsCRC;
    private final List<Integer> appIDs;
    private final int messageSequence;

    public TicketAcceptedCallback(JobID jobID, SteammessagesClientserver.CMsgClientAuthListAck.Builder body) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(body, "body");
        List<Integer> appIdsList = body.getAppIdsList();
        Intrinsics.checkNotNullExpressionValue(appIdsList, "getAppIdsList(...)");
        this.appIDs = appIdsList;
        List<Integer> ticketCrcList = body.getTicketCrcList();
        Intrinsics.checkNotNullExpressionValue(ticketCrcList, "getTicketCrcList(...)");
        this.activeTicketsCRC = ticketCrcList;
        this.messageSequence = body.getMessageSequence();
        setJobID(jobID);
    }

    public final List<Integer> getAppIDs() {
        return this.appIDs;
    }

    public final List<Integer> getActiveTicketsCRC() {
        return this.activeTicketsCRC;
    }

    public final int getMessageSequence() {
        return this.messageSequence;
    }
}
