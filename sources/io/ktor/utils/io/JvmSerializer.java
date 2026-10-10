package io.ktor.utils.io;

import java.io.Serializable;

/* JADX INFO: compiled from: JvmSerializable.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface JvmSerializer<T> extends Serializable {
    T jvmDeserialize(byte[] bArr);

    byte[] jvmSerialize(T t);
}
