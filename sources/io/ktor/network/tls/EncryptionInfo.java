package io.ktor.network.tls;

import java.security.PrivateKey;
import java.security.PublicKey;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EncryptionInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EncryptionInfo {
    public final PrivateKey clientPrivate;
    public final PublicKey clientPublic;
    public final PublicKey serverPublic;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncryptionInfo)) {
            return false;
        }
        EncryptionInfo encryptionInfo = (EncryptionInfo) obj;
        return Intrinsics.areEqual(this.serverPublic, encryptionInfo.serverPublic) && Intrinsics.areEqual(this.clientPublic, encryptionInfo.clientPublic) && Intrinsics.areEqual(this.clientPrivate, encryptionInfo.clientPrivate);
    }

    public int hashCode() {
        return (((this.serverPublic.hashCode() * 31) + this.clientPublic.hashCode()) * 31) + this.clientPrivate.hashCode();
    }

    public String toString() {
        return "EncryptionInfo(serverPublic=" + this.serverPublic + ", clientPublic=" + this.clientPublic + ", clientPrivate=" + this.clientPrivate + ')';
    }

    public EncryptionInfo(PublicKey serverPublic, PublicKey clientPublic, PrivateKey clientPrivate) {
        Intrinsics.checkNotNullParameter(serverPublic, "serverPublic");
        Intrinsics.checkNotNullParameter(clientPublic, "clientPublic");
        Intrinsics.checkNotNullParameter(clientPrivate, "clientPrivate");
        this.serverPublic = serverPublic;
        this.clientPublic = clientPublic;
        this.clientPrivate = clientPrivate;
    }

    public final PublicKey getServerPublic() {
        return this.serverPublic;
    }

    public final PublicKey getClientPublic() {
        return this.clientPublic;
    }

    public final PrivateKey getClientPrivate() {
        return this.clientPrivate;
    }
}
