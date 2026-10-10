package io.ktor.utils.io.charsets;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CharsetJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class MalformedInputException extends java.nio.charset.MalformedInputException {
    public final String _message;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MalformedInputException(String message) {
        super(0);
        Intrinsics.checkNotNullParameter(message, "message");
        this._message = message;
    }

    @Override // java.nio.charset.MalformedInputException, java.lang.Throwable
    public String getMessage() {
        return this._message;
    }
}
