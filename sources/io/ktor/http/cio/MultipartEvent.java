package io.ktor.http.cio;

import io.ktor.utils.io.ByteReadChannel;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;
import kotlinx.io.Source;

/* JADX INFO: compiled from: Multipart.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class MultipartEvent {
    public /* synthetic */ MultipartEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public MultipartEvent() {
    }

    /* JADX INFO: compiled from: Multipart.kt */
    public static final class Preamble extends MultipartEvent {
        public final Source body;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Preamble(Source body) {
            super(null);
            Intrinsics.checkNotNullParameter(body, "body");
            this.body = body;
        }
    }

    /* JADX INFO: compiled from: Multipart.kt */
    public static final class MultipartPart extends MultipartEvent {
        public final ByteReadChannel body;
        public final Deferred<HttpHeadersMap> headers;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MultipartPart(Deferred<HttpHeadersMap> headers, ByteReadChannel body) {
            super(null);
            Intrinsics.checkNotNullParameter(headers, "headers");
            Intrinsics.checkNotNullParameter(body, "body");
            this.headers = headers;
            this.body = body;
        }
    }

    /* JADX INFO: compiled from: Multipart.kt */
    public static final class Epilogue extends MultipartEvent {
        public final Source body;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Epilogue(Source body) {
            super(null);
            Intrinsics.checkNotNullParameter(body, "body");
            this.body = body;
        }
    }
}
