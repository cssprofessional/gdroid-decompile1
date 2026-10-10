package io.ktor.utils.io.core;

import io.ktor.utils.io.charsets.CharsetJVMKt;
import io.ktor.utils.io.charsets.EncodingKt;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Sink;
import kotlinx.io.Source;
import kotlinx.io.Utf8Kt;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StringsKt {
    public static /* synthetic */ byte[] toByteArray$default(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return toByteArray(str, charset);
    }

    public static final byte[] toByteArray(String str, Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return Intrinsics.areEqual(charset, Charsets.UTF_8) ? StringsKt__StringsJVMKt.encodeToByteArray$default(str, 0, 0, true, 3, null) : CharsetJVMKt.encodeToByteArray(charset.newEncoder(), str, 0, str.length());
    }

    public static /* synthetic */ String readText$default(Source source, Charset charset, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i2 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        return readText(source, charset, i);
    }

    public static final String readText(Source source, Charset charset, int i) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!Intrinsics.areEqual(charset, Charsets.UTF_8)) {
            return EncodingKt.decode(charset.newDecoder(), source, i);
        }
        if (i == Integer.MAX_VALUE) {
            return Utf8Kt.readString(source);
        }
        return Utf8Kt.readString(source, Math.min(source.getBuffer().getSize(), i));
    }

    public static /* synthetic */ void writeText$default(Sink sink, CharSequence charSequence, int i, int i2, Charset charset, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        if ((i3 & 8) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(sink, charSequence, i, i2, charset);
    }

    public static final void writeText(Sink sink, CharSequence text, int i, int i2, Charset charset) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (charset == Charsets.UTF_8) {
            Utf8Kt.writeString(sink, text.toString(), i, i2);
        } else {
            EncodingKt.encodeToImpl(charset.newEncoder(), sink, text, i, i2);
        }
    }
}
