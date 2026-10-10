package com.gmodvr.flat;

import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ContentComponent {
    static final Map<String, ContentComponent> ALL_BY_DIR;
    public static final ContentComponent EP2;
    public static final String EP2_DIR = "ep2";
    public static final ContentComponent EPISODIC;
    public static final String EPISODIC_DIR = "episodic";
    public static final ContentComponent GARRYSMOD;
    public static final String GARRYSMOD_DIR = "garrysmod";
    public static final ContentComponent HL2;
    public static final String HL2_DIR = "hl2";
    public static final ContentComponent LOSTCOAST;
    public static final String LOSTCOAST_DIR = "lostcoast";
    public static final ContentComponent PLATFORM;
    public static final String PLATFORM_DIR = "platform";
    public static final ContentComponent PORTAL;
    public static final ContentComponent PORTAL2;
    public static final String PORTAL2_DIR = "portal2";
    public static final ContentComponent PORTAL2_DLC1;
    public static final String PORTAL2_DLC1_DIR = "portal2_dlc1";
    public static final ContentComponent PORTAL2_DLC2;
    public static final String PORTAL2_DLC2_DIR = "portal2_dlc2";
    public static final ContentComponent PORTAL2_PLATFORM;
    public static final String PORTAL2_PLATFORM_DIR = "portal2_platform";
    public static final ContentComponent PORTAL2_UPDATE;
    public static final String PORTAL2_UPDATE_DIR = "update";
    public static final String PORTAL_DIR = "portal";
    public static final ContentComponent SOURCEENGINE;
    public static final String SOURCEENGINE_DIR = "sourceengine";
    public final String coreVpkRelPath;
    public final String dirName;
    public final String displayName;
    public final String importDirName;

    static {
        ContentComponent contentComponent = new ContentComponent("hl2", "Half-Life 2", "hl2/hl2_misc_dir.vpk");
        HL2 = contentComponent;
        ContentComponent contentComponent2 = new ContentComponent(PLATFORM_DIR, "Platform (Source 2007)", "platform/platform_misc_dir.vpk");
        PLATFORM = contentComponent2;
        ContentComponent contentComponent3 = new ContentComponent(EPISODIC_DIR, "Episode One", "episodic/ep1_pak_dir.vpk");
        EPISODIC = contentComponent3;
        ContentComponent contentComponent4 = new ContentComponent("ep2", "Episode Two", "ep2/ep2_pak_dir.vpk");
        EP2 = contentComponent4;
        ContentComponent contentComponent5 = new ContentComponent("lostcoast", "Lost Coast", "lostcoast/lostcoast_pak_dir.vpk");
        LOSTCOAST = contentComponent5;
        ContentComponent contentComponent6 = new ContentComponent("portal", "Portal", "portal/portal_pak_dir.vpk");
        PORTAL = contentComponent6;
        ContentComponent contentComponent7 = new ContentComponent("portal2", "Portal 2", "portal2/pak01_dir.vpk");
        PORTAL2 = contentComponent7;
        ContentComponent contentComponent8 = new ContentComponent(PORTAL2_UPDATE_DIR, "Portal 2 Update", null);
        PORTAL2_UPDATE = contentComponent8;
        ContentComponent contentComponent9 = new ContentComponent(PORTAL2_DLC2_DIR, "Portal 2 DLC 2", "portal2_dlc2/pak01_dir.vpk");
        PORTAL2_DLC2 = contentComponent9;
        ContentComponent contentComponent10 = new ContentComponent(PORTAL2_DLC1_DIR, "Portal 2 DLC 1", "portal2_dlc1/pak01_dir.vpk");
        PORTAL2_DLC1 = contentComponent10;
        ContentComponent contentComponent11 = new ContentComponent(PORTAL2_PLATFORM_DIR, "Portal 2 Platform", PLATFORM_DIR, null);
        PORTAL2_PLATFORM = contentComponent11;
        ContentComponent contentComponent12 = new ContentComponent("garrysmod", "Garry's Mod", "garrysmod/garrysmod_dir.vpk");
        GARRYSMOD = contentComponent12;
        ContentComponent contentComponent13 = new ContentComponent(SOURCEENGINE_DIR, "Source Engine content", "sourceengine/hl2_misc_dir.vpk");
        SOURCEENGINE = contentComponent13;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ContentComponent[] contentComponentArr = {contentComponent, contentComponent2, contentComponent3, contentComponent4, contentComponent5, contentComponent6, contentComponent7, contentComponent8, contentComponent9, contentComponent10, contentComponent11, contentComponent12, contentComponent13};
        for (int i = 0; i < 13; i++) {
            ContentComponent contentComponent14 = contentComponentArr[i];
            linkedHashMap.put(contentComponent14.dirName.toLowerCase(Locale.ROOT), contentComponent14);
        }
        ALL_BY_DIR = Collections.unmodifiableMap(linkedHashMap);
    }

    public static Collection<ContentComponent> all() {
        return ALL_BY_DIR.values();
    }

    public ContentComponent(String str, String str2, String str3) {
        this(str, str2, str, str3);
    }

    public ContentComponent(String str, String str2, String str3, String str4) {
        this.dirName = str;
        this.displayName = str2;
        this.importDirName = str3;
        this.coreVpkRelPath = str4;
    }

    public static ContentComponent forDir(String str) {
        if (str == null) {
            return null;
        }
        return ALL_BY_DIR.get(str.toLowerCase(Locale.ROOT));
    }
}
