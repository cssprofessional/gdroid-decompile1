package kotlinx.coroutines.scheduling;

import io.ktor.network.selector.InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;
import io.ktor.utils.io.pool.DefaultPool$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: compiled from: WorkQueue.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class WorkQueue {
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    public final AtomicReferenceArray<Task> buffer = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;
    public static final /* synthetic */ AtomicReferenceFieldUpdater lastScheduledTask$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater producerIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater consumerIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater blockingTasksInBuffer$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer$volatile");

    public final int getBufferSize() {
        return producerIndex$volatile$FU.get(this) - consumerIndex$volatile$FU.get(this);
    }

    public final int getSize$kotlinx_coroutines_core() {
        Object obj = lastScheduledTask$volatile$FU.get(this);
        int bufferSize = getBufferSize();
        return obj != null ? bufferSize + 1 : bufferSize;
    }

    public final Task poll() {
        Task task = (Task) lastScheduledTask$volatile$FU.getAndSet(this, null);
        return task == null ? pollBuffer() : task;
    }

    public final void decrementIfBlocking(Task task) {
        if (task == null || !task.taskContext) {
            return;
        }
        int iDecrementAndGet = blockingTasksInBuffer$volatile$FU.decrementAndGet(this);
        if (DebugKt.getASSERTIONS_ENABLED() && iDecrementAndGet < 0) {
            throw new AssertionError();
        }
    }

    public final Task add(Task task, boolean z) {
        if (z) {
            return addLast(task);
        }
        Task task2 = (Task) lastScheduledTask$volatile$FU.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return addLast(task2);
    }

    public final Task addLast(Task task) {
        if (getBufferSize() == 127) {
            return task;
        }
        if (task.taskContext) {
            blockingTasksInBuffer$volatile$FU.incrementAndGet(this);
        }
        int i = producerIndex$volatile$FU.get(this) & 127;
        while (this.buffer.get(i) != null) {
            Thread.yield();
        }
        this.buffer.lazySet(i, task);
        producerIndex$volatile$FU.incrementAndGet(this);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long trySteal(int i, Ref$ObjectRef<Task> ref$ObjectRef) {
        T tStealWithExclusiveMode;
        if (i == 3) {
            tStealWithExclusiveMode = pollBuffer();
        } else {
            tStealWithExclusiveMode = stealWithExclusiveMode(i);
        }
        if (tStealWithExclusiveMode != 0) {
            ref$ObjectRef.element = tStealWithExclusiveMode;
            return -1L;
        }
        return tryStealLastScheduled(i, ref$ObjectRef);
    }

    public final Task stealWithExclusiveMode(int i) {
        int i2 = consumerIndex$volatile$FU.get(this);
        int i3 = producerIndex$volatile$FU.get(this);
        boolean z = i == 1;
        while (i2 != i3) {
            if (z && blockingTasksInBuffer$volatile$FU.get(this) == 0) {
                return null;
            }
            int i4 = i2 + 1;
            Task taskTryExtractFromTheMiddle = tryExtractFromTheMiddle(i2, z);
            if (taskTryExtractFromTheMiddle != null) {
                return taskTryExtractFromTheMiddle;
            }
            i2 = i4;
        }
        return null;
    }

    public final Task pollBlocking() {
        return pollWithExclusiveMode(true);
    }

    public final Task pollWithExclusiveMode(boolean z) {
        Task task;
        do {
            task = (Task) lastScheduledTask$volatile$FU.get(this);
            if (task == null || task.taskContext != z) {
                int i = consumerIndex$volatile$FU.get(this);
                int i2 = producerIndex$volatile$FU.get(this);
                while (i != i2) {
                    if (z && blockingTasksInBuffer$volatile$FU.get(this) == 0) {
                        return null;
                    }
                    i2--;
                    Task taskTryExtractFromTheMiddle = tryExtractFromTheMiddle(i2, z);
                    if (taskTryExtractFromTheMiddle != null) {
                        return taskTryExtractFromTheMiddle;
                    }
                }
                return null;
            }
        } while (!InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(lastScheduledTask$volatile$FU, this, task, null));
        return task;
    }

    public final Task tryExtractFromTheMiddle(int i, boolean z) {
        int i2 = i & 127;
        Task task = this.buffer.get(i2);
        if (task == null || task.taskContext != z || !DefaultPool$$ExternalSyntheticBackportWithForwarding0.m(this.buffer, i2, task, null)) {
            return null;
        }
        if (z) {
            blockingTasksInBuffer$volatile$FU.decrementAndGet(this);
        }
        return task;
    }

    public final void offloadAllWorkTo(GlobalQueue globalQueue) {
        Task task = (Task) lastScheduledTask$volatile$FU.getAndSet(this, null);
        if (task != null) {
            globalQueue.addLast(task);
        }
        while (pollTo(globalQueue)) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.Task] */
    public final long tryStealLastScheduled(int i, Ref$ObjectRef<Task> ref$ObjectRef) {
        ?? r0;
        do {
            r0 = (Task) lastScheduledTask$volatile$FU.get(this);
            if (r0 == 0) {
                return -2L;
            }
            if (((r0.taskContext ? 1 : 2) & i) == 0) {
                return -2L;
            }
            long jNanoTime = TasksKt.schedulerTimeSource.nanoTime() - r0.submissionTime;
            long j = TasksKt.WORK_STEALING_TIME_RESOLUTION_NS;
            if (jNanoTime < j) {
                return j - jNanoTime;
            }
        } while (!InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(lastScheduledTask$volatile$FU, this, r0, null));
        ref$ObjectRef.element = r0;
        return -1L;
    }

    public final boolean pollTo(GlobalQueue globalQueue) {
        Task taskPollBuffer = pollBuffer();
        if (taskPollBuffer == null) {
            return false;
        }
        globalQueue.addLast(taskPollBuffer);
        return true;
    }

    public final Task pollBuffer() {
        Task andSet;
        while (true) {
            int i = consumerIndex$volatile$FU.get(this);
            if (i - producerIndex$volatile$FU.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (consumerIndex$volatile$FU.compareAndSet(this, i, i + 1) && (andSet = this.buffer.getAndSet(i2, null)) != null) {
                decrementIfBlocking(andSet);
                return andSet;
            }
        }
    }
}
