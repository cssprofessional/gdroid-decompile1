###### Class org.bouncycastle.x509.PKIXCRLUtil (org.bouncycastle.x509.PKIXCRLUtil)
.class abstract Lorg/bouncycastle/x509/PKIXCRLUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)V
    :try_end_c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v0, "Exception obtaining complete CRLs."

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static findCRLs(Ljava/util/HashSet;Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/bouncycastle/x509/X509Store;

    const-string v4, "Exception searching in X.509 CRL store."

    const/4 v5, 0x1

    if-eqz v3, :cond_2a

    check-cast v2, Lorg/bouncycastle/x509/X509Store;

    :try_start_19
    invoke-virtual {v2, p1}, Lorg/bouncycastle/x509/X509Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_20
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_19 .. :try_end_20} :catch_22

    :goto_20
    move v1, v5

    goto :goto_6

    :catch_22
    move-exception v0

    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    move-object v0, v2

    goto :goto_6

    :cond_2a
    check-cast v2, Ljava/security/cert/CertStore;

    :try_start_2c
    invoke-virtual {v2, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_33
    .catch Ljava/security/cert/CertStoreException; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_20

    :catch_34
    move-exception v0

    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_3b
    if-nez v1, :cond_41

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    throw v0

    :cond_41
    :goto_41
    return-void
.end method
