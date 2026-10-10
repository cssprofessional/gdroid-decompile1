package io.ktor.http;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Headers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EmptyHeaders implements Headers {
    public static final EmptyHeaders INSTANCE = new EmptyHeaders();

    @Override // io.ktor.util.StringValues
    public List<String> getAll(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return null;
    }

    @Override // io.ktor.util.StringValues
    public boolean getCaseInsensitiveName() {
        return true;
    }

    @Override // io.ktor.util.StringValues
    public /* bridge */ boolean contains(String str) {
        return super.contains(str);
    }

    @Override // io.ktor.util.StringValues
    public /* bridge */ void forEach(Function2<? super String, ? super List<String>, Unit> function2) {
        super.forEach(function2);
    }

    @Override // io.ktor.util.StringValues
    public /* bridge */ String get(String str) {
        return super.get(str);
    }

    @Override // io.ktor.util.StringValues
    public Set<String> names() {
        return SetsKt__SetsKt.emptySet();
    }

    @Override // io.ktor.util.StringValues
    public Set<Map.Entry<String, List<String>>> entries() {
        return SetsKt__SetsKt.emptySet();
    }

    public String toString() {
        return "Headers " + entries();
    }
}
