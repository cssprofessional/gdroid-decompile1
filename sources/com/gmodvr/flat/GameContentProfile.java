package com.gmodvr.flat;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class GameContentProfile {
    private static final Map<String, GameContentProfile> ALL_PROFILES;
    public static final GameContentProfile DEFAULT;
    public static final GameContentProfile EP1;
    public static final String EP1_ID = "ep1";
    public static final GameContentProfile EP2;
    public static final String EP2_ID = "ep2";
    public static final GameContentProfile GARRYSMOD;
    public static final String GARRYSMOD_ID = "garrysmod";
    public static final GameContentProfile HL2;
    public static final String HL2_ID = "hl2";
    public static final GameContentProfile LOSTCOAST;
    public static final String LOSTCOAST_ID = "lostcoast";
    public static final GameContentProfile PORTAL;
    public static final GameContentProfile PORTAL2;
    public static final String PORTAL2_ID = "portal2";
    public static final String PORTAL_ID = "portal";
    public final List<ContentComponent> depots;
    public final String displayName;
    public final String gameDir;
    public final String id;
    public final ContentComponent primary;
    public final int steamAppId;

    static {
        ContentComponent contentComponent = ContentComponent.HL2;
        ContentComponent contentComponent2 = ContentComponent.PLATFORM;
        GameContentProfile gameContentProfile = new GameContentProfile("hl2", "Half-Life 2", "hl2", 220, Arrays.asList(contentComponent, contentComponent2));
        HL2 = gameContentProfile;
        GameContentProfile gameContentProfile2 = new GameContentProfile("portal", "Portal", "portal", 400, Arrays.asList(ContentComponent.PORTAL, contentComponent, contentComponent2));
        PORTAL = gameContentProfile2;
        GameContentProfile gameContentProfile3 = new GameContentProfile("portal2", "Portal 2", "portal2", 620, Arrays.asList(ContentComponent.PORTAL2, ContentComponent.PORTAL2_UPDATE, ContentComponent.PORTAL2_DLC1, ContentComponent.PORTAL2_DLC2, ContentComponent.PORTAL2_PLATFORM));
        PORTAL2 = gameContentProfile3;
        ContentComponent contentComponent3 = ContentComponent.EPISODIC;
        GameContentProfile gameContentProfile4 = new GameContentProfile(EP1_ID, "Half-Life 2: Episode One", ContentComponent.EPISODIC_DIR, 220, Arrays.asList(contentComponent3, contentComponent, contentComponent2));
        EP1 = gameContentProfile4;
        GameContentProfile gameContentProfile5 = new GameContentProfile("ep2", "Half-Life 2: Episode Two", "ep2", 220, Arrays.asList(ContentComponent.EP2, contentComponent3, contentComponent, contentComponent2));
        EP2 = gameContentProfile5;
        GameContentProfile gameContentProfile6 = new GameContentProfile("lostcoast", "Half-Life 2: Lost Coast", "lostcoast", 220, Arrays.asList(ContentComponent.LOSTCOAST, contentComponent, contentComponent2));
        LOSTCOAST = gameContentProfile6;
        GameContentProfile gameContentProfile7 = new GameContentProfile("garrysmod", "Garry's Mod", "garrysmod", 4000, Arrays.asList(ContentComponent.GARRYSMOD, ContentComponent.SOURCEENGINE, contentComponent2));
        GARRYSMOD = gameContentProfile7;
        DEFAULT = gameContentProfile7;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        GameContentProfile[] gameContentProfileArr = {gameContentProfile7, gameContentProfile, gameContentProfile2, gameContentProfile3, gameContentProfile4, gameContentProfile5, gameContentProfile6};
        for (int i = 0; i < 7; i++) {
            GameContentProfile gameContentProfile8 = gameContentProfileArr[i];
            linkedHashMap.put(gameContentProfile8.id.toLowerCase(Locale.ROOT), gameContentProfile8);
        }
        ALL_PROFILES = Collections.unmodifiableMap(linkedHashMap);
    }

    public GameContentProfile(String str, String str2, String str3, int i, List<ContentComponent> list) {
        this.id = str;
        this.displayName = str2;
        this.gameDir = str3;
        this.steamAppId = i;
        this.depots = Collections.unmodifiableList(list);
        this.primary = list.isEmpty() ? null : list.get(0);
    }

    public static GameContentProfile forId(String str) {
        GameContentProfile gameContentProfile;
        if (str != null && (gameContentProfile = ALL_PROFILES.get(str.toLowerCase(Locale.ROOT))) == DEFAULT) {
            return gameContentProfile;
        }
        return null;
    }

    public static GameContentProfile require(String str) {
        GameContentProfile gameContentProfileForId = forId(str);
        if (gameContentProfileForId != null) {
            return gameContentProfileForId;
        }
        throw new IllegalArgumentException("Unknown game profile: " + str);
    }

    public static List<GameContentProfile> all() {
        return Collections.singletonList(DEFAULT);
    }

    public boolean dependsOn(ContentComponent contentComponent) {
        Iterator<ContentComponent> it = this.depots.iterator();
        while (it.hasNext()) {
            if (it.next().dirName.equalsIgnoreCase(contentComponent.dirName)) {
                return true;
            }
        }
        return false;
    }
}
