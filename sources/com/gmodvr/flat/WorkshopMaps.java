package com.gmodvr.flat;

import com.gmodvr.flat.GmodAddons;
import com.gmodvr.flat.WorkshopMaps;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.bouncycastle.i18n.MessageBundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class WorkshopMaps {

    public static final class Entry {
        final String map;
        final String title;

        public Entry(String str, String str2) {
            this.title = str;
            this.map = str2;
        }
    }

    public static List<Entry> scan(File file, File file2, GameContentProfile gameContentProfile) throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int[] iArr = {0};
        if ("garrysmod".equals(gameContentProfile.id)) {
            for (GmodAddons.Addon addon : GmodAddons.list(file)) {
                if (addon.enabled) {
                    collect(new File(addon.folder, "maps").toPath(), addon.title(), linkedHashMap, iArr);
                }
            }
        }
        for (File file3 : Arrays.asList(new File(file2, "custom"), new File(file, gameContentProfile.gameDir + "/custom"))) {
            if (file3.exists()) {
                File[] fileArrListFiles = file3.listFiles();
                if (fileArrListFiles == null) {
                    throw new IOException("Cannot read Workshop folder: " + file3);
                }
                Arrays.sort(fileArrListFiles, Comparator.comparing(new GameMod$$ExternalSyntheticLambda1(), String.CASE_INSENSITIVE_ORDER));
                for (File file4 : fileArrListFiles) {
                    if (file4.getName().matches("workshop_[0-9]+") && !Files.isSymbolicLink(file4.toPath()) && file4.isDirectory() && !new File(file4, CustomContentName.DISABLED_MARKER).exists() && !new File(file4, "gameinfo.txt").exists()) {
                        collect(new File(file4, "maps").toPath(), title(file4), linkedHashMap, iArr);
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        arrayList.sort(Comparator.comparing(new Function() { // from class: com.gmodvr.flat.WorkshopMaps$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((WorkshopMaps.Entry) obj).title;
            }
        }, String.CASE_INSENSITIVE_ORDER).thenComparing(new Function() { // from class: com.gmodvr.flat.WorkshopMaps$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((WorkshopMaps.Entry) obj).map;
            }
        }));
        return arrayList;
    }

    private static void collect(final Path path, final String str, final Map<String, Entry> map, final int[] iArr) throws IOException {
        if (Files.isDirectory(path, LinkOption.NOFOLLOW_LINKS)) {
            Files.walkFileTree(path, Collections.emptySet(), 32, new SimpleFileVisitor<Path>() { // from class: com.gmodvr.flat.WorkshopMaps.1
                private void visit() throws IOException {
                    int[] iArr2 = iArr;
                    int i = iArr2[0] + 1;
                    iArr2[0] = i;
                    if (i > 100000) {
                        throw new IOException("Too many files to list Workshop maps.");
                    }
                }

                @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
                public FileVisitResult preVisitDirectory(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    visit();
                    return FileVisitResult.CONTINUE;
                }

                @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
                public FileVisitResult visitFile(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    visit();
                    String strReplace = path.relativize(path2).toString().replace(File.separatorChar, '/');
                    if (basicFileAttributes.isRegularFile() && strReplace.endsWith(".bsp")) {
                        String strSubstring = strReplace.substring(0, strReplace.length() - 4);
                        if (GameMod.validMap(strSubstring)) {
                            map.putIfAbsent(strSubstring, new Entry(str, strSubstring));
                        }
                    }
                    return FileVisitResult.CONTINUE;
                }
            });
        }
    }

    private static String title(File file) {
        File file2 = new File(file, ".sourceandroid-workshop.json");
        if (file2.isFile() && !Files.isSymbolicLink(file2.toPath()) && file2.length() <= 65536) {
            try {
                String strTrim = new JSONObject(new String(Files.readAllBytes(file2.toPath()), StandardCharsets.UTF_8)).optString(MessageBundle.TITLE_ENTRY).trim();
                if (!strTrim.isEmpty()) {
                    return strTrim;
                }
            } catch (Exception unused) {
            }
        }
        return file.getName();
    }
}
