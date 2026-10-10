package io.ktor.network.tls;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TLSHandshakeType.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSHandshakeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TLSHandshakeType[] $VALUES;
    public static final Companion Companion;
    private static final TLSHandshakeType[] byCode;
    private final int code;
    public static final TLSHandshakeType HelloRequest = new TLSHandshakeType("HelloRequest", 0, 0);
    public static final TLSHandshakeType ClientHello = new TLSHandshakeType("ClientHello", 1, 1);
    public static final TLSHandshakeType ServerHello = new TLSHandshakeType("ServerHello", 2, 2);
    public static final TLSHandshakeType Certificate = new TLSHandshakeType("Certificate", 3, 11);
    public static final TLSHandshakeType ServerKeyExchange = new TLSHandshakeType("ServerKeyExchange", 4, 12);
    public static final TLSHandshakeType CertificateRequest = new TLSHandshakeType("CertificateRequest", 5, 13);
    public static final TLSHandshakeType ServerDone = new TLSHandshakeType("ServerDone", 6, 14);
    public static final TLSHandshakeType CertificateVerify = new TLSHandshakeType("CertificateVerify", 7, 15);
    public static final TLSHandshakeType ClientKeyExchange = new TLSHandshakeType("ClientKeyExchange", 8, 16);
    public static final TLSHandshakeType Finished = new TLSHandshakeType("Finished", 9, 20);

    private static final /* synthetic */ TLSHandshakeType[] $values() {
        return new TLSHandshakeType[]{HelloRequest, ClientHello, ServerHello, Certificate, ServerKeyExchange, CertificateRequest, ServerDone, CertificateVerify, ClientKeyExchange, Finished};
    }

    public static EnumEntries<TLSHandshakeType> getEntries() {
        return $ENTRIES;
    }

    public static TLSHandshakeType valueOf(String str) {
        return (TLSHandshakeType) Enum.valueOf(TLSHandshakeType.class, str);
    }

    public static TLSHandshakeType[] values() {
        return (TLSHandshakeType[]) $VALUES.clone();
    }

    private TLSHandshakeType(String str, int i, int i2) {
        this.code = i2;
    }

    public final int getCode() {
        return this.code;
    }

    static {
        TLSHandshakeType next;
        TLSHandshakeType[] tLSHandshakeTypeArr$values = $values();
        $VALUES = tLSHandshakeTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tLSHandshakeTypeArr$values);
        Companion = new Companion(null);
        TLSHandshakeType[] tLSHandshakeTypeArr = new TLSHandshakeType[256];
        for (int i = 0; i < 256; i++) {
            Iterator<TLSHandshakeType> it = getEntries().iterator();
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
            tLSHandshakeTypeArr[i] = next;
        }
        byCode = tLSHandshakeTypeArr;
    }

    /* JADX INFO: compiled from: TLSHandshakeType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final TLSHandshakeType byCode(int i) {
            TLSHandshakeType tLSHandshakeType = (i < 0 || i >= 256) ? null : TLSHandshakeType.byCode[i];
            if (tLSHandshakeType != null) {
                return tLSHandshakeType;
            }
            throw new IllegalArgumentException("Invalid TLS handshake type code: " + i);
        }
    }
}
