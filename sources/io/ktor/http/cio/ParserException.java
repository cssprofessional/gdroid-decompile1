package io.ktor.http.cio;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpParser.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ParserException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParserException(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
