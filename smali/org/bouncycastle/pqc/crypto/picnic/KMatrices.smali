###### Class org.bouncycastle.pqc.crypto.picnic.KMatrices (org.bouncycastle.pqc.crypto.picnic.KMatrices)
.class Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private data:[I

.field private nmatrices:I

.field private rows:I


# direct methods
.method public constructor <init>(III[I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->nmatrices:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->data:[I

    return-void
.end method


# virtual methods
.method public getColumns()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    return p0
.end method

.method public getData()[I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->data:[I

    return-object p0
.end method

.method public getNmatrices()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->nmatrices:I

    return p0
.end method

.method public getRows()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    return p0
.end method

.method public getSize()I
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    mul-int/2addr v0, p0

    return v0
.end method
