package kotlinx.io.bytestring.unsafe;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.bytestring.ByteString;

/* JADX INFO: compiled from: UnsafeByteStringOperations.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnsafeByteStringOperations {
    public static final UnsafeByteStringOperations INSTANCE = new UnsafeByteStringOperations();

    public final ByteString wrapUnsafe(byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return ByteString.Companion.wrap$kotlinx_io_bytestring(array);
    }
}
