package io.ktor.util;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: StackFramesJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StackFramesJvmKt {
    public static final StackTraceElement createStackTraceElement(KClass<?> kClass, String methodName, String fileName, int i) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return new StackTraceElement(JvmClassMappingKt.getJavaClass(kClass).getName(), methodName, fileName, i);
    }
}
