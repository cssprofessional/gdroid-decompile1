package in.dragonbra.javasteam.steam.steamclient.callbackmgr;

import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.util.compat.Consumer;
import java.io.Closeable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Callback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Callback<TCall extends CallbackMsg> extends CallbackBase implements Closeable {
    private final Class<? extends TCall> callbackType;
    private final JobID jobID;
    private CallbackManager mgr;
    private final Consumer<TCall> onRun;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Callback(Class<? extends TCall> callbackType, Consumer<TCall> consumer) {
        this(callbackType, consumer, null, null, 12, null);
        Intrinsics.checkNotNullParameter(callbackType, "callbackType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Callback(Class<? extends TCall> callbackType, Consumer<TCall> consumer, CallbackManager callbackManager) {
        this(callbackType, consumer, callbackManager, null, 8, null);
        Intrinsics.checkNotNullParameter(callbackType, "callbackType");
    }

    public Callback(Class<? extends TCall> callbackType, Consumer<TCall> consumer, CallbackManager callbackManager, JobID jobID) {
        Intrinsics.checkNotNullParameter(callbackType, "callbackType");
        Intrinsics.checkNotNullParameter(jobID, "jobID");
        this.callbackType = callbackType;
        this.onRun = consumer;
        this.mgr = callbackManager;
        this.jobID = jobID;
        if (callbackManager != null) {
            callbackManager.register$javasteam(this);
        }
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackBase
    public Class<? extends TCall> getCallbackType() {
        return this.callbackType;
    }

    public /* synthetic */ Callback(Class cls, Consumer consumer, CallbackManager callbackManager, JobID jobID, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, consumer, (i & 4) != 0 ? null : callbackManager, (i & 8) != 0 ? JobID.INVALID : jobID);
    }

    public final JobID getJobID() {
        return this.jobID;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CallbackManager callbackManager = this.mgr;
        if (callbackManager != null) {
            callbackManager.unregister$javasteam(this);
        }
        this.mgr = null;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackBase
    public void run(Object callback) {
        Consumer<TCall> consumer;
        Intrinsics.checkNotNullParameter(callback, "callback");
        CallbackMsg callbackMsg = (CallbackMsg) callback;
        if ((Intrinsics.areEqual(callbackMsg.getJobID(), this.jobID) || Intrinsics.areEqual(this.jobID, JobID.INVALID)) && (consumer = this.onRun) != null) {
            consumer.accept((TCall) callbackMsg);
        }
    }
}
