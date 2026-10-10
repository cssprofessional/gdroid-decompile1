package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface CancellableContinuation<T> extends Continuation<T> {
    void completeResume(Object obj);

    void invokeOnCancellation(Function1<? super Throwable, Unit> function1);

    boolean isCancelled();

    <R extends T> void resume(R r, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> function3);

    void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t);

    <R extends T> Object tryResume(R r, Object obj, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> function3);
}
