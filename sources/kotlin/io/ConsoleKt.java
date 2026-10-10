package kotlin.io;

import java.io.InputStream;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Console.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConsoleKt {
    public static final String readln() {
        String str = readlnOrNull();
        if (str != null) {
            return str;
        }
        throw new ReadAfterEOFException("EOF has already been reached");
    }

    public static final String readlnOrNull() {
        return readLine();
    }

    public static final String readLine() {
        LineReader lineReader = LineReader.INSTANCE;
        InputStream in2 = System.in;
        Intrinsics.checkNotNullExpressionValue(in2, "in");
        Charset charsetDefaultCharset = Charset.defaultCharset();
        Intrinsics.checkNotNullExpressionValue(charsetDefaultCharset, "defaultCharset(...)");
        return lineReader.readLine(in2, charsetDefaultCharset);
    }
}
