package io.ktor.websocket;

import io.ktor.utils.io.charsets.EncodingKt;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.StringsKt;
import io.ktor.websocket.Frame;
import java.nio.charset.CharsetDecoder;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.io.Buffer;

/* JADX INFO: compiled from: FrameCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FrameCommonKt {
    public static final String readText(Frame.Text text) {
        Intrinsics.checkNotNullParameter(text, "<this>");
        if (!text.getFin()) {
            throw new IllegalArgumentException("Text could be only extracted from non-fragmented frame");
        }
        CharsetDecoder charsetDecoderNewDecoder = Charsets.UTF_8.newDecoder();
        Intrinsics.checkNotNullExpressionValue(charsetDecoderNewDecoder, "newDecoder(...)");
        Buffer buffer = new Buffer();
        BytePacketBuilderKt.writeFully$default(buffer, text.getData(), 0, 0, 6, null);
        return EncodingKt.decode$default(charsetDecoderNewDecoder, buffer, 0, 2, null);
    }

    public static final byte[] readBytes(Frame frame) {
        Intrinsics.checkNotNullParameter(frame, "<this>");
        byte[] data = frame.getData();
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public static final CloseReason readReason(Frame.Close close) {
        Intrinsics.checkNotNullParameter(close, "<this>");
        if (close.getData().length < 2) {
            return null;
        }
        Buffer buffer = new Buffer();
        BytePacketBuilderKt.writeFully$default(buffer, close.getData(), 0, 0, 6, null);
        return new CloseReason(buffer.readShort(), StringsKt.readText$default(buffer, null, 0, 3, null));
    }
}
