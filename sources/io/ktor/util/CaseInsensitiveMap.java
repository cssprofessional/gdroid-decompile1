package io.ktor.util;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: CaseInsensitiveMap.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CaseInsensitiveMap<Value> implements Map<String, Value>, KMappedMarker {
    public final Map<CaseInsensitiveString, Value> delegate = new LinkedHashMap();

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<String, Value>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public final /* bridge */ Value get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public final /* bridge */ Value remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<Value> values() {
        return getValues();
    }

    public int getSize() {
        return this.delegate.size();
    }

    public boolean containsKey(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.delegate.containsKey(new CaseInsensitiveString(key));
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        if (obj == null) {
            return false;
        }
        return this.delegate.containsValue(obj);
    }

    public Value get(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.delegate.get(TextKt.caseInsensitive(key));
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.delegate.isEmpty();
    }

    @Override // java.util.Map
    public void clear() {
        this.delegate.clear();
    }

    @Override // java.util.Map
    public Value put(String key, Value value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return this.delegate.put(TextKt.caseInsensitive(key), value);
    }

    public Value remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.delegate.remove(TextKt.caseInsensitive(key));
    }

    public Set<String> getKeys() {
        return new DelegatingMutableSet(this.delegate.keySet(), new Function1() { // from class: io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CaseInsensitiveMap._get_keys_$lambda$0((CaseInsensitiveString) obj);
            }
        }, new Function1() { // from class: io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CaseInsensitiveMap._get_keys_$lambda$1((String) obj);
            }
        });
    }

    public static final String _get_keys_$lambda$0(CaseInsensitiveString DelegatingMutableSet) {
        Intrinsics.checkNotNullParameter(DelegatingMutableSet, "$this$DelegatingMutableSet");
        return DelegatingMutableSet.getContent();
    }

    public static final CaseInsensitiveString _get_keys_$lambda$1(String DelegatingMutableSet) {
        Intrinsics.checkNotNullParameter(DelegatingMutableSet, "$this$DelegatingMutableSet");
        return TextKt.caseInsensitive(DelegatingMutableSet);
    }

    public Set<Map.Entry<String, Value>> getEntries() {
        return new DelegatingMutableSet(this.delegate.entrySet(), new Function1() { // from class: io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CaseInsensitiveMap._get_entries_$lambda$0((Map.Entry) obj);
            }
        }, new Function1() { // from class: io.ktor.util.CaseInsensitiveMap$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CaseInsensitiveMap._get_entries_$lambda$1((Map.Entry) obj);
            }
        });
    }

    public static final Map.Entry _get_entries_$lambda$0(Map.Entry DelegatingMutableSet) {
        Intrinsics.checkNotNullParameter(DelegatingMutableSet, "$this$DelegatingMutableSet");
        return new Entry(((CaseInsensitiveString) DelegatingMutableSet.getKey()).getContent(), DelegatingMutableSet.getValue());
    }

    public static final Map.Entry _get_entries_$lambda$1(Map.Entry DelegatingMutableSet) {
        Intrinsics.checkNotNullParameter(DelegatingMutableSet, "$this$DelegatingMutableSet");
        return new Entry(TextKt.caseInsensitive((String) DelegatingMutableSet.getKey()), DelegatingMutableSet.getValue());
    }

    public Collection<Value> getValues() {
        return this.delegate.values();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof CaseInsensitiveMap)) {
            return false;
        }
        return Intrinsics.areEqual(((CaseInsensitiveMap) obj).delegate, this.delegate);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Value> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        for (Map.Entry<? extends String, ? extends Value> entry : from.entrySet()) {
            put(entry.getKey(), (Object) entry.getValue());
        }
    }
}
