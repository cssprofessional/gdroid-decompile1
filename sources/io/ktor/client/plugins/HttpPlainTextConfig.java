package io.ktor.client.plugins;

import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: HttpPlainText.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpPlainTextConfig {
    public Charset sendCharset;
    public final Set<Charset> charsets = new LinkedHashSet();
    public final Map<Charset, Float> charsetQuality = new LinkedHashMap();
    public Charset responseCharsetFallback = Charsets.UTF_8;

    public final Set<Charset> getCharsets$ktor_client_core() {
        return this.charsets;
    }

    public final Map<Charset, Float> getCharsetQuality$ktor_client_core() {
        return this.charsetQuality;
    }

    public final Charset getSendCharset() {
        return this.sendCharset;
    }

    public final Charset getResponseCharsetFallback() {
        return this.responseCharsetFallback;
    }
}
