package io.ktor.util;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StringValues.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface StringValues {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: StringValues.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final StringValues Empty = new StringValuesImpl(false, null, 3, 0 == true ? 1 : 0);
    }

    Set<Map.Entry<String, List<String>>> entries();

    List<String> getAll(String str);

    boolean getCaseInsensitiveName();

    boolean isEmpty();

    Set<String> names();

    default String get(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        List<String> all = getAll(name);
        if (all != null) {
            return (String) CollectionsKt___CollectionsKt.firstOrNull(all);
        }
        return null;
    }

    default boolean contains(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return getAll(name) != null;
    }

    default void forEach(Function2<? super String, ? super List<String>, Unit> body) {
        Intrinsics.checkNotNullParameter(body, "body");
        Iterator<T> it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            body.invoke((String) entry.getKey(), (List) entry.getValue());
        }
    }
}
