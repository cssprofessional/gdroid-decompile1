package io.ktor.utils.io.charsets;

import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: Encoding.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EncodingKt {
    public static final Source encode(CharsetEncoder charsetEncoder, CharSequence input, int i, int i2) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Buffer buffer = new Buffer();
        encodeToImpl(charsetEncoder, buffer, input, i, i2);
        return buffer;
    }

    public static /* synthetic */ Source encode$default(CharsetEncoder charsetEncoder, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        return encode(charsetEncoder, charSequence, i, i2);
    }

    public static /* synthetic */ String decode$default(CharsetDecoder charsetDecoder, Source source, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        return decode(charsetDecoder, source, i);
    }

    public static final String decode(CharsetDecoder charsetDecoder, Source input, int i) {
        Intrinsics.checkNotNullParameter(charsetDecoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        StringBuilder sb = new StringBuilder((int) Math.min(i, input.getBuffer().getSize()));
        CharsetJVMKt.decode(charsetDecoder, input, sb, i);
        return sb.toString();
    }

    public static final void encodeToImpl(CharsetEncoder charsetEncoder, Sink destination, CharSequence input, int i, int i2) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(input, "input");
        if (i >= i2) {
            return;
        }
        do {
            int iEncodeImpl = CharsetJVMKt.encodeImpl(charsetEncoder, input, i, i2, destination);
            if (iEncodeImpl < 0) {
                throw new IllegalStateException("Check failed.");
            }
            i += iEncodeImpl;
        } while (i < i2);
    }
}
