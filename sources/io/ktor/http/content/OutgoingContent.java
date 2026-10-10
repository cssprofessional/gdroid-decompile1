package io.ktor.http.content;

import io.ktor.http.ContentType;
import io.ktor.http.Headers;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: OutgoingContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class OutgoingContent {
    public /* synthetic */ OutgoingContent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public Long getContentLength() {
        return null;
    }

    public ContentType getContentType() {
        return null;
    }

    public OutgoingContent() {
    }

    public Headers getHeaders() {
        return Headers.Companion.getEmpty();
    }

    /* JADX INFO: compiled from: OutgoingContent.kt */
    public static abstract class NoContent extends OutgoingContent {
        public NoContent() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: OutgoingContent.kt */
    public static abstract class ReadChannelContent extends OutgoingContent {
        public abstract ByteReadChannel readFrom();

        public ReadChannelContent() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: OutgoingContent.kt */
    public static abstract class WriteChannelContent extends OutgoingContent {
        public abstract Object writeTo(ByteWriteChannel byteWriteChannel, Continuation<? super Unit> continuation);

        public WriteChannelContent() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: OutgoingContent.kt */
    public static abstract class ByteArrayContent extends OutgoingContent {
        public abstract byte[] bytes();

        public ByteArrayContent() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: OutgoingContent.kt */
    public static abstract class ContentWrapper extends OutgoingContent {
        public final OutgoingContent delegate;

        @Override // io.ktor.http.content.OutgoingContent
        public ContentType getContentType() {
            return this.delegate.getContentType();
        }

        @Override // io.ktor.http.content.OutgoingContent
        public Long getContentLength() {
            return this.delegate.getContentLength();
        }

        @Override // io.ktor.http.content.OutgoingContent
        public Headers getHeaders() {
            return this.delegate.getHeaders();
        }

        public final OutgoingContent delegate() {
            return this.delegate;
        }
    }
}
