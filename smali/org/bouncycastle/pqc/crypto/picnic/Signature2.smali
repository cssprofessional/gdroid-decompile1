###### Class org.bouncycastle.pqc.crypto.picnic.Signature2 (org.bouncycastle.pqc.crypto.picnic.Signature2)
.class Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;
    }
.end annotation


# instance fields
.field challengeC:[I

.field challengeHash:[B

.field challengeP:[I

.field cvInfo:[B

.field cvInfoLen:I

.field iSeedInfo:[B

.field iSeedInfoLen:I

.field proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

.field salt:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.picnic.Signature2.Proof2 (org.bouncycastle.pqc.crypto.picnic.Signature2$Proof2)
.class public Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/Signature2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proof2"
.end annotation


# instance fields
.field C:[B

.field aux:[B

.field input:[B

.field msgs:[B

.field seedInfo:[B

.field seedInfoLen:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    return-void
.end method
