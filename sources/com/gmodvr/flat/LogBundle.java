package com.gmodvr.flat;

import com.gmodvr.flat.DiagnosticReports;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
final class LogBundle {
    static final long LOGCAT_CAP = 4194304;
    static final int MAX_SHADERS = 16;
    static final int REPORTS_PER_KIND = 3;
    static final long REPORT_CAP = 1572864;
    static final int SESSIONS = 2;
    static final long SESSION_CAP = 4194304;
    static final long SHADERS_CAP = 2097152;

    public static final class Input {
        File diagDir;
        String exitInfo;
        File focus;
        byte[] logcat;
        String logcatError;
        long logcatOmitted;
        String report = "";
    }

    public static final class TailBuffer extends OutputStream {
        private final byte[] ring;
        private long total;

        public TailBuffer(int i) {
            this.ring = new byte[Math.max(1, i)];
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            byte[] bArr = this.ring;
            long j = this.total;
            this.total = 1 + j;
            bArr[(int) (j % ((long) bArr.length))] = (byte) i;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            byte[] bArr2 = this.ring;
            if (i2 >= bArr2.length) {
                i += i2 - bArr2.length;
                this.total += (long) (i2 - bArr2.length);
                i2 = bArr2.length;
            }
            while (i2 > 0) {
                long j = this.total;
                byte[] bArr3 = this.ring;
                int length = (int) (j % ((long) bArr3.length));
                int iMin = Math.min(i2, bArr3.length - length);
                System.arraycopy(bArr, i, this.ring, length, iMin);
                i += iMin;
                i2 -= iMin;
                this.total += (long) iMin;
            }
        }

        public long total() {
            return this.total;
        }

        public long omitted() {
            return Math.max(0L, this.total - ((long) this.ring.length));
        }

        public byte[] tail() {
            int iMin = (int) Math.min(this.total, this.ring.length);
            byte[] bArr = new byte[iMin];
            long j = this.total - ((long) iMin);
            byte[] bArr2 = this.ring;
            int length = (int) (j % ((long) bArr2.length));
            int iMin2 = Math.min(iMin, bArr2.length - length);
            System.arraycopy(this.ring, length, bArr, 0, iMin2);
            System.arraycopy(this.ring, 0, bArr, iMin2, iMin - iMin2);
            return bArr;
        }
    }

    private LogBundle() {
    }

    public static List<DiagnosticReports.Report> select(File file, File file2) {
        DiagnosticReports.Report report;
        List<DiagnosticReports.Report> list = DiagnosticReports.list(file);
        ArrayList arrayList = new ArrayList(DiagnosticReports.newest(list, DiagnosticReports.Kind.SESSION, 2));
        DiagnosticReports.Kind[] kindArr = {DiagnosticReports.Kind.NATIVE_CRASH, DiagnosticReports.Kind.JAVA_CRASH, DiagnosticReports.Kind.HANG, DiagnosticReports.Kind.EXIT};
        for (int i = 0; i < 4; i++) {
            arrayList.addAll(DiagnosticReports.newest(list, kindArr[i], 3));
        }
        if (file2 != null && (report = DiagnosticReports.parse(file2)) != null) {
            for (DiagnosticReports.Report report2 : DiagnosticReports.sameGroup(list, report)) {
                if (!contains(arrayList, report2)) {
                    arrayList.add(report2);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(DiagnosticReports.newest(list, DiagnosticReports.Kind.SHADER_FAIL, 16));
        arrayList2.sort(Comparator.comparing(new Function() { // from class: com.gmodvr.flat.LogBundle$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return LogBundle.lambda$select$0((DiagnosticReports.Report) obj);
            }
        }));
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$select$0(DiagnosticReports.Report report) {
        return report.file.getName();
    }

    private static boolean contains(List<DiagnosticReports.Report> list, DiagnosticReports.Report report) {
        Iterator<DiagnosticReports.Report> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().file.equals(report.file)) {
                return true;
            }
        }
        return false;
    }

    public static List<String> write(Input input, OutputStream outputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        ZipOutputStream zipOutputStream = new ZipOutputStream(outputStream);
        try {
            text(zipOutputStream, arrayList, "report.txt", input.report);
            String str = input.exitInfo;
            if (str != null) {
                text(zipOutputStream, arrayList, "exit-info.txt", str);
            }
            zipOutputStream.putNextEntry(new ZipEntry("logcat.txt"));
            arrayList.add("logcat.txt");
            if (input.logcatError != null) {
                zipOutputStream.write(("[logcat: " + input.logcatError + "]\n").getBytes(StandardCharsets.UTF_8));
            }
            byte[] bArr = input.logcat;
            if (bArr != null) {
                writeTail(zipOutputStream, bArr, input.logcatOmitted);
            }
            zipOutputStream.closeEntry();
            if (input.diagDir != null) {
                File file = new File(input.diagDir, "gl_info.txt");
                if (file.isFile()) {
                    file(zipOutputStream, arrayList, "gl_info.txt", file, REPORT_CAP);
                }
                long jFile = 0;
                for (DiagnosticReports.Report report : select(input.diagDir, input.focus)) {
                    if (report.kind == DiagnosticReports.Kind.SHADER_FAIL) {
                        long j = SHADERS_CAP - jFile;
                        if (j <= 0) {
                            break;
                        }
                        jFile += file(zipOutputStream, arrayList, "shaders/" + report.file.getName(), report.file, j);
                    } else {
                        file(zipOutputStream, arrayList, report.file.getName(), report.file, report.kind == DiagnosticReports.Kind.SESSION ? 4194304L : REPORT_CAP);
                    }
                }
            }
            zipOutputStream.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                zipOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void text(ZipOutputStream zipOutputStream, List<String> list, String str, String str2) throws IOException {
        zipOutputStream.putNextEntry(new ZipEntry(str));
        zipOutputStream.write(str2.getBytes(StandardCharsets.UTF_8));
        zipOutputStream.closeEntry();
        list.add(str);
    }

    private static long file(ZipOutputStream zipOutputStream, List<String> list, String str, File file, long j) throws IOException {
        RandomAccessFile randomAccessFile;
        long jCopy;
        long length = file.length();
        ZipEntry zipEntry = new ZipEntry(str);
        zipEntry.setTime(file.lastModified());
        zipOutputStream.putNextEntry(zipEntry);
        list.add(str);
        long length2 = 0;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException e) {
                e = e;
                zipOutputStream.write(("[could not read " + file.getName() + ": " + e.getMessage() + "]\n").getBytes(StandardCharsets.UTF_8));
                zipOutputStream.closeEntry();
                return length2;
            }
        } catch (IOException e2) {
            e = e2;
        }
        try {
            if (length > j) {
                if (str.endsWith(".pb")) {
                    jCopy = copy(randomAccessFile, 0L, j, zipOutputStream);
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("[... first ");
                    long j2 = length - j;
                    sb.append(j2);
                    sb.append(" bytes omitted ...]\n");
                    byte[] bytes = sb.toString().getBytes(StandardCharsets.UTF_8);
                    zipOutputStream.write(bytes);
                    length2 = ((long) bytes.length) + copy(randomAccessFile, j2, j, zipOutputStream);
                    randomAccessFile.close();
                    zipOutputStream.closeEntry();
                    return length2;
                }
            } else {
                jCopy = copy(randomAccessFile, 0L, length, zipOutputStream);
            }
            length2 = jCopy;
            randomAccessFile.close();
            zipOutputStream.closeEntry();
            return length2;
        } finally {
        }
    }

    private static long copy(RandomAccessFile randomAccessFile, long j, long j2, OutputStream outputStream) throws IOException {
        int i;
        randomAccessFile.seek(j);
        byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        long j3 = 0;
        while (j3 < j2 && (i = randomAccessFile.read(bArr, 0, (int) Math.min(Enums.EProtoAppType.k_EAppTypeBeta_VALUE, j2 - j3))) >= 0) {
            outputStream.write(bArr, 0, i);
            j3 += (long) i;
        }
        return j3;
    }

    public static void writeTail(OutputStream outputStream, byte[] bArr, long j) throws IOException {
        if (j > 0) {
            int i = 0;
            while (i < bArr.length && bArr[i] != 10) {
                i++;
            }
            i = i < bArr.length ? i + 1 : 0;
            outputStream.write(("[... first " + (j + ((long) i)) + " bytes omitted ...]\n").getBytes(StandardCharsets.UTF_8));
        }
        outputStream.write(bArr, i, bArr.length - i);
    }
}
