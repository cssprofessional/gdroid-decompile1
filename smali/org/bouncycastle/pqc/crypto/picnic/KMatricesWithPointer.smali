###### Class org.bouncycastle.pqc.crypto.picnic.KMatricesWithPointer (org.bouncycastle.pqc.crypto.picnic.KMatricesWithPointer)
.class Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
.super Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;


# instance fields
.field private matrixPointer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;)V
    .registers 5

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getNmatrices()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getRows()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getColumns()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->matrixPointer:I

    return-void
.end method


# virtual methods
.method public getMatrixPointer()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->matrixPointer:I

    return p0
.end method

.method public setMatrixPointer(I)V
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->matrixPointer:I

    return-void
.end method
