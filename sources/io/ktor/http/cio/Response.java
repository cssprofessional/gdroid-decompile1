package io.ktor.http.cio;

import io.ktor.http.cio.internals.CharArrayBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestResponse.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Response extends HttpMessage {
    public final int status;
    public final CharSequence statusText;
    public final CharSequence version;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Response(CharSequence version, int i, CharSequence statusText, HttpHeadersMap headers, CharArrayBuilder builder) {
        super(headers, builder);
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(statusText, "statusText");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.version = version;
        this.status = i;
        this.statusText = statusText;
    }

    public final CharSequence getVersion() {
        return this.version;
    }

    public final int getStatus() {
        return this.status;
    }

    public final CharSequence getStatusText() {
        return this.statusText;
    }
}
