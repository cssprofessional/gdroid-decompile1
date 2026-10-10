package io.ktor.network.tls.extensions;

import io.ktor.network.tls.OID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SignatureAlgorithm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HashAndSign {
    public static final Companion Companion = new Companion(null);
    public final HashAlgorithm hash;
    public final String name;
    public final OID oid;
    public final SignatureAlgorithm sign;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HashAndSign)) {
            return false;
        }
        HashAndSign hashAndSign = (HashAndSign) obj;
        return this.hash == hashAndSign.hash && this.sign == hashAndSign.sign && Intrinsics.areEqual(this.oid, hashAndSign.oid);
    }

    public int hashCode() {
        int iHashCode = ((this.hash.hashCode() * 31) + this.sign.hashCode()) * 31;
        OID oid = this.oid;
        return iHashCode + (oid == null ? 0 : oid.hashCode());
    }

    public String toString() {
        return "HashAndSign(hash=" + this.hash + ", sign=" + this.sign + ", oid=" + this.oid + ')';
    }

    public HashAndSign(HashAlgorithm hash, SignatureAlgorithm sign, OID oid) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(sign, "sign");
        this.hash = hash;
        this.sign = sign;
        this.oid = oid;
        this.name = hash.name() + "with" + sign.name();
    }

    public final HashAlgorithm getHash() {
        return this.hash;
    }

    public final OID getOid() {
        return this.oid;
    }

    public final SignatureAlgorithm getSign() {
        return this.sign;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX INFO: compiled from: SignatureAlgorithm.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
