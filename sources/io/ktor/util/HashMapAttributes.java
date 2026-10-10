package io.ktor.util;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AttributesJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HashMapAttributes extends AttributesJvmBase {
    public final Map<AttributeKey<?>, Object> map = new HashMap();

    @Override // io.ktor.util.AttributesJvmBase
    public Map<AttributeKey<?>, Object> getMap() {
        return this.map;
    }

    @Override // io.ktor.util.Attributes
    public <T> T computeIfAbsent(AttributeKey<T> key, Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(block, "block");
        T t = (T) getMap().get(key);
        if (t != null) {
            return t;
        }
        T tInvoke = block.invoke();
        Object objPut = getMap().put(key, tInvoke);
        if (objPut != null) {
            tInvoke = (T) objPut;
        }
        Intrinsics.checkNotNull(tInvoke, "null cannot be cast to non-null type T of io.ktor.util.HashMapAttributes.computeIfAbsent");
        return tInvoke;
    }
}
