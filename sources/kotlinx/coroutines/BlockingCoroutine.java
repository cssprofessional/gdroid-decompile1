package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BlockingCoroutine<T> extends AbstractCoroutine<T> {
    public final Thread blockedThread;
    public final EventLoop eventLoop;

    @Override // kotlinx.coroutines.JobSupport
    public boolean isScopedCoroutine() {
        return true;
    }

    public BlockingCoroutine(CoroutineContext coroutineContext, Thread thread, EventLoop eventLoop) {
        super(coroutineContext, true, true);
        this.blockedThread = thread;
        this.eventLoop = eventLoop;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void afterCompletion(Object obj) {
        if (Intrinsics.areEqual(Thread.currentThread(), this.blockedThread)) {
            return;
        }
        Thread thread = this.blockedThread;
        AbstractTimeSourceKt.access$getTimeSource$p();
        LockSupport.unpark(thread);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T joinBlocking() throws Throwable {
        AbstractTimeSourceKt.access$getTimeSource$p();
        try {
            EventLoop eventLoop = this.eventLoop;
            if (eventLoop != null) {
                EventLoop.incrementUseCount$default(eventLoop, false, 1, null);
            }
            while (true) {
                try {
                    EventLoop eventLoop2 = this.eventLoop;
                    long jProcessNextEvent = eventLoop2 != null ? eventLoop2.processNextEvent() : Util.VLI_MAX;
                    if (isCompleted()) {
                        break;
                    }
                    AbstractTimeSourceKt.access$getTimeSource$p();
                    LockSupport.parkNanos(this, jProcessNextEvent);
                    if (Thread.interrupted()) {
                        cancelCoroutine(new InterruptedException());
                    }
                } catch (Throwable th) {
                    EventLoop eventLoop3 = this.eventLoop;
                    if (eventLoop3 != null) {
                        EventLoop.decrementUseCount$default(eventLoop3, false, 1, null);
                    }
                    throw th;
                }
            }
            EventLoop eventLoop4 = this.eventLoop;
            if (eventLoop4 != null) {
                EventLoop.decrementUseCount$default(eventLoop4, false, 1, null);
            }
            AbstractTimeSourceKt.access$getTimeSource$p();
            T t = (T) JobSupportKt.unboxState(getState$kotlinx_coroutines_core());
            CompletedExceptionally completedExceptionally = t instanceof CompletedExceptionally ? (CompletedExceptionally) t : null;
            if (completedExceptionally == null) {
                return t;
            }
            throw completedExceptionally.cause;
        } catch (Throwable th2) {
            AbstractTimeSourceKt.access$getTimeSource$p();
            throw th2;
        }
    }
}
