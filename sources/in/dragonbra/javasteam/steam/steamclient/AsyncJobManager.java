package in.dragonbra.javasteam.steam.steamclient;

import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJob;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.util.event.ScheduledFunction;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsyncJobManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncJobManager {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(AsyncJobManager.class);
    private final ConcurrentMap<JobID, AsyncJob> asyncJobs = new ConcurrentHashMap();
    private final ScheduledFunction jobTimeoutFunc = new ScheduledFunction(new Runnable() { // from class: in.dragonbra.javasteam.steam.steamclient.AsyncJobManager$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.cancelTimedOutJobs();
        }
    }, 1000);

    /* JADX INFO: compiled from: AsyncJobManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final ConcurrentMap<JobID, AsyncJob> getAsyncJobs() {
        return this.asyncJobs;
    }

    public final void startJob(AsyncJob asyncJob) {
        Intrinsics.checkNotNullParameter(asyncJob, "asyncJob");
        this.asyncJobs.put(asyncJob.getJobID(), asyncJob);
    }

    public final void tryCompleteJob(JobID jobID, CallbackMsg callback) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Intrinsics.checkNotNullParameter(callback, "callback");
        AsyncJob job$default = getJob$default(this, jobID, false, 2, null);
        if (job$default != null && job$default.addResult(callback)) {
            this.asyncJobs.remove(jobID);
        }
    }

    public final void heartbeatJob(JobID jobID) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        AsyncJob job$default = getJob$default(this, jobID, false, 2, null);
        if (job$default == null) {
            return;
        }
        job$default.heartbeat();
    }

    public final void failJob(JobID jobID) {
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        Logger.debug$default(logger, "Failing job id: " + jobID, null, 2, null);
        AsyncJob job = getJob(jobID, true);
        if (job == null) {
            return;
        }
        job.setFailed(true);
    }

    public final void cancelPendingJobs() {
        Iterator<T> it = this.asyncJobs.values().iterator();
        while (it.hasNext()) {
            ((AsyncJob) it.next()).setFailed(false);
        }
        this.asyncJobs.clear();
    }

    public final void setTimeoutsEnabled(boolean z) {
        if (z) {
            this.jobTimeoutFunc.start();
        } else {
            this.jobTimeoutFunc.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTimedOutJobs() {
        for (AsyncJob asyncJob : this.asyncJobs.values()) {
            if (asyncJob.isTimedOut()) {
                asyncJob.setFailed(false);
                this.asyncJobs.remove(asyncJob.getJobID());
            }
        }
    }

    public static /* synthetic */ AsyncJob getJob$default(AsyncJobManager asyncJobManager, JobID jobID, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return asyncJobManager.getJob(jobID, z);
    }

    private final AsyncJob getJob(JobID jobID, boolean z) {
        AsyncJob asyncJob;
        boolean zRemove;
        if (z) {
            asyncJob = this.asyncJobs.get(jobID);
            ConcurrentMap<JobID, AsyncJob> concurrentMap = this.asyncJobs;
            zRemove = concurrentMap.remove(jobID, concurrentMap.get(jobID));
        } else {
            asyncJob = this.asyncJobs.get(jobID);
            zRemove = asyncJob != null;
        }
        if (zRemove) {
            return asyncJob;
        }
        return null;
    }
}
