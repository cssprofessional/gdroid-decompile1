package kotlinx.coroutines;

import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: Deferred.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface Deferred<T> extends Job {
    Object await(Continuation<? super T> continuation);
}
