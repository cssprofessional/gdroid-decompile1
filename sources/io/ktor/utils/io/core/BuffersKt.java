package io.ktor.utils.io.core;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.SourcesKt;

/* JADX INFO: compiled from: Buffers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BuffersKt {
    public static /* synthetic */ byte[] readBytes$default(Buffer buffer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = (int) buffer.getSize();
        }
        return readBytes(buffer, i);
    }

    public static final byte[] readBytes(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return SourcesKt.readByteArray(buffer, i);
    }
}
