package io.ktor.utils.io.charsets;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Encoding.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TooLongLineException extends MalformedInputException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TooLongLineException(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
