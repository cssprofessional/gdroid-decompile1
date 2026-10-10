package io.ktor.http.content;

import io.ktor.http.ContentType;
import io.ktor.http.ContentTypesKt;
import io.ktor.http.HttpStatusCode;
import io.ktor.http.content.OutgoingContent;
import io.ktor.utils.io.core.StringsKt;
import java.nio.charset.Charset;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: compiled from: TextContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TextContent extends OutgoingContent.ByteArrayContent {
    public final byte[] bytes;
    public final ContentType contentType;
    public final HttpStatusCode status;
    public final String text;

    public TextContent(String text, ContentType contentType, HttpStatusCode httpStatusCode) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        this.text = text;
        this.contentType = contentType;
        this.status = httpStatusCode;
        Charset charset = ContentTypesKt.charset(getContentType());
        this.bytes = StringsKt.toByteArray(text, charset == null ? Charsets.UTF_8 : charset);
    }

    public /* synthetic */ TextContent(String str, ContentType contentType, HttpStatusCode httpStatusCode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, contentType, (i & 4) != 0 ? null : httpStatusCode);
    }

    @Override // io.ktor.http.content.OutgoingContent
    public ContentType getContentType() {
        return this.contentType;
    }

    @Override // io.ktor.http.content.OutgoingContent
    public Long getContentLength() {
        return Long.valueOf(this.bytes.length);
    }

    @Override // io.ktor.http.content.OutgoingContent.ByteArrayContent
    public byte[] bytes() {
        return this.bytes;
    }

    public String toString() {
        return "TextContent[" + getContentType() + "] \"" + StringsKt___StringsKt.take(this.text, 30) + '\"';
    }
}
