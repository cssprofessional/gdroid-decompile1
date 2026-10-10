###### Class org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSS701 (org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSS701)
.class public Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSS701;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v1, 0x2bd

    const/16 v2, 0xd

    const/16 v3, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;-><init>(IIIII)V

    return-void
.end method
