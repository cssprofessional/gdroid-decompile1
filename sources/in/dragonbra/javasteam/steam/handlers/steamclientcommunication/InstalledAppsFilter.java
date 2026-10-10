package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: InstalledAppsFilter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InstalledAppsFilter {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InstalledAppsFilter[] $VALUES;
    public static final InstalledAppsFilter None = new InstalledAppsFilter("None", 0);
    public static final InstalledAppsFilter Changing = new InstalledAppsFilter("Changing", 1);

    private static final /* synthetic */ InstalledAppsFilter[] $values() {
        return new InstalledAppsFilter[]{None, Changing};
    }

    public static EnumEntries<InstalledAppsFilter> getEntries() {
        return $ENTRIES;
    }

    public static InstalledAppsFilter valueOf(String str) {
        return (InstalledAppsFilter) Enum.valueOf(InstalledAppsFilter.class, str);
    }

    public static InstalledAppsFilter[] values() {
        return (InstalledAppsFilter[]) $VALUES.clone();
    }

    private InstalledAppsFilter(String str, int i) {
    }

    static {
        InstalledAppsFilter[] installedAppsFilterArr$values = $values();
        $VALUES = installedAppsFilterArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(installedAppsFilterArr$values);
    }
}
