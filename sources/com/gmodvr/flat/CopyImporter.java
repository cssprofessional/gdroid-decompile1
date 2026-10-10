package com.gmodvr.flat;

import com.gmodvr.flat.MoveImporter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
final class CopyImporter {
    private long completed;
    private final ArrayList<Item> items;
    private long lastUpdate;
    private final GameContentProfile profile;
    private final MoveImporter.Progress progress;
    private final Source source;
    private long total;
    private boolean unknown;

    public interface Source {
        String identity();

        List<Entry> list(String str) throws IOException;

        InputStream open(String str) throws IOException;

        String root();
    }

    public static final class Entry {
        final boolean directory;
        final String id;
        final long modified;
        final String name;
        final long size;

        public Entry(String str, String str2, boolean z, long j, long j2) {
            this.id = str;
            this.name = str2;
            this.directory = z;
            this.size = j;
            this.modified = j2;
        }
    }

    public static final class Item {
        final Entry entry;
        final String path;

        public Item(Entry entry, String str) {
            this.entry = entry;
            this.path = str;
        }

        public String stamp() {
            return CopyImporter.encode(this.path) + " " + CopyImporter.encode(this.entry.id) + " " + this.entry.size + " " + this.entry.modified;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String encode(String str) {
        return Base64.getEncoder().encodeToString(str.getBytes(StandardCharsets.UTF_8));
    }

    public static File staging(File file) {
        return new File(file.getParentFile(), ".sourceandroid-copy-" + file.getName());
    }

    public CopyImporter(Source source, MoveImporter.Progress progress) {
        this(GameContentProfile.DEFAULT, source, progress);
    }

    public CopyImporter(GameContentProfile gameContentProfile, Source source, MoveImporter.Progress progress) {
        this.items = new ArrayList<>();
        this.profile = gameContentProfile == null ? GameContentProfile.DEFAULT : gameContentProfile;
        this.source = source;
        this.progress = progress;
    }

    private void report(String str, int i, boolean z) throws IOException {
        long jNanoTime = System.nanoTime();
        if (z || jNanoTime - this.lastUpdate > 250000000) {
            this.lastUpdate = jNanoTime;
            this.progress.update(str, i);
        }
    }

    private List<Entry> children(String str) throws IOException {
        List<Entry> list = this.source.list(str);
        HashSet hashSet = new HashSet();
        for (Entry entry : list) {
            String str2 = entry.name;
            if (str2 == null || str2.isEmpty() || entry.name.equals(".") || entry.name.equals("..") || entry.name.contains("/") || entry.name.contains("\\") || entry.name.indexOf(0) >= 0 || !hashSet.add(entry.name)) {
                throw new IOException("Invalid or duplicate filename in selected folder.");
            }
        }
        return list;
    }

    private Map<String, Entry> gameFolders() throws IOException {
        String str;
        HashMap map = new HashMap();
        Source source = this.source;
        for (Entry entry : source.list(source.root())) {
            if (entry.directory && (str = entry.name) != null && GameFolder.destination(str) != null && map.put(entry.name, entry) != null) {
                throw new IOException("Duplicate game folder in selected folder: " + entry.name);
            }
        }
        TreeMap treeMap = new TreeMap();
        for (String str2 : GameFolder.select(map.keySet())) {
            treeMap.put(GameFolder.destination(str2), (Entry) map.get(str2));
        }
        return treeMap;
    }

    private void scan(String str, String str2, int i) throws IOException {
        if (i > 32) {
            throw new IOException("Selected folders are nested too deeply.");
        }
        report("Scanning files · " + this.items.size() + " found…", -1, false);
        for (Entry entry : children(str)) {
            String str3 = str2 + "/" + entry.name;
            if (entry.directory) {
                scan(entry.id, str3, 1 + i);
            } else {
                if (this.items.size() >= 200000) {
                    throw new IOException("Too many files in selected folder.");
                }
                this.items.add(new Item(entry, str3));
                long j = entry.size;
                if (j < 0) {
                    this.unknown = true;
                } else {
                    this.total = Math.addExact(this.total, j);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x01ab, code lost:
    
        r12 = r6;
        r6 = r19;
        r1 = r20;
        r8 = r22;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0413 A[Catch: all -> 0x0475, TryCatch #1 {all -> 0x0475, blocks: (B:148:0x0408, B:149:0x040a, B:151:0x0413, B:156:0x0463, B:155:0x0445), top: B:210:0x0408, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0478 A[EDGE_INSN: B:252:0x0478->B:160:0x0478 BREAK  A[LOOP:8: B:149:0x040a->B:157:0x0466], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0264 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x027d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void copy(java.io.File r30) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1472
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.CopyImporter.copy(java.io.File):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$copy$0(String str, int i) throws IOException {
        this.progress.update(str, (i / 10) + 90);
    }
}
