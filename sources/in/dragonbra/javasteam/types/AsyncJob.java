package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.time.Instant;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsyncJob.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AsyncJob {
    private final SteamClient client;
    private final JobID jobID;
    private Instant jobStart;
    private long timeout;

    public abstract boolean addResult(CallbackMsg callbackMsg);

    public abstract void setFailed(boolean z);

    public AsyncJob(SteamClient client, JobID jobID) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        this.client = client;
        this.jobID = jobID;
        this.jobStart = Instant.now();
        this.timeout = 10000L;
    }

    public final SteamClient getClient() {
        return this.client;
    }

    public final JobID getJobID() {
        return this.jobID;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    public final void setTimeout(long j) {
        this.timeout = j;
    }

    public final boolean isTimedOut() {
        return Instant.now().compareTo(this.jobStart.plusMillis(this.timeout)) >= 0;
    }

    public final void registerJob(SteamClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        client.startJob(this);
    }

    public final void heartbeat() {
        this.timeout += (long) 10000;
    }
}
