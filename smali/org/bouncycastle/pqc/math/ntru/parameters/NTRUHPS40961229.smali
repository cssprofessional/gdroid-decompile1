###### Class org.bouncycastle.pqc.math.ntru.parameters.NTRUHPS40961229 (org.bouncycastle.pqc.math.ntru.parameters.NTRUHPS40961229)
.class public Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS40961229;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v1, 0x4cd

    const/16 v2, 0xc

    const/16 v3, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    return-object v0
.end method
