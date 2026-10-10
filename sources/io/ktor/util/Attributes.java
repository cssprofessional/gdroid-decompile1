package io.ktor.util;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Attributes.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface Attributes {
    <T> T computeIfAbsent(AttributeKey<T> attributeKey, Function0<? extends T> function0);

    boolean contains(AttributeKey<?> attributeKey);

    List<AttributeKey<?>> getAllKeys();

    <T> T getOrNull(AttributeKey<T> attributeKey);

    <T> void put(AttributeKey<T> attributeKey, T t);

    <T> void remove(AttributeKey<T> attributeKey);

    default <T> T get(AttributeKey<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t = (T) getOrNull(key);
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("No instance for key " + key);
    }

    default <T> void set(AttributeKey<T> key, T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        put(key, value);
    }
}
