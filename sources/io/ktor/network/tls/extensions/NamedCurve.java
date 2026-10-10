package io.ktor.network.tls.extensions;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: NamedCurves.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NamedCurve {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NamedCurve[] $VALUES;
    public static final Companion Companion;
    private final short code;
    private final int fieldSize;
    public static final NamedCurve sect163k1 = new NamedCurve("sect163k1", 0, 1, 163);
    public static final NamedCurve sect163r1 = new NamedCurve("sect163r1", 1, 2, 163);
    public static final NamedCurve sect163r2 = new NamedCurve("sect163r2", 2, 3, 163);
    public static final NamedCurve sect193r1 = new NamedCurve("sect193r1", 3, 4, 193);
    public static final NamedCurve sect193r2 = new NamedCurve("sect193r2", 4, 5, 193);
    public static final NamedCurve sect233k1 = new NamedCurve("sect233k1", 5, 6, 233);
    public static final NamedCurve sect233r1 = new NamedCurve("sect233r1", 6, 7, 233);
    public static final NamedCurve sect239k1 = new NamedCurve("sect239k1", 7, 8, 239);
    public static final NamedCurve sect283k1 = new NamedCurve("sect283k1", 8, 9, 283);
    public static final NamedCurve sect283r1 = new NamedCurve("sect283r1", 9, 10, 283);
    public static final NamedCurve sect409k1 = new NamedCurve("sect409k1", 10, 11, 409);
    public static final NamedCurve sect409r1 = new NamedCurve("sect409r1", 11, 12, 409);
    public static final NamedCurve sect571k1 = new NamedCurve("sect571k1", 12, 13, 571);
    public static final NamedCurve sect571r1 = new NamedCurve("sect571r1", 13, 14, 571);
    public static final NamedCurve secp160k1 = new NamedCurve("secp160k1", 14, 15, 160);
    public static final NamedCurve secp160r1 = new NamedCurve("secp160r1", 15, 16, 160);
    public static final NamedCurve secp160r2 = new NamedCurve("secp160r2", 16, 17, 160);
    public static final NamedCurve secp192k1 = new NamedCurve("secp192k1", 17, 18, BERTags.PRIVATE);
    public static final NamedCurve secp192r1 = new NamedCurve("secp192r1", 18, 19, BERTags.PRIVATE);
    public static final NamedCurve secp224k1 = new NamedCurve("secp224k1", 19, 20, BERTags.FLAGS);
    public static final NamedCurve secp224r1 = new NamedCurve("secp224r1", 20, 21, BERTags.FLAGS);
    public static final NamedCurve secp256k1 = new NamedCurve("secp256k1", 21, 22, 256);
    public static final NamedCurve secp256r1 = new NamedCurve("secp256r1", 22, 23, 256);
    public static final NamedCurve secp384r1 = new NamedCurve("secp384r1", 23, 24, KyberEngine.KyberPolyBytes);
    public static final NamedCurve secp521r1 = new NamedCurve("secp521r1", 24, 25, 521);

    private static final /* synthetic */ NamedCurve[] $values() {
        return new NamedCurve[]{sect163k1, sect163r1, sect163r2, sect193r1, sect193r2, sect233k1, sect233r1, sect239k1, sect283k1, sect283r1, sect409k1, sect409r1, sect571k1, sect571r1, secp160k1, secp160r1, secp160r2, secp192k1, secp192r1, secp224k1, secp224r1, secp256k1, secp256r1, secp384r1, secp521r1};
    }

    public static EnumEntries<NamedCurve> getEntries() {
        return $ENTRIES;
    }

    public static NamedCurve valueOf(String str) {
        return (NamedCurve) Enum.valueOf(NamedCurve.class, str);
    }

    public static NamedCurve[] values() {
        return (NamedCurve[]) $VALUES.clone();
    }

    private NamedCurve(String str, int i, short s, int i2) {
        this.code = s;
        this.fieldSize = i2;
    }

    public final short getCode() {
        return this.code;
    }

    public final int getFieldSize() {
        return this.fieldSize;
    }

    static {
        NamedCurve[] namedCurveArr$values = $values();
        $VALUES = namedCurveArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(namedCurveArr$values);
        Companion = new Companion(null);
    }

    /* JADX INFO: compiled from: NamedCurves.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final NamedCurve fromCode(short s) {
            NamedCurve next;
            Iterator<NamedCurve> it = NamedCurve.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.getCode() == s) {
                    break;
                }
            }
            return next;
        }
    }
}
