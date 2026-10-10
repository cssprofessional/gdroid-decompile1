package io.ktor.utils.io;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ByteChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConcurrentIOException extends IllegalStateException {
    public /* synthetic */ ConcurrentIOException(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConcurrentIOException(String taskName, Throwable th) {
        super("Concurrent " + taskName + " attempts", th);
        Intrinsics.checkNotNullParameter(taskName, "taskName");
    }
}
