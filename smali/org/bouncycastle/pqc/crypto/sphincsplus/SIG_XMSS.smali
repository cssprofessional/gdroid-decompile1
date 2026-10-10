###### Class org.bouncycastle.pqc.crypto.sphincsplus.SIG_XMSS (org.bouncycastle.pqc.crypto.sphincsplus.SIG_XMSS)
.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
.super Ljava/lang/Object;


# instance fields
.field final auth:[[B

.field final sig:[B


# direct methods
.method public constructor <init>([B[[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    return-void
.end method


# virtual methods
.method public getWOTSSig()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    return-object p0
.end method

.method public getXMSSAUTH()[[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    return-object p0
.end method
