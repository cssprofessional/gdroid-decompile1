###### Class org.bouncycastle.x509.X509StoreSpi (org.bouncycastle.x509.X509StoreSpi)
.class public abstract Lorg/bouncycastle/x509/X509StoreSpi;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract engineGetMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
.end method

.method public abstract engineInit(Lorg/bouncycastle/x509/X509StoreParameters;)V
.end method
