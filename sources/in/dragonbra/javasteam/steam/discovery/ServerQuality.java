package in.dragonbra.javasteam.steam.discovery;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ServerQuality.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ServerQuality {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ServerQuality[] $VALUES;
    public static final ServerQuality GOOD = new ServerQuality("GOOD", 0);
    public static final ServerQuality BAD = new ServerQuality("BAD", 1);

    private static final /* synthetic */ ServerQuality[] $values() {
        return new ServerQuality[]{GOOD, BAD};
    }

    public static EnumEntries<ServerQuality> getEntries() {
        return $ENTRIES;
    }

    public static ServerQuality valueOf(String str) {
        return (ServerQuality) Enum.valueOf(ServerQuality.class, str);
    }

    public static ServerQuality[] values() {
        return (ServerQuality[]) $VALUES.clone();
    }

    private ServerQuality(String str, int i) {
    }

    static {
        ServerQuality[] serverQualityArr$values = $values();
        $VALUES = serverQualityArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(serverQualityArr$values);
    }
}
