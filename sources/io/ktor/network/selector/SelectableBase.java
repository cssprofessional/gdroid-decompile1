package io.ktor.network.selector;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: compiled from: SelectableBase.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SelectableBase implements Selectable {
    public static final /* synthetic */ AtomicIntegerFieldUpdater _interestedOps$FU = AtomicIntegerFieldUpdater.newUpdater(SelectableBase.class, "_interestedOps");
    public final AtomicBoolean _isClosed = new AtomicBoolean(false);
    public final InterestSuspensionsMap suspensions = new InterestSuspensionsMap();
    private volatile /* synthetic */ int _interestedOps = 0;

    @Override // io.ktor.network.selector.Selectable
    public InterestSuspensionsMap getSuspensions() {
        return this.suspensions;
    }

    @Override // io.ktor.network.selector.Selectable
    public boolean isClosed() {
        return this._isClosed.get();
    }

    @Override // io.ktor.network.selector.Selectable
    public int getInterestedOps() {
        return this._interestedOps;
    }

    @Override // io.ktor.network.selector.Selectable
    public void interestOp(SelectInterest interest, boolean z) {
        int i;
        Intrinsics.checkNotNullParameter(interest, "interest");
        int flag = interest.getFlag();
        do {
            i = this._interestedOps;
        } while (!_interestedOps$FU.compareAndSet(this, i, z ? i | flag : (~flag) & i));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this._isClosed.compareAndSet(false, true)) {
            this._interestedOps = 0;
            InterestSuspensionsMap suspensions = getSuspensions();
            for (SelectInterest selectInterest : SelectInterest.Companion.getAllInterests()) {
                CancellableContinuation<Unit> cancellableContinuationRemoveSuspension = suspensions.removeSuspension(selectInterest);
                if (cancellableContinuationRemoveSuspension != null) {
                    Result.Companion companion = Result.Companion;
                    cancellableContinuationRemoveSuspension.resumeWith(Result.m8149constructorimpl(ResultKt.createFailure(new ClosedChannelCancellationException())));
                }
            }
        }
    }
}
