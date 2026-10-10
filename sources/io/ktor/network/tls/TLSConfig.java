package io.ktor.network.tls;

import java.security.SecureRandom;
import java.util.List;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TLSConfigJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSConfig {
    public final List<CertificateAndKey> certificates;
    public final List<CipherSuite> cipherSuites;
    public final SecureRandom random;
    public final String serverName;
    public final X509TrustManager trustManager;

    public TLSConfig(SecureRandom random, List<CertificateAndKey> certificates, X509TrustManager trustManager, List<CipherSuite> cipherSuites, String str) {
        Intrinsics.checkNotNullParameter(random, "random");
        Intrinsics.checkNotNullParameter(certificates, "certificates");
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        Intrinsics.checkNotNullParameter(cipherSuites, "cipherSuites");
        this.random = random;
        this.certificates = certificates;
        this.trustManager = trustManager;
        this.cipherSuites = cipherSuites;
        this.serverName = str;
    }

    public final SecureRandom getRandom() {
        return this.random;
    }

    public final List<CertificateAndKey> getCertificates() {
        return this.certificates;
    }

    public final X509TrustManager getTrustManager() {
        return this.trustManager;
    }

    public final List<CipherSuite> getCipherSuites() {
        return this.cipherSuites;
    }

    public final String getServerName() {
        return this.serverName;
    }
}
