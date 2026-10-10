###### Class org.bouncycastle.pqc.crypto.falcon.FalconFFT (org.bouncycastle.pqc.crypto.falcon.FalconFFT)
.class Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;
.super Ljava/lang/Object;


# instance fields
.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    return-void
.end method


# virtual methods
.method public FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 27

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    shl-int v3, v2, v1

    shr-int/2addr v3, v2

    const/4 v4, 0x2

    move v5, v2

    move v6, v3

    :goto_b
    if-ge v5, v1, :cond_87

    shr-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v4, 0x1

    const/4 v9, 0x0

    move v10, v9

    :goto_13
    if-ge v9, v8, :cond_79

    add-int v11, v10, v7

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v13, v4, v9

    shl-int/2addr v13, v2

    aget-object v14, v12, v13

    add-int/2addr v13, v2

    aget-object v12, v12, v13

    move v13, v10

    :goto_24
    if-ge v13, v11, :cond_6c

    add-int v15, p2, v13

    aget-object v2, p1, v15

    add-int v16, v15, v3

    aget-object v1, p1, v16

    add-int v17, v15, v7

    move/from16 v18, v7

    aget-object v7, p1, v17

    add-int v19, v17, v3

    move/from16 v20, v3

    aget-object v3, p1, v19

    invoke-virtual {v0, v7, v3, v14, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v7, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move/from16 v21, v8

    invoke-virtual {v0, v2, v1, v7, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v8

    move/from16 v22, v11

    iget-object v11, v8, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v11, p1, v15

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v8, p1, v16

    invoke-virtual {v0, v2, v1, v7, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v1

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v2, p1, v17

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v19

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p3

    move/from16 v7, v18

    move/from16 v3, v20

    move/from16 v8, v21

    move/from16 v11, v22

    const/4 v2, 0x1

    goto :goto_24

    :cond_6c
    move/from16 v20, v3

    move/from16 v18, v7

    move/from16 v21, v8

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v6

    move/from16 v1, p3

    const/4 v2, 0x1

    goto :goto_13

    :cond_79
    move/from16 v20, v3

    move/from16 v18, v7

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move/from16 v1, p3

    move/from16 v6, v18

    const/4 v2, 0x1

    goto :goto_b

    :cond_87
    return-void
.end method

.method public FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p2
.end method

.method public FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p4

    invoke-virtual {v1, p4, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p1
.end method

.method public FPC_INV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p2
.end method

.method public FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p1
.end method

.method public FPC_SQR(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_double(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p1
.end method

.method public FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p2
.end method

.method public iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 27

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p3

    shr-int/lit8 v3, v2, 0x1

    move/from16 v4, p3

    move v6, v1

    move v5, v2

    :goto_b
    const/4 v7, 0x0

    if-le v4, v1, :cond_81

    shr-int/2addr v5, v1

    shl-int/lit8 v8, v6, 0x1

    move v9, v7

    :goto_12
    if-ge v7, v3, :cond_78

    add-int v10, v7, v6

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v13, v5, v9

    shl-int/2addr v13, v1

    aget-object v14, v12, v13

    add-int/2addr v13, v1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    move v12, v7

    :goto_27
    if-ge v12, v10, :cond_6d

    add-int v13, p2, v12

    aget-object v15, p1, v13

    add-int v16, v13, v3

    aget-object v1, p1, v16

    add-int v17, v13, v6

    move/from16 v18, v5

    aget-object v5, p1, v17

    add-int v19, v17, v3

    move/from16 v20, v3

    aget-object v3, p1, v19

    move/from16 v21, v6

    invoke-virtual {v0, v15, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v6

    move/from16 v22, v10

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v10, p1, v13

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v16

    invoke-virtual {v0, v15, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v1

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v3, v1, v14, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v1

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v3, p1, v17

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v19

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v18

    move/from16 v3, v20

    move/from16 v6, v21

    move/from16 v10, v22

    const/4 v1, 0x1

    goto :goto_27

    :cond_6d
    move/from16 v20, v3

    move/from16 v18, v5

    move/from16 v21, v6

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v8

    const/4 v1, 0x1

    goto :goto_12

    :cond_78
    move/from16 v20, v3

    move/from16 v18, v5

    add-int/lit8 v4, v4, -0x1

    move v6, v8

    const/4 v1, 0x1

    goto :goto_b

    :cond_81
    if-lez p3, :cond_9a

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v1, v1, p3

    :goto_89
    if-ge v7, v2, :cond_9a

    add-int v3, p2, v7

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_89

    :cond_9a
    return-void
.end method

.method public poly_LDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 22

    .line 0
    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p7

    shr-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_4f

    add-int v3, p2, v2

    aget-object v4, p1, v3

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    add-int v5, p4, v2

    aget-object v6, p3, v5

    add-int v7, v5, v1

    aget-object v8, p3, v7

    add-int v9, p6, v2

    aget-object v10, p5, v9

    add-int v11, v9, v1

    aget-object v12, p5, v11

    invoke-virtual {p0, v6, v8, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    invoke-virtual {p0, v4, v3, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v6

    iget-object v8, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v10, v12, v8, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v6

    iget-object v8, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v8, p5, v9

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p5, v11

    aput-object v4, p3, v5

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4f
    return-void
.end method

.method public poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 22

    .line 0
    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p11

    shr-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_53

    add-int v3, p6, v2

    aget-object v4, p5, v3

    add-int/2addr v3, v1

    aget-object v3, p5, v3

    add-int v5, p8, v2

    aget-object v6, p7, v5

    add-int/2addr v5, v1

    aget-object v5, p7, v5

    add-int v7, p10, v2

    aget-object v8, p9, v7

    add-int/2addr v7, v1

    aget-object v7, p9, v7

    invoke-virtual {p0, v6, v5, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v8, v7, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    add-int v6, p2, v2

    iget-object v7, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v7, p1, v6

    add-int/2addr v6, v1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v5, p1, v6

    add-int v5, p4, v2

    aput-object v4, p3, v5

    add-int/2addr v5, v1

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_53
    return-void
.end method

.method public poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 11

    .line 0
    const/4 v0, 0x1

    shl-int p5, v0, p5

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p5, :cond_19

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method

.method public poly_add_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 24

    .line 0
    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p11

    shr-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_57

    add-int v3, p4, v2

    aget-object v4, p3, v3

    add-int/2addr v3, v1

    aget-object v3, p3, v3

    add-int v5, p6, v2

    aget-object v6, p5, v5

    add-int/2addr v5, v1

    aget-object v5, p5, v5

    add-int v7, p8, v2

    aget-object v8, p7, v7

    add-int/2addr v7, v1

    aget-object v7, p7, v7

    add-int v9, p10, v2

    aget-object v10, p9, v9

    add-int/2addr v9, v1

    aget-object v9, p9, v9

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {p0, v4, v3, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {p0, v6, v5, v10, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v7, p2, v2

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p1, v7

    add-int/2addr v7, v1

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_57
    return-void
.end method

.method public poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 8

    .line 0
    const/4 v0, 0x1

    shl-int p3, v0, p3

    shr-int/lit8 v0, p3, 0x1

    :goto_5
    if-ge v0, p3, :cond_16

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method public poly_div_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 11

    .line 0
    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p5, :cond_2b

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v2, p4, v0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/2addr v2, p5

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2b
    return-void
.end method

.method public poly_div_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 13

    .line 0
    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p5, :cond_25

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v1

    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method public poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 16

    .line 0
    const/4 v0, 0x1

    shl-int p7, v0, p7

    shr-int/2addr p7, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p7, :cond_44

    add-int v1, p4, v0

    aget-object v2, p3, v1

    add-int/2addr v1, p7

    aget-object v1, p3, v1

    add-int v3, p6, v0

    aget-object v4, p5, v3

    add-int/2addr v3, p7

    aget-object v3, p5, v3

    add-int v5, p2, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_44
    return-void
.end method

.method public poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 20

    .line 0
    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p7

    shr-int/lit8 v3, v2, 0x1

    shr-int/lit8 v2, v2, 0x2

    aget-object v4, p3, p4

    aput-object v4, p1, p2

    add-int v4, p2, v3

    aget-object v5, p5, p6

    aput-object v5, p1, v4

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_59

    add-int v5, p4, v4

    aget-object v6, p3, v5

    add-int/2addr v5, v2

    aget-object v5, p3, v5

    add-int v7, p6, v4

    aget-object v8, p5, v7

    add-int/2addr v7, v2

    aget-object v7, p5, v7

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v10, v4, v3

    shl-int/2addr v10, v1

    aget-object v11, v9, v10

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    invoke-virtual {p0, v8, v7, v11, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    iget-object v8, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v6, v5, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    iget-object v10, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    shl-int/lit8 v11, v4, 0x1

    add-int/2addr v11, p2

    aput-object v10, p1, v11

    add-int v10, v11, v3

    aput-object v9, p1, v10

    invoke-virtual {p0, v6, v5, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int/2addr v11, v1

    aput-object v6, p1, v11

    add-int/2addr v11, v3

    aput-object v5, p1, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_59
    return-void
.end method

.method public poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 12

    .line 0
    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p5, :cond_27

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v5, p3, v4

    invoke-virtual {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/2addr v1, p5

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_27
    return-void
.end method

.method public poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 13

    .line 0
    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p5, :cond_25

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v1

    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method public poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 14

    .line 0
    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p5, :cond_2b

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v1

    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2b
    return-void
.end method

.method public poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .registers 9

    .line 0
    const/4 v0, 0x1

    shl-int p4, v0, p4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p4, :cond_15

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return-void
.end method

.method public poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 11

    .line 0
    const/4 v0, 0x1

    shl-int p3, v0, p3

    shr-int/2addr p3, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p3, :cond_2a

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p3

    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2a
    return-void
.end method

.method public poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 8

    .line 0
    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p3, :cond_15

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return-void
.end method

.method public poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 21

    .line 0
    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p7

    shr-int/lit8 v3, v2, 0x1

    shr-int/lit8 v2, v2, 0x2

    aget-object v4, p5, p6

    aput-object v4, p1, p2

    add-int v4, p6, v3

    aget-object v4, p5, v4

    aput-object v4, p3, p4

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_76

    shl-int/lit8 v5, v4, 0x1

    add-int v5, p6, v5

    aget-object v6, p5, v5

    add-int v7, v5, v3

    aget-object v7, p5, v7

    add-int/2addr v5, v1

    aget-object v8, p5, v5

    add-int/2addr v5, v3

    aget-object v5, p5, v5

    invoke-virtual {p0, v6, v7, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    iget-object v10, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v11, p2, v4

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    aput-object v10, p1, v11

    add-int/2addr v11, v2

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    aput-object v9, p1, v11

    invoke-virtual {p0, v6, v7, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v7, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v9, v4, v3

    shl-int/2addr v9, v1

    aget-object v10, v8, v9

    add-int/2addr v9, v1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {p0, v6, v5, v10, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v7, p4, v4

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, p3, v7

    add-int/2addr v7, v2

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_76
    return-void
.end method

.method public poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .registers 11

    .line 0
    const/4 v0, 0x1

    shl-int p5, v0, p5

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p5, :cond_19

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method
