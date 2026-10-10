package io.ktor.network.tls;

import io.ktor.network.tls.extensions.HashAndSign;
import io.ktor.network.tls.extensions.NamedCurve;
import io.ktor.network.tls.extensions.SignatureAlgorithmKt;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import javax.security.auth.x500.X500Principal;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;
import kotlinx.io.SourcesKt;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: compiled from: TLSClientHandshake.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSClientHandshakeKt {
    public static final byte[] generateClientSeed(SecureRandom secureRandom) {
        byte[] bArr = new byte[32];
        secureRandom.nextBytes(bArr);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        bArr[0] = (byte) (jCurrentTimeMillis >> 24);
        bArr[1] = (byte) (jCurrentTimeMillis >> 16);
        bArr[2] = (byte) (jCurrentTimeMillis >> 8);
        bArr[3] = (byte) jCurrentTimeMillis;
        return bArr;
    }

    public static final EncryptionInfo generateECKeys(NamedCurve namedCurve, ECPoint eCPoint) throws InvalidKeySpecException, NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC");
        Intrinsics.checkNotNull(keyPairGenerator);
        keyPairGenerator.initialize(new ECGenParameterSpec(namedCurve.name()));
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        Intrinsics.checkNotNull(keyPairGenerateKeyPair);
        PublicKey publicKey = keyPairGenerateKeyPair.getPublic();
        Intrinsics.checkNotNull(publicKey, "null cannot be cast to non-null type java.security.interfaces.ECPublicKey");
        KeyFactory keyFactory = KeyFactory.getInstance("EC");
        Intrinsics.checkNotNull(keyFactory);
        ECParameterSpec params = ((ECPublicKey) publicKey).getParams();
        Intrinsics.checkNotNull(params);
        PublicKey publicKeyGeneratePublic = keyFactory.generatePublic(new ECPublicKeySpec(eCPoint, params));
        Intrinsics.checkNotNull(publicKeyGeneratePublic);
        PublicKey publicKey2 = keyPairGenerateKeyPair.getPublic();
        Intrinsics.checkNotNullExpressionValue(publicKey2, "getPublic(...)");
        PrivateKey privateKey = keyPairGenerateKeyPair.getPrivate();
        Intrinsics.checkNotNullExpressionValue(privateKey, "getPrivate(...)");
        return new EncryptionInfo(publicKeyGeneratePublic, publicKey2, privateKey);
    }

    public static final CertificateInfo readClientCertificateRequest(Source packet) {
        Intrinsics.checkNotNullParameter(packet, "packet");
        byte[] byteArray = SourcesKt.readByteArray(packet, packet.readByte() & 255);
        int i = packet.readShort() & HPKE.aead_EXPORT_ONLY;
        ArrayList arrayList = new ArrayList();
        int i2 = i / 2;
        for (int i3 = 0; i3 < i2; i3++) {
            HashAndSign hashAndSignByCode = SignatureAlgorithmKt.byCode(HashAndSign.Companion, packet.readByte(), packet.readByte());
            if (hashAndSignByCode != null) {
                arrayList.add(hashAndSignByCode);
            }
        }
        int i4 = packet.readShort() & HPKE.aead_EXPORT_ONLY;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i5 = 0;
        while (i5 < i4) {
            int i6 = packet.readShort() & HPKE.aead_EXPORT_ONLY;
            i5 += i6 + 2;
            linkedHashSet.add(new X500Principal(SourcesKt.readByteArray(packet, i6)));
        }
        CertificateInfo certificateInfo = new CertificateInfo(byteArray, (HashAndSign[]) arrayList.toArray(new HashAndSign[0]), linkedHashSet);
        if (packet.exhausted()) {
            return certificateInfo;
        }
        throw new IllegalStateException("Check failed.");
    }
}
