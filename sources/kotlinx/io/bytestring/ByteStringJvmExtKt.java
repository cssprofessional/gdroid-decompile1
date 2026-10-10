package kotlinx.io.bytestring;

import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ByteStringJvmExt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class ByteStringJvmExtKt {
    public static final String decodeToString(ByteString byteString, Charset charset) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(byteString.getBackingArrayReference(), charset);
    }
}
