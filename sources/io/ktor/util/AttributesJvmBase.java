package io.ktor.util;

import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AttributesJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AttributesJvmBase implements Attributes {
    public abstract Map<AttributeKey<?>, Object> getMap();

    @Override // io.ktor.util.Attributes
    public /* bridge */ <T> T get(AttributeKey<T> attributeKey) {
        return (T) super.get(attributeKey);
    }

    @Override // io.ktor.util.Attributes
    public /* bridge */ <T> void set(AttributeKey<T> attributeKey, T t) {
        super.set(attributeKey, t);
    }

    @Override // io.ktor.util.Attributes
    public final <T> T getOrNull(AttributeKey<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) getMap().get(key);
    }

    @Override // io.ktor.util.Attributes
    public final boolean contains(AttributeKey<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getMap().containsKey(key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.ktor.util.Attributes
    public final <T> void put(AttributeKey<T> key, T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        getMap().put(key, value);
    }

    @Override // io.ktor.util.Attributes
    public final <T> void remove(AttributeKey<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        getMap().remove(key);
    }

    @Override // io.ktor.util.Attributes
    public final List<AttributeKey<?>> getAllKeys() {
        return CollectionsKt___CollectionsKt.toList(getMap().keySet());
    }
}
