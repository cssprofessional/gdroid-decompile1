###### Class io.ktor.network.tls.TLSConfigBuilderKt (io.ktor.network.tls.TLSConfigBuilderKt)
.class public final Lio/ktor/network/tls/TLSConfigBuilderKt;
.super Ljava/lang/Object;
.source "TLSConfigBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSConfigBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSConfigBuilder.kt\nio/ktor/network/tls/TLSConfigBuilderKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,164:1\n4225#2,11:165\n12767#2,2:177\n11561#2:179\n11896#2,3:180\n4225#2,11:185\n1#3:176\n37#4,2:183\n*S KotlinDebug\n*F\n+ 1 TLSConfigBuilder.kt\nio/ktor/network/tls/TLSConfigBuilderKt\n*L\n118#1:165,11\n125#1:177,2\n131#1:179\n131#1:180,3\n162#1:185,11\n132#1:183,2\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$findTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .line 1
    invoke-static {}, Lio/ktor/network/tls/TLSConfigBuilderKt;->findTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static final findTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 6

    .line 158
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 160
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4234
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_2b

    aget-object v4, v0, v3

    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_28

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 162
    :cond_2b
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static final takeFrom(Lio/ktor/network/tls/TLSConfigBuilder;Lio/ktor/network/tls/TLSConfigBuilder;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lio/ktor/network/tls/TLSConfigBuilder;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSConfigBuilder;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 89
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSConfigBuilder;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/network/tls/TLSConfigBuilder;->setRandom(Ljava/security/SecureRandom;)V

    .line 90
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSConfigBuilder;->getCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/network/tls/TLSConfigBuilder;->setCipherSuites(Ljava/util/List;)V

    .line 91
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSConfigBuilder;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/network/tls/TLSConfigBuilder;->setServerName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSConfigBuilder;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSConfigBuilder;->setTrustManager(Ljavax/net/ssl/TrustManager;)V

    return-void
.end method
