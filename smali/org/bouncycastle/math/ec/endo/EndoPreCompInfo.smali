###### Class org.bouncycastle.math.ec.endo.EndoPreCompInfo (org.bouncycastle.math.ec.endo.EndoPreCompInfo)
.class public Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected mappedPoint:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object p0
.end method

.method public getMappedPoint()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lorg/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public setEndomorphism(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    return-void
.end method

.method public setMappedPoint(Lorg/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method
