package io.ktor.network.tls.extensions;

import io.ktor.network.tls.OID;
import io.ktor.network.tls.TLSException;
import io.ktor.network.tls.extensions.HashAndSign;
import io.ktor.utils.io.core.ByteReadPacketKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: compiled from: SignatureAlgorithm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SignatureAlgorithmKt {
    public static final List<HashAndSign> SupportedSignatureAlgorithms;

    public static /* synthetic */ HashAndSign HashAndSign$default(byte b, byte b2, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        return HashAndSign(b, b2, str);
    }

    public static final HashAndSign HashAndSign(byte b, byte b2, String str) throws TLSException {
        HashAlgorithm hashAlgorithmByCode = HashAlgorithm.Companion.byCode(b);
        SignatureAlgorithm signatureAlgorithmByCode = SignatureAlgorithm.Companion.byCode(b2);
        if (signatureAlgorithmByCode == null) {
            return null;
        }
        return new HashAndSign(hashAlgorithmByCode, signatureAlgorithmByCode, str != null ? new OID(str) : null);
    }

    public static final List<HashAndSign> getSupportedSignatureAlgorithms() {
        return SupportedSignatureAlgorithms;
    }

    static {
        HashAlgorithm hashAlgorithm = HashAlgorithm.SHA384;
        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.ECDSA;
        OID.Companion companion = OID.Companion;
        HashAndSign hashAndSign = new HashAndSign(hashAlgorithm, signatureAlgorithm, companion.getECDSAwithSHA384Encryption());
        HashAlgorithm hashAlgorithm2 = HashAlgorithm.SHA256;
        HashAndSign hashAndSign2 = new HashAndSign(hashAlgorithm2, signatureAlgorithm, companion.getECDSAwithSHA256Encryption());
        HashAlgorithm hashAlgorithm3 = HashAlgorithm.SHA512;
        SignatureAlgorithm signatureAlgorithm2 = SignatureAlgorithm.RSA;
        SupportedSignatureAlgorithms = CollectionsKt__CollectionsKt.listOf((Object[]) new HashAndSign[]{hashAndSign, hashAndSign2, new HashAndSign(hashAlgorithm3, signatureAlgorithm2, companion.getRSAwithSHA512Encryption()), new HashAndSign(hashAlgorithm, signatureAlgorithm2, companion.getRSAwithSHA384Encryption()), new HashAndSign(hashAlgorithm2, signatureAlgorithm2, companion.getRSAwithSHA256Encryption()), new HashAndSign(HashAlgorithm.SHA1, signatureAlgorithm2, companion.getRSAwithSHA1Encryption())});
    }

    public static final List<HashAndSign> parseSignatureAlgorithms(Source source) throws TLSException {
        Intrinsics.checkNotNullParameter(source, "<this>");
        int i = source.readShort() & HPKE.aead_EXPORT_ONLY;
        ArrayList arrayList = new ArrayList();
        while (ByteReadPacketKt.getRemaining(source) > 0) {
            HashAndSign hashAndSign = readHashAndSign(source);
            if (hashAndSign != null) {
                arrayList.add(hashAndSign);
            }
        }
        if (((int) ByteReadPacketKt.getRemaining(source)) == i) {
            return arrayList;
        }
        throw new TLSException("Invalid hash and sign packet size: expected " + i + ", actual " + arrayList.size(), null, 2, null);
    }

    public static final HashAndSign readHashAndSign(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return byCode(HashAndSign.Companion, source.readByte(), source.readByte());
    }

    public static final HashAndSign byCode(HashAndSign.Companion companion, byte b, byte b2) {
        Object next;
        Intrinsics.checkNotNullParameter(companion, "<this>");
        if (b2 == SignatureAlgorithm.ANON.getCode()) {
            throw new IllegalStateException("Anonymous signature not allowed.");
        }
        Iterator<T> it = SupportedSignatureAlgorithms.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            HashAndSign hashAndSign = (HashAndSign) next;
            if (hashAndSign.getHash().getCode() == b && hashAndSign.getSign().getCode() == b2) {
                break;
            }
        }
        HashAndSign hashAndSign2 = (HashAndSign) next;
        return hashAndSign2 == null ? HashAndSign$default(b, b2, null, 4, null) : hashAndSign2;
    }
}
