package com.gmodvr.flat;

import android.app.ActivityManager;
import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class LaunchArguments {
    static final String ACTION_MAP = "map";
    static final String ACTION_MENU = "menu";
    static final String MUTE_FAILED_GRAB_KEY = "gmod_mute_failed_grab";
    static final String NPC_WALKTHROUGH_KEY = "gmod_npc_walkthrough";
    static final String START_AT_DEFAULT = "menu";
    static final String START_AT_KEY = "gmod_start_at";
    static final String START_AT_MAP = "map";
    static final String START_AT_MENU = "menu";
    static final String WALK_ANIM_KEY = "gmod_walk_anim";

    public static String gameToggleArgs(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        sb.append("+hlvr_disable_player_ally_collisions ");
        sb.append(z ? 2 : 0);
        sb.append(" +gmodvr_walk_anim ");
        sb.append(z2 ? 1 : 0);
        sb.append(" +snd_flat_mute_use_deny ");
        sb.append(z3 ? 1 : 0);
        return sb.toString();
    }

    public static String startAt(String str) {
        return ("map".equals(str) || "menu".equals(str)) ? str : "menu";
    }

    public static String startAction(String str) {
        return "map".equals(startAt(str)) ? "map" : "menu";
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<java.lang.String> parse(java.lang.String r10) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 0
            r3 = r2
            r4 = r3
            r5 = r4
        Le:
            int r6 = r10.length()
            r7 = 34
            if (r3 >= r6) goto L5d
            char r6 = r10.charAt(r3)
            if (r6 == 0) goto L55
            boolean r8 = java.lang.Character.isISOControl(r6)
            if (r8 == 0) goto L28
            boolean r8 = java.lang.Character.isWhitespace(r6)
            if (r8 == 0) goto L55
        L28:
            r8 = 39
            r9 = 1
            if (r6 == r8) goto L2f
            if (r6 != r7) goto L38
        L2f:
            if (r4 != 0) goto L34
            r4 = r6
        L32:
            r5 = r9
            goto L52
        L34:
            if (r4 != r6) goto L38
            r4 = r2
            goto L52
        L38:
            if (r4 != 0) goto L4e
            boolean r7 = java.lang.Character.isWhitespace(r6)
            if (r7 == 0) goto L4e
            if (r5 == 0) goto L52
            java.lang.String r5 = r1.toString()
            r0.add(r5)
            r1.setLength(r2)
            r5 = r2
            goto L52
        L4e:
            r1.append(r6)
            goto L32
        L52:
            int r3 = r3 + 1
            goto Le
        L55:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Remove control characters from the launch arguments."
            r10.<init>(r0)
            throw r10
        L5d:
            if (r4 != 0) goto La6
            if (r5 == 0) goto L68
            java.lang.String r10 = r1.toString()
            r0.add(r10)
        L68:
            java.util.Iterator r10 = r0.iterator()
        L6c:
            boolean r1 = r10.hasNext()
            if (r1 == 0) goto L91
            java.lang.Object r1 = r10.next()
            java.lang.String r1 = (java.lang.String) r1
            int r3 = r1.indexOf(r7)
            if (r3 >= 0) goto L89
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8
            byte[] r1 = r1.getBytes(r3)
            int r1 = r1.length
            int r1 = r1 + 3
            int r2 = r2 + r1
            goto L6c
        L89:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Double quotes can group words, but cannot appear inside an argument."
            r10.<init>(r0)
            throw r10
        L91:
            r10 = 1200(0x4b0, float:1.682E-42)
            if (r2 > r10) goto L9e
            int r10 = r0.size()
            r1 = 96
            if (r10 > r1) goto L9e
            return r0
        L9e:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Use fewer launch arguments (up to 1,200 bytes / 96 words)."
            r10.<init>(r0)
            throw r10
        La6:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Close the quotation mark before saving."
            r10.<init>(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.LaunchArguments.parse(java.lang.String):java.util.List");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String defaultMap(com.gmodvr.flat.GameContentProfile r6, java.lang.String r7) {
        /*
            if (r6 != 0) goto L4
            com.gmodvr.flat.GameContentProfile r6 = com.gmodvr.flat.GameContentProfile.DEFAULT
        L4:
            java.lang.String r0 = "host"
            boolean r7 = r0.equals(r7)
            java.lang.String r0 = "portal2"
            if (r7 == 0) goto L19
            java.lang.String r7 = r6.id
            boolean r7 = r0.equals(r7)
            if (r7 == 0) goto L19
            java.lang.String r6 = "mp_coop_start"
            return r6
        L19:
            java.lang.String r6 = r6.id
            int r7 = r6.hashCode()
            r1 = 5
            r2 = 2
            r3 = 3
            r4 = 1
            r5 = 4
            switch(r7) {
                case -982480788: goto L62;
                case -392133306: goto L5a;
                case 100582: goto L50;
                case 100583: goto L46;
                case 103342: goto L3c;
                case 646387186: goto L32;
                case 1539870030: goto L28;
                default: goto L27;
            }
        L27:
            goto L6c
        L28:
            java.lang.String r7 = "garrysmod"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L6c
            r6 = 0
            goto L6d
        L32:
            java.lang.String r7 = "lostcoast"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L6c
            r6 = r5
            goto L6d
        L3c:
            java.lang.String r7 = "hl2"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L6c
            r6 = r4
            goto L6d
        L46:
            java.lang.String r7 = "ep2"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L6c
            r6 = r3
            goto L6d
        L50:
            java.lang.String r7 = "ep1"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L6c
            r6 = r2
            goto L6d
        L5a:
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L6c
            r6 = 6
            goto L6d
        L62:
            java.lang.String r7 = "portal"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L6c
            r6 = r1
            goto L6d
        L6c:
            r6 = -1
        L6d:
            if (r6 == 0) goto L8b
            if (r6 == r4) goto L88
            if (r6 == r2) goto L85
            if (r6 == r3) goto L82
            if (r6 == r5) goto L7f
            if (r6 == r1) goto L7c
            java.lang.String r6 = "sp_a1_intro1"
            return r6
        L7c:
            java.lang.String r6 = "testchmb_a_00"
            return r6
        L7f:
            java.lang.String r6 = "d2_lostcoast"
            return r6
        L82:
            java.lang.String r6 = "ep2_outland_01"
            return r6
        L85:
            java.lang.String r6 = "ep1_citadel_00"
            return r6
        L88:
            java.lang.String r6 = "d1_trainstation_01"
            return r6
        L8b:
            java.lang.String r6 = "gm_construct"
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.LaunchArguments.defaultMap(com.gmodvr.flat.GameContentProfile, java.lang.String):java.lang.String");
    }

    public static String[] build(GameContentProfile gameContentProfile, int i, int i2, String str, String str2, String str3) {
        return build(gameContentProfile, i, i2, str, str2, str3, false, 0);
    }

    public static String[] build(GameContentProfile gameContentProfile, int i, int i2, String str, String str2, String str3, boolean z) {
        return build(gameContentProfile, i, i2, str, str2, str3, z, 0);
    }

    public static int heapSizeMB(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        if (activityManager == null) {
            return 512;
        }
        activityManager.getMemoryInfo(memoryInfo);
        return (int) Math.max(256L, Math.min(1536L, (memoryInfo.availMem / 1048576) - 768));
    }

    public static String[] build(GameContentProfile gameContentProfile, int i, int i2, String str, String str2, String str3, boolean z, int i3) {
        int i4;
        List<String> list = parse(str3);
        if ("workshop".equals(str)) {
            int i5 = 0;
            while (i5 < list.size()) {
                if (Arrays.asList("+map", "+load", "+connect").contains(list.get(i5).toLowerCase(Locale.ROOT))) {
                    list.remove(i5);
                    while (i5 < list.size() && !list.get(i5).startsWith("+") && !list.get(i5).startsWith("-")) {
                        list.remove(i5);
                    }
                } else if (list.get(i5).equalsIgnoreCase("-nocustom")) {
                    list.remove(i5);
                } else {
                    i5++;
                }
            }
        }
        GameContentProfile gameContentProfile2 = GameContentProfile.DEFAULT;
        String str4 = gameContentProfile2.gameDir;
        if (gameContentProfile != null && gameContentProfile != gameContentProfile2) {
            throw new IllegalArgumentException("This build supports " + gameContentProfile2.displayName + " only.");
        }
        for (int i6 = 0; i6 < list.size(); i6++) {
            if ("-game".equalsIgnoreCase(list.get(i6)) && ((i4 = i6 + 1) == list.size() || !str4.equals(list.get(i4)))) {
                throw new IllegalArgumentException("This build supports -game " + str4 + " only.");
            }
        }
        ArrayList arrayList = new ArrayList();
        defaults(arrayList, list, "-game", gameContentProfile != null ? gameContentProfile.gameDir : GameContentProfile.DEFAULT.gameDir);
        if ("garrysmod".equals((gameContentProfile != null ? gameContentProfile : GameContentProfile.DEFAULT).id)) {
            defaults(arrayList, list, "-steam");
        } else {
            defaults(arrayList, list, "-nosteam");
            defaults(arrayList, list, "-insecure");
        }
        Iterator it = Arrays.asList("-nouserclip", "-novid", "-hushasserts").iterator();
        while (it.hasNext()) {
            defaults(arrayList, list, (String) it.next());
        }
        if (gameContentProfile != null && "garrysmod".equals(gameContentProfile.id)) {
            defaults(arrayList, list, "-mobile");
            if (i3 > 0) {
                defaults(arrayList, list, "-heapsize", Integer.toString(i3));
            }
        }
        if (!list.contains("-windowed") && !list.contains("-window") && !list.contains("-sw")) {
            defaults(arrayList, list, "-fullscreen");
        }
        if (!z) {
            if (!list.contains("-width")) {
                defaults(arrayList, list, "-w", Integer.toString(i));
            }
            if (!list.contains("-height")) {
                defaults(arrayList, list, "-h", Integer.toString(i2));
            }
        }
        arrayList.add("+exec");
        arrayList.add("android_settings.cfg");
        boolean z2 = list.contains("+map") || list.contains("+load") || list.contains("+connect");
        if ("host".equals(str) && !z2) {
            defaults(arrayList, list, "+maxplayers", (gameContentProfile == null || !"garrysmod".equals(gameContentProfile.id)) ? "2" : "8");
            defaults(arrayList, list, "+sv_lan", "1");
        }
        arrayList.addAll(list);
        if (!z2) {
            if ("map".equals(str) || "workshop".equals(str) || ("host".equals(str) && str2 != null)) {
                if (str2 == null || !str2.matches("[A-Za-z0-9_-]+(?:/[A-Za-z0-9_-]+)*")) {
                    throw new IllegalArgumentException("Choose a valid starting map for this mod.");
                }
                arrayList.add("+map");
                arrayList.add(str2);
            } else if ("load".equals(str) && str2 != null && str2.matches("[A-Za-z0-9_/-]+") && !str2.contains("..")) {
                arrayList.add("+load");
                arrayList.add(str2);
            } else if ("connect".equals(str) && str2 != null && str2.matches("[A-Za-z0-9.:-]{1,253}")) {
                arrayList.add("+connect");
                arrayList.add(str2);
            } else if (!"menu".equals(str)) {
                arrayList.add("+map");
                arrayList.add(defaultMap(gameContentProfile, str));
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static String[] build(int i, int i2, String str, String str2, String str3) {
        return build(GameContentProfile.DEFAULT, i, i2, str, str2, str3);
    }

    public static List<String> splitExtra(String str) {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            return arrayList;
        }
        for (String str2 : str.trim().split("\\s+")) {
            if (!str2.isEmpty()) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static String[] withExtra(String[] strArr, String str) {
        List<String> listSplitExtra = splitExtra(str);
        if (listSplitExtra.isEmpty()) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        int size = arrayList.size();
        if (size >= 2 && Arrays.asList("+map", "+load", "+connect").contains(arrayList.get(size - 2))) {
            size -= 2;
        }
        arrayList.addAll(size, listSplitExtra);
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static String[] withPlayerName(String[] strArr, String str) {
        if (str == null) {
            return strArr;
        }
        PlayerName.validate(str);
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        int i = 0;
        while (i < arrayList.size()) {
            if ("+name".equalsIgnoreCase((String) arrayList.get(i))) {
                arrayList.remove(i);
                while (i < arrayList.size() && !((String) arrayList.get(i)).startsWith("+") && !((String) arrayList.get(i)).startsWith("-")) {
                    arrayList.remove(i);
                }
            } else {
                i++;
            }
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= arrayList.size()) {
                break;
            }
            if (Arrays.asList("+map", "+load", "+connect").contains(((String) arrayList.get(i2)).toLowerCase(Locale.ROOT))) {
                size = i2;
                break;
            }
            i2++;
        }
        arrayList.addAll(size, Arrays.asList("+exec", "android_player_name.cfg"));
        return (String[]) arrayList.toArray(new String[0]);
    }

    private static void defaults(List<String> list, List<String> list2, String... strArr) {
        if (list2.contains(strArr[0])) {
            return;
        }
        list.addAll(Arrays.asList(strArr));
    }
}
