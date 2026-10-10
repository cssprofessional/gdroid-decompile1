package io.ktor.utils.io.core;

import java.io.EOFException;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;
import kotlinx.io.SourcesKt;

/* JADX INFO: compiled from: ByteReadPacket.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteReadPacketKt {
    public static final Source ByteReadPacketEmpty = new Buffer();

    public static final Source getByteReadPacketEmpty() {
        return ByteReadPacketEmpty;
    }

    public static final long getRemaining(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return source.getBuffer().getSize();
    }

    public static final Source copy(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return source.peek();
    }

    public static final long discard(Source source, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(source, "<this>");
        source.request(j);
        long jMin = Math.min(j, getRemaining(source));
        source.getBuffer().skip(jMin);
        return jMin;
    }

    public static final void takeWhile(Source source, Function1<? super Buffer, Boolean> block) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        while (!source.exhausted() && block.invoke(source.getBuffer()).booleanValue()) {
        }
    }

    public static /* synthetic */ void readFully$default(Source source, byte[] bArr, int i, int i2, int i3, Object obj) throws EOFException {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        readFully(source, bArr, i, i2);
    }

    public static final void readFully(Source source, byte[] out, int i, int i2) throws EOFException {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        SourcesKt.readTo(source, out, i, i2 + i);
    }

    public static final <T> T preview(Sink sink, Function1<? super Source, ? extends T> function) throws Exception {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(function, "function");
        Source sourcePeek = sink.getBuffer().peek();
        try {
            T tInvoke = function.invoke(sourcePeek);
            AutoCloseableKt.closeFinally(sourcePeek, null);
            return tInvoke;
        } finally {
        }
    }
}
