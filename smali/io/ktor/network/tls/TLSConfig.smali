###### Class io.ktor.network.tls.TLSConfig (io.ktor.network.tls.TLSConfig)
.class public final Lio/ktor/network/tls/TLSConfig;
.super Ljava/lang/Object;
.source "TLSConfigJvm.kt"


# instance fields
.field public final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CertificateAndKey;",
            ">;"
        }
    .end annotation
.end field

.field public final cipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field public final random:Ljava/security/SecureRandom;

.field public final serverName:Ljava/lang/String;

.field public final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Ljava/util/List;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/SecureRandom;",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CertificateAndKey;",
            ">;",
            "Ljavax/net/ssl/X509TrustManager;",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trustManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipherSuites"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/ktor/network/tls/TLSConfig;->random:Ljava/security/SecureRandom;

    .line 24
    iput-object p2, p0, Lio/ktor/network/tls/TLSConfig;->certificates:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lio/ktor/network/tls/TLSConfig;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 26
    iput-object p4, p0, Lio/ktor/network/tls/TLSConfig;->cipherSuites:Ljava/util/List;

    .line 27
    iput-object p5, p0, Lio/ktor/network/tls/TLSConfig;->serverName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCertificates()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CertificateAndKey;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfig;->certificates:Ljava/util/List;

    return-object p0
.end method

.method public final getCipherSuites()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfig;->cipherSuites:Ljava/util/List;

    return-object p0
.end method

.method public final getRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 23
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfig;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public final getServerName()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfig;->serverName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .line 25
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfig;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method
