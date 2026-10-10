package io.ktor.util.collections;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: ConcurrentMapJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConcurrentMap<Key, Value> implements Map<Key, Value>, KMappedMarker {
    public final ConcurrentHashMap<Key, Value> delegate;

    public ConcurrentMap(int i) {
        this.delegate = new ConcurrentHashMap<>(i);
    }

    public /* synthetic */ ConcurrentMap(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 32 : i);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<Key, Value>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Key> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<Value> values() {
        return getValues();
    }

    public final Value computeIfAbsent(Key key, final Function0<? extends Value> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ConcurrentHashMap<Key, Value> concurrentHashMap = this.delegate;
        final Function1 function1 = new Function1() { // from class: io.ktor.util.collections.ConcurrentMap$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ConcurrentMap.computeIfAbsent$lambda$0(block, obj);
            }
        };
        return concurrentHashMap.computeIfAbsent(key, new Function() { // from class: io.ktor.util.collections.ConcurrentMap$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return function1.invoke(obj);
            }
        });
    }

    public static final Object computeIfAbsent$lambda$0(Function0 function0, Object obj) {
        return function0.invoke();
    }

    public int getSize() {
        return this.delegate.size();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.delegate.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.delegate.containsValue(obj);
    }

    @Override // java.util.Map
    public Value get(Object obj) {
        return this.delegate.get(obj);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.delegate.isEmpty();
    }

    public Set<Map.Entry<Key, Value>> getEntries() {
        Set<Map.Entry<Key, Value>> setEntrySet = this.delegate.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        return setEntrySet;
    }

    public Set<Key> getKeys() {
        Set<Key> setKeySet = this.delegate.keySet();
        Intrinsics.checkNotNullExpressionValue(setKeySet, "<get-keys>(...)");
        return setKeySet;
    }

    public Collection<Value> getValues() {
        Collection<Value> collectionValues = this.delegate.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        return collectionValues;
    }

    @Override // java.util.Map
    public void clear() {
        this.delegate.clear();
    }

    @Override // java.util.Map
    public Value put(Key key, Value value) {
        return this.delegate.put(key, value);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends Key, ? extends Value> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.delegate.putAll(from);
    }

    @Override // java.util.Map
    public Value remove(Object obj) {
        return this.delegate.remove(obj);
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        return this.delegate.remove(obj, obj2);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj instanceof Map) {
            return Intrinsics.areEqual(obj, this.delegate);
        }
        return false;
    }

    public String toString() {
        return "ConcurrentMapJvm by " + this.delegate;
    }
}
