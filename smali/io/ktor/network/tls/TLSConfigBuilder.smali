###### Class io.ktor.network.tls.TLSConfigBuilder (io.ktor.network.tls.TLSConfigBuilder)
.class public final Lio/ktor/network/tls/TLSConfigBuilder;
.super Ljava/lang/Object;
.source "TLSConfigBuilder.kt"


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

.field public cipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field public random:Ljava/security/SecureRandom;

.field public serverName:Ljava/lang/String;

.field public trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->certificates:Ljava/util/List;

    .line 58
    sget-object v0, Lio/ktor/network/tls/CIOCipherSuites;->INSTANCE:Lio/ktor/network/tls/CIOCipherSuites;

    invoke-virtual {v0}, Lio/ktor/network/tls/CIOCipherSuites;->getSupportedSuites()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->cipherSuites:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lio/ktor/network/tls/TLSConfig;
    .registers 8

    .line 73
    new-instance v6, Lio/ktor/network/tls/TLSConfig;

    .line 74
    iget-object v0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :cond_b
    move-object v1, v0

    .line 75
    iget-object v2, p0, Lio/ktor/network/tls/TLSConfigBuilder;->certificates:Ljava/util/List;

    .line 76
    iget-object v0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->trustManager:Ljavax/net/ssl/TrustManager;

    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_17

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_1e

    invoke-static {}, Lio/ktor/network/tls/TLSConfigBuilderKt;->access$findTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    :cond_1e
    move-object v3, v0

    .line 77
    iget-object v4, p0, Lio/ktor/network/tls/TLSConfigBuilder;->cipherSuites:Ljava/util/List;

    .line 78
    iget-object v5, p0, Lio/ktor/network/tls/TLSConfigBuilder;->serverName:Ljava/lang/String;

    move-object v0, v6

    .line 73
    invoke-direct/range {v0 .. v5}, Lio/ktor/network/tls/TLSConfig;-><init>(Ljava/security/SecureRandom;Ljava/util/List;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;Ljava/lang/String;)V

    return-object v6
.end method

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

    .line 26
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->certificates:Ljava/util/List;

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

    .line 58
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->cipherSuites:Ljava/util/List;

    return-object p0
.end method

.method public final getRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 33
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public final getServerName()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->serverName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTrustManager()Ljavax/net/ssl/TrustManager;
    .registers 1

    .line 42
    iget-object p0, p0, Lio/ktor/network/tls/TLSConfigBuilder;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object p0
.end method

.method public final setCipherSuites(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lio/ktor/network/tls/TLSConfigBuilder;->cipherSuites:Ljava/util/List;

    return-void
.end method

.method public final setRandom(Ljava/security/SecureRandom;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lio/ktor/network/tls/TLSConfigBuilder;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public final setServerName(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lio/ktor/network/tls/TLSConfigBuilder;->serverName:Ljava/lang/String;

    return-void
.end method

.method public final setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .registers 3

    if-eqz p1, :cond_27

    .line 45
    instance-of v0, p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_7

    goto :goto_27

    .line 46
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set [trustManager]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Only [X509TrustManager] supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_27
    :goto_27
    iput-object p1, p0, Lio/ktor/network/tls/TLSConfigBuilder;->trustManager:Ljavax/net/ssl/TrustManager;

    return-void
.end method
