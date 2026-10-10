package io.ktor.client.engine.cio;

import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: CIOEngine.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOEngineKt {
    public static final Url rebuildIfNeeded(Url url) {
        Intrinsics.checkNotNullParameter(url, "<this>");
        return (StringsKt__StringsKt.contains$default((CharSequence) url.getHost(), '/', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) url.getHost(), (CharSequence) "?", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) url.getHost(), (CharSequence) "#", false, 2, (Object) null)) ? URLUtilsKt.Url(url.toString()) : url;
    }
}
