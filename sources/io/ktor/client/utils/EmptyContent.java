package io.ktor.client.utils;

import io.ktor.http.content.OutgoingContent;

/* JADX INFO: compiled from: Content.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EmptyContent extends OutgoingContent.NoContent {
    public static final EmptyContent INSTANCE = new EmptyContent();
    public static final long contentLength = 0;

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof EmptyContent);
    }

    public int hashCode() {
        return 1450860306;
    }

    public String toString() {
        return "EmptyContent";
    }

    @Override // io.ktor.http.content.OutgoingContent
    public Long getContentLength() {
        return Long.valueOf(contentLength);
    }
}
