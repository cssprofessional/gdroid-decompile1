package io.ktor.network.tls.extensions;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SignatureAlgorithm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SignatureAlgorithm {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SignatureAlgorithm[] $VALUES;
    public static final Companion Companion;
    private final byte code;
    public static final SignatureAlgorithm ANON = new SignatureAlgorithm("ANON", 0, (byte) 0);
    public static final SignatureAlgorithm RSA = new SignatureAlgorithm("RSA", 1, (byte) 1);
    public static final SignatureAlgorithm DSA = new SignatureAlgorithm("DSA", 2, (byte) 2);
    public static final SignatureAlgorithm ECDSA = new SignatureAlgorithm("ECDSA", 3, (byte) 3);
    public static final SignatureAlgorithm ED25519 = new SignatureAlgorithm("ED25519", 4, (byte) 7);
    public static final SignatureAlgorithm ED448 = new SignatureAlgorithm("ED448", 5, (byte) 8);

    private static final /* synthetic */ SignatureAlgorithm[] $values() {
        return new SignatureAlgorithm[]{ANON, RSA, DSA, ECDSA, ED25519, ED448};
    }

    public static EnumEntries<SignatureAlgorithm> getEntries() {
        return $ENTRIES;
    }

    public static SignatureAlgorithm valueOf(String str) {
        return (SignatureAlgorithm) Enum.valueOf(SignatureAlgorithm.class, str);
    }

    public static SignatureAlgorithm[] values() {
        return (SignatureAlgorithm[]) $VALUES.clone();
    }

    private SignatureAlgorithm(String str, int i, byte b) {
        this.code = b;
    }

    public final byte getCode() {
        return this.code;
    }

    static {
        SignatureAlgorithm[] signatureAlgorithmArr$values = $values();
        $VALUES = signatureAlgorithmArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(signatureAlgorithmArr$values);
        Companion = new Companion(null);
    }

    /* JADX INFO: compiled from: SignatureAlgorithm.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final SignatureAlgorithm byCode(byte b) {
            SignatureAlgorithm next;
            Iterator<SignatureAlgorithm> it = SignatureAlgorithm.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.getCode() == b) {
                    break;
                }
            }
            return next;
        }
    }
}
