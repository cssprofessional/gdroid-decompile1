package io.ktor.utils.io.core;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: BytePacketBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BytePacketBuilderKt {
    public static final int getSize(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return (int) sink.getBuffer().getSize();
    }

    public static final Sink BytePacketBuilder() {
        return new Buffer();
    }

    public static /* synthetic */ void append$default(Sink sink, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        append(sink, charSequence, i, i2);
    }

    public static final void append(Sink sink, CharSequence value, int i, int i2) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        StringsKt.writeText$default(sink, value, i, i2, null, 8, null);
    }

    public static final Source build(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return sink.getBuffer();
    }

    public static /* synthetic */ void writeFully$default(Sink sink, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        writeFully(sink, bArr, i, i2);
    }

    public static final void writeFully(Sink sink, byte[] buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        sink.write(buffer, i, i2 + i);
    }

    public static final void writePacket(Sink sink, Source packet) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(packet, "packet");
        sink.transferFrom(packet);
    }
}
