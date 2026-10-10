package io.ktor.network.tls;

import java.security.PrivateKey;
import java.security.cert.X509Certificate;

/* JADX INFO: compiled from: TLSConfigJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CertificateAndKey {
    public final X509Certificate[] certificateChain;
    public final PrivateKey key;

    public final X509Certificate[] getCertificateChain() {
        return this.certificateChain;
    }

    public final PrivateKey getKey() {
        return this.key;
    }
}
