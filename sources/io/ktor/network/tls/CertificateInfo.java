package io.ktor.network.tls;

import io.ktor.network.tls.extensions.HashAndSign;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CertificateInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CertificateInfo {
    public final Set<X500Principal> authorities;
    public final HashAndSign[] hashAndSign;
    public final byte[] types;

    public CertificateInfo(byte[] types, HashAndSign[] hashAndSign, Set<X500Principal> authorities) {
        Intrinsics.checkNotNullParameter(types, "types");
        Intrinsics.checkNotNullParameter(hashAndSign, "hashAndSign");
        Intrinsics.checkNotNullParameter(authorities, "authorities");
        this.types = types;
        this.hashAndSign = hashAndSign;
        this.authorities = authorities;
    }

    public final byte[] getTypes() {
        return this.types;
    }

    public final HashAndSign[] getHashAndSign() {
        return this.hashAndSign;
    }

    public final Set<X500Principal> getAuthorities() {
        return this.authorities;
    }
}
