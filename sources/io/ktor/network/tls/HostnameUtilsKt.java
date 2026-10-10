package io.ktor.network.tls;

import io.ktor.http.IpParserKt;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: HostnameUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HostnameUtilsKt {
    public static final void verifyHostnameInCertificate(String serverName, X509Certificate certificate) throws CertificateParsingException, TLSException {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        if (IpParserKt.hostIsIp(serverName)) {
            verifyIpInCertificate(serverName, certificate);
            return;
        }
        List<String> listHosts = hosts(certificate);
        if (listHosts.isEmpty()) {
            return;
        }
        if (!listHosts.isEmpty()) {
            Iterator<T> it = listHosts.iterator();
            while (it.hasNext()) {
                if (matchHostnameWithCertificate(serverName, (String) it.next())) {
                    return;
                }
            }
        }
        throw new TLSException("No server host: " + serverName + " in the server certificate. Provided in certificate: " + CollectionsKt___CollectionsKt.joinToString$default(listHosts, null, null, null, 0, null, null, 63, null), null, 2, null);
    }

    public static final void verifyIpInCertificate(String ipString, X509Certificate certificate) throws CertificateParsingException, TLSException {
        Intrinsics.checkNotNullParameter(ipString, "ipString");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        Collection<List<?>> subjectAlternativeNames = certificate.getSubjectAlternativeNames();
        if (subjectAlternativeNames != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : subjectAlternativeNames) {
                Object obj2 = ((List) obj).get(0);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
                if (((Integer) obj2).intValue() == 7) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object obj3 = ((List) it.next()).get(1);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                arrayList2.add((String) obj3);
            }
            if (arrayList2.isEmpty()) {
                return;
            }
            if (!arrayList2.isEmpty()) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual((String) it2.next(), ipString)) {
                        return;
                    }
                }
            }
            throw new TLSException("No server host: " + ipString + " in the server certificate. The certificate was issued for: " + CollectionsKt___CollectionsKt.joinToString$default(arrayList2, null, null, null, 0, null, null, 63, null) + '.', null, 2, null);
        }
    }

    public static final boolean matchHostnameWithCertificate(String serverName, String certificateHost) {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        Intrinsics.checkNotNullParameter(certificateHost, "certificateHost");
        if (StringsKt__StringsJVMKt.equals(serverName, certificateHost, true)) {
            return true;
        }
        List listAsReversed = CollectionsKt__ReversedViewsKt.asReversed(StringsKt__StringsKt.split$default((CharSequence) serverName, new char[]{'.'}, false, 0, 6, (Object) null));
        List listAsReversed2 = CollectionsKt__ReversedViewsKt.asReversed(StringsKt__StringsKt.split$default((CharSequence) certificateHost, new char[]{'.'}, false, 0, 6, (Object) null));
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        while (i < listAsReversed.size() && i2 < listAsReversed2.size()) {
            String str = (String) listAsReversed.get(i);
            if (i == 0 && str.length() == 0) {
                i++;
            } else {
                String str2 = (String) listAsReversed2.get(i2);
                if (i2 != 0 || str2.length() != 0) {
                    if (!z && StringsKt__StringsJVMKt.equals(str, str2, true)) {
                        i3++;
                        i++;
                    } else {
                        if (!Intrinsics.areEqual(str2, "*")) {
                            return false;
                        }
                        i++;
                        i2++;
                        z = true;
                    }
                }
                i2++;
            }
        }
        return i == listAsReversed.size() && i2 == listAsReversed2.size() && (!z || i3 >= 2);
    }

    public static final List<String> hosts(X509Certificate x509Certificate) throws CertificateParsingException {
        Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
        if (subjectAlternativeNames == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : subjectAlternativeNames) {
            Object obj2 = ((List) obj).get(0);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
            if (((Integer) obj2).intValue() == 2) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object obj3 = ((List) it.next()).get(1);
            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
            arrayList2.add((String) obj3);
        }
        return arrayList2;
    }
}
