package in.dragonbra.javasteam.util;

import in.dragonbra.javasteam.util.compat.InputStreamCompatKt;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.function.Supplier;
import java.util.zip.DataFormatException;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.LZMAInputStream;

/* JADX INFO: compiled from: VZipUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class VZipUtil {
    private static final int FOOTER_LENGTH = 10;
    private static final int HEADER_LENGTH = 7;
    private static final byte VERSION = 97;
    private static final short VZIP_FOOTER = 30330;
    private static final short VZIP_HEADER = 23126;
    public static final VZipUtil INSTANCE = new VZipUtil();
    private static final Logger logger = LogManager.getLogger(VZipUtil.class);
    private static final ThreadLocal<byte[]> windowBufferPool = ThreadLocal.withInitial(new Supplier() { // from class: in.dragonbra.javasteam.util.VZipUtil$$ExternalSyntheticLambda0
        @Override // java.util.function.Supplier
        public final Object get() {
            return VZipUtil.windowBufferPool$lambda$0();
        }
    });

    private VZipUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] windowBufferPool$lambda$0() {
        return new byte[LZMA2Options.DICT_SIZE_DEFAULT];
    }

    public static /* synthetic */ int decompress$default(MemoryStream memoryStream, byte[] bArr, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return decompress(memoryStream, bArr, z);
    }

    public static final int decompress(MemoryStream ms, byte[] destination, boolean z) throws IllegalAccessException, IOException, ClassNotFoundException, InvocationTargetException {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(ms, "ms");
        Intrinsics.checkNotNullParameter(destination, "destination");
        try {
            BinaryReader binaryReader = new BinaryReader(ms);
            try {
                if (binaryReader.readShort() != 23126) {
                    throw new IllegalArgumentException("Expecting VZipHeader at start of stream");
                }
                if (binaryReader.readByte() != 97) {
                    throw new IllegalArgumentException("Expecting VZip version 'a'");
                }
                binaryReader.readInt();
                byte b = binaryReader.readByte();
                int i = binaryReader.readInt();
                long position = ms.getPosition();
                ms.seek(-10L, SeekOrigin.END);
                int i2 = binaryReader.readInt();
                int i3 = binaryReader.readInt();
                if (binaryReader.readShort() != 30330) {
                    throw new IllegalArgumentException("Expecting VZipFooter at end of stream");
                }
                if (destination.length < i3) {
                    throw new IllegalArgumentException("The destination buffer is smaller than the decompressed data size.");
                }
                ms.setPosition(position);
                int iMax = Math.max(4096, i);
                if (iMax <= 8388608) {
                    bArr = windowBufferPool.get();
                } else {
                    bArr = new byte[iMax];
                }
                LZMAInputStream lZMAInputStream = new LZMAInputStream(ms, i3, b, i, bArr);
                try {
                    int nBytesCompat = InputStreamCompatKt.readNBytesCompat(lZMAInputStream, destination, 0, i3);
                    CloseableKt.closeFinally(lZMAInputStream, null);
                    if (z && ((int) Utils.crc32(destination, 0, nBytesCompat)) != i2) {
                        throw new DataFormatException("CRC does not match decompressed data. VZip data may be corrupted.");
                    }
                    CloseableKt.closeFinally(binaryReader, null);
                    return nBytesCompat;
                } finally {
                }
            } finally {
            }
        } catch (ClassNotFoundException e) {
            Logger.error$default(logger, "Missing implementation of org.tukaani:xz", null, 2, null);
            throw e;
        } catch (NoClassDefFoundError e2) {
            Logger.error$default(logger, "Missing implementation of org.tukaani:xz", null, 2, null);
            throw e2;
        }
        Logger.error$default(logger, "Missing implementation of org.tukaani:xz", null, 2, null);
        throw e;
    }

    public static final byte[] compress(byte[] buffer) throws Exception {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        throw new Exception("VZipUtil.compress is not implemented.");
    }
}
