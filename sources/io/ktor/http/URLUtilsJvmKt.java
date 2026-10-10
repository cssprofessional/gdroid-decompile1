package io.ktor.http;

import java.net.URI;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: URLUtilsJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class URLUtilsJvmKt {
    public static final URI toURI(Url url) {
        Intrinsics.checkNotNullParameter(url, "<this>");
        return new URI(url.toString());
    }
}
