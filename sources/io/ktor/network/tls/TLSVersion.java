package io.ktor.network.tls;

import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TLSVersion.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSVersion {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TLSVersion[] $VALUES;
    public static final Companion Companion;
    public static final TLSVersion SSL3 = new TLSVersion("SSL3", 0, 768);
    public static final TLSVersion TLS10 = new TLSVersion("TLS10", 1, 769);
    public static final TLSVersion TLS11 = new TLSVersion("TLS11", 2, 770);
    public static final TLSVersion TLS12 = new TLSVersion("TLS12", 3, 771);
    private static final List<TLSVersion> byOrdinal;
    private final int code;

    private static final /* synthetic */ TLSVersion[] $values() {
        return new TLSVersion[]{SSL3, TLS10, TLS11, TLS12};
    }

    public static EnumEntries<TLSVersion> getEntries() {
        return $ENTRIES;
    }

    public static TLSVersion valueOf(String str) {
        return (TLSVersion) Enum.valueOf(TLSVersion.class, str);
    }

    public static TLSVersion[] values() {
        return (TLSVersion[]) $VALUES.clone();
    }

    private TLSVersion(String str, int i, int i2) {
        this.code = i2;
    }

    public final int getCode() {
        return this.code;
    }

    static {
        TLSVersion[] tLSVersionArr$values = $values();
        $VALUES = tLSVersionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tLSVersionArr$values);
        Companion = new Companion(null);
        byOrdinal = getEntries();
    }

    /* JADX INFO: compiled from: TLSVersion.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final TLSVersion byCode(int i) {
            if (768 <= i && i < 772) {
                return (TLSVersion) TLSVersion.byOrdinal.get(i - 768);
            }
            throw new IllegalArgumentException("Invalid TLS version code " + i);
        }
    }
}
