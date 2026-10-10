package io.ktor.utils.io.core;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink;
import kotlinx.io.SinksJvmKt;

/* JADX INFO: compiled from: OutputArraysJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class OutputArraysJVMKt {
    public static final void writeByteBuffer(Sink sink, ByteBuffer bb) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(bb, "bb");
        SinksJvmKt.write(sink, bb);
    }
}
