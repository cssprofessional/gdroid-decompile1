package io.ktor.util.reflect;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: TypeInfoJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TypeInfoJvmKt {
    public static final boolean instanceOf(Object obj, KClass<?> type) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return JvmClassMappingKt.getJavaClass(type).isInstance(obj);
    }
}
