package com.gmodvr.flat;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
final class GameFolder {
    static final List<String> GMOD_HL2_PACKS;
    static final Map<String, List<String>> NESTED_PATHS_BY_PROFILE;
    static final List<String> PORTAL2_REQUIRED = Arrays.asList("portal2", ContentComponent.PORTAL2_DLC1_DIR, ContentComponent.PORTAL2_DLC2_DIR, ContentComponent.PORTAL2_UPDATE_DIR, ContentComponent.PORTAL2_PLATFORM_DIR);

    static {
        HashMap map = new HashMap();
        map.put("garrysmod", Arrays.asList("srceng", "GarrysMod", "common/GarrysMod", "steamapps/common/GarrysMod", "SteamLibrary/steamapps/common/GarrysMod", "Steam/steamapps/common/GarrysMod"));
        map.put("portal2", Arrays.asList("Portal 2", "portal2", "common/Portal 2", "srceng", "srceng/Portal 2", "srceng/portal2", "steamapps/common/Portal 2", "SteamLibrary/steamapps/common/Portal 2", "Steam/steamapps/common/Portal 2"));
        map.put("portal", Arrays.asList("Portal", "portal", "common/Portal", "srceng", "srceng/Portal", "srceng/portal", "steamapps/common/Portal", "SteamLibrary/steamapps/common/Portal", "Steam/steamapps/common/Portal"));
        map.put("hl2", Arrays.asList("Half-Life 2", "hl2", "common/Half-Life 2", "srceng", "srceng/Half-Life 2", "srceng/hl2", "steamapps/common/Half-Life 2", "SteamLibrary/steamapps/common/Half-Life 2", "Steam/steamapps/common/Half-Life 2"));
        map.put(GameContentProfile.EP1_ID, Arrays.asList("Half-Life 2/episodic", ContentComponent.EPISODIC_DIR, "Half-Life 2 Episode One", "common/Half-Life 2 Episode One", "steamapps/common/Half-Life 2 Episode One", "common/Half-Life 2/episodic", "srceng/Half-Life 2/episodic", "srceng/episodic"));
        map.put("ep2", Arrays.asList("Half-Life 2/ep2", "ep2", "Half-Life 2 Episode Two", "common/Half-Life 2 Episode Two", "steamapps/common/Half-Life 2 Episode Two", "common/Half-Life 2/ep2", "srceng/Half-Life 2/ep2", "srceng/ep2"));
        map.put("lostcoast", Arrays.asList("Half-Life 2/lostcoast", "lostcoast", "Half-Life 2 Lost Coast", "common/Half-Life 2 Lost Coast", "steamapps/common/Half-Life 2 Lost Coast", "srceng/Half-Life 2/lostcoast", "srceng/lostcoast"));
        NESTED_PATHS_BY_PROFILE = Collections.unmodifiableMap(map);
        GMOD_HL2_PACKS = Collections.unmodifiableList(Arrays.asList("hl2_textures", "hl2_sound_vo_english", "hl2_sound_misc", "hl2_misc"));
    }

    public static String installFolder(GameContentProfile gameContentProfile) {
        if (gameContentProfile != null && "portal2".equals(gameContentProfile.id)) {
            return "portal2";
        }
        return null;
    }

    private static boolean nonEmpty(File file) {
        return file.isFile() && file.length() > 0;
    }

    public static String hl2PackFolder(File file, String str) {
        if (nonEmpty(new File(file, "sourceengine/" + str + "_dir.vpk"))) {
            return ContentComponent.SOURCEENGINE_DIR;
        }
        if (nonEmpty(new File(file, "hl2/" + str + "_dir.vpk"))) {
            return "hl2";
        }
        return null;
    }

    public static boolean usesHalfLife2Packs(File file) {
        return "hl2".equals(hl2PackFolder(file, "hl2_misc"));
    }

    public static void checkGarrysMod(File file) throws IOException {
        core(new File(file, "garrysmod"), "garrysmod");
        if (!new File(file, ContentComponent.PLATFORM_DIR).isDirectory()) {
            throw new IOException("Missing game folder: platform");
        }
        for (String str : GMOD_HL2_PACKS) {
            if (hl2PackFolder(file, str) == null) {
                throw new IOException("Missing core game file: sourceengine/" + str + "_dir.vpk (or Half-Life 2's hl2/" + str + "_dir.vpk)");
            }
        }
    }

    public static boolean garrysModReady(File file) {
        try {
            checkGarrysMod(file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static List<String> requiredFolders(GameContentProfile gameContentProfile) {
        if (gameContentProfile == null || "portal2".equals(gameContentProfile.id)) {
            return PORTAL2_REQUIRED;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ContentComponent> it = gameContentProfile.depots.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().dirName);
        }
        return arrayList;
    }

    public static String destination(String str) {
        if (ContentComponent.PLATFORM_DIR.equalsIgnoreCase(str)) {
            return ContentComponent.PLATFORM_DIR;
        }
        for (ContentComponent contentComponent : ContentComponent.ALL_BY_DIR.values()) {
            if (contentComponent.dirName.equalsIgnoreCase(str)) {
                return contentComponent.dirName;
            }
        }
        if (str.matches("portal2(?:_dlc[12])?_[a-z]+")) {
            return str;
        }
        return null;
    }

    public static List<String> select(Collection<String> collection) {
        TreeMap treeMap = new TreeMap();
        for (String str : collection) {
            String strDestination = destination(str);
            if (strDestination != null && (!treeMap.containsKey(strDestination) || str.equals(strDestination))) {
                treeMap.put(strDestination, str);
            }
        }
        ArrayList arrayList = new ArrayList(treeMap.values());
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List<String> select(File file) throws IOException {
        String[] list = file.list();
        if (list == null) {
            throw new IOException("Cannot read the selected folder.");
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            File file2 = new File(file, str);
            if (destination(str) != null && file2.isDirectory()) {
                arrayList.add(str);
            }
        }
        return select(arrayList);
    }

    public static boolean complete(GameContentProfile gameContentProfile, Collection<String> collection) {
        List<String> listRequiredFolders = requiredFolders(gameContentProfile);
        HashSet hashSet = new HashSet();
        for (String str : collection) {
            String strDestination = destination(str);
            if (strDestination != null) {
                hashSet.add(strDestination.toLowerCase(Locale.ROOT));
            }
            hashSet.add(str.toLowerCase(Locale.ROOT));
        }
        Iterator<String> it = listRequiredFolders.iterator();
        while (it.hasNext()) {
            String lowerCase = it.next().toLowerCase(Locale.ROOT);
            if (!lowerCase.equals(ContentComponent.PORTAL2_PLATFORM_DIR) || !hashSet.contains(ContentComponent.PLATFORM_DIR)) {
                if (!lowerCase.equals(ContentComponent.PLATFORM_DIR) || !hashSet.contains(ContentComponent.PORTAL2_PLATFORM_DIR)) {
                    if (!hashSet.contains(lowerCase)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static void core(File file, String str) throws IOException {
        ContentComponent contentComponentForDir;
        String strSubstring;
        if (!file.isDirectory()) {
            throw new IOException("Missing game folder: " + str);
        }
        if (Arrays.asList("portal2", ContentComponent.PORTAL2_DLC1_DIR, ContentComponent.PORTAL2_DLC2_DIR).contains(str)) {
            File file2 = new File(file, "pak01_dir.vpk");
            if (!file2.isFile() || file2.length() == 0) {
                throw new IOException("Missing core game file: " + str + "/pak01_dir.vpk");
            }
            return;
        }
        if (ContentComponent.PLATFORM_DIR.equals(str) || ContentComponent.PORTAL2_PLATFORM_DIR.equals(str) || ContentComponent.PORTAL2_UPDATE_DIR.equals(str) || (contentComponentForDir = ContentComponent.forDir(str)) == null || contentComponentForDir.coreVpkRelPath == null) {
            return;
        }
        if (contentComponentForDir.coreVpkRelPath.contains("/")) {
            String str2 = contentComponentForDir.coreVpkRelPath;
            strSubstring = str2.substring(str2.indexOf(47) + 1);
        } else {
            strSubstring = contentComponentForDir.coreVpkRelPath;
        }
        File file3 = new File(file, strSubstring);
        if ((!file3.isFile() || file3.length() == 0) && !new File(file, "gameinfo.txt").isFile()) {
            throw new IOException("Missing core game file: " + str + "/" + file3.getName());
        }
    }

    public static void check(GameContentProfile gameContentProfile, File file) throws IOException {
        if (gameContentProfile != null && "garrysmod".equals(gameContentProfile.id)) {
            checkGarrysMod(file);
            return;
        }
        for (String str : requiredFolders(gameContentProfile)) {
            File file2 = new File(file, str);
            if (str.equals(ContentComponent.PORTAL2_PLATFORM_DIR) && !file2.exists()) {
                str = ContentComponent.PLATFORM_DIR;
                file2 = new File(file, ContentComponent.PLATFORM_DIR);
            }
            core(file2, str);
        }
    }

    public static void check(File file) throws IOException {
        check(GameContentProfile.DEFAULT, file);
    }

    public static File locate(File file) throws IOException {
        return locate(GameContentProfile.DEFAULT, file);
    }

    public static File locate(GameContentProfile gameContentProfile, File file) throws IOException {
        File[] fileArrListFiles;
        File canonicalFile = file.getCanonicalFile();
        if (!canonicalFile.isDirectory()) {
            throw new IOException("Folder not found: " + canonicalFile);
        }
        try {
            check(gameContentProfile, canonicalFile);
            return canonicalFile;
        } catch (IOException unused) {
            List<String> list = NESTED_PATHS_BY_PROFILE.get(gameContentProfile.id);
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    File file2 = new File(canonicalFile, it.next());
                    if (file2.isDirectory()) {
                        try {
                            check(gameContentProfile, file2);
                            return file2.getCanonicalFile();
                        } catch (IOException unused2) {
                            continue;
                        }
                    }
                }
            }
            File[] fileArrListFiles2 = canonicalFile.listFiles();
            if (fileArrListFiles2 != null) {
                for (File file3 : fileArrListFiles2) {
                    if (file3.isDirectory()) {
                        try {
                            check(gameContentProfile, file3);
                            return file3.getCanonicalFile();
                        } catch (IOException unused3) {
                            String lowerCase = file3.getName().toLowerCase(Locale.ROOT);
                            if ((lowerCase.equals("srceng") || lowerCase.equals("common") || lowerCase.equals("steamapps") || lowerCase.contains("share") || lowerCase.contains("mumu")) && (fileArrListFiles = file3.listFiles()) != null) {
                                for (File file4 : fileArrListFiles) {
                                    if (file4.isDirectory()) {
                                        try {
                                            check(gameContentProfile, file4);
                                            return file4.getCanonicalFile();
                                        } catch (IOException unused4) {
                                            continue;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            String[] list2 = canonicalFile.list();
            throw new IOException("Could not find game files for " + gameContentProfile.displayName + " in:\n" + canonicalFile.getAbsolutePath() + "\n\nContents found: [" + ((list2 == null || list2.length <= 0) ? "empty" : String.join(", ", (CharSequence[]) Arrays.copyOf(list2, Math.min(list2.length, 8)))) + "]\n\nExpected game folders such as: " + String.join(", ", requiredFolders(gameContentProfile)) + " (e.g. pak01_dir.vpk).");
        }
    }
}
