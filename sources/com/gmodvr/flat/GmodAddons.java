package com.gmodvr.flat;

import com.gmodvr.flat.GmaArchive;
import com.gmodvr.flat.GmodAddons;
import com.gmodvr.flat.SteamDownloads;
import com.gmodvr.flat.WorkshopIntegrity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.UUID;
import org.bouncycastle.i18n.MessageBundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class GmodAddons {
    static final Set<String> BUILTIN = Collections.unmodifiableSet(new HashSet(Arrays.asList("gmodvr", "vrmod")));
    static final String COLLECTIONS = "collections";
    static final String DISABLED_DIR = "addons_disabled";
    static final String ENABLED_DIR = "addons";
    static final String GAME_DIR = "garrysmod";
    static final String META = "workshop.json";
    private static final long META_LIMIT = 1048576;
    static final String MOUNT_PREFS = "data/gmodvr_addon_mount.txt";
    private static final long MOUNT_PREFS_LIMIT = 8388608;

    public enum Kind {
        WORKSHOP,
        LOCAL_FOLDER,
        LOCAL_GMA
    }

    private GmodAddons() {
    }

    public static File enabledRoot(File file) {
        return new File(new File(file, "garrysmod"), ENABLED_DIR);
    }

    public static File disabledRoot(File file) {
        return new File(new File(file, "garrysmod"), DISABLED_DIR);
    }

    public static final class Addon {
        final boolean builtin;
        final boolean conflict;
        final boolean enabled;
        final File folder;
        final String id;
        final Kind kind;
        final JSONObject meta;
        final long size;

        public Addon(String str, File file, boolean z, JSONObject jSONObject, boolean z2, long j) {
            this(Kind.WORKSHOP, str, file, z, jSONObject, z2, j, false);
        }

        public Addon(Kind kind, String str, File file, boolean z, JSONObject jSONObject, boolean z2, long j, boolean z3) {
            this.kind = kind;
            this.id = str;
            this.folder = file;
            this.enabled = z;
            this.meta = jSONObject;
            this.conflict = z2;
            this.size = j;
            this.builtin = z3;
        }

        public boolean local() {
            return this.kind != Kind.WORKSHOP;
        }

        public String title() {
            String strTrim = this.meta.optString(MessageBundle.TITLE_ENTRY, "").trim();
            return !strTrim.isEmpty() ? strTrim : this.kind == Kind.LOCAL_GMA ? GmaArchive.archiveStem(this.id) : this.id;
        }

        public String author() {
            return this.meta.optString("author", "");
        }
    }

    public static JSONObject metadata(String str, String str2, long j, Collection<String> collection, GmaArchive.Info info, long j2) throws JSONException {
        String strPlaceholder;
        String strPlaceholder2;
        long j3;
        String str3 = "";
        String strTrim = str2 == null ? "" : str2.trim();
        if (strTrim.isEmpty() && info != null) {
            strTrim = info.title.trim();
        }
        if (info == null) {
            strPlaceholder = "";
        } else {
            strPlaceholder = placeholder(info.author.trim(), "author", "author name", "no author provided");
        }
        if (info == null) {
            strPlaceholder2 = "";
        } else {
            strPlaceholder2 = placeholder(info.description.trim(), "description", "no description provided");
        }
        if (j > 0) {
            j3 = j;
        } else {
            j3 = info == null ? 0L : info.timestamp;
        }
        long jCrc = info != null ? info.crc() : 0L;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (collection != null) {
            for (String str4 : collection) {
                if (str4 != null && !str4.trim().isEmpty()) {
                    linkedHashMap.putIfAbsent(str4.trim().toLowerCase(Locale.ROOT), str4.trim());
                }
            }
        }
        if (info != null) {
            for (String str5 : info.tags) {
                linkedHashMap.putIfAbsent(str5.toLowerCase(Locale.ROOT), str5);
            }
            if (!info.type.isEmpty()) {
                linkedHashMap.putIfAbsent(info.type.toLowerCase(Locale.ROOT), info.type);
            }
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", str);
        jSONObject.put(MessageBundle.TITLE_ENTRY, strTrim);
        jSONObject.put("author", strPlaceholder);
        jSONObject.put("description", strPlaceholder2);
        jSONObject.put("tags", new JSONArray(linkedHashMap.values()));
        jSONObject.put("time", j3);
        jSONObject.put("gma_crc", jCrc);
        if (info != null) {
            str3 = info.type;
        }
        jSONObject.put("type", str3);
        jSONObject.put("size", j2);
        return jSONObject;
    }

    private static String placeholder(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str.equalsIgnoreCase(str2)) {
                return "";
            }
        }
        return str;
    }

    public static void writeMeta(File file, JSONObject jSONObject) throws IOException {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(file, META));
            try {
                fileOutputStream.write(jSONObject.toString(1).getBytes(StandardCharsets.UTF_8));
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
            } finally {
            }
        } catch (JSONException e) {
            throw new IOException("Could not encode workshop.json", e);
        }
    }

    public static JSONObject readMeta(File file) {
        File file2 = new File(file, META);
        try {
            if (file2.isFile() && !Files.isSymbolicLink(file2.toPath()) && file2.length() <= META_LIMIT) {
                return new JSONObject(new String(Files.readAllBytes(file2.toPath()), StandardCharsets.UTF_8));
            }
        } catch (IOException | JSONException unused) {
        }
        return null;
    }

    public static long treeSize(File file) throws IOException {
        long jTreeSize = 0;
        if (Files.isSymbolicLink(file.toPath())) {
            return 0L;
        }
        if (file.isFile()) {
            return file.length();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return 0L;
        }
        for (File file2 : fileArrListFiles) {
            jTreeSize += treeSize(file2);
        }
        return jTreeSize;
    }

    public static void install(File file, SteamDownloads.WorkshopItem workshopItem) throws Exception {
        install(file, workshopItem, null);
    }

    public static void install(File file, SteamDownloads.WorkshopItem workshopItem, WorkshopIntegrity.Progress progress) throws Exception {
        String unsignedString = Long.toUnsignedString(workshopItem.id);
        File fileEnabledRoot = enabledRoot(file);
        File fileDisabledRoot = disabledRoot(file);
        SteamFiles.mkdir(fileEnabledRoot);
        SteamFiles.mkdir(fileDisabledRoot);
        File fileInside = SteamFiles.inside(fileEnabledRoot, unsignedString);
        File fileInside2 = SteamFiles.inside(fileDisabledRoot, unsignedString);
        File fileInside3 = SteamFiles.inside(fileDisabledRoot, ".backup-" + unsignedString + "-enabled");
        File fileInside4 = SteamFiles.inside(fileDisabledRoot, ".backup-" + unsignedString + "-disabled");
        reconcile(fileInside3, fileInside, fileInside2, unsignedString);
        reconcile(fileInside4, fileInside2, fileInside, unsignedString);
        boolean zExists = exists(fileInside);
        boolean zExists2 = exists(fileInside2);
        if (zExists && zExists2) {
            throw new IOException("Addon " + unsignedString + " exists both enabled and disabled; remove one first");
        }
        if (zExists) {
            requireOwned(fileInside, unsignedString);
        }
        if (zExists2) {
            requireOwned(fileInside2, unsignedString);
        }
        File fileLegacyFolder = legacyFolder(file, unsignedString);
        if (fileLegacyFolder != null && ((fileLegacyFolder.getName().startsWith(CustomContentName.DISABLED_PREFIX) || new File(fileLegacyFolder, CustomContentName.DISABLED_MARKER).exists()) && !zExists)) {
            zExists2 = true;
        }
        boolean z = zExists2;
        JSONObject jSONObjectMetadata = workshopItem.metadata;
        if (jSONObjectMetadata == null) {
            jSONObjectMetadata = metadata(unsignedString, workshopItem.title, 0L, null, null, 0L);
        }
        jSONObjectMetadata.put("size", treeSize(workshopItem.folder));
        jSONObjectMetadata.put("id", unsignedString);
        WorkshopIntegrity.write(workshopItem.folder, workshopItem.checksums, progress);
        if (z) {
            fileInside = fileInside2;
        }
        JSONObject meta = exists(fileInside) ? readMeta(fileInside) : null;
        JSONArray jSONArrayMergeCollections = mergeCollections(jSONObjectMetadata.optJSONArray(COLLECTIONS), meta != null ? meta.optJSONArray(COLLECTIONS) : null);
        if (jSONArrayMergeCollections.length() > 0) {
            jSONObjectMetadata.put(COLLECTIONS, jSONArrayMergeCollections);
        } else {
            jSONObjectMetadata.remove(COLLECTIONS);
        }
        writeMeta(workshopItem.folder, jSONObjectMetadata);
        if (z) {
            fileInside3 = fileInside4;
        }
        boolean zExists3 = exists(fileInside);
        if (zExists3) {
            SteamFiles.move(fileInside, fileInside3);
        }
        try {
            SteamFiles.move(workshopItem.folder, fileInside);
            if (zExists3) {
                SteamFiles.deleteTree(fileInside3);
            }
            if (fileLegacyFolder == null || !exists(fileLegacyFolder)) {
                return;
            }
            SteamFiles.deleteTree(fileLegacyFolder);
        } catch (Exception e) {
            if (zExists3 && !exists(fileInside) && exists(fileInside3)) {
                SteamFiles.move(fileInside3, fileInside);
            }
            throw e;
        }
    }

    public static JSONArray mergeCollections(JSONArray jSONArray, JSONArray jSONArray2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        JSONArray[] jSONArrayArr = {jSONArray, jSONArray2};
        for (int i = 0; i < 2; i++) {
            JSONArray jSONArray3 = jSONArrayArr[i];
            if (jSONArray3 != null) {
                for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray3.optJSONObject(i2);
                    String strOptString = jSONObjectOptJSONObject == null ? "" : jSONObjectOptJSONObject.optString("id", "");
                    if (strOptString.matches("[0-9]{1,20}") && !linkedHashMap.containsKey(strOptString)) {
                        try {
                            linkedHashMap.put(strOptString, new JSONObject().put("id", strOptString).put(MessageBundle.TITLE_ENTRY, jSONObjectOptJSONObject.optString(MessageBundle.TITLE_ENTRY, "")));
                        } catch (JSONException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                }
            }
        }
        return new JSONArray(linkedHashMap.values());
    }

    public static boolean addCollections(File file, String str, JSONArray jSONArray) throws IOException {
        JSONObject meta;
        if (jSONArray != null && jSONArray.length() != 0) {
            File[] fileArr = {enabledRoot(file), disabledRoot(file)};
            for (int i = 0; i < 2; i++) {
                File file2 = new File(fileArr[i], str);
                if (file2.isDirectory() && !Files.isSymbolicLink(file2.toPath()) && (meta = readMeta(file2)) != null && str.equals(meta.optString("id"))) {
                    JSONArray jSONArrayMergeCollections = mergeCollections(meta.optJSONArray(COLLECTIONS), jSONArray);
                    if (jSONArrayMergeCollections.length() == (meta.optJSONArray(COLLECTIONS) == null ? 0 : meta.optJSONArray(COLLECTIONS).length())) {
                        return true;
                    }
                    try {
                        meta.put(COLLECTIONS, jSONArrayMergeCollections);
                        File file3 = new File(file2, ".workshop.json.tmp");
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                            try {
                                fileOutputStream.write(meta.toString(1).getBytes(StandardCharsets.UTF_8));
                                fileOutputStream.getFD().sync();
                                fileOutputStream.close();
                                Files.move(file3.toPath(), new File(file2, META).toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                                return true;
                            } finally {
                            }
                        } catch (JSONException e) {
                            throw new IOException("Could not encode workshop.json", e);
                        }
                    } catch (JSONException e2) {
                        throw new IllegalStateException(e2);
                    }
                }
            }
        }
        return false;
    }

    public static Map<Long, long[]> installed(File file) {
        HashMap map = new HashMap();
        for (Addon addon : list(file)) {
            if (!addon.local()) {
                try {
                    map.put(Long.valueOf(Long.parseUnsignedLong(addon.id)), new long[]{addon.meta.optLong("time", 0L), addon.size});
                } catch (NumberFormatException unused) {
                }
            }
        }
        return map;
    }

    public static final class Group {
        final List<Addon> addons = new ArrayList();
        final String id;
        final String title;

        public Group(String str, String str2) {
            this.id = str;
            this.title = str2;
        }

        public String name() {
            if (!this.title.trim().isEmpty()) {
                return this.title;
            }
            return "Collection " + this.id;
        }

        public int enabled() {
            Iterator<Addon> it = this.addons.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (it.next().enabled) {
                    i++;
                }
            }
            return i;
        }

        public long size() {
            Iterator<Addon> it = this.addons.iterator();
            long j = 0;
            while (it.hasNext()) {
                j += it.next().size;
            }
            return j;
        }
    }

    public static List<Group> groups(List<Addon> list) {
        JSONArray jSONArrayOptJSONArray;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Addon addon : list) {
            if (!addon.local() && (jSONArrayOptJSONArray = addon.meta.optJSONArray(COLLECTIONS)) != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject == null ? "" : jSONObjectOptJSONObject.optString("id", "");
                    if (strOptString.matches("[0-9]{1,20}")) {
                        Group group = (Group) linkedHashMap.get(strOptString);
                        if (group == null) {
                            group = new Group(strOptString, jSONObjectOptJSONObject.optString(MessageBundle.TITLE_ENTRY, ""));
                            linkedHashMap.put(strOptString, group);
                        }
                        if (!group.addons.contains(addon)) {
                            group.addons.add(addon);
                        }
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        arrayList.sort(new Comparator() { // from class: com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return GmodAddons.lambda$groups$0((GmodAddons.Group) obj, (GmodAddons.Group) obj2);
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$groups$0(Group group, Group group2) {
        int iCompare = String.CASE_INSENSITIVE_ORDER.compare(group.name(), group2.name());
        return iCompare != 0 ? iCompare : group.id.compareTo(group2.id);
    }

    public static int setGroupEnabled(File file, Group group, boolean z) throws IOException {
        return setGroupEnabled(file, null, group, z);
    }

    public static int setGroupEnabled(File file, File file2, Group group, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Addon addon : group.addons) {
            if (addon.enabled == z) {
                try {
                    clearMountChoices(file, file2, mountKeys(addon));
                } catch (IOException e) {
                    arrayList.add(addon.title() + ": " + e.getMessage());
                }
            } else {
                try {
                    setEnabled(file, file2, addon, z);
                    i++;
                } catch (IOException e2) {
                    arrayList.add(addon.title() + ": " + e2.getMessage());
                }
            }
        }
        if (arrayList.isEmpty()) {
            return i;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Enabled " : "Disabled ");
        sb.append(i);
        sb.append("; ");
        sb.append(arrayList.size());
        sb.append(" could not be changed (");
        sb.append(String.join("; ", arrayList.subList(0, Math.min(3, arrayList.size()))));
        sb.append(arrayList.size() > 3 ? "; …" : "");
        sb.append(")");
        throw new IOException(sb.toString());
    }

    private static boolean exists(File file) {
        return Files.exists(file.toPath(), LinkOption.NOFOLLOW_LINKS);
    }

    private static void reconcile(File file, File file2, File file3, String str) throws Exception {
        if (exists(file)) {
            requireOwned(file, str);
            if (exists(file2) || exists(file3)) {
                SteamFiles.deleteTree(file);
            } else {
                SteamFiles.move(file, file2);
            }
        }
    }

    private static void requireOwned(File file, String str) throws IOException {
        JSONObject meta = readMeta(file);
        if (!file.isDirectory() || meta == null) {
            throw new IOException("Addon folder " + file.getName() + " was not installed by the launcher; rename it before installing");
        }
        if (!str.equals(meta.optString("id"))) {
            throw new IOException("Addon folder belongs to another item");
        }
    }

    private static File legacyFolder(File file, String str) {
        File file2 = new File(new File(file, "garrysmod"), "custom");
        String[] strArr = {"workshop_" + str, ".sourceandroid-disabled-workshop_" + str};
        for (int i = 0; i < 2; i++) {
            File file3 = new File(file2, strArr[i]);
            File file4 = new File(file3, ".sourceandroid-workshop.json");
            if (!file4.isFile()) {
                file4 = new File(file3, ".sourcevr-workshop.json");
            }
            try {
                if (file3.isDirectory() && !Files.isSymbolicLink(file3.toPath()) && file4.isFile() && file4.length() <= 65536 && str.equals(new JSONObject(new String(Files.readAllBytes(file4.toPath()), StandardCharsets.UTF_8)).optString("id"))) {
                    return file3;
                }
            } catch (IOException | JSONException unused) {
            }
        }
        return null;
    }

    public static boolean isWorkshopFolder(File file) {
        JSONObject meta;
        String name = file.getName();
        return !name.startsWith(".") && name.matches("[0-9]{1,20}") && !Files.isSymbolicLink(file.toPath()) && file.isDirectory() && (meta = readMeta(file)) != null && name.equals(meta.optString("id"));
    }

    public static List<Addon> list(File file) {
        JSONObject meta;
        boolean[] zArr;
        int i;
        int i2;
        TreeMap treeMap = new TreeMap();
        HashSet hashSet = new HashSet();
        boolean[] zArr2 = {true, false};
        int i3 = 0;
        for (int i4 = 2; i3 < i4; i4 = 2) {
            boolean z = zArr2[i3];
            File[] fileArrListFiles = (z ? enabledRoot(file) : disabledRoot(file)).listFiles();
            if (fileArrListFiles != null) {
                int length = fileArrListFiles.length;
                int i5 = 0;
                while (i5 < length) {
                    File file2 = fileArrListFiles[i5];
                    String name = file2.getName();
                    if (!isWorkshopFolder(file2) || (meta = readMeta(file2)) == null) {
                        zArr = zArr2;
                        i = length;
                        i2 = i5;
                    } else if (treeMap.containsKey(name)) {
                        hashSet.add(name);
                        zArr = zArr2;
                        i = length;
                        i2 = i5;
                    } else {
                        long jOptLong = meta.optLong("size", -1L);
                        if (jOptLong < 0) {
                            try {
                                jOptLong = treeSize(file2);
                            } catch (IOException unused) {
                                jOptLong = 0;
                            }
                        }
                        zArr = zArr2;
                        i = length;
                        i2 = i5;
                        treeMap.put(name, new Addon(name, file2, z, meta, false, jOptLong));
                    }
                    i5 = i2 + 1;
                    length = i;
                    zArr2 = zArr;
                }
            }
            i3++;
            zArr2 = zArr2;
        }
        ArrayList arrayList = new ArrayList();
        for (Addon addon : treeMap.values()) {
            if (hashSet.contains(addon.id)) {
                addon = new Addon(addon.id, addon.folder, addon.enabled, addon.meta, true, addon.size);
            }
            arrayList.add(addon);
        }
        arrayList.sort(new Comparator() { // from class: com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return GmodAddons.lambda$list$1((GmodAddons.Addon) obj, (GmodAddons.Addon) obj2);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$list$1(Addon addon, Addon addon2) {
        int iCompare = String.CASE_INSENSITIVE_ORDER.compare(addon.title(), addon2.title());
        return iCompare != 0 ? iCompare : addon.id.compareTo(addon2.id);
    }

    public static Addon setEnabled(File file, Addon addon, boolean z) throws IOException {
        return setEnabled(file, null, addon, z);
    }

    public static Addon setEnabled(File file, File file2, Addon addon, boolean z) throws IOException {
        Set<String> setMountKeys = mountKeys(addon);
        Addon addonMoveEnabled = moveEnabled(file, addon, z);
        try {
            clearMountChoices(file, file2, setMountKeys);
            return addonMoveEnabled;
        } catch (IOException e) {
            StringBuilder sb = new StringBuilder();
            sb.append(addonMoveEnabled.title());
            sb.append(" was ");
            sb.append(z ? "enabled" : "disabled");
            sb.append(", but the game's own saved on/off choice for it could not be cleared (");
            sb.append(e.getMessage());
            sb.append(")");
            throw new IOException(sb.toString(), e);
        }
    }

    private static Addon moveEnabled(File file, Addon addon, boolean z) throws IOException {
        if (addon.local()) {
            return setLocalEnabled(file, addon, z);
        }
        if (addon.conflict) {
            throw new IOException("Addon " + addon.id + " exists both enabled and disabled");
        }
        boolean z2 = addon.enabled;
        if (z2 == z) {
            return addon;
        }
        File fileEnabledRoot = z2 ? enabledRoot(file) : disabledRoot(file);
        File fileEnabledRoot2 = z ? enabledRoot(file) : disabledRoot(file);
        File file2 = new File(fileEnabledRoot, addon.id);
        File file3 = new File(fileEnabledRoot2, addon.id);
        if (!file2.getAbsoluteFile().equals(addon.folder.getAbsoluteFile()) || !exists(file2)) {
            throw new IOException("Addon changed while the menu was open");
        }
        if (Files.isSymbolicLink(file2.toPath()) || !file2.isDirectory()) {
            throw new IOException("Addon changed while the menu was open");
        }
        if (!exists(file3)) {
            SteamFiles.mkdir(fileEnabledRoot2);
            Files.move(file2.toPath(), file3.toPath(), new CopyOption[0]);
            return new Addon(addon.id, file3, z, addon.meta, false, addon.size);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Addon ");
        sb.append(addon.id);
        sb.append(" already exists in the ");
        sb.append(z ? "enabled" : "disabled");
        sb.append(" list");
        throw new IOException(sb.toString());
    }

    public static void remove(File file, File file2, Addon addon) throws Exception {
        Set<String> setMountKeys = mountKeys(addon);
        remove(file, addon);
        try {
            clearMountChoices(file, file2, setMountKeys);
        } catch (IOException unused) {
        }
    }

    public static void remove(File file, Addon addon) throws Exception {
        if (addon.local()) {
            removeLocal(file, addon);
            return;
        }
        File file2 = new File(addon.enabled ? enabledRoot(file) : disabledRoot(file), addon.id);
        if (!file2.getAbsoluteFile().equals(addon.folder.getAbsoluteFile())) {
            throw new IOException("Addon changed while the menu was open");
        }
        if (exists(file2)) {
            requireOwned(file2, addon.id);
            File fileDisabledRoot = disabledRoot(file);
            SteamFiles.mkdir(fileDisabledRoot);
            File fileInside = SteamFiles.inside(fileDisabledRoot, ".removing-" + addon.id);
            if (exists(fileInside)) {
                SteamFiles.deleteTree(fileInside);
            }
            Files.move(file2.toPath(), fileInside.toPath(), new CopyOption[0]);
            SteamFiles.deleteTree(fileInside);
        }
    }

    public static Set<String> mountKeys(Addon addon) {
        String strSubstring;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Kind kind = addon.kind;
        if (kind == Kind.WORKSHOP) {
            linkedHashSet.add(addon.id);
        } else if (kind == Kind.LOCAL_GMA) {
            if (addon.id.lastIndexOf(46) >= 0) {
                String str = addon.id;
                strSubstring = str.substring(0, str.lastIndexOf(46));
            } else {
                strSubstring = addon.id;
            }
            String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(95) + 1);
            if (strSubstring.matches("[0-9]+")) {
                linkedHashSet.add(strSubstring);
            } else if (strSubstring2.matches("[0-9]+")) {
                linkedHashSet.add(strSubstring2);
            } else {
                linkedHashSet.add(asciiLower("addons/" + addon.id));
            }
        } else {
            JSONObject meta = readMeta(addon.folder);
            String strOptString = meta != null ? meta.optString("id", "") : "";
            if (strOptString.matches("[0-9]+")) {
                linkedHashSet.add(strOptString);
            } else {
                linkedHashSet.add(asciiLower(addon.id));
            }
        }
        return linkedHashSet;
    }

    public static void clearMountChoices(File file, File file2, Set<String> set) throws IOException {
        if (file2 != null) {
            clearMountChoices(new File(file2, MOUNT_PREFS), set);
        }
        clearMountChoices(new File(new File(file, "garrysmod"), MOUNT_PREFS), set);
    }

    public static boolean clearMountChoices(File file, Set<String> set) throws IOException {
        int i;
        Path path = file.toPath();
        if (set.isEmpty() || Files.isSymbolicLink(path) || !Files.isRegularFile(path, new LinkOption[0]) || Files.size(path) > MOUNT_PREFS_LIMIT) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(asciiLower(new String(it.next().getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1)));
        }
        String str = new String(Files.readAllBytes(path), StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(str.length());
        int i2 = 0;
        boolean z = false;
        while (i2 < str.length()) {
            int i3 = i2;
            while (i3 < str.length() && str.charAt(i3) != '\n' && str.charAt(i3) != '\r') {
                i3++;
            }
            if (i3 < str.length()) {
                i = (str.startsWith("\r\n", i3) ? 2 : 1) + i3;
            } else {
                i = i3;
            }
            String strSubstring = str.substring(i2, i3);
            int iMax = Math.max(strSubstring.lastIndexOf(32), strSubstring.lastIndexOf(9));
            String strReplaceAll = "";
            if (iMax >= 0 && iMax + 1 < strSubstring.length()) {
                strReplaceAll = strSubstring.substring(0, iMax).replaceAll("\\s+$", "");
            }
            if (strReplaceAll.isEmpty() || !hashSet.contains(asciiLower(strReplaceAll))) {
                sb.append((CharSequence) str, i2, i);
            } else {
                z = true;
            }
            i2 = i;
        }
        if (!z) {
            return false;
        }
        File file2 = new File(file.getParentFile(), "." + file.getName() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            fileOutputStream.write(sb.toString().getBytes(StandardCharsets.ISO_8859_1));
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            try {
                Files.move(file2.toPath(), path, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                return true;
            } catch (IOException e) {
                Files.deleteIfExists(file2.toPath());
                throw e;
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

    private static String asciiLower(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                cCharAt = (char) (cCharAt + ' ');
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static List<Addon> listAll(File file) {
        ArrayList arrayList = new ArrayList(list(file));
        arrayList.addAll(listLocal(file));
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<com.gmodvr.flat.GmodAddons.Addon> listLocal(java.io.File r24) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.GmodAddons.listLocal(java.io.File):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$listLocal$2(Addon addon, Addon addon2) {
        int iCompare = String.CASE_INSENSITIVE_ORDER.compare(addon.title(), addon2.title());
        return iCompare != 0 ? iCompare : addon.id.compareTo(addon2.id);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONObject folderMeta(java.io.File r8) {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "addon.json"
            r0.<init>(r8, r1)
            java.lang.String r0 = readSmall(r0)
            java.lang.String r1 = "title"
            java.lang.String r2 = ""
            if (r0 == 0) goto L62
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L38
            r3.<init>(r0)     // Catch: org.json.JSONException -> L38
            java.lang.String r4 = r3.optString(r1, r2)     // Catch: org.json.JSONException -> L38
            java.lang.String r5 = "author"
            java.lang.String r5 = r3.optString(r5, r2)     // Catch: org.json.JSONException -> L35
            java.lang.String r6 = "description"
            java.lang.String r6 = r3.optString(r6, r2)     // Catch: org.json.JSONException -> L33
            java.lang.String r7 = "type"
            java.lang.String r3 = r3.optString(r7, r2)     // Catch: org.json.JSONException -> L3b
            java.util.Locale r7 = java.util.Locale.ROOT     // Catch: org.json.JSONException -> L3b
            java.lang.String r0 = r3.toLowerCase(r7)     // Catch: org.json.JSONException -> L3b
            goto L66
        L33:
            r6 = r2
            goto L3b
        L35:
            r5 = r2
        L36:
            r6 = r5
            goto L3b
        L38:
            r4 = r2
            r5 = r4
            goto L36
        L3b:
            java.lang.String r3 = "\"title\"\\s*:\\s*\"((?:[^\"\\\\]|\\\\.)*)\""
            java.util.regex.Pattern r3 = java.util.regex.Pattern.compile(r3)
            java.util.regex.Matcher r0 = r3.matcher(r0)
            boolean r3 = r0.find()
            if (r3 == 0) goto L60
            r3 = 1
            java.lang.String r0 = r0.group(r3)
            java.lang.String r3 = "\\\""
            java.lang.String r4 = "\""
            java.lang.String r0 = r0.replace(r3, r4)
            java.lang.String r3 = "\\\\"
            java.lang.String r4 = "\\"
            java.lang.String r4 = r0.replace(r3, r4)
        L60:
            r0 = r2
            goto L66
        L62:
            r0 = r2
            r4 = r0
            r5 = r4
            r6 = r5
        L66:
            java.lang.String r3 = r4.trim()
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto Lb4
            java.io.File r3 = new java.io.File
            java.lang.String r7 = "addon.txt"
            r3.<init>(r8, r7)
            java.lang.String r8 = readSmall(r3)
            if (r8 == 0) goto Lb4
            java.util.Map r8 = keyValues(r8)
            java.lang.String r3 = "name"
            boolean r4 = r8.containsKey(r3)
            if (r4 == 0) goto L91
            java.lang.Object r1 = r8.get(r3)
        L8d:
            java.lang.String r1 = (java.lang.String) r1
            r4 = r1
            goto L96
        L91:
            java.lang.Object r1 = r8.getOrDefault(r1, r2)
            goto L8d
        L96:
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto La5
            java.lang.String r1 = "author_name"
            java.lang.Object r1 = r8.getOrDefault(r1, r2)
            r5 = r1
            java.lang.String r5 = (java.lang.String) r5
        La5:
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto Lb4
            java.lang.String r1 = "info"
            java.lang.Object r8 = r8.getOrDefault(r1, r2)
            r6 = r8
            java.lang.String r6 = (java.lang.String) r6
        Lb4:
            org.json.JSONObject r8 = localMeta(r4, r5, r6, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.GmodAddons.folderMeta(java.io.File):org.json.JSONObject");
    }

    public static JSONObject gmaMeta(File file) {
        try {
            GmaArchive.Info headerAny = GmaArchive.readHeaderAny(file);
            return localMeta(headerAny.title, placeholder(headerAny.author.trim(), "author", "author name", "no author provided"), placeholder(headerAny.description.trim(), "description", "no description provided"), headerAny.type);
        } catch (IOException | RuntimeException unused) {
            return localMeta("", "", "", "");
        }
    }

    private static JSONObject localMeta(String str, String str2, String str3, String str4) {
        try {
            return new JSONObject().put(MessageBundle.TITLE_ENTRY, clean(str)).put("author", clean(str2)).put("description", str3 == null ? "" : str3.trim()).put("type", clean(str4));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    private static String clean(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.replaceAll("\\p{Cntrl}+", " ").trim();
        return strTrim.length() > 200 ? strTrim.substring(0, 200).trim() : strTrim;
    }

    private static String readSmall(File file) {
        try {
            if (!Files.isSymbolicLink(file.toPath()) && file.isFile() && file.length() <= META_LIMIT) {
                return new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8);
            }
        } catch (IOException unused) {
        }
        return null;
    }

    public static Map<String, String> keyValues(String str) {
        String string;
        int i;
        HashMap map = new HashMap();
        int length = str.length();
        int i2 = 0;
        int iMax = 0;
        while (true) {
            String str2 = null;
            while (i2 < length) {
                char cCharAt = str.charAt(i2);
                if (Character.isWhitespace(cCharAt) || cCharAt == 65279) {
                    i2++;
                } else if (cCharAt == '/' && (i = i2 + 1) < length && str.charAt(i) == '/') {
                    while (i2 < length && str.charAt(i2) != '\n') {
                        i2++;
                    }
                } else {
                    if (cCharAt == '{') {
                        iMax++;
                    } else if (cCharAt == '}') {
                        iMax = Math.max(0, iMax - 1);
                    } else {
                        if (cCharAt == '\"') {
                            StringBuilder sb = new StringBuilder();
                            int i3 = i2 + 1;
                            while (i3 < length && str.charAt(i3) != '\"') {
                                int i4 = i3 + 1;
                                char cCharAt2 = str.charAt(i3);
                                if (cCharAt2 == '\\' && i4 < length && (str.charAt(i4) == '\"' || str.charAt(i4) == '\\')) {
                                    i3 += 2;
                                    cCharAt2 = str.charAt(i4);
                                } else {
                                    i3 = i4;
                                }
                                sb.append(cCharAt2);
                            }
                            i2 = i3 + 1;
                            string = sb.toString();
                        } else {
                            int i5 = i2;
                            while (i5 < length && !Character.isWhitespace(str.charAt(i5)) && "{}\"".indexOf(str.charAt(i5)) < 0) {
                                i5++;
                            }
                            String strSubstring = str.substring(i2, i5);
                            if (strSubstring.startsWith("[")) {
                                i2 = i5;
                            } else {
                                int i6 = i5;
                                string = strSubstring;
                                i2 = i6;
                            }
                        }
                        if (str2 == null) {
                            str2 = string;
                        } else if (iMax <= 1) {
                            map.putIfAbsent(str2.toLowerCase(Locale.ROOT), string);
                        }
                    }
                    i2++;
                }
            }
            return map;
        }
    }

    private static File requireLocal(File file, Addon addon) throws IOException {
        File file2 = new File(addon.enabled ? enabledRoot(file) : disabledRoot(file), addon.id);
        if (!file2.getAbsoluteFile().equals(addon.folder.getAbsoluteFile()) || !exists(file2) || Files.isSymbolicLink(file2.toPath()) || (addon.kind != Kind.LOCAL_GMA ? !file2.isDirectory() : !Files.isRegularFile(file2.toPath(), LinkOption.NOFOLLOW_LINKS))) {
            throw new IOException("Addon changed while the menu was open");
        }
        return file2;
    }

    public static Addon setLocalEnabled(File file, Addon addon, boolean z) throws IOException {
        if (addon.builtin) {
            throw new IOException(addon.title() + " is part of GDroid and stays enabled");
        }
        if (addon.conflict) {
            throw new IOException(addon.id + " exists both enabled and disabled; remove one first");
        }
        if (addon.enabled == z) {
            return addon;
        }
        File fileRequireLocal = requireLocal(file, addon);
        File fileEnabledRoot = z ? enabledRoot(file) : disabledRoot(file);
        File file2 = new File(fileEnabledRoot, addon.id);
        if (!exists(file2)) {
            SteamFiles.mkdir(fileEnabledRoot);
            Files.move(fileRequireLocal.toPath(), file2.toPath(), new CopyOption[0]);
            return new Addon(addon.kind, addon.id, file2, z, addon.meta, false, addon.size, false);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(addon.id);
        sb.append(" already exists in the ");
        sb.append(z ? "enabled" : "disabled");
        sb.append(" list");
        throw new IOException(sb.toString());
    }

    public static void removeLocal(File file, Addon addon) throws IOException {
        if (addon.builtin) {
            throw new IOException(addon.title() + " is part of GDroid and cannot be removed here");
        }
        File fileRequireLocal = requireLocal(file, addon);
        File fileDisabledRoot = disabledRoot(file);
        SteamFiles.mkdir(fileDisabledRoot);
        File[] fileArrListFiles = fileDisabledRoot.listFiles(new FilenameFilter() { // from class: com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda3
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                return GmodAddons.lambda$removeLocal$3(file2, str);
            }
        });
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                deleteWithoutFollowing(file2.toPath());
            }
        }
        File file3 = new File(fileDisabledRoot, ".removing-local-" + UUID.randomUUID());
        Files.move(fileRequireLocal.toPath(), file3.toPath(), new CopyOption[0]);
        deleteWithoutFollowing(file3.toPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeLocal$3(File file, String str) {
        return str.startsWith(".removing-local-");
    }

    private static void deleteWithoutFollowing(Path path) throws IOException {
        try {
            if (Files.readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS).isDirectory()) {
                DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path);
                try {
                    Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
                    while (it.hasNext()) {
                        deleteWithoutFollowing(it.next());
                    }
                    directoryStreamNewDirectoryStream.close();
                } catch (Throwable th) {
                    if (directoryStreamNewDirectoryStream != null) {
                        try {
                            directoryStreamNewDirectoryStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            Files.deleteIfExists(path);
        } catch (NoSuchFileException unused) {
        }
    }

    public static String sizeText(long j) {
        if (j < 1024) {
            return j + " B";
        }
        if (j < META_LIMIT) {
            return String.format(Locale.ROOT, "%.0f KiB", Double.valueOf(j / 1024.0d));
        }
        if (j < 1073741824) {
            return String.format(Locale.ROOT, "%.1f MiB", Double.valueOf(j / 1048576.0d));
        }
        return String.format(Locale.ROOT, "%.2f GiB", Double.valueOf(j / 1.073741824E9d));
    }
}
