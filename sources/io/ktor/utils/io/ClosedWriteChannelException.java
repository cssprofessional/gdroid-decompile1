package io.ktor.utils.io;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClosedWriteChannelException extends ClosedByteChannelException {
    /* JADX WARN: Multi-variable type inference failed */
    public ClosedWriteChannelException() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ClosedWriteChannelException(Throwable th) {
        super(th);
    }

    public /* synthetic */ ClosedWriteChannelException(Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : th);
    }
}
