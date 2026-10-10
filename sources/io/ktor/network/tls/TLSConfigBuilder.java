package io.ktor.network.tls;

import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TLSConfigBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSConfigBuilder {
    public final List<CertificateAndKey> certificates = new ArrayList();
    public List<CipherSuite> cipherSuites = CIOCipherSuites.INSTANCE.getSupportedSuites();
    public SecureRandom random;
    public String serverName;
    public TrustManager trustManager;

    public final List<CertificateAndKey> getCertificates() {
        return this.certificates;
    }

    public final SecureRandom getRandom() {
        return this.random;
    }

    public final void setRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    public final TrustManager getTrustManager() {
        return this.trustManager;
    }

    public final void setTrustManager(TrustManager trustManager) {
        if (trustManager != null && !(trustManager instanceof X509TrustManager)) {
            throw new IllegalStateException(("Failed to set [trustManager]: " + trustManager + ". Only [X509TrustManager] supported.").toString());
        }
        this.trustManager = trustManager;
    }

    public final List<CipherSuite> getCipherSuites() {
        return this.cipherSuites;
    }

    public final void setCipherSuites(List<CipherSuite> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.cipherSuites = list;
    }

    public final String getServerName() {
        return this.serverName;
    }

    public final void setServerName(String str) {
        this.serverName = str;
    }

    public final TLSConfig build() throws NoSuchAlgorithmException, KeyStoreException {
        SecureRandom secureRandom = this.random;
        if (secureRandom == null) {
            secureRandom = new SecureRandom();
        }
        SecureRandom secureRandom2 = secureRandom;
        List<CertificateAndKey> list = this.certificates;
        TrustManager trustManager = this.trustManager;
        X509TrustManager x509TrustManagerFindTrustManager = trustManager instanceof X509TrustManager ? (X509TrustManager) trustManager : null;
        if (x509TrustManagerFindTrustManager == null) {
            x509TrustManagerFindTrustManager = TLSConfigBuilderKt.findTrustManager();
        }
        return new TLSConfig(secureRandom2, list, x509TrustManagerFindTrustManager, this.cipherSuites, this.serverName);
    }
}
