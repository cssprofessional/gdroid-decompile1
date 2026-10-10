package io.ktor.util;

import java.util.Map;

/* JADX INFO: compiled from: Collections.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CollectionsKt {
    public static final <Value> Map<String, Value> caseInsensitiveMap() {
        return new CaseInsensitiveMap();
    }
}
