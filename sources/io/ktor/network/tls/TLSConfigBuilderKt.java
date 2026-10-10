package io.ktor.network.tls;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TLSConfigBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSConfigBuilderKt {
    public static final void takeFrom(TLSConfigBuilder tLSConfigBuilder, TLSConfigBuilder other) {
        Intrinsics.checkNotNullParameter(tLSConfigBuilder, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        CollectionsKt__MutableCollectionsKt.addAll(tLSConfigBuilder.getCertificates(), other.getCertificates());
        tLSConfigBuilder.setRandom(other.getRandom());
        tLSConfigBuilder.setCipherSuites(other.getCipherSuites());
        tLSConfigBuilder.setServerName(other.getServerName());
        tLSConfigBuilder.setTrustManager(other.getTrustManager());
    }

    public static final X509TrustManager findTrustManager() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        Intrinsics.checkNotNull(trustManagerFactory);
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        Intrinsics.checkNotNull(trustManagers);
        ArrayList arrayList = new ArrayList();
        for (TrustManager trustManager : trustManagers) {
            if (trustManager instanceof X509TrustManager) {
                arrayList.add(trustManager);
            }
        }
        return (X509TrustManager) CollectionsKt___CollectionsKt.first((List) arrayList);
    }
}
