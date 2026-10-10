package com.gmodvr.flat;

import com.gmodvr.flat.DiagnosticReports;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class DiagnosticReports {
    static final String CLEAN_EXIT = "clean-exit-";
    static final String DIR = "diagnostics";
    static final String GL_INFO = "gl_info.txt";
    static final int KEEP_PER_KIND = 5;
    static final int KEEP_SESSIONS = 3;
    static final long REPORT_BYTES_CAP = 4194304;
    static final long STALE_MS = 86400000;
    private static final Pattern NATIVE = Pattern.compile("crash-(\\d{1,15})(?:-[A-Za-z0-9._-]+)?\\.txt");
    private static final Pattern JAVA = Pattern.compile("java-crash-(\\d{1,15})(?:-[A-Za-z0-9._]+)?\\.txt");
    private static final Pattern HANG = Pattern.compile("hang-(\\d{1,15})(?:-[A-Za-z0-9._-]+)?\\.txt");
    private static final Pattern EXIT = Pattern.compile("exit-(\\d{1,15})(?:-[A-Za-z0-9_]+)?(\\.txt|\\.tombstone\\.pb)");
    private static final Pattern SESSION = Pattern.compile("session-(\\d{1,15})\\.log");
    private static final Pattern SHADER = Pattern.compile("shader-fail-(\\d{1,6})\\.txt");
    static final Comparator<Report> NEWEST_FIRST = new Comparator() { // from class: com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return DiagnosticReports.lambda$static$0((DiagnosticReports.Report) obj, (DiagnosticReports.Report) obj2);
        }
    };

    public static long toMillis(long j) {
        return j < 100000000000L ? j * 1000 : j;
    }

    public enum Kind {
        NATIVE_CRASH("Native crash", true),
        JAVA_CRASH("Java crash", true),
        EXIT("Abnormal exit", true),
        HANG("Frame stall", false),
        SESSION("Session log", false),
        SHADER_FAIL("Shader failure", false);

        final boolean crash;
        final String title;

        Kind(String str, boolean z) {
            this.title = str;
            this.crash = z;
        }
    }

    public static final class Report {
        final boolean attachment;
        final long epochMs;
        final File file;
        final String group;
        final Kind kind;

        public Report(File file, Kind kind, long j, String str, boolean z) {
            this.file = file;
            this.kind = kind;
            this.epochMs = j;
            this.group = str;
            this.attachment = z;
        }

        public String toString() {
            return this.file.getName();
        }
    }

    private DiagnosticReports() {
    }

    public static Report parse(File file) {
        String name = file.getName();
        Matcher matcher = JAVA.matcher(name);
        if (matcher.matches()) {
            return new Report(file, Kind.JAVA_CRASH, toMillis(Long.parseLong(matcher.group(1))), name, false);
        }
        Matcher matcher2 = NATIVE.matcher(name);
        if (matcher2.matches()) {
            return new Report(file, Kind.NATIVE_CRASH, toMillis(Long.parseLong(matcher2.group(1))), name, false);
        }
        Matcher matcher3 = HANG.matcher(name);
        if (matcher3.matches()) {
            return new Report(file, Kind.HANG, toMillis(Long.parseLong(matcher3.group(1))), name, false);
        }
        Matcher matcher4 = EXIT.matcher(name);
        if (matcher4.matches()) {
            return new Report(file, Kind.EXIT, toMillis(Long.parseLong(matcher4.group(1))), name.substring(0, name.length() - matcher4.group(2).length()), !".txt".equals(matcher4.group(2)));
        }
        Matcher matcher5 = SESSION.matcher(name);
        if (matcher5.matches()) {
            return new Report(file, Kind.SESSION, toMillis(Long.parseLong(matcher5.group(1))), name, false);
        }
        if (SHADER.matcher(name).matches()) {
            return new Report(file, Kind.SHADER_FAIL, file.lastModified(), name, false);
        }
        return null;
    }

    public static List<Report> list(File file) {
        Report report;
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = file == null ? null : file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && (report = parse(file2)) != null) {
                    arrayList.add(report);
                }
            }
        }
        arrayList.sort(NEWEST_FIRST);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(Report report, Report report2) {
        int iCompare = Long.compare(report2.epochMs, report.epochMs);
        return iCompare != 0 ? iCompare : report2.file.getName().compareTo(report.file.getName());
    }

    public static Report newestCrash(List<Report> list) {
        Report report = null;
        for (Report report2 : list) {
            if (report2.kind.crash && !report2.attachment && (report == null || NEWEST_FIRST.compare(report2, report) < 0)) {
                report = report2;
            }
        }
        return report;
    }

    public static Report bannerReport(List<Report> list, long j) {
        Report reportNewestCrash = newestCrash(list);
        if (reportNewestCrash == null || reportNewestCrash.epochMs <= j) {
            return null;
        }
        return reportNewestCrash;
    }

    public static List<Report> newest(List<Report> list, Kind kind, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<Report> arrayList3 = new ArrayList(list);
        arrayList3.sort(NEWEST_FIRST);
        for (Report report : arrayList3) {
            if (report.kind == kind) {
                if (!arrayList.contains(report.group)) {
                    if (arrayList.size() < i) {
                        arrayList.add(report.group);
                    }
                }
                arrayList2.add(report);
            }
        }
        return arrayList2;
    }

    public static List<Report> sameGroup(List<Report> list, Report report) {
        ArrayList arrayList = new ArrayList();
        for (Report report2 : list) {
            if (report2.kind == report.kind && report2.group.equals(report.group)) {
                arrayList.add(report2);
            }
        }
        return arrayList;
    }

    public static List<File> prune(File file, int i, long j, int i2, long j2) {
        ArrayList arrayList = new ArrayList();
        List<Report> list = list(file);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Report report : list) {
            Kind kind = report.kind;
            if (kind.crash || kind == Kind.HANG) {
                ((List) linkedHashMap.computeIfAbsent(report.kind + "/" + report.group, new Function() { // from class: com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DiagnosticReports.lambda$prune$1((String) obj);
                    }
                })).add(report);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        EnumMap enumMap = new EnumMap(Kind.class);
        ArrayList<List> arrayList3 = new ArrayList(linkedHashMap.values());
        arrayList3.sort(new Comparator() { // from class: com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DiagnosticReports.lambda$prune$2((List) obj, (List) obj2);
            }
        });
        for (List list2 : arrayList3) {
            Kind kind2 = ((Report) list2.get(0)).kind;
            int iIntValue = ((Integer) enumMap.getOrDefault(kind2, 0)).intValue();
            if (iIntValue >= i) {
                delete(list2, arrayList);
            } else {
                enumMap.put(kind2, Integer.valueOf(iIntValue + 1));
                arrayList2.add(list2);
            }
        }
        Iterator it = arrayList2.iterator();
        long size = 0;
        while (it.hasNext()) {
            size += size((List) it.next());
        }
        for (int size2 = arrayList2.size() - 1; size2 > 0 && size > j; size2--) {
            size -= size((List) arrayList2.get(size2));
            delete((List) arrayList2.get(size2), arrayList);
        }
        int i3 = 0;
        for (Report report2 : list) {
            if (report2.kind == Kind.SESSION && (i3 = i3 + 1) > i2 && report2.file.delete()) {
                arrayList.add(report2.file);
            }
        }
        File[] fileArrListFiles = file == null ? null : file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                boolean z = j2 - file2.lastModified() > STALE_MS;
                if (file2.isFile() && z && name.startsWith(CLEAN_EXIT) && file2.delete()) {
                    arrayList.add(file2);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$prune$1(String str) {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$prune$2(List list, List list2) {
        return NEWEST_FIRST.compare((Report) list.get(0), (Report) list2.get(0));
    }

    private static long size(List<Report> list) {
        Iterator<Report> it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += it.next().file.length();
        }
        return length;
    }

    private static void delete(List<Report> list, List<File> list2) {
        for (Report report : list) {
            if (report.file.delete()) {
                list2.add(report.file);
            }
        }
    }

    public static Map<Integer, Long> cleanExitMarkers(File file) {
        HashMap map = new HashMap();
        File[] fileArrListFiles = file == null ? null : file.listFiles();
        if (fileArrListFiles == null) {
            return map;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (name.startsWith(CLEAN_EXIT)) {
                try {
                    int i = Integer.parseInt(name.substring(11));
                    long jLastModified = file2.lastModified();
                    try {
                        String strTrim = new String(Files.readAllBytes(file2.toPath()), StandardCharsets.UTF_8).trim();
                        if (!strTrim.isEmpty()) {
                            jLastModified = Long.parseLong(strTrim);
                        }
                    } catch (Exception unused) {
                    }
                    map.put(Integer.valueOf(i), Long.valueOf(jLastModified));
                } catch (NumberFormatException unused2) {
                }
            }
        }
        return map;
    }
}
