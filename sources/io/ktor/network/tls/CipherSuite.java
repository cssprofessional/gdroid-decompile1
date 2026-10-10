package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.tls.extensions.HashAlgorithm;
import io.ktor.network.tls.extensions.SignatureAlgorithm;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CipherSuites.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CipherSuite {
    public final int cipherTagSizeInBytes;
    public final CipherType cipherType;
    public final short code;
    public final SecretExchangeType exchangeType;
    public final int fixedIvLength;
    public final HashAlgorithm hash;
    public final int ivLength;
    public final String jdkCipherName;
    public final int keyStrength;
    public final int keyStrengthInBytes;
    public final String macName;
    public final int macStrength;
    public final int macStrengthInBytes;
    public final String name;
    public final String openSSLName;
    public final SignatureAlgorithm signatureAlgorithm;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CipherSuite)) {
            return false;
        }
        CipherSuite cipherSuite = (CipherSuite) obj;
        return this.code == cipherSuite.code && Intrinsics.areEqual(this.name, cipherSuite.name) && Intrinsics.areEqual(this.openSSLName, cipherSuite.openSSLName) && this.exchangeType == cipherSuite.exchangeType && Intrinsics.areEqual(this.jdkCipherName, cipherSuite.jdkCipherName) && this.keyStrength == cipherSuite.keyStrength && this.fixedIvLength == cipherSuite.fixedIvLength && this.ivLength == cipherSuite.ivLength && this.cipherTagSizeInBytes == cipherSuite.cipherTagSizeInBytes && Intrinsics.areEqual(this.macName, cipherSuite.macName) && this.macStrength == cipherSuite.macStrength && this.hash == cipherSuite.hash && this.signatureAlgorithm == cipherSuite.signatureAlgorithm && this.cipherType == cipherSuite.cipherType;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((Short.hashCode(this.code) * 31) + this.name.hashCode()) * 31) + this.openSSLName.hashCode()) * 31) + this.exchangeType.hashCode()) * 31) + this.jdkCipherName.hashCode()) * 31) + Integer.hashCode(this.keyStrength)) * 31) + Integer.hashCode(this.fixedIvLength)) * 31) + Integer.hashCode(this.ivLength)) * 31) + Integer.hashCode(this.cipherTagSizeInBytes)) * 31) + this.macName.hashCode()) * 31) + Integer.hashCode(this.macStrength)) * 31) + this.hash.hashCode()) * 31) + this.signatureAlgorithm.hashCode()) * 31) + this.cipherType.hashCode();
    }

    public String toString() {
        return "CipherSuite(code=" + ((int) this.code) + ", name=" + this.name + ", openSSLName=" + this.openSSLName + ", exchangeType=" + this.exchangeType + ", jdkCipherName=" + this.jdkCipherName + ", keyStrength=" + this.keyStrength + ", fixedIvLength=" + this.fixedIvLength + ", ivLength=" + this.ivLength + ", cipherTagSizeInBytes=" + this.cipherTagSizeInBytes + ", macName=" + this.macName + ", macStrength=" + this.macStrength + ", hash=" + this.hash + ", signatureAlgorithm=" + this.signatureAlgorithm + ", cipherType=" + this.cipherType + ')';
    }

    public CipherSuite(short s, String name, String openSSLName, SecretExchangeType exchangeType, String jdkCipherName, int i, int i2, int i3, int i4, String macName, int i5, HashAlgorithm hash, SignatureAlgorithm signatureAlgorithm, CipherType cipherType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(openSSLName, "openSSLName");
        Intrinsics.checkNotNullParameter(exchangeType, "exchangeType");
        Intrinsics.checkNotNullParameter(jdkCipherName, "jdkCipherName");
        Intrinsics.checkNotNullParameter(macName, "macName");
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(signatureAlgorithm, "signatureAlgorithm");
        Intrinsics.checkNotNullParameter(cipherType, "cipherType");
        this.code = s;
        this.name = name;
        this.openSSLName = openSSLName;
        this.exchangeType = exchangeType;
        this.jdkCipherName = jdkCipherName;
        this.keyStrength = i;
        this.fixedIvLength = i2;
        this.ivLength = i3;
        this.cipherTagSizeInBytes = i4;
        this.macName = macName;
        this.macStrength = i5;
        this.hash = hash;
        this.signatureAlgorithm = signatureAlgorithm;
        this.cipherType = cipherType;
        this.keyStrengthInBytes = i / 8;
        this.macStrengthInBytes = i5 / 8;
    }

    public final short getCode() {
        return this.code;
    }

    public final String getName() {
        return this.name;
    }

    public final SecretExchangeType getExchangeType() {
        return this.exchangeType;
    }

    public final String getJdkCipherName() {
        return this.jdkCipherName;
    }

    public final int getKeyStrength() {
        return this.keyStrength;
    }

    public final int getFixedIvLength() {
        return this.fixedIvLength;
    }

    public final int getIvLength() {
        return this.ivLength;
    }

    public final int getCipherTagSizeInBytes() {
        return this.cipherTagSizeInBytes;
    }

    public final String getMacName() {
        return this.macName;
    }

    public final HashAlgorithm getHash() {
        return this.hash;
    }

    public final SignatureAlgorithm getSignatureAlgorithm() {
        return this.signatureAlgorithm;
    }

    public /* synthetic */ CipherSuite(short s, String str, String str2, SecretExchangeType secretExchangeType, String str3, int i, int i2, int i3, int i4, String str4, int i5, HashAlgorithm hashAlgorithm, SignatureAlgorithm signatureAlgorithm, CipherType cipherType, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(s, str, str2, secretExchangeType, str3, i, i2, i3, i4, str4, i5, hashAlgorithm, signatureAlgorithm, (i6 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0 ? CipherType.GCM : cipherType);
    }

    public final CipherType getCipherType() {
        return this.cipherType;
    }

    public final int getKeyStrengthInBytes() {
        return this.keyStrengthInBytes;
    }

    public final int getMacStrengthInBytes() {
        return this.macStrengthInBytes;
    }
}
