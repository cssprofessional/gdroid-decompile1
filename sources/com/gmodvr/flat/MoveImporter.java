package com.gmodvr.flat;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class MoveImporter {
    static final String COMPLETE = ".sourceandroid-complete";
    private static final String JOURNAL = ".plan";
    static final String LEGACY_PORTAL2_COMPLETE = ".portal2android-complete";
    private static final String ORIGIN = ".sourceandroid-source";
    static final String PENDING = ".sourceandroid-move";
    private static final Pattern VPK_PART = Pattern.compile("(?i)(.+)_(?:dir|[0-9]{3})\\.vpk");

    public interface Progress {
        void update(String str, int i) throws IOException;
    }

    public static final class MoveUnavailable extends IOException {
        public MoveUnavailable(IOException iOException) {
            super(iOException.getMessage(), iOException);
        }
    }

    private static String destination(String str) {
        return GameFolder.destination(str);
    }

    private static void core(File file, String str) throws IOException {
        GameFolder.core(file, str);
    }

    public static void move(File file, File file2, Progress progress) throws IOException {
        move(file, file2, GameContentProfile.DEFAULT, progress);
    }

    public static void move(File file, File file2, GameContentProfile gameContentProfile, Progress progress) throws IOException {
        String str;
        String str2;
        String str3;
        List<String> listSelect;
        String string;
        boolean z;
        String[] list;
        File file3;
        File file4;
        int i;
        progress.update("Checking core game files…", 0);
        File canonicalFile = file.getCanonicalFile();
        File canonicalFile2 = file2.getCanonicalFile();
        if (!canonicalFile.isDirectory() || canonicalFile.getPath().contains("\n") || canonicalFile.getPath().contains("\r")) {
            throw new IOException("Select a local game folder with a valid name.");
        }
        File file5 = new File(canonicalFile2, PENDING);
        File file6 = new File(file5, JOURNAL);
        File file7 = new File(file5, ".prepared");
        File file8 = new File(canonicalFile2, ORIGIN);
        if (new File(file5, ".done").isFile()) {
            clearFinishedStage(file5);
        }
        if (file5.isDirectory() && file5.list() != null && file5.list().length == 0) {
            Files.delete(file5.toPath());
        }
        String str4 = "SourceAndroid content v1\n";
        if (!file5.exists() && (canonicalFile.equals(canonicalFile2) || (file8.isFile() && new String(Files.readAllBytes(file8.toPath()), StandardCharsets.UTF_8).equals(canonicalFile.getPath()) && !GameFolder.complete(gameContentProfile, GameFolder.select(canonicalFile))))) {
            GameFolder.check(gameContentProfile, canonicalFile2);
            GameMedia.protectExistingContent(canonicalFile2);
            Storage.atomicText(file8, canonicalFile.getPath());
            Storage.atomicText(new File(canonicalFile2, COMPLETE), "SourceAndroid content v1\n");
            progress.update("Game files are ready.", 100);
            return;
        }
        if (canonicalFile.toPath().startsWith(canonicalFile2.toPath())) {
            throw new IOException("Select a separate game parent folder, or select srceng itself to use existing files.");
        }
        if (file6.isFile()) {
            List<String> allLines = Files.readAllLines(file6.toPath(), StandardCharsets.UTF_8);
            str3 = "Game files are ready.";
            if (allLines.size() < 8 || !allLines.get(0).equals(canonicalFile.getPath())) {
                StringBuilder sb = new StringBuilder();
                sb.append("Finish the interrupted move by selecting its original parent folder: ");
                Object obj = file5;
                if (!allLines.isEmpty()) {
                    obj = allLines.get(0);
                }
                sb.append(obj);
                throw new IOException(sb.toString());
            }
            string = allLines.get(1);
            boolean zEquals = allLines.get(2).equals("owned");
            str = "owned";
            str2 = ".done";
            listSelect = new ArrayList(allLines.subList(3, allLines.size()));
            if (!string.matches("[a-f0-9-]{36}")) {
                throw new IOException("Invalid pending move record; files were preserved.");
            }
            z = zEquals;
        } else {
            str = "owned";
            str2 = ".done";
            str3 = "Game files are ready.";
            if (file5.exists() && ((list = file5.list()) == null || Arrays.stream(list).anyMatch(new Predicate() { // from class: com.gmodvr.flat.MoveImporter$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj2) {
                    return MoveImporter.lambda$move$0((String) obj2);
                }
            }))) {
                throw new IOException("Unrecognized pending move; files were preserved at " + file5);
            }
            listSelect = GameFolder.select(canonicalFile);
            Iterator it = listSelect.iterator();
            while (it.hasNext()) {
                if (canonicalFile2.toPath().startsWith(new File(canonicalFile, (String) it.next()).toPath())) {
                    throw new IOException("Select a separate game parent folder, or select the destination itself to use existing files.");
                }
            }
            string = UUID.randomUUID().toString();
            z = new File(canonicalFile2, COMPLETE).isFile() || new File(canonicalFile2, LEGACY_PORTAL2_COMPLETE).isFile();
        }
        HashSet hashSet = new HashSet();
        Iterator it2 = listSelect.iterator();
        while (it2.hasNext()) {
            Iterator it3 = it2;
            String str5 = (String) it2.next();
            String str6 = str4;
            String strDestination = destination(str5);
            if (strDestination == null || !hashSet.add(strDestination)) {
                throw new IOException("Duplicate or invalid game folder: " + str5);
            }
            str4 = str6;
            it2 = it3;
        }
        String str7 = str4;
        if (!GameFolder.complete(gameContentProfile, hashSet)) {
            throw new IOException("Missing required game folders for " + gameContentProfile.displayName);
        }
        File file9 = new File(canonicalFile2, ".sourceandroid-previous-" + string);
        if (file7.isFile()) {
            file3 = file9;
            file4 = file8;
            i = 0;
        } else {
            Iterator it4 = listSelect.iterator();
            while (it4.hasNext()) {
                Iterator it5 = it4;
                String str8 = (String) it4.next();
                File file10 = file8;
                File file11 = new File(canonicalFile, str8);
                File file12 = file9;
                File file13 = new File(file5, destination(str8));
                if (file11.exists() && file13.exists()) {
                    throw new IOException("Both source and staged folders exist: " + str8 + ". Neither was overwritten.");
                }
                if (!file11.exists()) {
                    file11 = file13;
                }
                core(file11, str8);
                file8 = file10;
                it4 = it5;
                file9 = file12;
            }
            file3 = file9;
            file4 = file8;
            progress.update("Preparing direct move…", 10);
            Storage.mkdir(file5);
            try {
                i = 0;
                File file14 = Files.createTempDirectory(canonicalFile.toPath(), ".sourceandroid-move-", new FileAttribute[0]).toFile();
                File file15 = new File(file5, file14.getName());
                try {
                    rename(file14, file15);
                    rename(file15, file14);
                    if (!file6.isFile()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(canonicalFile.getPath());
                        sb2.append("\n");
                        sb2.append(string);
                        sb2.append("\n");
                        sb2.append(z ? str : "preserve");
                        sb2.append("\n");
                        sb2.append(String.join("\n", listSelect));
                        sb2.append("\n");
                        Storage.atomicText(file6, sb2.toString());
                    }
                    int i2 = 0;
                    for (String str9 : listSelect) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Moving folder ");
                        int i3 = i2 + 1;
                        sb3.append(i3);
                        sb3.append(" of ");
                        sb3.append(listSelect.size());
                        sb3.append(" · ");
                        sb3.append(str9);
                        progress.update(sb3.toString(), ((i2 * 50) / listSelect.size()) + 10);
                        File file16 = new File(canonicalFile, str9);
                        File file17 = new File(file5, destination(str9));
                        if (!file17.exists()) {
                            rename(file16, file17);
                        }
                        i2 = i3;
                    }
                    Storage.atomicText(file7, "ready\n");
                } finally {
                    Files.deleteIfExists(file14.toPath());
                    Files.deleteIfExists(file15.toPath());
                }
            } catch (IOException e) {
                if (!file6.isFile()) {
                    throw new MoveUnavailable(e);
                }
                throw e;
            }
        }
        Iterator it6 = listSelect.iterator();
        int i4 = i;
        File file18 = file5;
        while (it6.hasNext()) {
            String str10 = (String) it6.next();
            String strDestination2 = destination(str10);
            File file19 = new File(file18, strDestination2);
            File file20 = new File(canonicalFile2, strDestination2);
            File file21 = file3;
            File file22 = new File(file21, strDestination2);
            Iterator it7 = it6;
            StringBuilder sb4 = new StringBuilder();
            File file23 = file18;
            sb4.append("Activating folder ");
            int i5 = i4 + 1;
            sb4.append(i5);
            sb4.append(" of ");
            sb4.append(listSelect.size());
            sb4.append(" · ");
            sb4.append(str10);
            progress.update(sb4.toString(), ((i4 * 25) / listSelect.size()) + 60);
            core(file19.exists() ? file19 : file20, str10);
            GameMedia.hide(file19.exists() ? file19 : file20);
            boolean z2 = gameContentProfile != null && "garrysmod".equals(gameContentProfile.id);
            if (file19.exists() && z2 && ContentComponent.PLATFORM_DIR.equals(strDestination2) && file20.isDirectory()) {
                GameMedia.hide(file20);
                mergeMissing(file19, file20);
                Storage.mkdir(file21);
                rename(file19, new File(file21, strDestination2 + ".unused"));
            } else if (file19.exists()) {
                if (z2 && "garrysmod".equals(strDestination2) && file20.isDirectory()) {
                    carryAddons(file20, file19);
                }
                if (file20.exists()) {
                    Storage.mkdir(file21);
                    rename(file20, file22);
                }
                rename(file19, file20);
            }
            it6 = it7;
            file18 = file23;
            i4 = i5;
            file3 = file21;
        }
        File file24 = file18;
        File file25 = file3;
        Storage.atomicText(file4, canonicalFile.getPath());
        Storage.atomicText(new File(canonicalFile2, COMPLETE), str7);
        progress.update("Finishing · clearing previous installation…", 90);
        if (z && file25.exists()) {
            Storage.delete(file25);
        }
        Storage.atomicText(new File(file24, str2), "complete\n");
        clearFinishedStage(file24);
        progress.update(str3, 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$move$0(String str) {
        return !str.equals(".plan.tmp");
    }

    public static void mergeMissing(File file, File file2) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("Cannot read " + file);
        }
        Storage.mkdir(file2);
        HashSet hashSet = new HashSet();
        for (File file3 : fileArrListFiles) {
            Matcher matcher = VPK_PART.matcher(file3.getName());
            if (matcher.matches()) {
                if (new File(file2, matcher.group(1) + "_dir.vpk").exists()) {
                    hashSet.add(matcher.group(1).toLowerCase(Locale.ROOT));
                }
            }
        }
        for (File file4 : fileArrListFiles) {
            if (!Files.isSymbolicLink(file4.toPath())) {
                File file5 = new File(file2, file4.getName());
                if (file4.isDirectory()) {
                    if (!file5.exists()) {
                        rename(file4, file5);
                    } else if (file5.isDirectory()) {
                        mergeMissing(file4, file5);
                    }
                } else {
                    Matcher matcher2 = VPK_PART.matcher(file4.getName());
                    if ((!matcher2.matches() || !hashSet.contains(matcher2.group(1).toLowerCase(Locale.ROOT))) && !file5.exists()) {
                        rename(file4, file5);
                    }
                }
            }
        }
    }

    public static void carryAddons(File file, File file2) throws IOException {
        String[] strArr = {"addons", "addons_disabled"};
        for (int i = 0; i < 2; i++) {
            String str = strArr[i];
            File[] fileArrListFiles = new File(file, str).listFiles();
            if (fileArrListFiles != null) {
                File file3 = new File(file2, str);
                for (File file4 : fileArrListFiles) {
                    File file5 = new File(file3, file4.getName());
                    if (!file5.exists()) {
                        rename(file4, file5);
                    }
                }
            }
        }
    }

    private static void clearFinishedStage(File file) throws IOException {
        String[] list = file.list();
        if (list != null) {
            for (String str : list) {
                Storage.delete(new File(file, str));
            }
        }
        Files.delete(file.toPath());
    }

    private static void rename(File file, File file2) throws IOException {
        Storage.mkdir(file2.getParentFile());
        Files.move(file.toPath(), file2.toPath(), StandardCopyOption.ATOMIC_MOVE);
    }
}
