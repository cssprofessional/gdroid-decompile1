package com.gmodvr.flat;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;
import org.bouncycastle.i18n.MessageBundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class WorkshopQueue {
    static final int FAILURE_STREAK = 5;
    static final long RESERVE = 536870912;
    final boolean collection;
    boolean includeLinked;
    final long rootId;
    final String rootTitle;
    final String token;
    boolean truncated;
    Phase phase = Phase.REVIEW;
    final List<Entry> entries = new ArrayList();
    final Map<Long, Collection> collections = new LinkedHashMap();
    private final Map<Long, Entry> byId = new HashMap();

    public enum Installed {
        MISSING,
        OUTDATED,
        CURRENT
    }

    public enum Kind {
        ADDON,
        UNAVAILABLE,
        OTHER_GAME,
        NOT_CONTENT
    }

    public enum Mode {
        MISSING,
        ALL
    }

    public enum Phase {
        REVIEW,
        DOWNLOADING,
        FINISHED
    }

    public enum Status {
        PENDING,
        DONE,
        CURRENT,
        FAILED
    }

    public interface Steps {
        void check() throws Exception;

        void cleanup(Entry entry);

        void install(Entry entry) throws Exception;

        Map<Long, long[]> installed() throws Exception;

        void keep(Entry entry) throws Exception;

        void starting(Entry entry, int i, int i2);

        long usableSpace();
    }

    public static final class Summary {
        int addons;
        int current;
        int done;
        int failed;
        int linkedAddons;
        long linkedBytes;
        int linkedCollections;
        int missing;
        long neededBytes;
        int notContent;
        int otherGame;
        int outdated;
        int remaining;
        int selected;
        long selectedBytes;
        int skipped;
        long totalBytes;
        int unavailable;
        long updateBytes;
    }

    public static final class Entry {
        final long id;
        long installedSize;
        final Kind kind;
        final boolean linked;
        final String note;
        boolean reinstall;
        final long requiredBy;
        boolean selected;
        final long size;
        final long time;
        final String title;
        final List<Long> sources = new ArrayList();
        Status status = Status.PENDING;
        String error = "";
        Installed installed = Installed.MISSING;

        public Entry(long j, String str, long j2, long j3, Kind kind, String str2, boolean z, long j4) {
            this.id = j;
            this.title = str == null ? "" : str;
            this.size = Math.max(0L, j2);
            this.time = j3;
            this.kind = kind;
            this.note = str2 == null ? "" : str2;
            this.linked = z;
            this.requiredBy = j4;
        }

        public String name() {
            if (!this.title.trim().isEmpty()) {
                return this.title;
            }
            return "Workshop item " + Long.toUnsignedString(this.id);
        }

        public boolean downloadable() {
            return this.kind == Kind.ADDON;
        }

        public boolean needsDownload() {
            return this.selected && downloadable() && (this.installed != Installed.CURRENT || this.reinstall);
        }
    }

    public static final class Collection {
        final long id;
        final boolean linked;
        final String title;

        public Collection(long j, String str, boolean z) {
            this.id = j;
            this.title = str == null ? "" : str;
            this.linked = z;
        }

        public String name() {
            if (!this.title.trim().isEmpty()) {
                return this.title;
            }
            return "Collection " + Long.toUnsignedString(this.id);
        }
    }

    public WorkshopQueue(String str, long j, String str2, boolean z) {
        this.token = str;
        this.rootId = j;
        this.rootTitle = str2 == null ? "" : str2;
        this.collection = z;
    }

    public String name() {
        if (!this.rootTitle.trim().isEmpty()) {
            return this.rootTitle;
        }
        return "Workshop item " + Long.toUnsignedString(this.rootId);
    }

    public Entry add(Entry entry) {
        if (this.byId.containsKey(Long.valueOf(entry.id))) {
            throw new IllegalArgumentException("Duplicate Workshop entry " + entry.id);
        }
        this.entries.add(entry);
        this.byId.put(Long.valueOf(entry.id), entry);
        return entry;
    }

    public Entry get(long j) {
        return this.byId.get(Long.valueOf(j));
    }

    public boolean inScope(Entry entry) {
        return this.includeLinked || !entry.linked;
    }

    public void annotate(Map<Long, long[]> map) {
        for (Entry entry : this.entries) {
            long[] jArr = map.get(Long.valueOf(entry.id));
            if (jArr == null) {
                entry.installed = Installed.MISSING;
                entry.installedSize = 0L;
            } else {
                entry.installedSize = jArr.length > 1 ? Math.max(0L, jArr[1]) : 0L;
                long j = jArr[0];
                entry.installed = (j <= 0 || j != entry.time) ? Installed.OUTDATED : Installed.CURRENT;
            }
        }
    }

    public void select(Mode mode) {
        for (Entry entry : this.entries) {
            boolean z = false;
            boolean z2 = entry.downloadable() && inScope(entry) && (mode == Mode.ALL || entry.installed != Installed.CURRENT);
            entry.selected = z2;
            if (z2 && entry.installed == Installed.CURRENT) {
                z = true;
            }
            entry.reinstall = z;
        }
    }

    public void setSelected(Entry entry, boolean z) {
        boolean z2 = false;
        boolean z3 = z && entry.downloadable() && inScope(entry);
        entry.selected = z3;
        if (z3 && entry.installed == Installed.CURRENT) {
            z2 = true;
        }
        entry.reinstall = z2;
    }

    public void setIncludeLinked(boolean z) {
        this.includeLinked = z;
        if (z) {
            return;
        }
        for (Entry entry : this.entries) {
            if (entry.linked) {
                entry.selected = false;
                entry.reinstall = false;
            }
        }
    }

    public int retryFailed() {
        int i = 0;
        for (Entry entry : this.entries) {
            if (entry.selected && entry.status == Status.FAILED) {
                entry.status = Status.PENDING;
                entry.error = "";
                i++;
            }
        }
        if (i > 0) {
            this.phase = Phase.DOWNLOADING;
        }
        return i;
    }

    public List<Entry> pending() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry : this.entries) {
            if (entry.selected && entry.downloadable() && inScope(entry) && entry.status == Status.PENDING) {
                arrayList.add(entry);
            }
        }
        return arrayList;
    }

    public List<Entry> failed() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry : this.entries) {
            if (entry.selected && entry.status == Status.FAILED) {
                arrayList.add(entry);
            }
        }
        return arrayList;
    }

    public Summary summary() {
        Summary summary = new Summary();
        Iterator<Collection> it = this.collections.values().iterator();
        while (it.hasNext()) {
            if (it.next().linked) {
                summary.linkedCollections++;
            }
        }
        long jMin = 0;
        long jMax = 0;
        for (Entry entry : this.entries) {
            if (entry.linked && entry.downloadable()) {
                summary.linkedAddons++;
                summary.linkedBytes += entry.size;
            }
            if (inScope(entry)) {
                int i = AnonymousClass1.$SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind[entry.kind.ordinal()];
                if (i == 1) {
                    summary.unavailable++;
                } else if (i == 2) {
                    summary.otherGame++;
                } else if (i == 3) {
                    summary.notContent++;
                } else {
                    summary.addons++;
                    long j = summary.totalBytes;
                    long j2 = entry.size;
                    summary.totalBytes = j + j2;
                    Installed installed = entry.installed;
                    if (installed == Installed.CURRENT) {
                        summary.current++;
                    } else {
                        if (installed == Installed.OUTDATED) {
                            summary.outdated++;
                        } else {
                            summary.missing++;
                        }
                        summary.updateBytes += j2;
                    }
                    if (entry.selected) {
                        summary.selected++;
                        int i2 = AnonymousClass1.$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status[entry.status.ordinal()];
                        if (i2 == 1) {
                            summary.done++;
                        } else if (i2 == 2) {
                            summary.skipped++;
                        } else {
                            if (i2 == 3) {
                                summary.failed++;
                            } else {
                                summary.remaining++;
                            }
                            if (entry.needsDownload()) {
                                long j3 = summary.selectedBytes;
                                long j4 = entry.size;
                                summary.selectedBytes = j3 + j4;
                                jMin += j4 - (entry.installed == Installed.MISSING ? 0L : Math.min(entry.installedSize, j4));
                                jMax = Math.max(jMax, entry.size);
                            }
                        }
                    }
                }
            }
        }
        summary.neededBytes = summary.selectedBytes == 0 ? 0L : Math.max(0L, jMin) + jMax + RESERVE;
        return summary;
    }

    /* JADX INFO: renamed from: com.gmodvr.flat.WorkshopQueue$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind;
        static final /* synthetic */ int[] $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status = iArr;
            try {
                iArr[Status.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status[Status.CURRENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status[Status.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Kind.values().length];
            $SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind = iArr2;
            try {
                iArr2[Kind.UNAVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind[Kind.OTHER_GAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind[Kind.NOT_CONTENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public long[] progressBytes() {
        Status status;
        Status status2;
        long j = 0;
        long j2 = 0;
        for (Entry entry : this.entries) {
            if (entry.selected && entry.downloadable() && inScope(entry) && (status = entry.status) != Status.CURRENT && (status != (status2 = Status.PENDING) || entry.needsDownload())) {
                boolean z = entry.status != status2;
                long j3 = entry.size;
                j2 += j3;
                if (z) {
                    j += j3;
                }
            }
        }
        return new long[]{j, j2};
    }

    public JSONArray collectionsJson(Entry entry) {
        JSONArray jSONArray = new JSONArray();
        for (Long l : entry.sources) {
            long jLongValue = l.longValue();
            Collection collection = this.collections.get(l);
            if (collection != null && (!collection.linked || this.includeLinked)) {
                try {
                    jSONArray.put(new JSONObject().put("id", Long.toUnsignedString(jLongValue)).put(MessageBundle.TITLE_ENTRY, collection.title));
                } catch (JSONException e) {
                    throw new IllegalStateException(e);
                }
            }
        }
        return jSONArray;
    }

    public void run(File file, Steps steps) throws Exception {
        int i;
        this.phase = Phase.DOWNLOADING;
        annotate(steps.installed());
        save(file);
        List<Entry> listPending = pending();
        ArrayList arrayList = new ArrayList();
        Iterator<Entry> it = listPending.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Entry next = it.next();
            int i3 = i2 + 1;
            steps.check();
            steps.starting(next, i3, listPending.size());
            if (next.installed == Installed.CURRENT && !next.reinstall) {
                try {
                    steps.keep(next);
                } catch (InterruptedException e) {
                    throw e;
                } catch (Exception unused) {
                }
                record(file, next, Status.CURRENT, "");
                i = i3;
            } else {
                long jUsableSpace = steps.usableSpace();
                if (jUsableSpace < RESERVE) {
                    throw new IOException("Storage is full (" + GmodAddons.sizeText(Math.max(0L, jUsableSpace)) + " free). Free up space, then resume.");
                }
                i = i3;
                long j = next.size;
                if (j > 0 && jUsableSpace - RESERVE < j * 2) {
                    record(file, next, Status.FAILED, "Not enough free storage: needs about " + GmodAddons.sizeText(next.size * 2) + " while it is unpacked, " + GmodAddons.sizeText(jUsableSpace) + " free");
                } else {
                    try {
                        try {
                            try {
                                steps.install(next);
                                record(file, next, Status.DONE, "");
                                arrayList.clear();
                            } catch (Exception e2) {
                                steps.check();
                                failed(file, next, e2, arrayList);
                            }
                        } catch (InterruptedException e3) {
                            throw e3;
                        }
                    } finally {
                        steps.cleanup(next);
                    }
                }
            }
            i2 = i;
        }
        this.phase = Phase.FINISHED;
        save(file);
    }

    private void failed(File file, Entry entry, Throwable th, List<Entry> list) throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException();
        }
        record(file, entry, Status.FAILED, reason(th));
        list.add(entry);
        if (list.size() < 5) {
            return;
        }
        String str = entry.error;
        for (Entry entry2 : list) {
            entry2.status = Status.PENDING;
            entry2.error = "";
        }
        save(file);
        throw new IOException("5 Workshop items failed in a row (last: " + str + "). Check the connection, then resume.");
    }

    public static String reason(Throwable th) {
        String message = th.getMessage();
        if (((th instanceof IOException) || (th instanceof IllegalStateException) || (th instanceof IllegalArgumentException)) && message != null && !message.trim().isEmpty() && !message.contains("://")) {
            return message;
        }
        if ((th instanceof CancellationException) || (th instanceof TimeoutException)) {
            return "Steam stopped responding";
        }
        if (th instanceof OutOfMemoryError) {
            return "Out of memory";
        }
        return "Download failed (" + th.getClass().getSimpleName() + ")";
    }

    public static File log(File file) {
        return new File(file.getPath() + ".log");
    }

    public void record(File file, Entry entry, Status status, String str) throws IOException {
        entry.status = status;
        if (str == null) {
            str = "";
        }
        entry.error = str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", Long.toUnsignedString(entry.id)).put("s", status.name()).put("e", entry.error);
            FileOutputStream fileOutputStream = new FileOutputStream(log(file), true);
            try {
                fileOutputStream.write((jSONObject.toString() + "\n").getBytes(StandardCharsets.UTF_8));
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    public void save(File file) throws IOException {
        File parentFile = file.getAbsoluteFile().getParentFile();
        if (parentFile != null && !parentFile.isDirectory() && !parentFile.mkdirs()) {
            throw new IOException("Cannot create " + parentFile);
        }
        File file2 = new File(file.getPath() + ".tmp");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(toJson().toString().getBytes(StandardCharsets.UTF_8));
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                Files.move(file2.toPath(), file.toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                Files.deleteIfExists(log(file).toPath());
            } finally {
            }
        } catch (JSONException e) {
            throw new IOException("Could not encode the Workshop queue", e);
        }
    }

    public static void delete(File file) {
        File[] fileArr = {file, log(file), new File(file.getPath() + ".tmp")};
        for (int i = 0; i < 3; i++) {
            fileArr[i].delete();
        }
    }

    public static WorkshopQueue load(File file, String str) {
        try {
            if (!file.isFile()) {
                return null;
            }
            byte[] allBytes = Files.readAllBytes(file.toPath());
            Charset charset = StandardCharsets.UTF_8;
            WorkshopQueue workshopQueueFromJson = fromJson(new JSONObject(new String(allBytes, charset)));
            if (str != null && !str.equals(workshopQueueFromJson.token)) {
                return null;
            }
            File fileLog = log(file);
            if (fileLog.isFile()) {
                for (String str2 : new String(Files.readAllBytes(fileLog.toPath()), charset).split("\n")) {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        Entry entry = workshopQueueFromJson.get(Long.parseUnsignedLong(jSONObject.getString("id")));
                        if (entry != null) {
                            entry.status = Status.valueOf(jSONObject.getString("s"));
                            entry.error = jSONObject.optString("e", "");
                        }
                    } catch (IllegalArgumentException | JSONException unused) {
                    }
                }
            }
            return workshopQueueFromJson;
        } catch (IOException | IllegalArgumentException | JSONException unused2) {
            return null;
        }
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1).put("token", this.token).put("root", Long.toUnsignedString(this.rootId)).put(MessageBundle.TITLE_ENTRY, this.rootTitle).put("collection", this.collection).put("truncated", this.truncated).put("phase", this.phase.name()).put("linked", this.includeLinked);
        JSONArray jSONArray = new JSONArray();
        for (Collection collection : this.collections.values()) {
            jSONArray.put(new JSONObject().put("id", Long.toUnsignedString(collection.id)).put(MessageBundle.TITLE_ENTRY, collection.title).put("linked", collection.linked));
        }
        jSONObject.put("collections", jSONArray);
        JSONArray jSONArray2 = new JSONArray();
        for (Entry entry : this.entries) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", Long.toUnsignedString(entry.id)).put("t", entry.title).put("size", entry.size).put("time", entry.time).put("kind", entry.kind.name());
            if (!entry.note.isEmpty()) {
                jSONObject2.put("note", entry.note);
            }
            if (entry.linked) {
                jSONObject2.put("linked", true);
            }
            long j = entry.requiredBy;
            if (j != 0) {
                jSONObject2.put("req", Long.toUnsignedString(j));
            }
            JSONArray jSONArray3 = new JSONArray();
            Iterator<Long> it = entry.sources.iterator();
            while (it.hasNext()) {
                jSONArray3.put(Long.toUnsignedString(it.next().longValue()));
            }
            jSONObject2.put("src", jSONArray3).put("sel", entry.selected).put("re", entry.reinstall).put("st", entry.status.name()).put("inst", entry.installed.name()).put("isz", entry.installedSize);
            if (!entry.error.isEmpty()) {
                jSONObject2.put("err", entry.error);
            }
            jSONArray2.put(jSONObject2);
        }
        jSONObject.put("entries", jSONArray2);
        return jSONObject;
    }

    public static WorkshopQueue fromJson(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt("version") != 1) {
            throw new JSONException("Unsupported Workshop queue version");
        }
        WorkshopQueue workshopQueue = new WorkshopQueue(jSONObject.getString("token"), Long.parseUnsignedLong(jSONObject.getString("root")), jSONObject.optString(MessageBundle.TITLE_ENTRY, ""), jSONObject.getBoolean("collection"));
        workshopQueue.truncated = jSONObject.optBoolean("truncated");
        workshopQueue.phase = Phase.valueOf(jSONObject.getString("phase"));
        workshopQueue.includeLinked = jSONObject.optBoolean("linked");
        JSONArray jSONArray = jSONObject.getJSONArray("collections");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            long unsignedLong = Long.parseUnsignedLong(jSONObject2.getString("id"));
            workshopQueue.collections.put(Long.valueOf(unsignedLong), new Collection(unsignedLong, jSONObject2.optString(MessageBundle.TITLE_ENTRY, ""), jSONObject2.optBoolean("linked")));
        }
        JSONArray jSONArray2 = jSONObject.getJSONArray("entries");
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = jSONArray2.getJSONObject(i2);
            String strOptString = jSONObject3.optString("req", "");
            Entry entry = new Entry(Long.parseUnsignedLong(jSONObject3.getString("id")), jSONObject3.optString("t", ""), jSONObject3.optLong("size"), jSONObject3.optLong("time"), Kind.valueOf(jSONObject3.getString("kind")), jSONObject3.optString("note", ""), jSONObject3.optBoolean("linked"), strOptString.isEmpty() ? 0L : Long.parseUnsignedLong(strOptString));
            JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("src");
            if (jSONArrayOptJSONArray != null) {
                for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                    entry.sources.add(Long.valueOf(Long.parseUnsignedLong(jSONArrayOptJSONArray.getString(i3))));
                }
            }
            entry.selected = jSONObject3.optBoolean("sel");
            entry.reinstall = jSONObject3.optBoolean("re");
            entry.status = Status.valueOf(jSONObject3.optString("st", "PENDING"));
            entry.installed = Installed.valueOf(jSONObject3.optString("inst", "MISSING"));
            entry.installedSize = jSONObject3.optLong("isz");
            entry.error = jSONObject3.optString("err", "");
            workshopQueue.add(entry);
        }
        return workshopQueue;
    }
}
