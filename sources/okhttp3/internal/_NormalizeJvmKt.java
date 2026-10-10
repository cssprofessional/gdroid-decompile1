package okhttp3.internal;

import java.text.Normalizer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: -NormalizeJvm.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class _NormalizeJvmKt {
    public static final String normalizeNfc(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        String strNormalize = Normalizer.normalize(string, Normalizer.Form.NFC);
        Intrinsics.checkNotNullExpressionValue(strNormalize, "normalize(...)");
        return strNormalize;
    }
}
