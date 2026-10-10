package io.ktor.util;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: CaseInsensitiveMap.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Entry<Key, Value> implements Map.Entry<Key, Value>, KMappedMarker {
    public final Key key;
    public Value value;

    public Entry(Key key, Value value) {
        this.key = key;
        this.value = value;
    }

    @Override // java.util.Map.Entry
    public Key getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public Value getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public void setValue(Value value) {
        this.value = value;
    }

    @Override // java.util.Map.Entry
    public Value setValue(Value value) {
        setValue((Object) value);
        return getValue();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Key key = getKey();
        Intrinsics.checkNotNull(key);
        int iHashCode = key.hashCode() + 527;
        Value value = getValue();
        Intrinsics.checkNotNull(value);
        return iHashCode + value.hashCode();
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Intrinsics.areEqual(entry.getKey(), getKey()) && Intrinsics.areEqual(entry.getValue(), getValue());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
