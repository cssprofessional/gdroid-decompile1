package com.gmodvr.flat;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherFranchise {
    public static final String GARRYSMOD_ID = "garrysmod";
    public static final String HALF_LIFE_ID = "half_life";
    public static final String PORTAL_ID = "portal";
    public final int accentColor;
    public final String displayName;
    public final String id;
    public final List<GameContentProfile> profiles;

    public LauncherFranchise(String str, String str2, int i, List<GameContentProfile> list) {
        this.id = str;
        this.displayName = str2;
        this.accentColor = i;
        this.profiles = Collections.unmodifiableList(list);
    }

    public static List<LauncherFranchise> defaultFranchises() {
        return Collections.singletonList(new LauncherFranchise("garrysmod", "Garry's Mod", -13787905, Collections.singletonList(GameContentProfile.DEFAULT)));
    }
}
