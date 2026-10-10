package io.ktor.client.utils;

import io.ktor.http.Headers;
import io.ktor.http.HeadersBuilder;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: headers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HeadersKt {
    public static final Headers buildHeaders(Function1<? super HeadersBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        HeadersBuilder headersBuilder = new HeadersBuilder(0, 1, null);
        block.invoke(headersBuilder);
        return headersBuilder.build();
    }
}
