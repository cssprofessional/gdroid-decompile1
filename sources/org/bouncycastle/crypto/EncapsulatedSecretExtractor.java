package org.bouncycastle.crypto;

/* JADX INFO: loaded from: classes3.dex */
public interface EncapsulatedSecretExtractor {
    byte[] extractSecret(byte[] bArr);

    int getEncapsulationLength();
}
