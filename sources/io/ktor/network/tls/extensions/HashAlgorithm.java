package io.ktor.network.tls.extensions;

import io.ktor.network.tls.TLSException;
import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SignatureAlgorithm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HashAlgorithm {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HashAlgorithm[] $VALUES;
    public static final Companion Companion;
    private final byte code;
    private final String macName;
    private final String openSSLName;
    public static final HashAlgorithm NONE = new HashAlgorithm("NONE", 0, (byte) 0, "", "");
    public static final HashAlgorithm MD5 = new HashAlgorithm("MD5", 1, (byte) 1, "MD5", "HmacMD5");
    public static final HashAlgorithm SHA1 = new HashAlgorithm("SHA1", 2, (byte) 2, McElieceCCA2KeyGenParameterSpec.SHA1, "HmacSHA1");
    public static final HashAlgorithm SHA224 = new HashAlgorithm("SHA224", 3, (byte) 3, McElieceCCA2KeyGenParameterSpec.SHA224, "HmacSHA224");
    public static final HashAlgorithm SHA256 = new HashAlgorithm("SHA256", 4, (byte) 4, "SHA-256", "HmacSHA256");
    public static final HashAlgorithm SHA384 = new HashAlgorithm("SHA384", 5, (byte) 5, McElieceCCA2KeyGenParameterSpec.SHA384, "HmacSHA384");
    public static final HashAlgorithm SHA512 = new HashAlgorithm("SHA512", 6, (byte) 6, "SHA-512", "HmacSHA512");
    public static final HashAlgorithm INTRINSIC = new HashAlgorithm("INTRINSIC", 7, (byte) 8, "INTRINSIC", "Intrinsic");

    private static final /* synthetic */ HashAlgorithm[] $values() {
        return new HashAlgorithm[]{NONE, MD5, SHA1, SHA224, SHA256, SHA384, SHA512, INTRINSIC};
    }

    public static EnumEntries<HashAlgorithm> getEntries() {
        return $ENTRIES;
    }

    public static HashAlgorithm valueOf(String str) {
        return (HashAlgorithm) Enum.valueOf(HashAlgorithm.class, str);
    }

    public static HashAlgorithm[] values() {
        return (HashAlgorithm[]) $VALUES.clone();
    }

    private HashAlgorithm(String str, int i, byte b, String str2, String str3) {
        this.code = b;
        this.openSSLName = str2;
        this.macName = str3;
    }

    public final byte getCode() {
        return this.code;
    }

    public final String getMacName() {
        return this.macName;
    }

    public final String getOpenSSLName() {
        return this.openSSLName;
    }

    static {
        HashAlgorithm[] hashAlgorithmArr$values = $values();
        $VALUES = hashAlgorithmArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(hashAlgorithmArr$values);
        Companion = new Companion(null);
    }

    /* JADX INFO: compiled from: SignatureAlgorithm.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final HashAlgorithm byCode(byte b) throws TLSException {
            HashAlgorithm next;
            Iterator<HashAlgorithm> it = HashAlgorithm.getEntries().iterator();
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
            HashAlgorithm hashAlgorithm = next;
            if (hashAlgorithm != null) {
                return hashAlgorithm;
            }
            throw new TLSException("Unknown hash algorithm: " + ((int) b), null, 2, null);
        }
    }
}
