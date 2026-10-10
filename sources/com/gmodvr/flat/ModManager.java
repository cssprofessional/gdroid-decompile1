package com.gmodvr.flat;

import com.gmodvr.flat.CustomContentName;
import com.gmodvr.flat.ModManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class ModManager {
    private static final String DIRECTORY_VPK_SUFFIX = "_dir.vpk";
    static final String DISABLED_MARKER = ".sourceandroid-disabled";
    static final String DISABLED_PREFIX = ".sourceandroid-disabled-";
    private static final Pattern NUMBERED_VPK = Pattern.compile("^(.+)_([0-9]+)\\.vpk$", 2);
    private static final Set<String> UNMOUNTABLE_CONTENT_DIRECTORIES;
    static final int VPK_HEADER_MARKER = 1437209140;

    public enum Kind {
        FOLDER,
        VPK,
        MIXED
    }

    static {
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, "materials", "maps", "resource", "scripts", "sound", "models");
        UNMOUNTABLE_CONTENT_DIRECTORIES = Collections.unmodifiableSet(hashSet);
    }

    private ModManager() {
    }

    public static List<GameSection> scan(File file, List<GameContentProfile> list) throws IOException {
        return scan(file, null, list);
    }

    public static List<GameSection> scan(File file, File file2, List<GameContentProfile> list) throws IOException {
        if (file == null) {
            throw new IOException("shared content root is unavailable");
        }
        if (list == null) {
            throw new IOException("game catalog is unavailable");
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (GameContentProfile gameContentProfile : list) {
            if (gameContentProfile != null && hashSet.add(gameContentProfile.gameDir)) {
                File file3 = new File(new File(file, gameContentProfile.gameDir), "custom");
                ArrayList arrayList2 = new ArrayList();
                if (file2 != null) {
                    addMountedRoot(arrayList2, new File(new File(file2, gameContentProfile.gameDir), "custom"));
                }
                addMountedRoot(arrayList2, file3);
                arrayList.add(new GameSection(gameContentProfile, new ArrayList(arrayList2), scanRoots(arrayList2)));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static void addMountedRoot(List<File> list, File file) {
        String string = file.getAbsoluteFile().toPath().normalize().toString();
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getAbsoluteFile().toPath().normalize().toString().equalsIgnoreCase(string)) {
                return;
            }
        }
        list.add(file);
    }

    private static List<ModEntry> scanRoots(List<File> list) throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            scanRoot(it.next(), linkedHashMap);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = linkedHashMap.values().iterator();
        while (it2.hasNext()) {
            arrayList.add(((Accumulator) it2.next()).finish());
        }
        arrayList.sort(new Comparator() { // from class: com.gmodvr.flat.ModManager$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ModManager.lambda$scanRoots$0((ModManager.ModEntry) obj, (ModManager.ModEntry) obj2);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$scanRoots$0(ModEntry modEntry, ModEntry modEntry2) {
        int iCompare = String.CASE_INSENSITIVE_ORDER.compare(modEntry.name, modEntry2.name);
        return iCompare != 0 ? iCompare : modEntry.name.compareTo(modEntry2.name);
    }

    private static void scanRoot(File file, Map<String, Accumulator> map) throws IOException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new IOException("custom path is not a directory: " + file);
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("could not inspect " + file);
            }
            ArrayList<Candidate> arrayList = new ArrayList();
            ArrayList<Candidate> arrayList2 = new ArrayList();
            for (File file2 : fileArrListFiles) {
                Candidate candidate = candidate(file2);
                if (candidate != null) {
                    if (candidate.directory) {
                        arrayList.add(candidate);
                    } else {
                        arrayList2.add(candidate);
                    }
                }
            }
            for (Candidate candidate2 : arrayList) {
                add(map, candidate2.canonicalName.toLowerCase(Locale.ROOT), candidate2.canonicalName, Kind.FOLDER, candidate2, false);
            }
            HashMap map2 = new HashMap();
            for (Candidate candidate3 : arrayList2) {
                if (endsWithIgnoreCase(candidate3.canonicalName, DIRECTORY_VPK_SUFFIX)) {
                    map2.put(candidate3.canonicalName.toLowerCase(Locale.ROOT), candidate3);
                }
            }
            for (Candidate candidate4 : arrayList2) {
                String str = candidate4.canonicalName;
                Matcher matcher = NUMBERED_VPK.matcher(str);
                if (matcher.matches()) {
                    Candidate candidate5 = (Candidate) map2.get((matcher.group(1) + DIRECTORY_VPK_SUFFIX).toLowerCase(Locale.ROOT));
                    if (candidate5 != null) {
                        str = candidate5.canonicalName;
                    }
                }
                String str2 = str;
                add(map, str2.toLowerCase(Locale.ROOT), str2, Kind.VPK, candidate4, endsWithIgnoreCase(candidate4.canonicalName, DIRECTORY_VPK_SUFFIX));
            }
        }
    }

    private static Candidate candidate(File file) throws IOException {
        CustomContentName.Parsed parsed;
        if (Files.isSymbolicLink(file.toPath()) || (parsed = CustomContentName.parse(file.getName())) == null) {
            return null;
        }
        if (file.isDirectory()) {
            if (new File(file, "gameinfo.txt").isFile() || UNMOUNTABLE_CONTENT_DIRECTORIES.contains(parsed.canonicalName.toLowerCase(Locale.ROOT)) || isRecursivelyEmpty(file.toPath())) {
                return null;
            }
            return new Candidate(file.getParentFile(), file, parsed.canonicalName, parsed.enabled && !Files.exists(file.toPath().resolve(".sourceandroid-disabled"), LinkOption.NOFOLLOW_LINKS), true);
        }
        if (endsWithIgnoreCase(parsed.canonicalName, ".vpk") || hasVpkHeader(file)) {
            return new Candidate(file.getParentFile(), file, parsed.canonicalName, parsed.enabled, false);
        }
        return null;
    }

    public static boolean hasVpkHeader(File file) {
        if (!file.isFile()) {
            return false;
        }
        byte[] bArr = new byte[4];
        try {
            InputStream inputStreamNewInputStream = Files.newInputStream(file.toPath(), new OpenOption[0]);
            int i = 0;
            while (i < 4) {
                try {
                    int i2 = inputStreamNewInputStream.read(bArr, i, 4 - i);
                    if (i2 < 0) {
                        inputStreamNewInputStream.close();
                        return false;
                    }
                    i += i2;
                } finally {
                }
            }
            if (inputStreamNewInputStream != null) {
                inputStreamNewInputStream.close();
            }
            return ((((bArr[0] & 255) | ((bArr[1] & 255) << 8)) | ((bArr[2] & 255) << 16)) | ((bArr[3] & 255) << 24)) == VPK_HEADER_MARKER;
        } catch (IOException unused) {
            return false;
        }
    }

    private static void add(Map<String, Accumulator> map, String str, String str2, Kind kind, Candidate candidate, boolean z) {
        Accumulator accumulator = map.get(str);
        if (accumulator == null) {
            accumulator = new Accumulator(str2, kind);
            map.put(str, accumulator);
        }
        accumulator.add(candidate, z);
    }

    public static ModEntry setEnabled(ModEntry modEntry, final boolean z) throws IOException {
        if (modEntry == null) {
            throw new IOException("mod entry is unavailable");
        }
        if (modEntry.conflict) {
            throw new IOException("both enabled and disabled copies exist for " + modEntry.name);
        }
        ArrayList<Move> arrayList = new ArrayList();
        ArrayList<MarkerChange> arrayList2 = new ArrayList();
        ArrayList<EmptyDirectoryTree> arrayList3 = new ArrayList();
        for (Member member : modEntry.members) {
            if (member.enabled != z) {
                Path pathNormalize = member.customRoot.toPath().toAbsolutePath().normalize();
                if (!Files.isDirectory(pathNormalize, new LinkOption[0])) {
                    throw new IOException("custom directory is unavailable: " + pathNormalize);
                }
                Path pathNormalize2 = member.file.toPath().toAbsolutePath().normalize();
                if (!pathNormalize.equals(pathNormalize2.getParent())) {
                    throw new IOException("refusing to move a mod outside " + pathNormalize);
                }
                if (Files.isSymbolicLink(pathNormalize2) || !Files.exists(pathNormalize2, new LinkOption[0])) {
                    throw new IOException("mod changed while the menu was open");
                }
                if (member.directory && !Files.isDirectory(pathNormalize2, new LinkOption[0])) {
                    throw new IOException("mod changed while the menu was open");
                }
                if (member.directory && !pathNormalize2.getFileName().toString().startsWith(".sourceandroid-disabled-")) {
                    Path pathResolve = pathNormalize.resolve(".sourceandroid-disabled-" + member.canonicalName);
                    if (Files.exists(pathResolve, LinkOption.NOFOLLOW_LINKS) && !isRecursivelyEmpty(pathResolve)) {
                        throw new IOException("a file already exists at " + pathResolve.getFileName());
                    }
                    Path pathResolve2 = pathNormalize2.resolve(".sourceandroid-disabled");
                    validateMarkerChange(pathResolve2, z);
                    arrayList2.add(new MarkerChange(pathResolve2, z));
                } else {
                    Path pathNormalize3 = pathNormalize.resolve(z ? member.canonicalName : ".sourceandroid-disabled-" + member.canonicalName).normalize();
                    if (!pathNormalize.equals(pathNormalize3.getParent())) {
                        throw new IOException("invalid mod name " + member.canonicalName);
                    }
                    if (!Files.exists(pathNormalize2, new LinkOption[0])) {
                        throw new IOException("mod changed while the menu was open");
                    }
                    if (Files.exists(pathNormalize3, new LinkOption[0])) {
                        if (!isRecursivelyEmpty(pathNormalize3)) {
                            throw new IOException("a file already exists at " + pathNormalize3.getFileName());
                        }
                        arrayList3.add(snapshotEmptyDirectoryTree(pathNormalize3));
                    }
                    arrayList.add(new Move(pathNormalize2, pathNormalize3, member.descriptor));
                    if (member.directory && z && Files.exists(pathNormalize2.resolve(".sourceandroid-disabled"), LinkOption.NOFOLLOW_LINKS)) {
                        validateMarkerChange(pathNormalize2.resolve(".sourceandroid-disabled"), true);
                        arrayList2.add(new MarkerChange(pathNormalize3.resolve(".sourceandroid-disabled"), true));
                    }
                }
            }
        }
        arrayList.sort(new Comparator() { // from class: com.gmodvr.flat.ModManager$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ModManager.lambda$setEnabled$1(z, (ModManager.Move) obj, (ModManager.Move) obj2);
            }
        });
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        try {
            for (EmptyDirectoryTree emptyDirectoryTree : arrayList3) {
                arrayList6.add(emptyDirectoryTree);
                deleteEmptyDirectoryTree(emptyDirectoryTree.root);
            }
            for (Move move : arrayList) {
                Files.move(move.source, move.target, new CopyOption[0]);
                arrayList4.add(move);
            }
            for (MarkerChange markerChange : arrayList2) {
                markerChange.apply();
                arrayList5.add(markerChange);
            }
            Accumulator accumulator = new Accumulator(modEntry.name, modEntry.kind);
            for (Member member2 : modEntry.members) {
                File file = member2.file;
                if (member2.enabled != z && (!member2.directory || file.getName().startsWith(".sourceandroid-disabled-"))) {
                    file = new File(member2.customRoot, CustomContentName.physicalName(member2.canonicalName, z));
                }
                accumulator.add(new Candidate(member2.customRoot, file, member2.canonicalName, z, member2.directory), member2.descriptor);
            }
            return accumulator.finish();
        } catch (IOException | RuntimeException e) {
            for (int size = arrayList5.size() - 1; size >= 0; size--) {
                try {
                    ((MarkerChange) arrayList5.get(size)).rollback();
                } catch (IOException e2) {
                    e.addSuppressed(e2);
                }
            }
            Throwable th = null;
            for (int size2 = arrayList4.size() - 1; size2 >= 0; size2--) {
                Move move2 = (Move) arrayList4.get(size2);
                try {
                    Files.move(move2.target, move2.source, new CopyOption[0]);
                } catch (IOException e3) {
                    if (th == null) {
                        th = e3;
                    } else {
                        th.addSuppressed(e3);
                    }
                }
            }
            if (th != null) {
                e.addSuppressed(th);
            }
            Iterator it = arrayList6.iterator();
            while (it.hasNext()) {
                try {
                    ((EmptyDirectoryTree) it.next()).restore();
                } catch (IOException e4) {
                    e.addSuppressed(e4);
                }
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$setEnabled$1(boolean z, Move move, Move move2) {
        boolean z2 = move.descriptor;
        if (z2 == move2.descriptor) {
            return String.CASE_INSENSITIVE_ORDER.compare(move.source.getFileName().toString(), move2.source.getFileName().toString());
        }
        if (z) {
            if (!z2) {
                return -1;
            }
        } else if (z2) {
            return -1;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void validateMarkerChange(Path path, boolean z) throws IOException {
        if (z) {
            if (Files.isRegularFile(path, LinkOption.NOFOLLOW_LINKS) && Files.size(path) == 0) {
                return;
            }
            throw new IOException("invalid disabled marker: " + path);
        }
        if (Files.exists(path, LinkOption.NOFOLLOW_LINKS)) {
            throw new IOException("mod changed while the menu was open");
        }
    }

    private static boolean endsWithIgnoreCase(String str, String str2) {
        if (str.length() < str2.length()) {
            return false;
        }
        return str.regionMatches(true, str.length() - str2.length(), str2, 0, str2.length());
    }

    private static boolean isRecursivelyEmpty(Path path) throws IOException {
        if (Files.isSymbolicLink(path) || !Files.isDirectory(path, new LinkOption[0])) {
            return false;
        }
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path);
        try {
            Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
            while (it.hasNext()) {
                if (!isRecursivelyEmpty(it.next())) {
                    directoryStreamNewDirectoryStream.close();
                    return false;
                }
            }
            directoryStreamNewDirectoryStream.close();
            return true;
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

    private static EmptyDirectoryTree snapshotEmptyDirectoryTree(Path path) throws IOException {
        ArrayList arrayList = new ArrayList();
        collectEmptyDirectories(path, arrayList);
        return new EmptyDirectoryTree(path, arrayList);
    }

    private static void collectEmptyDirectories(Path path, List<Path> list) throws IOException {
        if (Files.isSymbolicLink(path) || !Files.isDirectory(path, new LinkOption[0])) {
            throw new IOException("refusing to remove non-empty custom target " + path);
        }
        list.add(path);
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path);
        try {
            Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
            while (it.hasNext()) {
                collectEmptyDirectories(it.next(), list);
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

    private static void deleteEmptyDirectoryTree(Path path) throws IOException {
        if (Files.isSymbolicLink(path) || !Files.isDirectory(path, new LinkOption[0])) {
            throw new IOException("refusing to remove non-empty custom target " + path);
        }
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path);
        try {
            Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
            while (it.hasNext()) {
                deleteEmptyDirectoryTree(it.next());
            }
            directoryStreamNewDirectoryStream.close();
            Files.delete(path);
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

    public static final class GameSection {
        final List<ModEntry> mods;
        final List<File> mountedRoots;
        final GameContentProfile profile;

        public GameSection(GameContentProfile gameContentProfile, List<File> list, List<ModEntry> list2) {
            this.profile = gameContentProfile;
            this.mountedRoots = Collections.unmodifiableList(list);
            this.mods = list2;
        }
    }

    public static final class ModEntry {
        final boolean conflict;
        final boolean enabled;
        Kind kind;
        final List<Member> members;
        final boolean mixed;
        final String name;

        public ModEntry(String str, Kind kind, List<Member> list, boolean z, boolean z2, boolean z3) {
            this.name = str;
            this.kind = kind;
            this.members = Collections.unmodifiableList(list);
            this.enabled = z;
            this.mixed = z2;
            this.conflict = z3;
        }
    }

    public static final class Candidate {
        final String canonicalName;
        final File customRoot;
        final boolean directory;
        final boolean enabled;
        final File file;

        public Candidate(File file, File file2, String str, boolean z, boolean z2) {
            this.customRoot = file;
            this.file = file2;
            this.canonicalName = str;
            this.enabled = z;
            this.directory = z2;
        }
    }

    public static final class Member {
        final String canonicalName;
        final File customRoot;
        final boolean descriptor;
        final boolean directory;
        final boolean enabled;
        final File file;

        public Member(Candidate candidate, boolean z) {
            this.customRoot = candidate.customRoot;
            this.file = candidate.file;
            this.canonicalName = candidate.canonicalName;
            this.enabled = candidate.enabled;
            this.descriptor = z;
            this.directory = candidate.directory;
        }
    }

    public static final class Accumulator {
        boolean anyDescriptorEnabled;
        boolean anyDisabled;
        boolean anyEnabled;
        boolean anyFolderEnabled;
        boolean anyVpkEnabled;
        boolean conflict;
        boolean hasDescriptor;
        Kind kind;
        final String name;
        final List<Member> members = new ArrayList();
        final Map<String, Integer> statesByCanonicalName = new HashMap();

        public Accumulator(String str, Kind kind) {
            this.name = str;
            this.kind = kind;
        }

        public void add(Candidate candidate, boolean z) {
            if (this.kind != (candidate.directory ? Kind.FOLDER : Kind.VPK)) {
                this.kind = Kind.MIXED;
            }
            this.members.add(new Member(candidate, z));
            boolean z2 = this.anyEnabled;
            boolean z3 = candidate.enabled;
            this.anyEnabled = z2 | z3;
            this.anyDisabled |= !z3;
            boolean z4 = this.anyFolderEnabled;
            boolean z5 = candidate.directory;
            boolean z6 = false;
            this.anyFolderEnabled = z4 | (z5 && z3);
            this.anyVpkEnabled |= !z5 && z3;
            this.hasDescriptor |= z;
            boolean z7 = this.anyDescriptorEnabled;
            if (z && z3) {
                z6 = true;
            }
            this.anyDescriptorEnabled = z7 | z6;
            int i = candidate.file.getName().startsWith(".sourceandroid-disabled-") ? 2 : 1;
            Integer numPut = this.statesByCanonicalName.put(candidate.customRoot.getAbsoluteFile().toPath().normalize() + "\u0000" + candidate.canonicalName.toLowerCase(Locale.ROOT), Integer.valueOf(i));
            if (numPut == null || numPut.intValue() == i) {
                return;
            }
            this.conflict = true;
        }

        public ModEntry finish() {
            String str = this.name;
            Kind kind = this.kind;
            ArrayList arrayList = new ArrayList(this.members);
            boolean z = false;
            boolean z2 = this.anyFolderEnabled || (!this.hasDescriptor ? !this.anyVpkEnabled : !this.anyDescriptorEnabled);
            if (this.anyEnabled && this.anyDisabled) {
                z = true;
            }
            return new ModEntry(str, kind, arrayList, z2, z, this.conflict);
        }
    }

    public static final class MarkerChange {
        final boolean enabled;
        final Path marker;

        public MarkerChange(Path path, boolean z) {
            this.marker = path;
            this.enabled = z;
        }

        public void apply() throws IOException {
            ModManager.validateMarkerChange(this.marker, this.enabled);
            if (this.enabled) {
                Files.delete(this.marker);
            } else {
                Files.createFile(this.marker, new FileAttribute[0]);
            }
        }

        public void rollback() throws IOException {
            if (this.enabled) {
                Files.createFile(this.marker, new FileAttribute[0]);
            } else {
                ModManager.validateMarkerChange(this.marker, true);
                Files.delete(this.marker);
            }
        }
    }

    public static final class Move {
        final boolean descriptor;
        final Path source;
        final Path target;

        public Move(Path path, Path path2, boolean z) {
            this.source = path;
            this.target = path2;
            this.descriptor = z;
        }
    }

    public static final class EmptyDirectoryTree {
        final List<Path> directories;
        final Path root;

        public EmptyDirectoryTree(Path path, List<Path> list) {
            this.root = path;
            this.directories = list;
        }

        public void restore() throws IOException {
            Iterator<Path> it = this.directories.iterator();
            while (it.hasNext()) {
                Files.createDirectories(it.next(), new FileAttribute[0]);
            }
        }
    }
}
