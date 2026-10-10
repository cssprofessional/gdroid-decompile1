package io.ktor.util;

import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: StringValues.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface StringValuesBuilder {
    void append(String str, String str2);

    void appendAll(StringValues stringValues);

    void appendAll(String str, Iterable<String> iterable);

    void clear();

    Set<Map.Entry<String, List<String>>> entries();

    List<String> getAll(String str);

    boolean getCaseInsensitiveName();

    boolean isEmpty();

    Set<String> names();
}
