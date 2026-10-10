###### Class org.bouncycastle.pqc.legacy.crypto.qtesla.IntSlicer (org.bouncycastle.pqc.legacy.crypto.qtesla.IntSlicer)
.class final Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;
.super Ljava/lang/Object;


# instance fields
.field private base:I

.field private final values:[I


# direct methods
.method public constructor <init>([II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    return-void
.end method


# virtual methods
.method public final at(I)I
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final at(II)I
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr p0, p1

    aput p2, v0, p0

    return p2
.end method

.method public final at(IJ)I
    .registers 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr p0, p1

    long-to-int p1, p2

    aput p1, v0, p0

    return p1
.end method

.method public final copy()Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;-><init>([II)V

    return-object v0
.end method

.method public final from(I)Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;
    .registers 4

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;-><init>([II)V

    return-object v0
.end method

.method public final incBase(I)V
    .registers 3

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    return-void
.end method
