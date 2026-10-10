package io.ktor.http;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpHeaders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class IllegalHeaderValueException extends IllegalArgumentException {
    public final String headerValue;
    public final int position;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IllegalHeaderValueException(String headerValue, int i) {
        super("Header value '" + headerValue + "' contains illegal character '" + headerValue.charAt(i) + "' (code " + (headerValue.charAt(i) & 255) + ')');
        Intrinsics.checkNotNullParameter(headerValue, "headerValue");
        this.headerValue = headerValue;
        this.position = i;
    }
}
