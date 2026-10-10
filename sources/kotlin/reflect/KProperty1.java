package kotlin.reflect;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: KProperty.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface KProperty1<T, V> extends KProperty<V>, Function1<T, V> {

    /* JADX INFO: compiled from: KProperty.kt */
    public interface Getter<T, V> extends KFunction, Function1<T, V> {
    }

    V get(T t);

    Getter<T, V> getGetter();
}
