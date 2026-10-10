package io.ktor.network.tls;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TLSAlert.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSAlertLevel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TLSAlertLevel[] $VALUES;
    public static final Companion Companion;
    private static final TLSAlertLevel[] byCode;
    private final int code;
    public static final TLSAlertLevel WARNING = new TLSAlertLevel("WARNING", 0, 1);
    public static final TLSAlertLevel FATAL = new TLSAlertLevel("FATAL", 1, 2);

    private static final /* synthetic */ TLSAlertLevel[] $values() {
        return new TLSAlertLevel[]{WARNING, FATAL};
    }

    public static EnumEntries<TLSAlertLevel> getEntries() {
        return $ENTRIES;
    }

    public static TLSAlertLevel valueOf(String str) {
        return (TLSAlertLevel) Enum.valueOf(TLSAlertLevel.class, str);
    }

    public static TLSAlertLevel[] values() {
        return (TLSAlertLevel[]) $VALUES.clone();
    }

    private TLSAlertLevel(String str, int i, int i2) {
        this.code = i2;
    }

    public final int getCode() {
        return this.code;
    }

    static {
        TLSAlertLevel next;
        TLSAlertLevel[] tLSAlertLevelArr$values = $values();
        $VALUES = tLSAlertLevelArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tLSAlertLevelArr$values);
        Companion = new Companion(null);
        TLSAlertLevel[] tLSAlertLevelArr = new TLSAlertLevel[256];
        for (int i = 0; i < 256; i++) {
            Iterator<TLSAlertLevel> it = getEntries().iterator();
            while (true) {
                if (it.hasNext()) {
                    next = it.next();
                    if (next.code == i) {
                        break;
                    }
                } else {
                    next = null;
                    break;
                }
            }
            tLSAlertLevelArr[i] = next;
        }
        byCode = tLSAlertLevelArr;
    }

    /* JADX INFO: compiled from: TLSAlert.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final TLSAlertLevel byCode(int i) {
            TLSAlertLevel tLSAlertLevel = (i < 0 || i >= 256) ? null : TLSAlertLevel.byCode[i];
            if (tLSAlertLevel != null) {
                return tLSAlertLevel;
            }
            throw new IllegalArgumentException("Invalid TLS record type code: " + i);
        }
    }
}
