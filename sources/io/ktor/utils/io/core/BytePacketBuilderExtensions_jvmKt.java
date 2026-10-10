package io.ktor.utils.io.core;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.BuffersJvmKt;
import kotlinx.io.Sink;

/* JADX INFO: compiled from: BytePacketBuilderExtensions.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BytePacketBuilderExtensions_jvmKt {
    public static final void writeFully(Sink sink, ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        BuffersJvmKt.transferFrom(sink.getBuffer(), buffer);
    }
}
