package in.dragonbra.javasteam.steam.steamclient.callbackmgr;

import in.dragonbra.javasteam.types.JobID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CallbackMsg.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class CallbackMsg {
    private JobID jobID = JobID.INVALID;

    public final JobID getJobID() {
        return this.jobID;
    }

    public final void setJobID(JobID jobID) {
        Intrinsics.checkNotNullParameter(jobID, "<set-?>");
        this.jobID = jobID;
    }
}
