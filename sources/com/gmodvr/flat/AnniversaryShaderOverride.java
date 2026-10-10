package com.gmodvr.flat;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class AnniversaryShaderOverride {
    public static final int EXPECTED_DYNAMIC_COMBOS = 96;
    private static final long MAX_VPK_TREE_BYTES = 67108864;
    public static final String OVERLAY_SUBDIR = "anniversary";
    private static final String PROBE_ENTRY = "shaders/fxc/lightmappedgeneric_ps20b.vcs";
    private static final String PROBE_VPK_BASE = "hl2_misc";
    private static final int VCS_DYNAMIC_COMBOS_OFFSET = 8;
    private static final int VCS_HEADER_PROBE_BYTES = 12;
    private static final int VPK_EMBEDDED_ARCHIVE = 32767;
    private static final long VPK_SIGNATURE = 1437209140;

    private AnniversaryShaderOverride() {
    }

    public static boolean isRequired(File file) {
        int iProbeDynamicCombos = probeDynamicCombos(file);
        return iProbeDynamicCombos > 0 && iProbeDynamicCombos != 96;
    }

    public static int probeDynamicCombos(File file) {
        if (file == null) {
            return 0;
        }
        try {
            return readProbeDynamicCombos(file);
        } catch (IOException | RuntimeException unused) {
            return 0;
        }
    }

    private static int readProbeDynamicCombos(File file) throws IOException {
        Cursor cursor;
        String string;
        File file2 = new File(file, "hl2_misc_dir.vpk");
        int i = 0;
        if (!file2.isFile()) {
            return 0;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "r");
        try {
            if (randomAccessFile.length() >= 12) {
                long unsignedIntLE = readUnsignedIntLE(randomAccessFile);
                long unsignedIntLE2 = readUnsignedIntLE(randomAccessFile);
                long unsignedIntLE3 = readUnsignedIntLE(randomAccessFile);
                if (unsignedIntLE != VPK_SIGNATURE || (unsignedIntLE2 != 1 && unsignedIntLE2 != 2)) {
                    randomAccessFile.close();
                    return 0;
                }
                int i2 = unsignedIntLE2 == 1 ? 12 : 28;
                if (unsignedIntLE3 > 0 && unsignedIntLE3 <= MAX_VPK_TREE_BYTES) {
                    long j = i2;
                    long j2 = j + unsignedIntLE3;
                    if (j2 <= randomAccessFile.length()) {
                        randomAccessFile.seek(j);
                        byte[] bArr = new byte[(int) unsignedIntLE3];
                        randomAccessFile.readFully(bArr);
                        randomAccessFile.close();
                        Cursor cursor2 = new Cursor(bArr);
                        while (true) {
                            String string2 = cursor2.readString();
                            if (string2.isEmpty()) {
                                return i;
                            }
                            while (true) {
                                String string3 = cursor2.readString();
                                if (string3.isEmpty()) {
                                    break;
                                }
                                while (true) {
                                    String string4 = cursor2.readString();
                                    if (string4.isEmpty()) {
                                        break;
                                    }
                                    cursor2.readUnsignedIntLE();
                                    int unsignedShortLE = cursor2.readUnsignedShortLE();
                                    int unsignedShortLE2 = cursor2.readUnsignedShortLE();
                                    long unsignedIntLE4 = cursor2.readUnsignedIntLE();
                                    long unsignedIntLE5 = cursor2.readUnsignedIntLE();
                                    if (cursor2.readUnsignedShortLE() != 65535) {
                                        return i;
                                    }
                                    int iPosition = cursor2.position();
                                    cursor2.skip(unsignedShortLE);
                                    StringBuilder sb = new StringBuilder();
                                    if (" ".equals(string3)) {
                                        string = "";
                                        cursor = cursor2;
                                    } else {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(string3);
                                        cursor = cursor2;
                                        sb2.append("/");
                                        string = sb2.toString();
                                    }
                                    sb.append(string);
                                    sb.append(string4);
                                    sb.append(".");
                                    sb.append(string2);
                                    if (PROBE_ENTRY.equals(sb.toString().toLowerCase(Locale.US))) {
                                        return readDynamicCombos(file, file2, bArr, iPosition, unsignedShortLE, unsignedShortLE2, unsignedIntLE4, unsignedIntLE5, j2);
                                    }
                                    i = 0;
                                    cursor2 = cursor;
                                }
                            }
                        }
                    }
                }
                randomAccessFile.close();
                return 0;
            }
            randomAccessFile.close();
            return 0;
        } finally {
        }
    }

    private static int readDynamicCombos(File file, File file2, byte[] bArr, int i, int i2, int i3, long j, long j2, long j3) throws IOException {
        File file3;
        long j4;
        byte[] bArr2 = new byte[12];
        int iMin = Math.min(i2, 12);
        if (iMin > 0) {
            System.arraycopy(bArr, i, bArr2, 0, iMin);
        } else {
            iMin = 0;
        }
        if (iMin < 12) {
            int i4 = 12 - iMin;
            long j5 = i4;
            if (j2 < j5) {
                return 0;
            }
            if (i3 == VPK_EMBEDDED_ARCHIVE) {
                j4 = j3 + j;
                file3 = file2;
            } else {
                file3 = new File(file, String.format(Locale.US, "%s_%03d.vpk", PROBE_VPK_BASE, Integer.valueOf(i3)));
                j4 = j;
            }
            if (!file3.isFile()) {
                return 0;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "r");
            try {
                if (j5 + j4 <= randomAccessFile.length()) {
                    randomAccessFile.seek(j4);
                    randomAccessFile.readFully(bArr2, iMin, i4);
                    randomAccessFile.close();
                } else {
                    randomAccessFile.close();
                    return 0;
                }
            } finally {
            }
        }
        return (int) readUnsignedIntLE(bArr2, 8);
    }

    private static long readUnsignedIntLE(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[4];
        randomAccessFile.readFully(bArr);
        return readUnsignedIntLE(bArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readUnsignedIntLE(byte[] bArr, int i) {
        return ((((long) bArr[i + 3]) & 255) << 24) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16);
    }

    public static final class Cursor {
        private int at;
        private final byte[] buffer;

        public Cursor(byte[] bArr) {
            this.buffer = bArr;
        }

        public int position() {
            return this.at;
        }

        public void skip(int i) {
            if (i >= 0) {
                int i2 = this.at;
                if (i2 + i <= this.buffer.length) {
                    this.at = i2 + i;
                    return;
                }
            }
            throw new IllegalStateException("VPK tree overrun");
        }

        public String readString() {
            byte[] bArr;
            int i = this.at;
            while (true) {
                bArr = this.buffer;
                if (i >= bArr.length || bArr[i] == 0) {
                    break;
                }
                i++;
            }
            if (i >= bArr.length) {
                throw new IllegalStateException("unterminated VPK string");
            }
            int i2 = this.at;
            String str = new String(bArr, i2, i - i2, StandardCharsets.ISO_8859_1);
            this.at = i + 1;
            return str;
        }

        public int readUnsignedShortLE() {
            require(2);
            byte[] bArr = this.buffer;
            int i = this.at;
            int i2 = ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
            this.at = i + 2;
            return i2;
        }

        public long readUnsignedIntLE() {
            require(4);
            long unsignedIntLE = AnniversaryShaderOverride.readUnsignedIntLE(this.buffer, this.at);
            this.at += 4;
            return unsignedIntLE;
        }

        private void require(int i) {
            if (this.at + i > this.buffer.length) {
                throw new IllegalStateException("VPK tree overrun");
            }
        }
    }
}
