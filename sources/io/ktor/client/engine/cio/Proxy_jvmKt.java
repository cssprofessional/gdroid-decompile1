package io.ktor.client.engine.cio;

import io.ktor.http.URLUtilsJvmKt;
import io.ktor.http.Url;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Proxy.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Proxy_jvmKt {
    public static final Proxy lookupGlobalProxy(Url url) {
        URI uri;
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            uri = URLUtilsJvmKt.toURI(url);
        } catch (URISyntaxException unused) {
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        List<Proxy> listSelect = ProxySelector.getDefault().select(uri);
        Intrinsics.checkNotNull(listSelect);
        if (listSelect.isEmpty()) {
            return null;
        }
        Proxy proxy = (Proxy) CollectionsKt___CollectionsKt.first((List) listSelect);
        if (listSelect.size() == 1 && proxy.type() == Proxy.Type.DIRECT) {
            return null;
        }
        return proxy;
    }
}
