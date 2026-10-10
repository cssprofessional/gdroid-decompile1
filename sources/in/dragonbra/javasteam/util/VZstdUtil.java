package in.dragonbra.javasteam.util;

import com.github.luben.zstd.Zstd;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VZstdUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class VZstdUtil {
    private static final int FOOTER_SIZE = 15;
    private static final int HEADER_SIZE = 8;
    private static final int VZSTD_HEADER = 1633309526;
    public static final VZstdUtil INSTANCE = new VZstdUtil();
    private static final Logger logger = LogManager.getLogger(VZstdUtil.class);

    public static final int decompress(byte[] buffer, byte[] destination) throws IOException, IllegalArgumentException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return decompress$default(buffer, destination, false, 4, null);
    }

    private VZstdUtil() {
    }

    public static /* synthetic */ int decompress$default(byte[] bArr, byte[] bArr2, boolean z, int i, Object obj) throws IOException, IllegalArgumentException {
        if ((i & 4) != 0) {
            z = false;
        }
        return decompress(bArr, bArr2, z);
    }

    public static final int decompress(byte[] buffer, byte[] destination, boolean z) throws IOException, IllegalArgumentException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (buffer.length < 23) {
            throw new IOException("Buffer too small to contain VZstd header and footer");
        }
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(buffer).order(ByteOrder.LITTLE_ENDIAN);
        if (byteBufferOrder.getInt(0) != VZSTD_HEADER) {
            throw new IOException("Expecting VZstdHeader at start of stream");
        }
        int length = buffer.length;
        int i = byteBufferOrder.getInt(length - 15);
        int i2 = byteBufferOrder.getInt(length - 11);
        if (buffer[buffer.length - 3] != 122 || buffer[buffer.length - 2] != 115 || buffer[buffer.length - 1] != 118) {
            throw new IOException("Expecting VZstdFooter at end of stream");
        }
        if (destination.length < i2) {
            throw new IllegalArgumentException("The destination buffer is smaller than the decompressed data size.");
        }
        try {
            long jDecompress = Zstd.decompress(destination, ArraysKt___ArraysJvmKt.copyOfRange(buffer, 8, buffer.length - 15));
            if (jDecompress != i2) {
                throw new IOException("Failed to decompress Zstd (expected " + i2 + " bytes, got " + jDecompress + ").");
            }
            if (z && ((int) Utils.crc32(destination, 0, i2)) != i) {
                throw new IOException("CRC does not match decompressed data. VZstd data may be corrupted.");
            }
            return i2;
        } catch (Exception e) {
            throw new IOException("Failed to decompress Zstd data: " + e.getMessage(), e);
        } catch (NoClassDefFoundError e2) {
            Logger.error$default(logger, "Missing implementation of com.github.luben:zstd-jni", null, 2, null);
            throw e2;
        }
    }
}
