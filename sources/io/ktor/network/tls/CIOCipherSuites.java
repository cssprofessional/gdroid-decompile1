package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.tls.extensions.HashAlgorithm;
import io.ktor.network.tls.extensions.SignatureAlgorithm;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* JADX INFO: compiled from: CipherSuites.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOCipherSuites {
    public static final CipherSuite ECDHE_ECDSA_AES128_SHA256;
    public static final CipherSuite ECDHE_ECDSA_AES256_SHA384;
    public static final CipherSuite ECDHE_RSA_AES128_SHA256;
    public static final CipherSuite ECDHE_RSA_AES256_SHA384;
    public static final CIOCipherSuites INSTANCE = new CIOCipherSuites();
    public static final List<CipherSuite> SupportedSuites;
    public static final CipherSuite TLS_RSA_WITH_AES128_CBC_SHA;
    public static final CipherSuite TLS_RSA_WITH_AES256_CBC_SHA;
    public static final CipherSuite TLS_RSA_WITH_AES_128_GCM_SHA256;

    static {
        SecretExchangeType secretExchangeType = SecretExchangeType.RSA;
        HashAlgorithm hashAlgorithm = HashAlgorithm.SHA256;
        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.RSA;
        CipherSuite cipherSuite = new CipherSuite((short) 156, "TLS_RSA_WITH_AES_128_GCM_SHA256", "AES128-GCM-SHA256", secretExchangeType, "AES/GCM/NoPadding", 128, 4, 12, 16, "AEAD", 0, hashAlgorithm, signatureAlgorithm, null, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE, null);
        TLS_RSA_WITH_AES_128_GCM_SHA256 = cipherSuite;
        SecretExchangeType secretExchangeType2 = SecretExchangeType.ECDHE;
        HashAlgorithm hashAlgorithm2 = HashAlgorithm.SHA384;
        SignatureAlgorithm signatureAlgorithm2 = SignatureAlgorithm.ECDSA;
        CipherSuite cipherSuite2 = new CipherSuite((short) -16340, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "ECDHE-ECDSA-AES256-GCM-SHA384", secretExchangeType2, "AES/GCM/NoPadding", 256, 4, 12, 16, "AEAD", 0, hashAlgorithm2, signatureAlgorithm2, null, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE, null);
        ECDHE_ECDSA_AES256_SHA384 = cipherSuite2;
        CipherSuite cipherSuite3 = new CipherSuite((short) -16341, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "ECDHE-ECDSA-AES128-GCM-SHA256", secretExchangeType2, "AES/GCM/NoPadding", 128, 4, 12, 16, "AEAD", 0, hashAlgorithm, signatureAlgorithm2, null, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE, null);
        ECDHE_ECDSA_AES128_SHA256 = cipherSuite3;
        CipherSuite cipherSuite4 = new CipherSuite((short) -16336, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "ECDHE-RSA-AES256-GCM-SHA384", secretExchangeType2, "AES/GCM/NoPadding", 256, 4, 12, 16, "AEAD", 0, hashAlgorithm2, signatureAlgorithm, null, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE, null);
        ECDHE_RSA_AES256_SHA384 = cipherSuite4;
        CipherSuite cipherSuite5 = new CipherSuite((short) -16337, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "ECDHE-RSA-AES128-GCM-SHA256", secretExchangeType2, "AES/GCM/NoPadding", 128, 4, 12, 16, "AEAD", 0, hashAlgorithm, signatureAlgorithm, null, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE, null);
        ECDHE_RSA_AES128_SHA256 = cipherSuite5;
        CipherType cipherType = CipherType.CBC;
        CipherSuite cipherSuite6 = new CipherSuite((short) 53, "TLS_RSA_WITH_AES_256_CBC_SHA", "AES-256-CBC-SHA", secretExchangeType, "AES/CBC/NoPadding", 256, 16, 48, 20, "HmacSHA1", 160, hashAlgorithm, signatureAlgorithm, cipherType);
        TLS_RSA_WITH_AES256_CBC_SHA = cipherSuite6;
        CipherSuite cipherSuite7 = new CipherSuite((short) 47, "TLS_RSA_WITH_AES_128_CBC_SHA", "AES-128-CBC-SHA", secretExchangeType, "AES/CBC/NoPadding", 128, 16, 48, 20, "HmacSHA1", 160, hashAlgorithm, signatureAlgorithm, cipherType);
        TLS_RSA_WITH_AES128_CBC_SHA = cipherSuite7;
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new CipherSuite[]{cipherSuite2, cipherSuite4, cipherSuite3, cipherSuite5, cipherSuite, cipherSuite6, cipherSuite7});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (CipherSuitesJvmKt.isSupported((CipherSuite) obj)) {
                arrayList.add(obj);
            }
        }
        SupportedSuites = arrayList;
    }

    public final List<CipherSuite> getSupportedSuites() {
        return SupportedSuites;
    }
}
