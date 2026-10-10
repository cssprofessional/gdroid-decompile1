package io.ktor.network.tls.extensions;

import io.ktor.network.tls.TLSException;
import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TLSExtension.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSExtensionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TLSExtensionType[] $VALUES;
    public static final Companion Companion;
    private final short code;
    public static final TLSExtensionType SERVER_NAME = new TLSExtensionType("SERVER_NAME", 0, 0);
    public static final TLSExtensionType MAX_FRAGMENT_LENGTH = new TLSExtensionType("MAX_FRAGMENT_LENGTH", 1, 1);
    public static final TLSExtensionType CLIENT_CERTIFICATE_URL = new TLSExtensionType("CLIENT_CERTIFICATE_URL", 2, 2);
    public static final TLSExtensionType TRUSTED_CA_KEYS = new TLSExtensionType("TRUSTED_CA_KEYS", 3, 3);
    public static final TLSExtensionType TRUNCATED_HMAC = new TLSExtensionType("TRUNCATED_HMAC", 4, 4);
    public static final TLSExtensionType STATUS_REQUEST = new TLSExtensionType("STATUS_REQUEST", 5, 5);
    public static final TLSExtensionType ELLIPTIC_CURVES = new TLSExtensionType("ELLIPTIC_CURVES", 6, 10);
    public static final TLSExtensionType EC_POINT_FORMAT = new TLSExtensionType("EC_POINT_FORMAT", 7, 11);
    public static final TLSExtensionType SIGNATURE_ALGORITHMS = new TLSExtensionType("SIGNATURE_ALGORITHMS", 8, 13);

    private static final /* synthetic */ TLSExtensionType[] $values() {
        return new TLSExtensionType[]{SERVER_NAME, MAX_FRAGMENT_LENGTH, CLIENT_CERTIFICATE_URL, TRUSTED_CA_KEYS, TRUNCATED_HMAC, STATUS_REQUEST, ELLIPTIC_CURVES, EC_POINT_FORMAT, SIGNATURE_ALGORITHMS};
    }

    public static EnumEntries<TLSExtensionType> getEntries() {
        return $ENTRIES;
    }

    public static TLSExtensionType valueOf(String str) {
        return (TLSExtensionType) Enum.valueOf(TLSExtensionType.class, str);
    }

    public static TLSExtensionType[] values() {
        return (TLSExtensionType[]) $VALUES.clone();
    }

    private TLSExtensionType(String str, int i, short s) {
        this.code = s;
    }

    public final short getCode() {
        return this.code;
    }

    static {
        TLSExtensionType[] tLSExtensionTypeArr$values = $values();
        $VALUES = tLSExtensionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tLSExtensionTypeArr$values);
        Companion = new Companion(null);
    }

    /* JADX INFO: compiled from: TLSExtension.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final TLSExtensionType byCode(int i) throws TLSException {
            TLSExtensionType next;
            Iterator<TLSExtensionType> it = TLSExtensionType.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.getCode() == ((short) i)) {
                    break;
                }
            }
            TLSExtensionType tLSExtensionType = next;
            if (tLSExtensionType != null) {
                return tLSExtensionType;
            }
            throw new TLSException("Unknown server hello extension type: " + i, null, 2, null);
        }
    }
}
