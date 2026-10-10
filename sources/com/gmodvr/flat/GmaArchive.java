package com.gmodvr.flat;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.function.LongConsumer;
import java.util.zip.CRC32;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.tukaani.xz.LZMAInputStream;

/* JADX INFO: loaded from: classes.dex */
final class GmaArchive {
    static final int HEADER_READ_LIMIT = 262144;
    static final int MAGIC = 1145130311;
    static final int MAX_DICTIONARY_KIB = 131072;
    static final int MAX_FILES = 200000;
    static final long MAX_TOTAL = 107374182400L;
    private static final long RESERVE = 536870912;
    static final int SOURCE_LZMA_MAGIC = 1095588428;

    public enum Format {
        RAW,
        LZMA_ALONE,
        SOURCE_LZMA,
        UNKNOWN
    }

    public interface PathPolicy {
        String map(String str) throws IOException;
    }

    public interface Writer {
        void skip(InputStream inputStream, long j) throws Exception;

        void write(String str, InputStream inputStream, long j, Long l) throws Exception;
    }

    public static final class Entry {
        final String archivePath;
        final long crc;
        final int index;
        long offset;
        final String path;
        final long size;

        public Entry(int i, String str, String str2, long j, long j2) {
            this.index = i;
            this.archivePath = str;
            this.path = str2;
            this.size = j;
            this.crc = j2;
        }
    }

    public static final class Info {
        int addonVersion;
        boolean crcVerified;
        long dataLength;
        long dataStart;
        long steamId;
        long timestamp;
        int version;
        final List<String> required = new ArrayList();
        String title = "";
        String rawDescription = "";
        String author = "";
        String description = "";
        String type = "";
        final List<String> tags = new ArrayList();
        final List<Entry> entries = new ArrayList();
        long storedCrc = -1;
        long computedCrc = -1;

        public long crc() {
            long j = this.storedCrc;
            return j > 0 ? j : Math.max(0L, this.computedCrc);
        }

        public long keptBytes() {
            long j = 0;
            for (Entry entry : this.entries) {
                if (entry.path != null) {
                    j += entry.size;
                }
            }
            return j;
        }

        public int keptFiles() {
            Iterator<Entry> it = this.entries.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (it.next().path != null) {
                    i++;
                }
            }
            return i;
        }
    }

    private GmaArchive() {
    }

    public static boolean isArchiveName(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        return lowerCase.endsWith(".gma") || lowerCase.endsWith(".gm") || lowerCase.endsWith(".bin");
    }

    public static String archiveStem(String str) {
        return !isArchiveName(str) ? str : str.substring(0, str.lastIndexOf(46));
    }

    public static Format format(File file) throws IOException {
        if (!file.isFile() || file.length() < 4) {
            return Format.UNKNOWN;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            int iReverseBytes = Integer.reverseBytes(randomAccessFile.readInt());
            if (iReverseBytes == MAGIC) {
                Format format = Format.RAW;
                randomAccessFile.close();
                return format;
            }
            if (iReverseBytes == SOURCE_LZMA_MAGIC) {
                Format format2 = Format.SOURCE_LZMA;
                randomAccessFile.close();
                return format2;
            }
            if ((iReverseBytes & 255) != 93 || file.length() < 17) {
                Format format3 = Format.UNKNOWN;
                randomAccessFile.close();
                return format3;
            }
            Format format4 = Format.LZMA_ALONE;
            randomAccessFile.close();
            return format4;
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ea, code lost:
    
        throw new java.io.IOException("GMA file table is too large");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.gmodvr.flat.GmaArchive.Info parse(java.io.RandomAccessFile r22, com.gmodvr.flat.GmaArchive.PathPolicy r23) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.GmaArchive.parse(java.io.RandomAccessFile, com.gmodvr.flat.GmaArchive$PathPolicy):com.gmodvr.flat.GmaArchive$Info");
    }

    private static void parseDescription(Info info) {
        String str = info.rawDescription;
        info.description = str;
        String strTrim = str.trim();
        if (strTrim.startsWith("{")) {
            try {
                JSONObject jSONObject = new JSONObject(strTrim);
                info.description = jSONObject.optString("description", "");
                info.type = jSONObject.optString("type", "").toLowerCase(Locale.ROOT);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("tags");
                if (jSONArrayOptJSONArray != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length() && i < 32; i++) {
                        String lowerCase = jSONArrayOptJSONArray.optString(i, "").trim().toLowerCase(Locale.ROOT);
                        if (!lowerCase.isEmpty() && !info.tags.contains(lowerCase)) {
                            info.tags.add(lowerCase);
                        }
                    }
                }
            } catch (JSONException unused) {
                info.description = info.rawDescription;
            }
        }
    }

    public static void verifyArchiveCrc(RandomAccessFile randomAccessFile, Info info) throws InterruptedException, IOException {
        verifyArchiveCrc(randomAccessFile, info, null);
    }

    public static void verifyArchiveCrc(RandomAccessFile randomAccessFile, Info info, LongConsumer longConsumer) throws InterruptedException, IOException {
        CRC32 crc32 = new CRC32();
        randomAccessFile.seek(0L);
        InputStream inputStreamSlice = slice(randomAccessFile, info.dataStart + info.dataLength);
        byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        while (true) {
            int i = inputStreamSlice.read(bArr);
            if (i != -1) {
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedException();
                }
                crc32.update(bArr, 0, i);
                if (longConsumer != null) {
                    longConsumer.accept(i);
                }
            } else {
                info.computedCrc = crc32.getValue();
                if (info.storedCrc <= 0) {
                    return;
                }
                if (crc32.getValue() == info.storedCrc) {
                    info.crcVerified = true;
                    return;
                }
                for (Entry entry : info.entries) {
                    if (entry.size > 0 && entry.crc == 0) {
                        throw new IOException("GMA archive integrity check failed");
                    }
                }
                return;
            }
        }
    }

    public static Info readInfo(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            Info info = parse(randomAccessFile, new PathPolicy() { // from class: com.gmodvr.flat.GmaArchive$$ExternalSyntheticLambda0
                @Override // com.gmodvr.flat.GmaArchive.PathPolicy
                public final String map(String str) {
                    return SteamFiles.relative(str);
                }
            });
            randomAccessFile.close();
            return info;
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Info readHeader(File file) throws IOException {
        IndexInput indexInput = new IndexInput(new BufferedInputStream(new FileInputStream(file)));
        try {
            Info header = readHeader(indexInput);
            indexInput.close();
            return header;
        } catch (Throwable th) {
            try {
                indexInput.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Info readHeaderAny(File file) throws IOException {
        DecodedArchive decodedArchiveOpenArchive = openArchive(file);
        try {
            Info header = readHeader(new IndexInput(decodedArchiveOpenArchive.input));
            decodedArchiveOpenArchive.close();
            return header;
        } catch (Throwable th) {
            if (decodedArchiveOpenArchive != null) {
                try {
                    decodedArchiveOpenArchive.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static Info readHeader(IndexInput indexInput) throws IOException {
        indexInput.limit = 262144L;
        DataInputStream dataInputStream = new DataInputStream(indexInput);
        if (Integer.reverseBytes(dataInputStream.readInt()) != MAGIC) {
            throw new IOException("Not a GMA addon");
        }
        Info info = new Info();
        int unsignedByte = dataInputStream.readUnsignedByte();
        info.version = unsignedByte;
        if (unsignedByte < 1 || unsignedByte > 3) {
            throw new IOException("Unsupported GMA version");
        }
        info.steamId = Long.reverseBytes(dataInputStream.readLong());
        info.timestamp = Long.reverseBytes(dataInputStream.readLong());
        if (info.version > 1) {
            do {
                String strIndexString = indexString(dataInputStream, 4096);
                if (!strIndexString.isEmpty()) {
                    info.required.add(strIndexString);
                }
            } while (info.required.size() <= 1024);
            throw new IOException("Invalid GMA required-content list");
        }
        info.title = indexString(dataInputStream, Enums.EProtoAppType.k_EAppTypeBeta_VALUE);
        info.rawDescription = indexString(dataInputStream, Enums.EProtoAppType.k_EAppTypeBeta_VALUE);
        info.author = indexString(dataInputStream, Enums.EProtoAppType.k_EAppTypeBeta_VALUE);
        info.addonVersion = Integer.reverseBytes(dataInputStream.readInt());
        parseDescription(info);
        return info;
    }

    public static Info readIndex(File file) throws IOException {
        if (format(file) == Format.RAW) {
            return readInfo(file);
        }
        DecodedArchive decodedArchiveOpenArchive = openArchive(file);
        try {
            IndexInput indexInput = new IndexInput(decodedArchiveOpenArchive.input);
            Info header = readHeader(indexInput);
            indexInput.limit = 67108864L;
            DataInputStream dataInputStream = new DataInputStream(indexInput);
            long j = 0;
            while (true) {
                long unsignedLong = Integer.toUnsignedLong(Integer.reverseBytes(dataInputStream.readInt()));
                if (unsignedLong != 0) {
                    if (header.entries.size() >= MAX_FILES) {
                        throw new IOException("GMA file table is too large");
                    }
                    String strRelative = SteamFiles.relative(indexString(dataInputStream, 4096));
                    long jReverseBytes = Long.reverseBytes(dataInputStream.readLong());
                    long unsignedLong2 = Integer.toUnsignedLong(Integer.reverseBytes(dataInputStream.readInt()));
                    if (jReverseBytes < 0 || jReverseBytes > MAX_TOTAL - j) {
                        break;
                    }
                    Entry entry = new Entry((int) unsignedLong, strRelative, strRelative, jReverseBytes, unsignedLong2);
                    entry.offset = j;
                    j += jReverseBytes;
                    header.entries.add(entry);
                } else {
                    long j2 = indexInput.position;
                    header.dataStart = j2;
                    header.dataLength = j;
                    long j3 = decodedArchiveOpenArchive.size;
                    if (j3 >= 0) {
                        long j4 = (j3 - j2) - j;
                        if (j4 < 0) {
                            throw new IOException("GMA data is truncated");
                        }
                        if (j4 != 0 && j4 != 4) {
                            throw new IOException("Invalid GMA data boundary");
                        }
                    }
                    decodedArchiveOpenArchive.close();
                    return header;
                }
            }
            throw new IOException("Invalid GMA file size");
        } finally {
        }
    }

    private static String indexString(DataInputStream dataInputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i2 = 0; i2 <= i; i2++) {
            int unsignedByte = dataInputStream.readUnsignedByte();
            if (unsignedByte == 0) {
                return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
            }
            byteArrayOutputStream.write(unsignedByte);
        }
        throw new IOException("Invalid Workshop archive string");
    }

    public static final class IndexInput extends FilterInputStream {
        long limit;
        long position;

        public IndexInput(InputStream inputStream) {
            super(inputStream);
            this.limit = 262144L;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.position >= this.limit) {
                throw new IOException("GMA header or file table is too large");
            }
            int i = ((FilterInputStream) this).in.read();
            if (i != -1) {
                this.position++;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            if (this.position >= this.limit) {
                throw new IOException("GMA header or file table is too large");
            }
            int i3 = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, this.limit - this.position));
            if (i3 > 0) {
                this.position += (long) i3;
            }
            return i3;
        }
    }

    public static Info readInfoAny(File file, File file2) throws Exception {
        Format format = format(file);
        if (format == Format.RAW) {
            return readInfo(file);
        }
        if (format == Format.UNKNOWN) {
            throw new IOException("Not a GMA addon");
        }
        File fileInside = SteamFiles.inside(file2, ".gma-info-" + UUID.randomUUID());
        try {
            decompress(file, format == Format.SOURCE_LZMA, fileInside);
            return readInfo(fileInside);
        } finally {
            Files.deleteQuietly(fileInside);
        }
    }

    public static Info extract(File file, PathPolicy pathPolicy, Writer writer) throws Exception {
        return extract(file, pathPolicy, writer, null);
    }

    public static Info extract(File file, PathPolicy pathPolicy, Writer writer, LongConsumer longConsumer) throws Exception {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            Info info = parse(randomAccessFile, pathPolicy);
            verifyArchiveCrc(randomAccessFile, info, longConsumer);
            randomAccessFile.seek(info.dataStart);
            for (Entry entry : info.entries) {
                InputStream inputStreamSlice = slice(randomAccessFile, entry.size);
                String str = entry.path;
                if (str == null) {
                    writer.skip(inputStreamSlice, entry.size);
                } else {
                    long j = entry.size;
                    long j2 = entry.crc;
                    writer.write(str, inputStreamSlice, j, j2 == 0 ? null : Long.valueOf(j2));
                }
            }
            randomAccessFile.close();
            return info;
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Info extract(File file, File file2, PathPolicy pathPolicy) throws Exception {
        Format format = format(file);
        if (format == Format.UNKNOWN) {
            throw new IOException("Not a GMA addon");
        }
        SteamFiles.mkdir(file2);
        if (format == Format.RAW) {
            return extract(file, pathPolicy, directoryWriter(file2));
        }
        File fileInside = SteamFiles.inside(file.getParentFile() == null ? file2 : file.getParentFile(), ".steam-gma-" + UUID.randomUUID());
        try {
            decompress(file, format == Format.SOURCE_LZMA, fileInside);
            return extract(fileInside, pathPolicy, directoryWriter(file2));
        } finally {
            Files.deleteQuietly(fileInside);
        }
    }

    public static String gmodPolicy(String str) throws IOException {
        return SteamWorkshop.contentPath(str, GameContentProfile.GARRYSMOD);
    }

    public static Info extractAddon(File file, File file2) throws Exception {
        return extract(file, file2, new PathPolicy() { // from class: com.gmodvr.flat.GmaArchive$$ExternalSyntheticLambda1
            @Override // com.gmodvr.flat.GmaArchive.PathPolicy
            public final String map(String str) {
                return GmaArchive.gmodPolicy(str);
            }
        });
    }

    public static Writer directoryWriter(final File file) {
        return new Writer() { // from class: com.gmodvr.flat.GmaArchive.1
            private final Set<String> written = new HashSet();

            @Override // com.gmodvr.flat.GmaArchive.Writer
            public void write(String str, InputStream inputStream, long j, Long l) throws Exception {
                if (this.written.size() >= GmaArchive.MAX_FILES || !this.written.add(str.toLowerCase(Locale.ROOT))) {
                    throw new IOException("GMA addon has too many or conflicting files");
                }
                File fileInside = SteamFiles.inside(file, str);
                SteamFiles.mkdir(fileInside.getParentFile());
                if (j > 0 && fileInside.getParentFile().getUsableSpace() < GmaArchive.RESERVE + j) {
                    throw new IOException("Not enough free space to unpack the addon");
                }
                CRC32 crc32 = new CRC32();
                if (GmaArchive.copy(inputStream, fileInside, crc32, j) == j && (l == null || crc32.getValue() == l.longValue())) {
                    return;
                }
                throw new IOException("GMA entry integrity check failed: " + str);
            }

            @Override // com.gmodvr.flat.GmaArchive.Writer
            public void skip(InputStream inputStream, long j) throws Exception {
                byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
                while (inputStream.read(bArr) != -1) {
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedException();
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long copy(InputStream inputStream, File file, CRC32 crc32, long j) throws Exception {
        return copy(inputStream, file, crc32, j, null);
    }

    private static long copy(InputStream inputStream, File file, CRC32 crc32, long j, LongConsumer longConsumer) throws Exception {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
            long j2 = 0;
            while (true) {
                int i = inputStream.read(bArr);
                if (i != -1) {
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedException();
                    }
                    long j3 = i;
                    j2 += j3;
                    if (j >= 0 && j2 > j) {
                        throw new IOException("GMA entry size mismatch");
                    }
                    fileOutputStream.write(bArr, 0, i);
                    if (crc32 != null) {
                        crc32.update(bArr, 0, i);
                    }
                    if (longConsumer != null) {
                        longConsumer.accept(j3);
                    }
                } else {
                    fileOutputStream.getFD().sync();
                    fileOutputStream.close();
                    return j2;
                }
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static final class DecodedArchive implements Closeable {
        final InputStream input;
        final long size;

        public DecodedArchive(InputStream inputStream, long j) {
            this.input = inputStream;
            this.size = j;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.input.close();
        }
    }

    private static DecodedArchive openArchive(File file) throws IOException {
        Format format = format(file);
        if (format == Format.RAW) {
            return new DecodedArchive(new BufferedInputStream(new FileInputStream(file)), file.length());
        }
        if (format != Format.UNKNOWN) {
            return openLzma(file, format == Format.SOURCE_LZMA);
        }
        throw new IOException("Not a GMA addon");
    }

    private static DecodedArchive openLzma(File file, boolean z) throws IOException {
        long j;
        byte b;
        long jU32;
        long jReverseBytes;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            if (z) {
                j = 17;
                if (file.length() < 17) {
                    throw new EOFException();
                }
                randomAccessFile.seek(4L);
                jReverseBytes = u32(randomAccessFile);
                long jU322 = u32(randomAccessFile);
                b = randomAccessFile.readByte();
                jU32 = u32(randomAccessFile);
                if (jU322 != file.length() - 17) {
                    throw new IOException("Unsupported compressed GMA header");
                }
            } else {
                j = 13;
                if (file.length() < 13) {
                    throw new EOFException();
                }
                b = randomAccessFile.readByte();
                jU32 = u32(randomAccessFile);
                jReverseBytes = Long.reverseBytes(randomAccessFile.readLong());
                if (jReverseBytes < -1 || jReverseBytes > MAX_TOTAL) {
                    throw new IOException("Invalid compressed GMA size");
                }
            }
            randomAccessFile.close();
            if ((b & 255) < 225 && jU32 <= 2147483647L) {
                int iMax = (int) jU32;
                if (LZMAInputStream.getMemoryUsage(iMax, b) <= MAX_DICTIONARY_KIB) {
                    if (jReverseBytes >= 0) {
                        iMax = (int) Math.max(4096L, Math.min(jU32, jReverseBytes));
                    }
                    int i = iMax;
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    long j2 = 0;
                    while (j2 < j) {
                        try {
                            long jSkip = bufferedInputStream.skip(j - j2);
                            if (jSkip <= 0) {
                                throw new EOFException();
                            }
                            j2 += jSkip;
                        } catch (IOException | RuntimeException e) {
                            bufferedInputStream.close();
                            throw e;
                        }
                    }
                    LZMAInputStream lZMAInputStream = new LZMAInputStream(bufferedInputStream, jReverseBytes, b, i);
                    lZMAInputStream.enableRelaxedEndCondition();
                    return new DecodedArchive(new BufferedInputStream(lZMAInputStream), jReverseBytes);
                }
            }
            throw new IOException("Unsupported compressed GMA header");
        } finally {
            try {
                randomAccessFile.close();
                throw th;
            } catch (Throwable th) {
                th.addSuppressed(th);
            }
        }
    }

    public static long decompress(File file, boolean z, File file2) throws Exception {
        return decompress(file, z, file2, null);
    }

    public static long decompress(File file, boolean z, File file2, LongConsumer longConsumer) throws Exception {
        DecodedArchive decodedArchiveOpenLzma = openLzma(file, z);
        try {
            SteamFiles.mkdir(file2.getParentFile());
            if (decodedArchiveOpenLzma.size > 0 && file2.getParentFile().getUsableSpace() < decodedArchiveOpenLzma.size + RESERVE) {
                throw new IOException("Not enough free space to unpack the addon");
            }
            long jCopy = copy(decodedArchiveOpenLzma.input, file2, null, decodedArchiveOpenLzma.size, longConsumer);
            long j = decodedArchiveOpenLzma.size;
            if (j >= 0 && jCopy != j) {
                throw new IOException("Compressed GMA is truncated");
            }
            decodedArchiveOpenLzma.close();
            return jCopy;
        } catch (Throwable th) {
            if (decodedArchiveOpenLzma != null) {
                try {
                    decodedArchiveOpenLzma.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static long u32(RandomAccessFile randomAccessFile) throws IOException {
        return Integer.toUnsignedLong(Integer.reverseBytes(randomAccessFile.readInt()));
    }

    public static String string(RandomAccessFile randomAccessFile, long j, int i) throws IOException {
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

    public static InputStream slice(RandomAccessFile randomAccessFile, long j) {
        return new InputStream(j, randomAccessFile) { // from class: com.gmodvr.flat.GmaArchive.2
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

    public static final class Files {
        private Files() {
        }

        public static void deleteQuietly(File file) {
            try {
                java.nio.file.Files.deleteIfExists(file.toPath());
            } catch (IOException unused) {
            }
        }
    }
}
