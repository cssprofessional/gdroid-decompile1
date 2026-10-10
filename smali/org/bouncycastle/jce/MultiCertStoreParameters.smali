###### Class org.bouncycastle.jce.MultiCertStoreParameters (org.bouncycastle.jce.MultiCertStoreParameters)
.class public Lorg/bouncycastle/jce/MultiCertStoreParameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private certStores:Ljava/util/Collection;

.field private searchAllStores:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/MultiCertStoreParameters;-><init>(Ljava/util/Collection;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    iput-boolean p2, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getCertStores()Ljava/util/Collection;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    return-object p0
.end method

.method public getSearchAllStores()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    return p0
.end method
