package kotlin.properties;

import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: Interfaces.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ReadWriteProperty<T, V> {
    V getValue(T t, KProperty<?> kProperty);

    void setValue(T t, KProperty<?> kProperty, V v);
}
