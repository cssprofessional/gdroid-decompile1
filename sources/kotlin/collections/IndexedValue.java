package kotlin.collections;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IndexedValue.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class IndexedValue<T> {
    public final int index;
    public final T value;

    public final int component1() {
        return this.index;
    }

    public final T component2() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndexedValue)) {
            return false;
        }
        IndexedValue indexedValue = (IndexedValue) obj;
        return this.index == indexedValue.index && Intrinsics.areEqual(this.value, indexedValue.value);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.index) * 31;
        T t = this.value;
        return iHashCode + (t == null ? 0 : t.hashCode());
    }

    public String toString() {
        return "IndexedValue(index=" + this.index + ", value=" + this.value + ')';
    }

    public IndexedValue(int i, T t) {
        this.index = i;
        this.value = t;
    }

    public final int getIndex() {
        return this.index;
    }

    public final T getValue() {
        return this.value;
    }
}
