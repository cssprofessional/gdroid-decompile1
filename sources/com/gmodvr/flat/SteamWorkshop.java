package com.gmodvr.flat;

import com.gmodvr.flat.GmaArchive;
import com.gmodvr.flat.WorkshopIntegrity;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.function.LongConsumer;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
final class SteamWorkshop {
    private static final long MAX_EXPANDED = 107374182400L;
    private static final long RESERVE = 536870912;
    private int archiveDepth;
    private final List<WorkshopIntegrity.Entry> checksums;
    private int entries;
    private long expanded;
    private GmaArchive.Info gmaInfo;
    private final GameContentProfile profile;
    private final LongConsumer progress;
    private final Set<String> written;

    public SteamWorkshop() {
        this(null);
    }

    public SteamWorkshop(GameContentProfile gameContentProfile) {
        this(gameContentProfile, null);
    }

    public SteamWorkshop(GameContentProfile gameContentProfile, LongConsumer longConsumer) {
        this.written = new HashSet();
        this.checksums = new ArrayList();
        this.profile = gameContentProfile;
        this.progress = longConsumer;
    }

    public void unpack(File file, File file2) throws Exception {
        SteamFiles.mkdir(file2);
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("Cannot read Workshop content");
            }
            Arrays.sort(fileArrListFiles);
            for (File file3 : fileArrListFiles) {
                unpackEntry(file, file3, file2);
            }
        } else {
            unpackEntry(file.getParentFile(), file, file2);
        }
        if (this.entries == 0) {
            throw new IOException("This Workshop item contains no supported game content");
        }
    }

    private void unpackEntry(File file, File file2, File file3) throws Exception {
        String strReplace = file.toPath().relativize(file2.toPath()).toString().replace('\\', '/');
        SteamFiles.inside(file, strReplace);
        if (file2.isDirectory()) {
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("Cannot read Workshop folder");
            }
            for (File file4 : fileArrListFiles) {
                unpackEntry(file, file4, file3);
            }
            return;
        }
        if (strReplace.endsWith(".part") || strReplace.matches("(?i).*_[0-9]{3}\\.vpk")) {
            return;
        }
        int iMagic = magic(file2);
        if (iMagic == 1437209140) {
            vpk(file2, file3);
            return;
        }
        if (iMagic == 67324752) {
            zip(file2, file3);
            return;
        }
        String strContentPath = contentPath(strReplace, this.profile);
        if (this.profile == GameContentProfile.GARRYSMOD) {
            if (iMagic == 1145130311) {
                gma(file2, file3);
                return;
            } else if (iMagic == 1095588428 || ((strContentPath == null && (iMagic & 255) == 93) || strReplace.toLowerCase(Locale.ROOT).endsWith(".gma"))) {
                compressedGma(file2, file3, iMagic == 1095588428);
                return;
            }
        }
        if (iMagic == 1347633750 && !strReplace.startsWith("maps/")) {
            String strReplaceAll = file2.getName().replaceAll("[^a-zA-Z0-9_.-]", "_");
            StringBuilder sb = new StringBuilder();
            sb.append("maps/");
            if (!strReplaceAll.endsWith(".bsp")) {
                strReplaceAll = strReplaceAll + ".bsp";
            }
            sb.append(strReplaceAll);
            strReplace = sb.toString();
        }
        String strContentPath2 = contentPath(strReplace, this.profile);
        if (strContentPath2 == null) {
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(file2);
        try {
            write(file3, strContentPath2, fileInputStream, file2.length(), null);
            fileInputStream.close();
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String contentPath(String str) throws IOException {
        return contentPath(str, null);
    }

    public static String contentPath(String str, GameContentProfile gameContentProfile) throws IOException {
        String strRelative = SteamFiles.relative(str);
        String[] strArrSplit = strRelative.split("/");
        HashSet hashSet = new HashSet(Arrays.asList("maps", "models", "materials", "sound", "scripts", "resource", "particles", "scenes", "cfg", "media", "expressions", "shaders", "gfx", "fonts"));
        if (gameContentProfile == GameContentProfile.GARRYSMOD) {
            Collections.addAll(hashSet, "lua", "gamemodes", "data_static");
        }
        int i = 0;
        while (true) {
            if (i >= strArrSplit.length - 1) {
                i = -1;
                break;
            }
            if (hashSet.contains(strArrSplit[i].toLowerCase(Locale.ROOT))) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            String strJoin = String.join("/", (CharSequence[]) Arrays.copyOfRange(strArrSplit, i, strArrSplit.length));
            String lowerCase = strJoin.toLowerCase(Locale.ROOT);
            if (lowerCase.endsWith(".dll") || lowerCase.endsWith(".exe") || lowerCase.endsWith(".so") || lowerCase.endsWith(".dylib")) {
                throw new IOException("Workshop item requires native code, which this headset cannot load");
            }
            return gameContentProfile == GameContentProfile.GARRYSMOD ? lowerCase : strJoin;
        }
        if (strArrSplit.length != 1 || !strRelative.toLowerCase(Locale.ROOT).endsWith(".bsp")) {
            return null;
        }
        return "maps/" + strRelative;
    }

    public GmaArchive.Info gmaInfo() {
        return this.gmaInfo;
    }

    public List<WorkshopIntegrity.Entry> checksums() {
        return new ArrayList(this.checksums);
    }

    private void gma(File file, final File file2) throws Exception {
        GmaArchive.Info infoExtract = GmaArchive.extract(file, new GmaArchive.PathPolicy() { // from class: com.gmodvr.flat.SteamWorkshop$$ExternalSyntheticLambda0
            @Override // com.gmodvr.flat.GmaArchive.PathPolicy
            public final String map(String str) {
                return this.f$0.lambda$gma$0(str);
            }
        }, new GmaArchive.Writer() { // from class: com.gmodvr.flat.SteamWorkshop.1
            @Override // com.gmodvr.flat.GmaArchive.Writer
            public void write(String str, InputStream inputStream, long j, Long l) throws Exception {
                SteamWorkshop.this.write(file2, str, inputStream, j, l);
            }

            @Override // com.gmodvr.flat.GmaArchive.Writer
            public void skip(InputStream inputStream, long j) throws Exception {
                SteamWorkshop.this.drain(inputStream);
            }
        }, this.progress);
        if (this.gmaInfo == null) {
            this.gmaInfo = infoExtract;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$gma$0(String str) throws IOException {
        return contentPath(str, this.profile);
    }

    private void compressedGma(File file, File file2, boolean z) throws Exception {
        File fileInside = SteamFiles.inside(file.getParentFile(), ".steam-gma-" + UUID.randomUUID());
        SteamFiles.mkdir(fileInside);
        try {
            File file3 = new File(fileInside, "content.gma");
            long jDecompress = this.expanded + GmaArchive.decompress(file, z, file3, this.progress);
            this.expanded = jDecompress;
            if (jDecompress > MAX_EXPANDED) {
                throw new IOException("Workshop archive is too large");
            }
            gma(file3, file2);
        } finally {
            SteamFiles.deleteTree(fileInside);
        }
    }

    private void zip(File file, File file2) throws Exception {
        int i = this.archiveDepth + 1;
        this.archiveDepth = i;
        if (i > 3) {
            throw new IOException("Workshop archives are nested too deeply");
        }
        File file3 = new File(file.getParentFile(), ".steam-zip-" + UUID.randomUUID());
        SteamFiles.mkdir(file3);
        try {
            SteamWorkshop steamWorkshop = new SteamWorkshop(null, this.progress);
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file)));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    String name = nextEntry.getName();
                    if (nextEntry.isDirectory()) {
                        SteamFiles.relative(name.replaceAll("/+$", ""));
                    } else {
                        steamWorkshop.write(file3, SteamFiles.relative(name), zipInputStream, nextEntry.getSize(), null);
                        zipInputStream.closeEntry();
                    }
                } finally {
                }
            }
            zipInputStream.close();
            long j = this.expanded + steamWorkshop.expanded;
            this.expanded = j;
            if (j > MAX_EXPANDED) {
                throw new IOException("Workshop archive is too large");
            }
            File[] fileArrListFiles = file3.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("Cannot read unpacked Workshop archive");
            }
            Arrays.sort(fileArrListFiles);
            for (File file4 : fileArrListFiles) {
                unpackEntry(file3, file4, file2);
            }
        } finally {
            this.archiveDepth--;
            SteamFiles.deleteTree(file3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drain(InputStream inputStream) throws Exception {
        byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                account(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void write(File file, String str, InputStream inputStream, long j, Long l) throws Exception {
        int i = this.entries + 1;
        this.entries = i;
        if (i > 200000 || !this.written.add(str.toLowerCase(Locale.ROOT))) {
            throw new IOException("Workshop archive has too many or conflicting files");
        }
        File fileInside = SteamFiles.inside(file, str);
        SteamFiles.mkdir(fileInside.getParentFile());
        if (j > MAX_EXPANDED || (j > 0 && fileInside.getParentFile().getUsableSpace() < j + RESERVE)) {
            throw new IOException("Not enough free space to unpack the Workshop item");
        }
        CRC32 crc32 = new CRC32();
        FileOutputStream fileOutputStream = new FileOutputStream(fileInside);
        try {
            byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
            long j2 = 0;
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 != -1) {
                    account(i2);
                    j2 += (long) i2;
                    if (j >= 0 && j2 > j) {
                        throw new IOException("Workshop archive size mismatch");
                    }
                    if (fileInside.getParentFile().getUsableSpace() < RESERVE) {
                        throw new IOException("Not enough space for Workshop content");
                    }
                    fileOutputStream.write(bArr, 0, i2);
                    crc32.update(bArr, 0, i2);
                } else {
                    fileOutputStream.getFD().sync();
                    fileOutputStream.close();
                    if ((j >= 0 && j2 != j) || (l != null && crc32.getValue() != l.longValue())) {
                        throw new IOException("Workshop archive integrity check failed");
                    }
                    if (this.profile == GameContentProfile.GARRYSMOD) {
                        this.checksums.add(new WorkshopIntegrity.Entry(str, j2, crc32.getValue()));
                        return;
                    }
                    return;
                }
            }
        } finally {
        }
    }

    private void account(int i) throws Exception {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedException();
        }
        long j = i;
        long j2 = this.expanded + j;
        this.expanded = j2;
        if (j2 > MAX_EXPANDED) {
            throw new IOException("Workshop archive is too large");
        }
        LongConsumer longConsumer = this.progress;
        if (longConsumer != null) {
            longConsumer.accept(j);
        }
    }

    public static int magic(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            int iReverseBytes = file.length() < 4 ? 0 : Integer.reverseBytes(randomAccessFile.readInt());
            randomAccessFile.close();
            return iReverseBytes;
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ad, code lost:
    
        throw new java.io.IOException("Invalid VPK entry");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void vpk(java.io.File r32, java.io.File r33) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 496
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.SteamWorkshop.vpk(java.io.File, java.io.File):void");
    }

    private static long u32(RandomAccessFile randomAccessFile) throws IOException {
        return Integer.toUnsignedLong(Integer.reverseBytes(randomAccessFile.readInt()));
    }

    private static int u16(RandomAccessFile randomAccessFile) throws IOException {
        return Short.toUnsignedInt(Short.reverseBytes(randomAccessFile.readShort()));
    }

    private static String string(RandomAccessFile randomAccessFile, long j) throws IOException {
        return string(randomAccessFile, j, 4096);
    }

    private static String string(RandomAccessFile randomAccessFile, long j, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (randomAccessFile.getFilePointer() < j && byteArrayOutputStream.size() < i) {
            int unsignedByte = randomAccessFile.readUnsignedByte();
            if (unsignedByte == 0) {
                return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
            }
            byteArrayOutputStream.write(unsignedByte);
        }
        throw new IOException("Invalid Workshop archive string");
    }

    private static InputStream slice(RandomAccessFile randomAccessFile, long j) {
        return new InputStream(j, randomAccessFile) { // from class: com.gmodvr.flat.SteamWorkshop.2
            long remaining;
            final /* synthetic */ RandomAccessFile val$data;
            final /* synthetic */ long val$length;

            {
                this.val$length = j;
                this.val$data = randomAccessFile;
                this.remaining = j;
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                if (this.remaining == 0) {
                    return -1;
                }
                int i = this.val$data.read();
                if (i < 0) {
                    throw new EOFException();
                }
                this.remaining--;
                return i;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (i2 == 0) {
                    return 0;
                }
                long j2 = this.remaining;
                if (j2 == 0) {
                    return -1;
                }
                int i3 = this.val$data.read(bArr, i, (int) Math.min(i2, j2));
                if (i3 < 0) {
                    throw new EOFException();
                }
                this.remaining -= (long) i3;
                return i3;
            }
        };
    }
}
