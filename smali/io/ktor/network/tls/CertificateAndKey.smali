###### Class io.ktor.network.tls.CertificateAndKey (io.ktor.network.tls.CertificateAndKey)
.class public final Lio/ktor/network/tls/CertificateAndKey;
.super Ljava/lang/Object;
.source "TLSConfigJvm.kt"


# instance fields
.field public final certificateChain:[Ljava/security/cert/X509Certificate;

.field public final key:Ljava/security/PrivateKey;


# virtual methods
.method public final getCertificateChain()[Ljava/security/cert/X509Certificate;
    .registers 1

    .line 38
    iget-object p0, p0, Lio/ktor/network/tls/CertificateAndKey;->certificateChain:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public final getKey()Ljava/security/PrivateKey;
    .registers 1

    .line 38
    iget-object p0, p0, Lio/ktor/network/tls/CertificateAndKey;->key:Ljava/security/PrivateKey;

    return-object p0
.end method
