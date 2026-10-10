package io.ktor.client.engine;

import io.ktor.client.utils.HeadersKt;
import io.ktor.http.ContentType;
import io.ktor.http.Headers;
import io.ktor.http.HeadersBuilder;
import io.ktor.http.HttpHeaders;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.PlatformUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UtilsKt {
    public static final Set<String> DATE_HEADERS;
    public static final String KTOR_DEFAULT_USER_AGENT = "ktor-client";

    static {
        HttpHeaders httpHeaders = HttpHeaders.INSTANCE;
        DATE_HEADERS = SetsKt__SetsKt.setOf((Object[]) new String[]{httpHeaders.getDate(), httpHeaders.getExpires(), httpHeaders.getLastModified(), httpHeaders.getIfModifiedSince(), httpHeaders.getIfUnmodifiedSince()});
    }

    public static final void mergeHeaders(final Headers requestHeaders, final OutgoingContent content, final Function2<? super String, ? super String, Unit> block) {
        String string;
        String strValueOf;
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(block, "block");
        HeadersKt.buildHeaders(new Function1() { // from class: io.ktor.client.engine.UtilsKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UtilsKt.mergeHeaders$lambda$0(requestHeaders, content, (HeadersBuilder) obj);
            }
        }).forEach(new Function2() { // from class: io.ktor.client.engine.UtilsKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return UtilsKt.mergeHeaders$lambda$1(block, (String) obj, (List) obj2);
            }
        });
        HttpHeaders httpHeaders = HttpHeaders.INSTANCE;
        if (requestHeaders.get(httpHeaders.getUserAgent()) == null && content.getHeaders().get(httpHeaders.getUserAgent()) == null && needUserAgent()) {
            block.invoke(httpHeaders.getUserAgent(), KTOR_DEFAULT_USER_AGENT);
        }
        ContentType contentType = content.getContentType();
        if ((contentType == null || (string = contentType.toString()) == null) && (string = content.getHeaders().get(httpHeaders.getContentType())) == null) {
            string = requestHeaders.get(httpHeaders.getContentType());
        }
        Long contentLength = content.getContentLength();
        if ((contentLength == null || (strValueOf = String.valueOf(contentLength.longValue())) == null) && (strValueOf = content.getHeaders().get(httpHeaders.getContentLength())) == null) {
            strValueOf = requestHeaders.get(httpHeaders.getContentLength());
        }
        if (string != null) {
            block.invoke(httpHeaders.getContentType(), string);
        }
        if (strValueOf != null) {
            block.invoke(httpHeaders.getContentLength(), strValueOf);
        }
    }

    public static final Unit mergeHeaders$lambda$0(Headers headers, OutgoingContent outgoingContent, HeadersBuilder buildHeaders) {
        Intrinsics.checkNotNullParameter(buildHeaders, "$this$buildHeaders");
        buildHeaders.appendAll(headers);
        buildHeaders.appendAll(outgoingContent.getHeaders());
        return Unit.INSTANCE;
    }

    public static final Unit mergeHeaders$lambda$1(Function2 function2, String key, List values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        HttpHeaders httpHeaders = HttpHeaders.INSTANCE;
        if (!Intrinsics.areEqual(httpHeaders.getContentLength(), key) && !Intrinsics.areEqual(httpHeaders.getContentType(), key)) {
            if (!DATE_HEADERS.contains(key)) {
                function2.invoke(key, CollectionsKt___CollectionsKt.joinToString$default(values, Intrinsics.areEqual(httpHeaders.getCookie(), key) ? "; " : ",", null, null, 0, null, null, 62, null));
            } else {
                Iterator it = values.iterator();
                while (it.hasNext()) {
                    function2.invoke(key, (String) it.next());
                }
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    public static final Object callContext(Continuation<? super CoroutineContext> continuation) {
        CoroutineContext.Element element = continuation.getContext().get(KtorCallContextElement.Companion);
        Intrinsics.checkNotNull(element);
        return ((KtorCallContextElement) element).getCallContext();
    }

    public static final boolean needUserAgent() {
        return !PlatformUtils.INSTANCE.getIS_BROWSER();
    }
}
