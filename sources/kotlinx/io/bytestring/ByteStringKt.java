package kotlinx.io.bytestring;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: ByteString.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class ByteStringKt {
    public static final ByteString ByteString(byte... bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.length == 0) {
            return ByteString.Companion.getEMPTY$kotlinx_io_bytestring();
        }
        return ByteString.Companion.wrap$kotlinx_io_bytestring(bytes);
    }

    public static final boolean isEmpty(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.getSize() == 0;
    }

    public static final String decodeToString(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return StringsKt__StringsJVMKt.decodeToString(byteString.getBackingArrayReference());
    }
}
