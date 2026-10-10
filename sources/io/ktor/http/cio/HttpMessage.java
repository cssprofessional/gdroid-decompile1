package io.ktor.http.cio;

import io.ktor.http.cio.internals.CharArrayBuilder;
import java.io.Closeable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestResponse.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class HttpMessage implements Closeable {
    public final CharArrayBuilder builder;
    public final HttpHeadersMap headers;

    public HttpMessage(HttpHeadersMap headers, CharArrayBuilder builder) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.headers = headers;
        this.builder = builder;
    }

    public final HttpHeadersMap getHeaders() {
        return this.headers;
    }

    public final void release() {
        this.builder.release();
        this.headers.release();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        release();
    }
}
