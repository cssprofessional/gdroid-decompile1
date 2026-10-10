package io.ktor.utils.io.core;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;

/* JADX INFO: compiled from: Buffer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BufferKt {
    public static final boolean canRead(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return !buffer.exhausted();
    }
}
