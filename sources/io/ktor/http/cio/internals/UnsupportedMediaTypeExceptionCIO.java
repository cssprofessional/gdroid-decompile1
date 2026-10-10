package io.ktor.http.cio.internals;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Errors.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UnsupportedMediaTypeExceptionCIO extends IOException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnsupportedMediaTypeExceptionCIO(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
