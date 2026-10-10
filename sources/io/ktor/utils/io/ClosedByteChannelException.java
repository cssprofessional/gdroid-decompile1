package io.ktor.utils.io;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public class ClosedByteChannelException extends IOException {
    /* JADX WARN: Multi-variable type inference failed */
    public ClosedByteChannelException() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ClosedByteChannelException(Throwable th) {
        super(th != null ? th.getMessage() : null, th);
    }

    public /* synthetic */ ClosedByteChannelException(Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : th);
    }
}
