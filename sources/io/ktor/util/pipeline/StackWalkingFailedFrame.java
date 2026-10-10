package io.ktor.util.pipeline;

import io.ktor.util.StackFramesJvmKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: StackWalkingFailedFrame.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StackWalkingFailedFrame implements CoroutineStackFrame, Continuation<?> {
    public static final StackWalkingFailedFrame INSTANCE = new StackWalkingFailedFrame();

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StackWalkingFailed.class);
        StackWalkingFailed stackWalkingFailed = StackWalkingFailed.INSTANCE;
        return StackFramesJvmKt.createStackTraceElement(orCreateKotlinClass, "failedToCaptureStackFrame", "StackWalkingFailed.kt", 8);
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        StackWalkingFailed.INSTANCE.failedToCaptureStackFrame();
    }
}
