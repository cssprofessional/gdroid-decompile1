package io.ktor.network.tls;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CipherSuites.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SecretExchangeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SecretExchangeType[] $VALUES;
    public static final SecretExchangeType ECDHE = new SecretExchangeType("ECDHE", 0, "ECDHE_ECDSA");
    public static final SecretExchangeType RSA = new SecretExchangeType("RSA", 1, "RSA");
    private final String jvmName;

    private static final /* synthetic */ SecretExchangeType[] $values() {
        return new SecretExchangeType[]{ECDHE, RSA};
    }

    public static EnumEntries<SecretExchangeType> getEntries() {
        return $ENTRIES;
    }

    public static SecretExchangeType valueOf(String str) {
        return (SecretExchangeType) Enum.valueOf(SecretExchangeType.class, str);
    }

    public static SecretExchangeType[] values() {
        return (SecretExchangeType[]) $VALUES.clone();
    }

    private SecretExchangeType(String str, int i, String str2) {
        this.jvmName = str2;
    }

    public final String getJvmName() {
        return this.jvmName;
    }

    static {
        SecretExchangeType[] secretExchangeTypeArr$values = $values();
        $VALUES = secretExchangeTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(secretExchangeTypeArr$values);
    }
}
