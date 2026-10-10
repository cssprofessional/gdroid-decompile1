package okhttp3.internal.idn;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdnaMappingTable.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class IdnaMappingTableKt {
    public static final int read14BitInt(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        char cCharAt = str.charAt(i);
        return (cCharAt << 7) + str.charAt(i + 1);
    }
}
