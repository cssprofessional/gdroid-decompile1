package in.dragonbra.javasteam.util;

import in.dragonbra.javasteam.util.compat.InputStreamCompatKt;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: ZipUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ZipUtil {
    public static final ZipUtil INSTANCE = new ZipUtil();

    private ZipUtil() {
    }

    public static /* synthetic */ int decompress$default(MemoryStream memoryStream, byte[] bArr, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return decompress(memoryStream, bArr, z);
    }

    public static final int decompress(MemoryStream ms, byte[] destination, boolean z) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(ms, "ms");
        Intrinsics.checkNotNullParameter(destination, "destination");
        ZipInputStream zipInputStream = new ZipInputStream(ms, Charsets.UTF_8);
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                throw new IllegalArgumentException("Did not find any zip entries in the given stream");
            }
            int size = (int) nextEntry.getSize();
            if (destination.length < size) {
                throw new IllegalArgumentException("The destination buffer is smaller than the decompressed data size.");
            }
            int nBytesCompat = InputStreamCompatKt.readNBytesCompat(zipInputStream, destination, 0, size);
            if (zipInputStream.getNextEntry() == null) {
                if (z && Utils.crc32(destination, 0, nBytesCompat) != nextEntry.getCrc()) {
                    throw new Exception("Checksum validation failed for decompressed file");
                }
                CloseableKt.closeFinally(zipInputStream, null);
                return nBytesCompat;
            }
            throw new IllegalArgumentException("Given stream should only contain one zip entry");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(zipInputStream, th);
                throw th2;
            }
        }
    }
}
