package io.ktor.utils.io;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmSerializable.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class JvmSerializable_jvmKt {
    public static final <T> Object JvmSerializerReplacement(JvmSerializer<T> serializer, T value) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(value, "value");
        return new DefaultJvmSerializerReplacement(serializer, value);
    }
}
