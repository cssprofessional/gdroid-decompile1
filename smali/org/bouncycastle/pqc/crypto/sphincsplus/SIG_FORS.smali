###### Class org.bouncycastle.pqc.crypto.sphincsplus.SIG_FORS (org.bouncycastle.pqc.crypto.sphincsplus.SIG_FORS)
.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
.super Ljava/lang/Object;


# instance fields
.field final authPath:[[B

.field final sk:[B


# direct methods
.method public constructor <init>([B[[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    return-void
.end method


# virtual methods
.method public getAuthPath()[[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    return-object p0
.end method

.method public getSK()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    return-object p0
.end method
