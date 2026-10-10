package in.dragonbra.javasteam.util;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Passable.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Passable<T> {
    private T value;

    /* JADX WARN: Illegal instructions before constructor call */
    public Passable() {
        DefaultConstructorMarker defaultConstructorMarker = null;
        this(defaultConstructorMarker, 1, defaultConstructorMarker);
    }

    public Passable(T t) {
        this.value = t;
    }

    public /* synthetic */ Passable(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : obj);
    }

    public final T getValue() {
        return this.value;
    }

    public final void setValue(T t) {
        this.value = t;
    }
}
