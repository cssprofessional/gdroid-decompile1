package kotlinx.io;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SinksJvm.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class SinksJvmKt {
    public static final int write(Sink sink, ByteBuffer source) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long size = sink.getBuffer().getSize();
        BuffersJvmKt.transferFrom(sink.getBuffer(), source);
        long size2 = sink.getBuffer().getSize() - size;
        sink.hintEmit();
        return (int) size2;
    }
}
