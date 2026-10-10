package io.ktor.network.tls;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TLSRecordType.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSRecordType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TLSRecordType[] $VALUES;
    public static final Companion Companion;
    private static final TLSRecordType[] byCode;
    private final int code;
    public static final TLSRecordType ChangeCipherSpec = new TLSRecordType("ChangeCipherSpec", 0, 20);
    public static final TLSRecordType Alert = new TLSRecordType("Alert", 1, 21);
    public static final TLSRecordType Handshake = new TLSRecordType("Handshake", 2, 22);
    public static final TLSRecordType ApplicationData = new TLSRecordType("ApplicationData", 3, 23);

    private static final /* synthetic */ TLSRecordType[] $values() {
        return new TLSRecordType[]{ChangeCipherSpec, Alert, Handshake, ApplicationData};
    }

    public static EnumEntries<TLSRecordType> getEntries() {
        return $ENTRIES;
    }

    public static TLSRecordType valueOf(String str) {
        return (TLSRecordType) Enum.valueOf(TLSRecordType.class, str);
    }

    public static TLSRecordType[] values() {
        return (TLSRecordType[]) $VALUES.clone();
    }

    private TLSRecordType(String str, int i, int i2) {
        this.code = i2;
    }

    public final int getCode() {
        return this.code;
    }

    static {
        TLSRecordType next;
        TLSRecordType[] tLSRecordTypeArr$values = $values();
        $VALUES = tLSRecordTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tLSRecordTypeArr$values);
        Companion = new Companion(null);
        TLSRecordType[] tLSRecordTypeArr = new TLSRecordType[256];
        for (int i = 0; i < 256; i++) {
            Iterator<TLSRecordType> it = getEntries().iterator();
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
            tLSRecordTypeArr[i] = next;
        }
        byCode = tLSRecordTypeArr;
    }

    /* JADX INFO: compiled from: TLSRecordType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final TLSRecordType byCode(int i) {
            TLSRecordType tLSRecordType = (i < 0 || i >= 256) ? null : TLSRecordType.byCode[i];
            if (tLSRecordType != null) {
                return tLSRecordType;
            }
            throw new IllegalArgumentException("Invalid TLS record type code: " + i);
        }
    }
}
