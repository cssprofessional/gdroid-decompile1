package in.dragonbra.javasteam.steam.cdn;

import in.dragonbra.javasteam.types.ChunkData;
import in.dragonbra.javasteam.util.Adler32;
import in.dragonbra.javasteam.util.Strings;
import in.dragonbra.javasteam.util.VZipUtil;
import in.dragonbra.javasteam.util.VZstdUtil;
import in.dragonbra.javasteam.util.ZipUtil;
import in.dragonbra.javasteam.util.crypto.CryptoHelper;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: DepotChunk.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DepotChunk {
    public static final DepotChunk INSTANCE = new DepotChunk();

    private DepotChunk() {
    }

    public static final int process(ChunkData info, byte[] data, byte[] destination, byte[] depotKey) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, IOException, NoSuchProviderException, ShortBufferException, InvalidAlgorithmParameterException {
        MemoryStream memoryStream;
        int iDecompress;
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(depotKey, "depotKey");
        if (destination.length < info.getUncompressedLength()) {
            throw new IllegalArgumentException("The destination buffer must be longer than the chunk uncompressedLength.");
        }
        if (depotKey.length != 32) {
            throw new IllegalArgumentException("Tried to decrypt depot chunk with non 32 byte key!");
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(depotKey, "AES");
        String str = CryptoHelper.SEC_PROV;
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding", str);
        cipher.init(2, secretKeySpec);
        byte[] bArr = new byte[16];
        int iDoFinal = cipher.doFinal(data, 0, 16, bArr);
        if (16 != iDoFinal) {
            throw new IllegalArgumentException(("Failed to decrypt depot chunk iv (16 != " + iDoFinal + ")").toString());
        }
        Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS7Padding", str);
        cipher2.init(2, secretKeySpec, new IvParameterSpec(bArr));
        int length = data.length - 16;
        byte[] bArr2 = new byte[length];
        try {
            try {
                int iDoFinal2 = cipher2.doFinal(data, 16, data.length - 16, bArr2);
                if (length < 16) {
                    throw new IOException("Not enough data in the decrypted depot chunk (was " + length + " bytes).");
                }
                byte b = bArr2[0];
                if (b == 86 && bArr2[1] == 83 && bArr2[2] == 90 && bArr2[3] == 97) {
                    iDecompress = VZstdUtil.decompress(ArraysKt___ArraysJvmKt.copyOfRange(bArr2, 0, iDoFinal2), destination, false);
                } else if (b == 86 && bArr2[1] == 90 && bArr2[2] == 97) {
                    memoryStream = new MemoryStream(bArr2, 0, iDoFinal2);
                    try {
                        iDecompress = VZipUtil.decompress(memoryStream, destination, false);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(memoryStream, null);
                    } finally {
                    }
                } else if (b == 80 && bArr2[1] == 75 && bArr2[2] == 3 && bArr2[3] == 4) {
                    memoryStream = new MemoryStream(bArr2, 0, iDoFinal2);
                    try {
                        iDecompress = ZipUtil.decompress(memoryStream, destination, false);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(memoryStream, null);
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                } else {
                    throw new IOException("Unexpected depot chunk compression (first four bytes are " + Strings.toHex(ArraysKt___ArraysJvmKt.copyOfRange(bArr2, 0, 4)) + ").");
                }
                ArraysKt___ArraysJvmKt.fill$default(bArr2, (byte) 0, 0, 0, 6, (Object) null);
                if (info.getUncompressedLength() != iDecompress) {
                    throw new IOException("Processed data checksum failed to decompress to the expected chunk uncompressed length. (was " + iDecompress + ", should be " + info.getUncompressedLength() + ")");
                }
                int iCalculate = Adler32.calculate(ArraysKt___ArraysKt.sliceArray(destination, RangesKt___RangesKt.until(0, iDecompress)));
                if (iCalculate == info.getChecksum()) {
                    return iDecompress;
                }
                throw new IOException("Processed data checksum is incorrect (" + iCalculate + " != " + info.getChecksum() + ")! Downloaded depot chunk is corrupt or invalid/wrong depot key?");
            } catch (Exception e) {
                throw new IOException("Failed to decompress chunk " + Strings.toHex(info.getChunkID()) + ": " + e + "\n" + ExceptionsKt__ExceptionsKt.stackTraceToString(e));
            }
        } catch (Throwable th) {
            ArraysKt___ArraysJvmKt.fill$default(bArr2, (byte) 0, 0, 0, 6, (Object) null);
            throw th;
        }
    }
}
