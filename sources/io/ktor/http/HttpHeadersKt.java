package io.ktor.http;

import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: HttpHeaders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpHeadersKt {
    public static final boolean isDelimiter(char c) {
        return StringsKt__StringsKt.contains$default((CharSequence) "\"(),/:;<=>?@[\\]{}", c, false, 2, (Object) null);
    }
}
