package com.gmodvr.flat;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes.dex */
final class VpkValidator {
    public static void validate(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            if (randomAccessFile.length() < 12) {
                throw new IOException("Truncated VPK: " + file.getName());
            }
            int iReverseBytes = Integer.reverseBytes(randomAccessFile.readInt());
            int iReverseBytes2 = Integer.reverseBytes(randomAccessFile.readInt());
            long unsignedLong = Integer.toUnsignedLong(Integer.reverseBytes(randomAccessFile.readInt()));
            int i = iReverseBytes2 == 1 ? 12 : 28;
            if (iReverseBytes == 1437209140 && ((iReverseBytes2 == 1 || iReverseBytes2 == 2) && unsignedLong <= 67108864)) {
                long j = i;
                long j2 = unsignedLong + j;
                if (j2 <= randomAccessFile.length()) {
                    byte[] bArr = new byte[(int) unsignedLong];
                    randomAccessFile.seek(j);
                    randomAccessFile.readFully(bArr);
                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                    HashMap map = new HashMap();
                    while (!string(byteBufferOrder).isEmpty()) {
                        try {
                            while (!string(byteBufferOrder).isEmpty()) {
                                while (!string(byteBufferOrder).isEmpty()) {
                                    byteBufferOrder.getInt();
                                    int unsignedInt = Short.toUnsignedInt(byteBufferOrder.getShort());
                                    int unsignedInt2 = Short.toUnsignedInt(byteBufferOrder.getShort());
                                    long unsignedLong2 = Integer.toUnsignedLong(byteBufferOrder.getInt());
                                    long unsignedLong3 = Integer.toUnsignedLong(byteBufferOrder.getInt());
                                    if (Short.toUnsignedInt(byteBufferOrder.getShort()) != 65535) {
                                        throw new IOException("Invalid VPK record");
                                    }
                                    byteBufferOrder.position(Math.addExact(byteBufferOrder.position(), unsignedInt));
                                    if (unsignedLong3 > 0) {
                                        map.merge(Integer.valueOf(unsignedInt2), Long.valueOf(unsignedLong2 + unsignedLong3), new BiFunction() { // from class: com.gmodvr.flat.VpkValidator$$ExternalSyntheticLambda0
                                            @Override // java.util.function.BiFunction
                                            public final Object apply(Object obj, Object obj2) {
                                                return Long.valueOf(Math.max(((Long) obj).longValue(), ((Long) obj2).longValue()));
                                            }
                                        });
                                    }
                                }
                            }
                        } catch (ArithmeticException | IllegalArgumentException | BufferUnderflowException e) {
                            throw new IOException("Corrupt VPK tree: " + file.getName(), e);
                        }
                    }
                    if (byteBufferOrder.hasRemaining()) {
                        throw new IOException("Unexpected VPK directory data");
                    }
                    String name = file.getName();
                    if (!name.endsWith("_dir.vpk")) {
                        throw new IOException("Expected a VPK directory file");
                    }
                    String strSubstring = name.substring(0, name.length() - 8);
                    for (Map.Entry entry : map.entrySet()) {
                        File file2 = ((Integer) entry.getKey()).intValue() == 32767 ? file : new File(file.getParentFile(), String.format(Locale.ROOT, "%s_%03d.vpk", strSubstring, entry.getKey()));
                        long jLongValue = ((Long) entry.getValue()).longValue() + (((Integer) entry.getKey()).intValue() == 32767 ? j2 : 0L);
                        if (!file2.isFile() || file2.length() < jLongValue) {
                            throw new IOException("Missing or incomplete archive: " + file2.getName());
                        }
                    }
                    randomAccessFile.close();
                    return;
                }
            }
            throw new IOException("Invalid VPK directory: " + file.getName());
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String string(ByteBuffer byteBuffer) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            byte b = byteBuffer.get();
            if (b != 0) {
                if (byteArrayOutputStream.size() >= 4096) {
                    throw new IOException("VPK path is too long");
                }
                byteArrayOutputStream.write(b);
            } else {
                return byteArrayOutputStream.toString(StandardCharsets.ISO_8859_1.name());
            }
        }
    }

    public static void validateContent(File file, GameContentProfile gameContentProfile) throws IOException {
        if (gameContentProfile == null || "portal2".equals(gameContentProfile.id)) {
            String[] strArr = {"portal2", ContentComponent.PORTAL2_DLC1_DIR, ContentComponent.PORTAL2_DLC2_DIR, ContentComponent.PORTAL2_UPDATE_DIR, ContentComponent.PORTAL2_PLATFORM_DIR};
            for (int i = 0; i < 5; i++) {
                String str = strArr[i];
                File file2 = new File(file, str);
                if (str.equals(ContentComponent.PORTAL2_PLATFORM_DIR) && !file2.exists()) {
                    file2 = new File(file, ContentComponent.PLATFORM_DIR);
                }
                if (!file2.isDirectory()) {
                    throw new IOException("Missing folder: " + str.replace(ContentComponent.PORTAL2_PLATFORM_DIR, ContentComponent.PLATFORM_DIR));
                }
            }
            String[] strArr2 = {"portal2", ContentComponent.PORTAL2_DLC1_DIR, ContentComponent.PORTAL2_DLC2_DIR};
            for (int i2 = 0; i2 < 3; i2++) {
                File file3 = new File(file, strArr2[i2] + "/pak01_dir.vpk");
                if (file3.isFile()) {
                    validate(file3);
                }
            }
        } else {
            for (ContentComponent contentComponent : gameContentProfile.depots) {
                if (!new File(file, contentComponent.dirName).isDirectory()) {
                    throw new IOException("Missing folder: " + contentComponent.dirName);
                }
                if (contentComponent.coreVpkRelPath != null) {
                    File file4 = new File(file, contentComponent.coreVpkRelPath);
                    if (file4.isFile()) {
                        validate(file4);
                    }
                }
            }
        }
        validateTree(file);
    }

    public static void validateContent(File file) throws IOException {
        validateContent(file, GameContentProfile.DEFAULT);
    }

    public static void validateTree(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                validateTree(file2);
            } else if (file2.getName().endsWith("_dir.vpk")) {
                try {
                    validate(file2);
                } catch (IOException unused) {
                }
            }
        }
    }
}
