package kotlinx.coroutines.sync;

import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: Semaphore.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface Semaphore {
    Object acquire(Continuation<? super Unit> continuation);

    void release();
}
