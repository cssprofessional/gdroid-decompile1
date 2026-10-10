package com.gmodvr.flat;

import com.gmodvr.flat.GmaArchive;
import com.gmodvr.flat.GmodMaps;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
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
import java.util.TreeMap;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import org.bouncycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes.dex */
final class GmodMaps {
    private static final Map<String, String> MAP_PATTERNS;
    private static final int MAX_FILES = 200000;
    static final String OTHER = "Other";
    static final String SANDBOX = "Sandbox";
    static final String[][] GAMES = {new String[]{"ep2", "Half-Life 2: Episode 2"}, new String[]{ContentComponent.EPISODIC_DIR, "Half-Life 2: Episode 1"}, new String[]{"lostcoast", "Half-Life 2: Lost Coast"}, new String[]{"hl2", "Half-Life 2"}, new String[]{"portal", "Portal"}, new String[]{"cstrike", "Counter-Strike"}, new String[]{"hl1", "Half-Life"}, new String[]{"hl1mp", "Half-Life Deathmatch"}, new String[]{"hl2mp", "Half-Life 2: Deathmatch"}, new String[]{"dod", "Day Of Defeat"}};
    private static final String[] HL2_PACKS = {"hl2_textures", "hl2_sound_vo_english", "hl2_sound_misc", "hl2_misc"};
    private static final String[] CONTENT_PACKS = {"content_hl2", "content_cstrike"};
    private static final String[] IGNORE_PATTERNS = {"^background", "^devtest", "^ep1_background", "^ep2_background", "^styleguide"};
    private static final Set<String> IGNORE_MAPS = new HashSet(Arrays.asList("sdk_", "test_", "vst_", "c4a1y", "credits", "d2_coast_02", "d3_c17_02_camera", "ep1_citadel_00_demo", "c5m1_waterfront_sndscape", "intro", "test"));
    private static final Map<String, String> MAP_NAMES = new HashMap();

    public static final class Entry {
        final String category;
        final String map;
        final String source;

        public Entry(String str, String str2, String str3) {
            this.map = str;
            this.category = str2;
            this.source = str3;
        }

        public String toString() {
            return this.category + ": " + this.map + " (" + this.source + ")";
        }
    }

    public static final class Category {
        final List<Entry> maps = new ArrayList();
        final String name;

        public Category(String str) {
            this.name = str;
        }
    }

    public static final class Game {
        final File folder;
        final String id;
        final String title;

        public Game(String str, String str2, File file) {
            this.id = str;
            this.title = str2;
            this.folder = file;
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        MAP_PATTERNS = linkedHashMap;
        names("Age of Chivalry", "aoc_");
        names("INFRA", "infra_");
        linkedHashMap.put("^asi-", "Alien Swarm");
        names("Alien Swarm", "lobby");
        names("Blade Symphony", "cp_docks", "cp_parkour", "cp_sequence", "cp_terrace", "cp_test", "duel_", "ffa_community", "free_", "practice_box", "tut_training", "lightstyle_test");
        names("Counter-Strike", "ar_", "cs_", "de_", "es_", "fy_", "gd_", "dz_", "training1", "lobby_mapveto");
        names("Counter-Strike (Custom)", "35hp_", "aim_", "awp_", "am_", "fy_", "1v1_");
        names("Day Of Defeat", "dod_");
        names("Dino D-Day", "ddd_");
        names("DIPRIP", "de_dam", "dm_city", "dm_refinery", "dm_supermarket", "dm_village", "ur_city", "ur_refinery", "ur_supermarket", "ur_village");
        names("Dystopia", "dys_", "pb_dojo", "pb_rooftop", "pb_round", "pb_urbandome", "sav_dojo6", "varena");
        names("Half-Life 2", "d1_trainstation_01", "d1_trainstation_02", "d1_trainstation_03", "d1_trainstation_04", "d1_trainstation_05", "d1_trainstation_06", "d1_canals_01", "d1_canals_01a", "d1_canals_02", "d1_canals_03", "d1_canals_05", "d1_canals_06", "d1_canals_07", "d1_canals_08", "d1_canals_09", "d1_canals_10", "d1_canals_11", "d1_canals_12", "d1_canals_13", "d1_eli_01", "d1_eli_02", "d1_town_01", "d1_town_01a", "d1_town_02", "d1_town_02a", "d1_town_03", "d1_town_04", "d1_town_05", "d2_coast_01", "d2_coast_03", "d2_coast_04", "d2_coast_05", "d2_coast_07", "d2_coast_08", "d2_coast_09", "d2_coast_10", "d2_coast_11", "d2_coast_12", "d2_prison_01", "d2_prison_02", "d2_prison_03", "d2_prison_04", "d2_prison_05", "d2_prison_06", "d2_prison_07", "d2_prison_08", "d3_c17_01", "d3_c17_02", "d3_c17_03", "d3_c17_04", "d3_c17_05", "d3_c17_06a", "d3_c17_06b", "d3_c17_07", "d3_c17_08", "d3_c17_09", "d3_c17_10a", "d3_c17_10b", "d3_c17_11", "d3_c17_12", "d3_c17_12b", "d3_c17_13", "d3_citadel_01", "d3_citadel_02", "d3_citadel_03", "d3_citadel_04", "d3_citadel_05", "d3_breen_01");
        names("Half-Life 2: Episode 1", "ep1_citadel_00", "ep1_citadel_01", "ep1_citadel_02", "ep1_citadel_02b", "ep1_citadel_03", "ep1_citadel_04", "ep1_c17_00", "ep1_c17_00a", "ep1_c17_01", "ep1_c17_01a", "ep1_c17_02", "ep1_c17_02b", "ep1_c17_02a", "ep1_c17_05", "ep1_c17_06");
        names("Half-Life 2: Episode 2", "ep2_outland_01", "ep2_outland_01a", "ep2_outland_02", "ep2_outland_03", "ep2_outland_04", "ep2_outland_05", "ep2_outland_06", "ep2_outland_06a", "ep2_outland_07", "ep2_outland_08", "ep2_outland_09", "ep2_outland_10", "ep2_outland_10a", "ep2_outland_11", "ep2_outland_11a", "ep2_outland_11b", "ep2_outland_12", "ep2_outland_12a");
        names("G String", "dragon_girl", "dragon_girl1", "dragon_girl2", "dragon_girl3", "free_mars1", "free_mars2", "free_mars3", "hazardous_ai", "hazardous_ai_more", "hazardous_ai0", "hazardous_ai01", "hazardous_ai2", "hazardous_ai3", "hazardous_ai3b", "hazardous_ai4", "hazardous_ai5", "hazardous_ai6", "hazardous_ai7", "human_waste_x1", "human_waste1", "human_waste2", "human_waste3", "human_waste4", "human_waste5", "human_waste6", "human_waste7", "human_waste8", "human_waste9", "lab_rat", "lab_rat1", "money_is_dead", "money_is_dead_1", "money_is_dead0", "money_is_dead2", "money_is_dead2_1", "money_is_dead2_2", "money_is_dead3", "money_is_dead3_2", "money_is_dead4", "money_is_dead4_2", "money_is_dead4_3", "murdock_air_x1", "murdock_air_x2", "murdock_air_x3", "murdock_air_x4", "murdock_air_x5", "murdock_air_x6", "murdock_air1", "murdock_air2", "murdock_air3", "murdock_air4", "murdock_air5", "murdock_air6", "murdock_air7", "murdock_air8", "murdock_air9", "perp_org1", "perp_org2", "perp_org3", "perp_org4", "sabotage", "sabotage1", "smog_storm", "smog_storm1", "smog_storm2", "smog_storm3", "space_race", "space_race1", "space_race2", "space_race3", "space_race4", "space_race5", "terror_management_x1", "terror_management_x2", "terror_management_x3", "the_call1");
        names("Insurgency", "buhriz", "buhriz_coop", "buhriz_night", "contact", "contact_coop", "contact_night", "district", "district_coop", "district_night", "drycanal", "drycanal_coop", "drycanal_night", "embassy", "embassy_coop", "embassy_night", "heights", "heights_coop", "heights_night", "kandagal", "kandagal_night", "market", "market_coop", "market_night", "ministry", "ministry_coop", "ministry_night", "panj", "panj_night", "peak", "peak_night", "revolt", "revolt_coop", "revolt_night", "siege", "siege_coop", "sinjar", "sinjar_coop", "sinjar_night", "station", "station_night", "tell", "tell_coop", "tell_night", "training", "uprising", "uprising_night", "verticality", "verticality_coop", "verticality_night");
        names("Half-Life 2: Deathmatch", "dm_", "halls3");
        names("Half-Life 2: Lost Coast", "d2_lostcoast");
        linkedHashMap.put("^c[%d]a", "Half-Life");
        linkedHashMap.put("^t0a", "Half-Life");
        names("Half-Life Deathmatch", "boot_camp", "bounce", "crossfire", "datacore", "frenzy", "lambda_bunker", "rapidcore", "snarkpit", "stalkyard", "subtransit", "undertow");
        names("Insurgency", "ins_");
        names("Klaus Veen's Treason", "t_");
        names("Left 4 Dead", "l4d_");
        linkedHashMap.put("^c[%d]m", "Left 4 Dead 2");
        linkedHashMap.put("^c1[%d]m", "Left 4 Dead 2");
        names("Left 4 Dead 2", "curling_stadium", "tutorial_standards", "tutorial_standards_vs");
        names("Nuclear Dawn", "clocktower", "coast", "downtown", "gate", "hydro", "metro", "metro_training", "oasis", "oilfield", "silo", "sk_metro", "training");
        names("Pirates, Vikings, & Knights II", "bt_", "lts_", "te_", "tw_");
        names("Portal", "escape_", "testchmb_");
        names("Portal 2", "e1912");
        linkedHashMap.put("^mp_coop_", "Portal 2");
        linkedHashMap.put("^sp_a", "Portal 2");
        names("Team Fortress 2", "achievement_", "arena_", "cp_", "ctf_", "itemtest", "koth_", "mvm_", "pl_", "plr_", "rd_", "pd_", "sd_", "tc_", "tr_", "trade_", "pass_", "vsh_", "zi_", "tow_", "2koth_", "cppl_", "htf_");
        names("Zombie Panic! Source", "zpa_", "zpl_", "zpo_", "zps_", "zph_");
        names("Fistful of Frags", "fof_", "fofhr_", "cm_", "gt_", "tp_", "vs_");
        names("Fortress Forever", "ff_");
        names("Military Conflict: Vietnam", "mcv_");
        names("Black Mesa", "dm_boom", "dm_bounce", "dm_chopper", "dm_crossfire", "dm_gasworks", "dm_lambdabunker", "dm_power", "dm_rail", "dm_stack", "dm_stalkyard", "dm_subtransit", "dm_undertow", "bm_");
        names("Bunny Hop", "bhop_");
        names("Cinema", "cinema_", "theater_");
        names("Climb", "xc_");
        names("Deathrun", "deathrun_", "dr_");
        names("Flood", "fm_");
        names("GMod Tower", "gmt_");
        names("Gun Game", "gg_", "scoutzknivez");
        names("Jailbreak", "ba_", "jail_", "jb_");
        names("Minigames", "mg_");
        names("Pirate Ship Wars", "pw_");
        names("Prop Hunt", "ph_");
        names("Roleplay", "rp_");
        names("Sled Build", "slb_");
        names("Spacebuild", "sb_");
        names("Stop it Slender", "slender_");
        names("Stranded", "gms_");
        names("Surf", "surf_");
        names("The Stalker", "ts_");
        names("Zombie Survival", "zm_", "zombiesurvival_", "zs_");
        names("Zombie Escape", "ze_");
        names("Cooperative", "coop_");
    }

    private GmodMaps() {
    }

    public static List<Entry> scan(File file, File file2) {
        Map<String, Boolean> map;
        File file3 = new File(file, "garrysmod");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap map2 = new HashMap();
        int[] iArr = {MAX_FILES};
        ArrayList arrayList = new ArrayList();
        Map<String, Boolean> mapAddonMountPrefs = addonMountPrefs(file2);
        File[] fileArrListFiles = new File(file3, "addons").listFiles();
        String str = ".";
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, Comparator.comparing(new GameMod$$ExternalSyntheticLambda1()));
            int length = fileArrListFiles.length;
            int i = 0;
            while (i < length) {
                File file4 = fileArrListFiles[i];
                String name = file4.getName();
                if (name.startsWith(".") || !addonMounted(file4, mapAddonMountPrefs)) {
                    map = mapAddonMountPrefs;
                } else if (file4.isDirectory()) {
                    arrayList.add(file4);
                    map = mapAddonMountPrefs;
                    loose(new File(file4, "maps"), "addon " + name, linkedHashMap, iArr);
                } else {
                    map = mapAddonMountPrefs;
                    if (file4.isFile() && GmaArchive.isArchiveName(name)) {
                        gma(file4, "addon " + name, linkedHashMap);
                    }
                }
                i++;
                mapAddonMountPrefs = map;
            }
        }
        vpk(new File(file3, "garrysmod_dir.vpk"), "garrysmod.vpk", linkedHashMap);
        boolean zUsesHL2Fallback = usesHL2Fallback(file);
        String[] strArr = HL2_PACKS;
        int length2 = strArr.length;
        int i2 = 0;
        while (true) {
            String str2 = "sourceengine/";
            if (i2 >= length2) {
                break;
            }
            String str3 = strArr[i2];
            String[] strArr2 = strArr;
            int i3 = length2;
            File file5 = new File(file, "sourceengine/" + str3 + "_dir.vpk");
            ArrayList arrayList2 = arrayList;
            StringBuilder sb = new StringBuilder();
            String str4 = str;
            sb.append("hl2/");
            sb.append(str3);
            sb.append("_dir.vpk");
            File file6 = new File(file, sb.toString());
            File file7 = (nonEmpty(file5) || !nonEmpty(file6)) ? file5 : file6;
            StringBuilder sb2 = new StringBuilder();
            if (!nonEmpty(file5) && nonEmpty(file6)) {
                str2 = "hl2/";
            }
            sb2.append(str2);
            sb2.append(str3);
            vpk(file7, sb2.toString(), linkedHashMap);
            i2++;
            strArr = strArr2;
            length2 = i3;
            arrayList = arrayList2;
            str = str4;
        }
        ArrayList arrayList3 = arrayList;
        String str5 = str;
        loose(new File(file3, "maps"), "garrysmod", linkedHashMap, iArr);
        loose(new File(file, "sourceengine/maps"), ContentComponent.SOURCEENGINE_DIR, linkedHashMap, iArr);
        if (zUsesHL2Fallback) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            loose(new File(file, "hl2/maps"), "hl2", linkedHashMap2, iArr);
            gameMaps(linkedHashMap2.keySet(), new Game("hl2", "Half-Life 2", new File(file, "hl2")), linkedHashMap, map2);
        }
        loose(new File(file3, "download/maps"), "download", linkedHashMap, iArr);
        for (String str6 : CONTENT_PACKS) {
            File file8 = new File(file, "sourceengine/" + str6 + "_dir.vpk");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("sourceengine/");
            sb3.append(str6);
            vpk(file8, sb3.toString(), linkedHashMap);
        }
        for (Game game : mountedGames(file, file2)) {
            File[] fileArrListFiles2 = game.folder.listFiles();
            if (fileArrListFiles2 != null) {
                Arrays.sort(fileArrListFiles2, Comparator.comparing(new Function() { // from class: com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda4
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return GmodMaps.lambda$scan$0((File) obj);
                    }
                }));
                int length3 = fileArrListFiles2.length;
                int i4 = 0;
                while (i4 < length3) {
                    File file9 = fileArrListFiles2[i4];
                    String lowerCase = file9.getName().toLowerCase(Locale.ROOT);
                    String str7 = str5;
                    if (!lowerCase.startsWith(str7) && lowerCase.endsWith("_dir.vpk") && file9.isFile() && (!lowerCase.contains("_sound_vo_") || lowerCase.contains("_sound_vo_english_"))) {
                        gameMaps(vpkMaps(file9), game, linkedHashMap, map2);
                    }
                    i4++;
                    str5 = str7;
                }
            }
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            loose(new File(game.folder, "maps"), game.id, linkedHashMap3, iArr);
            gameMaps(linkedHashMap3.keySet(), game, linkedHashMap, map2);
            str5 = str5;
        }
        Map<String, String> mapGamemodePatterns = gamemodePatterns(file3, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (!ignored((String) entry.getKey())) {
                String strCategory = category((String) entry.getKey(), mapGamemodePatterns);
                if (strCategory == null) {
                    strCategory = (String) map2.getOrDefault(entry.getKey(), OTHER);
                }
                arrayList4.add(new Entry((String) entry.getKey(), strCategory, (String) entry.getValue()));
            }
        }
        arrayList4.sort(Comparator.comparing(new Function() { // from class: com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((GmodMaps.Entry) obj).map;
            }
        }));
        return arrayList4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$scan$0(File file) {
        return file.getName().toLowerCase(Locale.ROOT);
    }

    public static List<Category> group(List<Entry> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Entry entry : list) {
            ((Category) treeMap.computeIfAbsent(entry.category, new Function() { // from class: com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new GmodMaps.Category((String) obj);
                }
            })).maps.add(entry);
        }
        ArrayList arrayList = new ArrayList(treeMap.values());
        arrayList.sort(Comparator.comparingInt(new ToIntFunction() { // from class: com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda1
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return GmodMaps.lambda$group$2((GmodMaps.Category) obj);
            }
        }).thenComparing(new Function() { // from class: com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((GmodMaps.Category) obj).name;
            }
        }, String.CASE_INSENSITIVE_ORDER));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Category) it.next()).maps.sort(Comparator.comparing(new Function() { // from class: com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((GmodMaps.Entry) obj).map;
                }
            }));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$group$2(Category category) {
        if (SANDBOX.equals(category.name)) {
            return 0;
        }
        return OTHER.equals(category.name) ? 2 : 1;
    }

    private static void gameMaps(Collection<String> collection, Game game, Map<String, String> map, Map<String, String> map2) {
        for (String str : collection) {
            if (map.putIfAbsent(str, game.id) == null) {
                map2.put(str, game.title);
            }
        }
    }

    public static List<Game> mountedGames(File file, File file2) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        KeyValues keyValuesLoadConfig = loadConfig(file, file2, "mountdepots.txt");
        for (String[] strArr : GAMES) {
            File file3 = new File(file, strArr[0]);
            if (file3.isDirectory() && (keyValuesLoadConfig == null || atoi(keyValuesLoadConfig.value(strArr[0], "1")) != 0)) {
                arrayList.add(new Game(strArr[0], strArr[1], file3));
                hashSet.add(strArr[0].toLowerCase(Locale.ROOT));
            }
        }
        KeyValues keyValuesLoadConfig2 = loadConfig(file, file2, "mount.cfg");
        if (keyValuesLoadConfig2 != null) {
            for (KeyValues keyValues : keyValuesLoadConfig2.children) {
                if (keyValues.value != null && !keyValues.key.isEmpty() && !keyValues.value.isEmpty() && !hashSet.contains(keyValues.key.toLowerCase(Locale.ROOT))) {
                    String strReplace = keyValues.value.replace('\\', '/');
                    File file4 = new File(strReplace).isAbsolute() ? new File(strReplace) : new File(file, strReplace);
                    if (file4.isDirectory()) {
                        String str = keyValues.key;
                        for (String[] strArr2 : GAMES) {
                            if (strArr2[0].equalsIgnoreCase(keyValues.key)) {
                                str = strArr2[1];
                            }
                        }
                        arrayList.add(new Game(keyValues.key, str, file4));
                        hashSet.add(keyValues.key.toLowerCase(Locale.ROOT));
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean usesHL2Fallback(File file) {
        return !nonEmpty(new File(file, "sourceengine/hl2_misc_dir.vpk")) && nonEmpty(new File(file, "hl2/hl2_misc_dir.vpk"));
    }

    private static boolean nonEmpty(File file) {
        return file.isFile() && file.length() > 0;
    }

    private static KeyValues loadConfig(File file, File file2, String str) {
        ArrayList<File> arrayList = new ArrayList();
        if (file2 != null) {
            arrayList.add(new File(file2, "cfg/" + str));
        }
        arrayList.add(new File(file, "garrysmod/cfg/" + str));
        for (File file3 : arrayList) {
            if (file3.isFile() && file3.length() <= 262144) {
                try {
                    KeyValues keyValues = KeyValues.parse(new String(Files.readAllBytes(file3.toPath()), StandardCharsets.UTF_8));
                    if (keyValues != null) {
                        return keyValues;
                    }
                } catch (IOException unused) {
                    continue;
                }
            }
        }
        return null;
    }

    public static Map<String, Boolean> addonMountPrefs(File file) {
        int i;
        HashMap map = new HashMap();
        if (file == null) {
            return map;
        }
        File file2 = new File(file, "data/gmodvr_addon_mount.txt");
        if (file2.isFile() && file2.length() <= 1048576) {
            try {
                for (String str : new String(Files.readAllBytes(file2.toPath()), StandardCharsets.UTF_8).split("[\r\n]+")) {
                    int iMax = Math.max(str.lastIndexOf(32), str.lastIndexOf(9));
                    if (iMax > 0 && (i = iMax + 1) < str.length()) {
                        String strTrim = str.substring(0, iMax).trim();
                        if (!strTrim.isEmpty()) {
                            map.put(strTrim.toLowerCase(Locale.ROOT), Boolean.valueOf(str.charAt(i) != '0'));
                        }
                    }
                }
            } catch (IOException unused) {
            }
        }
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean addonMounted(java.io.File r7, java.util.Map<java.lang.String, java.lang.Boolean> r8) {
        /*
            java.lang.String r0 = r7.getName()
            boolean r1 = r7.isFile()
            if (r1 == 0) goto Lf
            java.lang.String r1 = com.gmodvr.flat.GmaArchive.archiveStem(r0)
            goto L10
        Lf:
            r1 = r0
        L10:
            boolean r2 = r7.isDirectory()
            java.lang.String r3 = "[0-9]+"
            r4 = 0
            if (r2 == 0) goto L2f
            org.json.JSONObject r2 = com.gmodvr.flat.GmodAddons.readMeta(r7)
            java.lang.String r5 = ""
            if (r2 != 0) goto L22
            goto L28
        L22:
            java.lang.String r6 = "id"
            java.lang.String r5 = r2.optString(r6, r5)
        L28:
            boolean r2 = r5.matches(r3)
            if (r2 == 0) goto L2f
            goto L30
        L2f:
            r5 = r4
        L30:
            r2 = 1
            if (r5 != 0) goto L55
            java.lang.String r6 = "([0-9]{4,})"
            java.util.regex.Pattern r6 = java.util.regex.Pattern.compile(r6)
            java.util.regex.Matcher r6 = r6.matcher(r1)
            boolean r3 = r1.matches(r3)
            if (r3 == 0) goto L45
            r5 = r1
            goto L55
        L45:
            boolean r3 = r7.isFile()
            if (r3 == 0) goto L55
            boolean r3 = r6.find()
            if (r3 == 0) goto L55
            java.lang.String r5 = r6.group(r2)
        L55:
            boolean r7 = r7.isFile()
            if (r7 == 0) goto L79
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r3 = "addons/"
            r7.append(r3)
            java.util.Locale r3 = java.util.Locale.ROOT
            java.lang.String r0 = r0.toLowerCase(r3)
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            java.lang.Object r7 = r8.get(r7)
            r4 = r7
            java.lang.Boolean r4 = (java.lang.Boolean) r4
        L79:
            if (r4 != 0) goto L88
            java.util.Locale r7 = java.util.Locale.ROOT
            java.lang.String r7 = r1.toLowerCase(r7)
            java.lang.Object r7 = r8.get(r7)
            r4 = r7
            java.lang.Boolean r4 = (java.lang.Boolean) r4
        L88:
            if (r4 != 0) goto L93
            if (r5 == 0) goto L93
            java.lang.Object r7 = r8.get(r5)
            r4 = r7
            java.lang.Boolean r4 = (java.lang.Boolean) r4
        L93:
            if (r4 == 0) goto L9d
            boolean r7 = r4.booleanValue()
            if (r7 == 0) goto L9c
            goto L9d
        L9c:
            r2 = 0
        L9d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.GmodMaps.addonMounted(java.io.File, java.util.Map):boolean");
    }

    public static List<String> requiredGames(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        switch (str) {
        }
        return Collections.emptyList();
    }

    public static Set<String> mountedGameIds(File file, File file2) {
        HashSet hashSet = new HashSet();
        for (Game game : mountedGames(file, file2)) {
            String str = game.id;
            Locale locale = Locale.ROOT;
            hashSet.add(str.toLowerCase(locale));
            hashSet.add(game.folder.getName().toLowerCase(locale));
        }
        if (usesHL2Fallback(file)) {
            hashSet.add("hl2");
        }
        return hashSet;
    }

    public static List<String> missingGames(String str, Set<String> set) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : requiredGames(str)) {
            if (!set.contains(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static String gameTitle(String str) {
        for (String[] strArr : GAMES) {
            if (strArr[0].equalsIgnoreCase(str)) {
                return strArr[1];
            }
        }
        return str;
    }

    public static String missingContentNote(String str, Set<String> set) {
        List<String> listMissingGames = missingGames(str, set);
        if (listMissingGames.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = listMissingGames.iterator();
        while (it.hasNext()) {
            arrayList.add(gameTitle(it.next()));
        }
        return "Needs " + String.join(", ", arrayList);
    }

    public static String missingContentWarning(String str, String str2, Set<String> set) {
        List<String> listMissingGames = missingGames(str2, set);
        if (listMissingGames.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : listMissingGames) {
            sb.append("\n• ");
            sb.append(gameTitle(str3));
            sb.append(" (srceng/");
            sb.append(str3);
            sb.append(")");
        }
        return str + " is a " + str2 + " map, but this game content is not installed or not mounted:\n" + ((Object) sb) + "\n\nThe map can still start, but textures, models and sounds will be missing, as in Garry's Mod without those games mounted. Copy the game folders into srceng/ next to garrysmod/ (and check that cfg/mountdepots.txt does not disable them).";
    }

    private static void loose(File file, String str, Map<String, String> map, int[] iArr) {
        String[] list;
        if (file.isDirectory() && (list = file.list()) != null) {
            Arrays.sort(list);
            for (String str2 : list) {
                int i = iArr[0] - 1;
                iArr[0] = i;
                if (i < 0) {
                    return;
                }
                String strBspName = bspName(str2);
                if (strBspName != null && new File(file, str2).isFile()) {
                    map.putIfAbsent(strBspName, str);
                }
            }
        }
    }

    private static void gma(File file, String str, Map<String, String> map) {
        String strBspName;
        try {
            Iterator<GmaArchive.Entry> it = GmaArchive.readIndex(file).entries.iterator();
            while (it.hasNext()) {
                String lowerCase = it.next().archivePath.replace('\\', '/').toLowerCase(Locale.ROOT);
                if (lowerCase.startsWith("maps/") && lowerCase.indexOf(47, 5) < 0 && (strBspName = bspName(lowerCase.substring(5))) != null) {
                    map.putIfAbsent(strBspName, str);
                }
            }
        } catch (IOException unused) {
        }
    }

    private static void vpk(File file, String str, Map<String, String> map) {
        Iterator<String> it = vpkMaps(file).iterator();
        while (it.hasNext()) {
            map.putIfAbsent(it.next(), str);
        }
    }

    public static String bspName(String str) {
        if (str.length() <= 4) {
            return null;
        }
        Locale locale = Locale.ROOT;
        if (!str.toLowerCase(locale).endsWith(".bsp")) {
            return null;
        }
        String lowerCase = str.substring(0, str.length() - 4).toLowerCase(locale);
        if (!GameMod.validMap(lowerCase) || lowerCase.indexOf(47) >= 0) {
            return null;
        }
        return lowerCase;
    }

    public static List<String> vpkMaps(File file) {
        String strBspName;
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : vpkEntries(file, "bsp")) {
                int iLastIndexOf = str.lastIndexOf(47);
                if (iLastIndexOf >= 0 && str.substring(0, iLastIndexOf).equalsIgnoreCase("maps") && (strBspName = bspName(str.substring(iLastIndexOf + 1))) != null) {
                    arrayList.add(strBspName);
                }
            }
        } catch (IOException unused) {
        }
        return arrayList;
    }

    public static List<String> vpkEntries(File file, String str) throws IOException {
        String str2;
        ArrayList arrayList = new ArrayList();
        if (!file.isFile()) {
            return arrayList;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            if (randomAccessFile.length() < 12) {
                throw new IOException("Truncated VPK");
            }
            int iReverseBytes = Integer.reverseBytes(randomAccessFile.readInt());
            int iReverseBytes2 = Integer.reverseBytes(randomAccessFile.readInt());
            long unsignedLong = Integer.toUnsignedLong(Integer.reverseBytes(randomAccessFile.readInt()));
            int i = iReverseBytes2 == 1 ? 12 : 28;
            if (iReverseBytes == 1437209140 && ((iReverseBytes2 == 1 || iReverseBytes2 == 2) && unsignedLong <= 67108864)) {
                long j = i;
                if (unsignedLong + j <= randomAccessFile.length()) {
                    byte[] bArr = new byte[(int) unsignedLong];
                    randomAccessFile.seek(j);
                    randomAccessFile.readFully(bArr);
                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                    while (true) {
                        try {
                            String strString = string(byteBufferOrder);
                            if (!strString.isEmpty()) {
                                boolean zEqualsIgnoreCase = strString.equalsIgnoreCase(str);
                                while (true) {
                                    String strString2 = string(byteBufferOrder);
                                    if (!strString2.isEmpty()) {
                                        while (true) {
                                            String strString3 = string(byteBufferOrder);
                                            if (!strString3.isEmpty()) {
                                                byteBufferOrder.position(byteBufferOrder.position() + 4);
                                                byteBufferOrder.position(Math.addExact(byteBufferOrder.position(), Short.toUnsignedInt(byteBufferOrder.getShort()) + 12));
                                                if (zEqualsIgnoreCase) {
                                                    StringBuilder sb = new StringBuilder();
                                                    if (strString2.equals(" ")) {
                                                        str2 = "";
                                                    } else {
                                                        str2 = strString2 + "/";
                                                    }
                                                    sb.append(str2);
                                                    sb.append(strString3);
                                                    sb.append(".");
                                                    sb.append(strString);
                                                    arrayList.add(sb.toString());
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                randomAccessFile.close();
                                return arrayList;
                            }
                        } catch (ArithmeticException | IllegalArgumentException | BufferUnderflowException e) {
                            throw new IOException("Corrupt VPK tree", e);
                        }
                    }
                }
            }
            throw new IOException("Invalid VPK directory");
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String string(ByteBuffer byteBuffer) throws IOException {
        int iPosition = byteBuffer.position();
        while (byteBuffer.get() != 0) {
            if (byteBuffer.position() - iPosition > 4096) {
                throw new IOException("VPK path is too long");
            }
        }
        return new String(byteBuffer.array(), iPosition, (byteBuffer.position() - iPosition) - 1, StandardCharsets.ISO_8859_1);
    }

    private static void names(String str, String... strArr) {
        for (String str2 : strArr) {
            MAP_NAMES.put(str2, str);
        }
    }

    public static String prefix(String str) {
        int iIndexOf = str.indexOf(95);
        if (iIndexOf < 0) {
            return null;
        }
        return str.substring(0, iIndexOf + 1);
    }

    public static boolean ignored(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        String strPrefix = prefix(lowerCase);
        Set<String> set = IGNORE_MAPS;
        if (set.contains(lowerCase) || (strPrefix != null && set.contains(strPrefix))) {
            return true;
        }
        for (String str2 : IGNORE_PATTERNS) {
            if (LuaPattern.find(lowerCase, str2)) {
                return true;
            }
        }
        return false;
    }

    public static String category(String str, Map<String, String> map) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        String strPrefix = prefix(lowerCase);
        Map<String, String> map2 = MAP_NAMES;
        String str2 = map2.get(lowerCase);
        if (str2 == null && strPrefix != null) {
            str2 = map2.get(strPrefix);
        }
        if (str2 != null) {
            return str2;
        }
        for (Map.Entry<String, String> entry : MAP_PATTERNS.entrySet()) {
            if (LuaPattern.find(lowerCase, entry.getKey())) {
                return entry.getValue();
            }
        }
        if (map == null) {
            return null;
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (LuaPattern.find(lowerCase, entry2.getKey())) {
                return entry2.getValue();
            }
        }
        return null;
    }

    public static Map<String, String> gamemodePatterns(File file, List<File> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("^gm_", SANDBOX);
        linkedHashMap.put("^gmod_", SANDBOX);
        linkedHashMap.put("^phys_", SANDBOX);
        linkedHashMap.put("^ttt_", "Trouble in Terrorist Town");
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(file);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File[] fileArrListFiles = new File((File) it.next(), "gamemodes").listFiles();
            if (fileArrListFiles != null) {
                Arrays.sort(fileArrListFiles, Comparator.comparing(new GameMod$$ExternalSyntheticLambda1()));
                for (File file2 : fileArrListFiles) {
                    File file3 = new File(file2, file2.getName() + ".txt");
                    if (file3.isFile() && file3.length() <= 262144) {
                        try {
                            KeyValues keyValues = KeyValues.parse(new String(Files.readAllBytes(file3.toPath()), StandardCharsets.UTF_8));
                            if (keyValues != null) {
                                String strValue = keyValues.value("maps", "");
                                String strValue2 = keyValues.value(MessageBundle.TITLE_ENTRY, "");
                                if (strValue2.isEmpty()) {
                                    strValue2 = "Unnammed Gamemode";
                                }
                                if (!strValue.isEmpty()) {
                                    for (String str : strValue.split("\\|")) {
                                        if (!str.isEmpty()) {
                                            linkedHashMap.put(str.toLowerCase(Locale.ROOT), strValue2);
                                        }
                                    }
                                }
                            }
                        } catch (IOException unused) {
                        }
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static int atoi(String str) {
        int iCharAt = 0;
        int i = 0;
        while (i < str.length() && Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        if (i < str.length() && (str.charAt(i) == '-' || str.charAt(i) == '+')) {
            i = str.charAt(i) == '-' ? -1 : 1;
            i++;
        }
        while (i < str.length() && Character.isDigit(str.charAt(i)) && iCharAt < 100000000) {
            iCharAt = (iCharAt * 10) + (str.charAt(i) - '0');
            i++;
        }
        return i * iCharAt;
    }

    public static final class KeyValues {
        final List<KeyValues> children = new ArrayList();
        final String key;
        final String value;

        public KeyValues(String str, String str2) {
            this.key = str;
            this.value = str2;
        }

        public String value(String str, String str2) {
            String str3;
            for (KeyValues keyValues : this.children) {
                if (keyValues.key.equalsIgnoreCase(str) && (str3 = keyValues.value) != null) {
                    return str3;
                }
            }
            return str2;
        }

        public static KeyValues parse(String str) {
            Tokenizer tokenizer = new Tokenizer(str);
            String next = tokenizer.next();
            if (next == null || next.equals("{") || next.equals("}") || !"{".equals(tokenizer.next())) {
                return null;
            }
            KeyValues keyValues = new KeyValues(next, null);
            if (keyValues.block(tokenizer, 0)) {
                return keyValues;
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private boolean block(com.gmodvr.flat.GmodMaps.KeyValues.Tokenizer r8, int r9) {
            /*
                r7 = this;
                r0 = 32
                r1 = 0
                if (r9 <= r0) goto L6
                return r1
            L6:
                java.lang.String r0 = r8.next()
                if (r0 == 0) goto L50
                java.lang.String r2 = "}"
                boolean r3 = r0.equals(r2)
                r4 = 1
                if (r3 == 0) goto L16
                return r4
            L16:
                java.lang.String r3 = r8.next()
                if (r3 == 0) goto L50
                java.lang.String r5 = "{"
                boolean r6 = r0.equals(r5)
                if (r6 != 0) goto L50
                boolean r2 = r3.equals(r2)
                if (r2 == 0) goto L2b
                goto L50
            L2b:
                boolean r2 = r3.equals(r5)
                if (r2 == 0) goto L45
                com.gmodvr.flat.GmodMaps$KeyValues r2 = new com.gmodvr.flat.GmodMaps$KeyValues
                r3 = 0
                r2.<init>(r0, r3)
                int r4 = r4 + r9
                boolean r0 = r2.block(r8, r4)
                if (r0 != 0) goto L3f
                return r1
            L3f:
                java.util.List<com.gmodvr.flat.GmodMaps$KeyValues> r0 = r7.children
                r0.add(r2)
                goto L6
            L45:
                java.util.List<com.gmodvr.flat.GmodMaps$KeyValues> r2 = r7.children
                com.gmodvr.flat.GmodMaps$KeyValues r4 = new com.gmodvr.flat.GmodMaps$KeyValues
                r4.<init>(r0, r3)
                r2.add(r4)
                goto L6
            L50:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.GmodMaps.KeyValues.block(com.gmodvr.flat.GmodMaps$KeyValues$Tokenizer, int):boolean");
        }

        public static final class Tokenizer {
            int i;
            final String s;

            public Tokenizer(String str) {
                this.s = str.replace("\ufeff", "");
            }

            public String next() {
                while (true) {
                    if (this.i < this.s.length() && Character.isWhitespace(this.s.charAt(this.i))) {
                        this.i++;
                    } else if (this.s.startsWith("//", this.i)) {
                        while (this.i < this.s.length() && this.s.charAt(this.i) != '\n') {
                            this.i++;
                        }
                    } else {
                        if (this.i >= this.s.length() || this.s.charAt(this.i) != '[') {
                            break;
                        }
                        int iIndexOf = this.s.indexOf(93, this.i);
                        this.i = iIndexOf < 0 ? this.s.length() : iIndexOf + 1;
                    }
                }
                if (this.i >= this.s.length()) {
                    return null;
                }
                String str = this.s;
                int i = this.i;
                this.i = i + 1;
                char cCharAt = str.charAt(i);
                if (cCharAt == '{' || cCharAt == '}') {
                    return String.valueOf(cCharAt);
                }
                if (cCharAt == '\"') {
                    int i2 = this.i;
                    while (this.i < this.s.length() && this.s.charAt(this.i) != '\"') {
                        this.i++;
                    }
                    String str2 = this.s;
                    String strSubstring = str2.substring(i2, Math.min(this.i, str2.length()));
                    if (this.i < this.s.length()) {
                        this.i++;
                    }
                    return strSubstring;
                }
                int i3 = this.i - 1;
                while (this.i < this.s.length() && !Character.isWhitespace(this.s.charAt(this.i)) && "{}\"".indexOf(this.s.charAt(this.i)) < 0) {
                    this.i++;
                }
                return this.s.substring(i3, this.i);
            }
        }
    }

    public static final class LuaPattern {
        private LuaPattern() {
        }

        public static boolean find(String str, String str2) {
            if (str2.startsWith("^")) {
                return match(str, 0, str2, 1) >= 0;
            }
            for (int i = 0; i <= str.length(); i++) {
                if (match(str, i, str2, 0) >= 0) {
                    return true;
                }
            }
            return false;
        }

        private static int match(String str, int i, String str2, int i2) {
            int iMatch;
            while (i2 != str2.length()) {
                if (str2.charAt(i2) == '$' && i2 + 1 == str2.length()) {
                    if (i == str.length()) {
                        return i;
                    }
                    return -1;
                }
                int iClassEnd = classEnd(str2, i2);
                boolean z = i < str.length() && single(str.charAt(i), str2, i2, iClassEnd);
                if (iClassEnd < str2.length()) {
                    char cCharAt = str2.charAt(iClassEnd);
                    if (cCharAt == '*') {
                        return maxExpand(str, i, str2, i2, iClassEnd);
                    }
                    if (cCharAt == '+') {
                        if (z) {
                            return maxExpand(str, i + 1, str2, i2, iClassEnd);
                        }
                        return -1;
                    }
                    if (cCharAt == '-') {
                        return minExpand(str, i, str2, i2, iClassEnd);
                    }
                    if (cCharAt == '?') {
                        if (z && (iMatch = match(str, i + 1, str2, iClassEnd + 1)) >= 0) {
                            return iMatch;
                        }
                        i2 = iClassEnd + 1;
                    }
                }
                if (!z) {
                    return -1;
                }
                i++;
                i2 = iClassEnd;
            }
            return i;
        }

        private static int maxExpand(String str, int i, String str2, int i2, int i3) {
            int i4 = 0;
            while (true) {
                int i5 = i + i4;
                if (i5 >= str.length() || !single(str.charAt(i5), str2, i2, i3)) {
                    break;
                }
                i4++;
            }
            while (i4 >= 0) {
                int iMatch = match(str, i + i4, str2, i3 + 1);
                if (iMatch >= 0) {
                    return iMatch;
                }
                i4--;
            }
            return -1;
        }

        private static int minExpand(String str, int i, String str2, int i2, int i3) {
            while (true) {
                int iMatch = match(str, i, str2, i3 + 1);
                if (iMatch >= 0) {
                    return iMatch;
                }
                if (i >= str.length() || !single(str.charAt(i), str2, i2, i3)) {
                    return -1;
                }
                i++;
            }
        }

        private static int classEnd(String str, int i) {
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                if (i2 < str.length()) {
                    return i + 2;
                }
                throw new IllegalArgumentException("malformed pattern (ends with '%')");
            }
            if (cCharAt != '[') {
                return i2;
            }
            if (i2 < str.length() && str.charAt(i2) == '^') {
                i2 = i + 2;
            }
            while (i2 < str.length()) {
                i2 = str.charAt(i2) == '%' ? i2 + 2 : i2 + 1;
                if (i2 < str.length() && str.charAt(i2) == ']') {
                    return i2 + 1;
                }
            }
            throw new IllegalArgumentException("malformed pattern (missing ']')");
        }

        private static boolean single(char c, String str, int i, int i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                return matchClass(c, str.charAt(i + 1));
            }
            if (cCharAt == '.') {
                return true;
            }
            if (cCharAt != '[') {
                return str.charAt(i) == c;
            }
            return matchBracket(c, str, i, i2 - 1);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x004c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static boolean matchClass(char r9, char r10) {
            /*
                char r0 = java.lang.Character.toLowerCase(r10)
                r1 = 128(0x80, float:1.8E-43)
                r2 = 97
                r3 = 0
                r4 = 1
                if (r0 == r2) goto L85
                r5 = 108(0x6c, float:1.51E-43)
                if (r0 == r5) goto L7e
                r5 = 112(0x70, float:1.57E-43)
                r6 = 127(0x7f, float:1.78E-43)
                r7 = 32
                if (r0 == r5) goto L73
                r5 = 115(0x73, float:1.61E-43)
                if (r0 == r5) goto L68
                r5 = 117(0x75, float:1.64E-43)
                r8 = 65
                if (r0 == r5) goto L61
                r5 = 99
                if (r0 == r5) goto L5c
                r5 = 100
                r6 = 57
                r7 = 48
                if (r0 == r5) goto L57
                r5 = 119(0x77, float:1.67E-43)
                if (r0 == r5) goto L4e
                r1 = 120(0x78, float:1.68E-43)
                if (r0 == r1) goto L3a
                if (r10 != r9) goto L39
                r3 = r4
            L39:
                return r3
            L3a:
                if (r9 < r7) goto L3e
                if (r9 <= r6) goto L4a
            L3e:
                if (r9 < r2) goto L44
                r0 = 102(0x66, float:1.43E-43)
                if (r9 <= r0) goto L4a
            L44:
                if (r9 < r8) goto L4c
                r0 = 70
                if (r9 > r0) goto L4c
            L4a:
                r9 = r4
                goto L8e
            L4c:
                r9 = r3
                goto L8e
            L4e:
                if (r9 >= r1) goto L4c
                boolean r9 = java.lang.Character.isLetterOrDigit(r9)
                if (r9 == 0) goto L4c
                goto L4a
            L57:
                if (r9 < r7) goto L4c
                if (r9 > r6) goto L4c
                goto L4a
            L5c:
                if (r9 < r7) goto L4a
                if (r9 != r6) goto L4c
                goto L4a
            L61:
                if (r9 < r8) goto L4c
                r0 = 90
                if (r9 > r0) goto L4c
                goto L4a
            L68:
                if (r9 == r7) goto L4a
                r0 = 9
                if (r9 < r0) goto L4c
                r0 = 13
                if (r9 > r0) goto L4c
                goto L4a
            L73:
                if (r9 <= r7) goto L4c
                if (r9 >= r6) goto L4c
                boolean r9 = java.lang.Character.isLetterOrDigit(r9)
                if (r9 != 0) goto L4c
                goto L4a
            L7e:
                if (r9 < r2) goto L4c
                r0 = 122(0x7a, float:1.71E-43)
                if (r9 > r0) goto L4c
                goto L4a
            L85:
                boolean r0 = java.lang.Character.isLetter(r9)
                if (r0 == 0) goto L4c
                if (r9 >= r1) goto L4c
                goto L4a
            L8e:
                boolean r10 = java.lang.Character.isUpperCase(r10)
                if (r10 == r9) goto L95
                r3 = r4
            L95:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.GmodMaps.LuaPattern.matchClass(char, char):boolean");
        }

        private static boolean matchBracket(char c, String str, int i, int i2) {
            boolean z;
            int i3 = i + 1;
            if (str.charAt(i3) == '^') {
                z = false;
                i = i3;
            } else {
                z = true;
            }
            while (true) {
                int i4 = i + 1;
                if (i4 >= i2) {
                    return !z;
                }
                if (str.charAt(i4) == '%') {
                    i += 2;
                    if (matchClass(c, str.charAt(i))) {
                        return z;
                    }
                } else {
                    int i5 = i + 3;
                    if (i5 < i2 && str.charAt(i + 2) == '-') {
                        if (str.charAt(i4) <= c && c <= str.charAt(i5)) {
                            return z;
                        }
                        i = i5;
                    } else {
                        if (str.charAt(i4) == c) {
                            return z;
                        }
                        i = i4;
                    }
                }
            }
        }
    }
}
