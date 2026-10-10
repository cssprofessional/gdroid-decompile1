package in.dragonbra.javasteam.util.compat;

import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ByteArrayOutputStreamCompat.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteArrayOutputStreamCompat {
    public static final ByteArrayOutputStreamCompat INSTANCE = new ByteArrayOutputStreamCompat();

    private ByteArrayOutputStreamCompat() {
    }

    public static final String toString(ByteArrayOutputStream byteArrayOutputStream) {
        Intrinsics.checkNotNullParameter(byteArrayOutputStream, "byteArrayOutputStream");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        return toString(byteArrayOutputStream, UTF_8);
    }

    public static final String toString(ByteArrayOutputStream byteArrayOutputStream, Charset charset) {
        Intrinsics.checkNotNullParameter(byteArrayOutputStream, "byteArrayOutputStream");
        Intrinsics.checkNotNullParameter(charset, "charset");
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNull(byteArray);
        return new String(byteArray, 0, byteArrayOutputStream.size(), charset);
    }
}
