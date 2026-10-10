package io.ktor.network.tls;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: OID.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class OID {
    public final int[] asArray;
    public final String identifier;
    public static final Companion Companion = new Companion(null);
    public static final OID OrganizationName = new OID("2.5.4.10");
    public static final OID OrganizationalUnitName = new OID("2.5.4.11");
    public static final OID CountryName = new OID("2.5.4.6");
    public static final OID CommonName = new OID("2.5.4.3");
    public static final OID SubjectAltName = new OID("2.5.29.17");
    public static final OID BasicConstraints = new OID("2.5.29.19");
    public static final OID KeyUsage = new OID("2.5.29.15");
    public static final OID ExtKeyUsage = new OID("2.5.29.37");
    public static final OID ServerAuth = new OID("1.3.6.1.5.5.7.3.1");
    public static final OID ClientAuth = new OID("1.3.6.1.5.5.7.3.2");
    public static final OID RSAEncryption = new OID("1 2 840 113549 1 1 1");
    public static final OID ECEncryption = new OID("1.2.840.10045.2.1");
    public static final OID ECDSAwithSHA384Encryption = new OID("1.2.840.10045.4.3.3");
    public static final OID ECDSAwithSHA256Encryption = new OID("1.2.840.10045.4.3.2");
    public static final OID RSAwithSHA512Encryption = new OID("1.2.840.113549.1.1.13");
    public static final OID RSAwithSHA384Encryption = new OID("1.2.840.113549.1.1.12");
    public static final OID RSAwithSHA256Encryption = new OID("1.2.840.113549.1.1.11");
    public static final OID RSAwithSHA1Encryption = new OID("1.2.840.113549.1.1.5");
    public static final OID secp256r1 = new OID("1.2.840.10045.3.1.7");

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof OID) && Intrinsics.areEqual(this.identifier, ((OID) obj).identifier);
    }

    public int hashCode() {
        return this.identifier.hashCode();
    }

    public String toString() {
        return "OID(identifier=" + this.identifier + ')';
    }

    public OID(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.identifier = identifier;
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) identifier, new String[]{".", " "}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSplit$default, 10));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.trim((String) it.next()).toString())));
        }
        this.asArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    /* JADX INFO: compiled from: OID.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final OID getECDSAwithSHA384Encryption() {
            return OID.ECDSAwithSHA384Encryption;
        }

        public final OID getECDSAwithSHA256Encryption() {
            return OID.ECDSAwithSHA256Encryption;
        }

        public final OID getRSAwithSHA512Encryption() {
            return OID.RSAwithSHA512Encryption;
        }

        public final OID getRSAwithSHA384Encryption() {
            return OID.RSAwithSHA384Encryption;
        }

        public final OID getRSAwithSHA256Encryption() {
            return OID.RSAwithSHA256Encryption;
        }

        public final OID getRSAwithSHA1Encryption() {
            return OID.RSAwithSHA1Encryption;
        }
    }
}
