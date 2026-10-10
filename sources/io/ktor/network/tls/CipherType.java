package io.ktor.network.tls;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CipherSuites.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CipherType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CipherType[] $VALUES;
    public static final CipherType GCM = new CipherType("GCM", 0);
    public static final CipherType CBC = new CipherType("CBC", 1);

    private static final /* synthetic */ CipherType[] $values() {
        return new CipherType[]{GCM, CBC};
    }

    public static EnumEntries<CipherType> getEntries() {
        return $ENTRIES;
    }

    public static CipherType valueOf(String str) {
        return (CipherType) Enum.valueOf(CipherType.class, str);
    }

    public static CipherType[] values() {
        return (CipherType[]) $VALUES.clone();
    }

    private CipherType(String str, int i) {
    }

    static {
        CipherType[] cipherTypeArr$values = $values();
        $VALUES = cipherTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cipherTypeArr$values);
    }
}
