###### Class org.bouncycastle.crypto.engines.AsconEngine (org.bouncycastle.crypto.engines.AsconEngine)
.class public Lorg/bouncycastle/crypto/engines/AsconEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;,
        Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    }
.end annotation


# instance fields
.field private final ASCON_AEAD_RATE:I

.field private final ASCON_IV:J

.field private final CRYPTO_ABYTES:I

.field private final CRYPTO_KEYBYTES:I

.field private K0:J

.field private K1:J

.field private K2:J

.field private N0:J

.field private N1:J

.field private final algorithmName:Ljava/lang/String;

.field private final asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field private initialAssociatedText:[B

.field private final m_buf:[B

.field private m_bufPos:I

.field private final m_bufferSizeDecrypt:I

.field private m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field private mac:[B

.field private final nr:I

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/16 v2, 0x10

    if-eq p1, v0, :cond_4b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_33

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v2, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128 AEAD"

    :goto_30
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    goto :goto_5d

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter setting for ASCON AEAD"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v2, -0x7f7ff3f800000000L

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128a AEAD"

    goto :goto_30

    :cond_4b
    const/16 p1, 0x14

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v2, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-80pq AEAD"

    goto :goto_30

    :goto_5d
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne p1, v1, :cond_62

    const/4 v1, 0x6

    :cond_62
    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    return-void
.end method

.method private P(I)V
    .registers 4

    .line 0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_26

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1c

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_1c
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_26
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    return-void
.end method

.method private PAD(I)J
    .registers 4

    .line 0
    shl-int/lit8 p0, p1, 0x3

    rsub-int/lit8 p0, p0, 0x38

    const-wide/16 v0, 0x80

    shl-long p0, v0, p0

    return-wide p0
.end method

.method private ROUND(J)V
    .registers 24

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    xor-long v15, v3, v7

    xor-long/2addr v15, v13

    xor-long v15, v15, p1

    and-long v17, v9, v13

    move-wide/from16 v19, v11

    xor-long v11, v15, v17

    xor-long v15, v1, v3

    xor-long/2addr v7, v15

    xor-long v7, v7, p1

    move-wide v15, v11

    not-long v11, v1

    xor-long v17, v9, v13

    and-long v11, v11, v17

    xor-long/2addr v7, v11

    xor-long/2addr v9, v3

    xor-long/2addr v9, v13

    xor-long/2addr v1, v13

    and-long/2addr v1, v3

    xor-long/2addr v1, v9

    const/16 v3, 0x13

    invoke-static {v5, v6, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v5

    const/16 v9, 0x1c

    invoke-static {v5, v6, v9}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    const/16 v3, 0x27

    move-wide/from16 v4, v19

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v9

    xor-long/2addr v9, v4

    const/16 v3, 0x3d

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v9

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    const/4 v3, 0x1

    move-wide v4, v15

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v9

    xor-long/2addr v9, v4

    const/4 v3, 0x6

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v9

    not-long v3, v3

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    const/16 v3, 0xa

    invoke-static {v7, v8, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v7

    const/16 v5, 0x11

    invoke-static {v7, v8, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v1

    const/16 v5, 0x29

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private ascon_aeadinit()V
    .registers 7

    .line 0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_f

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :cond_f
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v0, v3, :cond_2f

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    :cond_2f
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private checkAAD()V
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    const/4 v1, 0x4

    if-eq v0, v1, :cond_57

    const/4 v1, 0x5

    if-eq v0, v1, :cond_34

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs to be initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be reused for encryption"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_51
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_57

    :cond_54
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_51

    :cond_57
    :goto_57
    return-void
.end method

.method private checkData()Z
    .registers 4

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_54

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs to be initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2a
    return v2

    :pswitch_2b
    return v1

    :pswitch_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be reused for encryption"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_47
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return v2

    :pswitch_4d
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_47
        :pswitch_4d
        :pswitch_47
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method

.method private finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .registers 13

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_12

    const/4 v3, 0x4

    if-eq v0, v3, :cond_12

    goto :goto_54

    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/16 v4, -0x80

    aput-byte v4, v0, v3

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    if-lt v3, v6, :cond_3e

    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v9

    xor-long/2addr v7, v9

    iput-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v9

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v6

    shl-int/2addr v0, v2

    rsub-int/lit8 v0, v0, 0x38

    shl-long v2, v4, v0

    and-long/2addr v2, v9

    xor-long/2addr v2, v7

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_4f

    :cond_3e
    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    shl-int/2addr v0, v2

    rsub-int/lit8 v0, v0, 0x38

    shl-long v2, v4, v0

    and-long/2addr v2, v8

    xor-long/2addr v2, v6

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :goto_4f
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    :goto_54
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .registers 11

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    goto :goto_57

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_28
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    :goto_33
    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    goto :goto_57

    :cond_37
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    shl-long v2, v5, v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    shl-long v2, v5, v4

    goto :goto_33

    :goto_57
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private processBufferAAD([BI)V
    .registers 7

    .line 0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1a

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_1a
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void
.end method

.method private processBufferDecrypt([BI[BI)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_2e

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_28

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x8

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_28
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void

    :cond_2e
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processBufferEncrypt([BI[BI)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_2e

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_28

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p4, p4, 0x8

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_28
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void

    :cond_2e
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processFinalDecrypt([BII[BI)V
    .registers 13

    .line 0
    const-wide/16 v0, -0x1

    const/16 v2, 0x8

    if-lt p3, v2, :cond_3a

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v5, v6, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    add-int/2addr p2, v2

    add-int/2addr p5, v2

    add-int/lit8 p3, p3, -0x8

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz p3, :cond_5b

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v2, v3, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long p3, p4, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_5b

    :cond_3a
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_5b

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v2, v3, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long p3, p4, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :cond_5b
    :goto_5b
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void
.end method

.method private processFinalEncrypt([BII[BI)V
    .registers 11

    .line 0
    const/16 v0, 0x8

    if-lt p3, v0, :cond_2a

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v1, v2, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/2addr p2, v0

    add-int/2addr p5, v0

    add-int/lit8 p3, p3, -0x8

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz p3, :cond_3d

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :goto_26
    invoke-static {p1, p2, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    goto :goto_3d

    :cond_2a
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_3d

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    goto :goto_26

    :cond_3d
    :goto_3d
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void
.end method

.method private reset(Z)V
    .registers 4

    .line 0
    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs to be initialized"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_35
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void

    :pswitch_3a
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :pswitch_3e
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ascon_aeadinit()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    if-eqz v0, :cond_49

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processAADBytes([BII)V

    :cond_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3e
        :pswitch_3a
        :pswitch_35
        :pswitch_35
        :pswitch_3a
        :pswitch_35
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "output buffer too short"

    if-eqz v0, :cond_43

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v6

    add-int v3, p2, v0

    array-length v4, p1

    if-gt v3, v4, :cond_3d

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v5, 0x0

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalEncrypt([BII[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    invoke-static {v3, v4, v2, v5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    invoke-static {v2, v3, v4, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p2, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-static {v1, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    goto :goto_83

    :cond_3d
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-lt v0, v3, :cond_aa

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int v3, p2, v0

    array-length v4, p1

    if-gt v3, v4, :cond_a4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v6, 0x0

    move-object v4, p0

    move v7, v0

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalDecrypt([BII[BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    xor-long/2addr p1, v1

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    or-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_84

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    :goto_83
    return v0

    :cond_84
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mac check in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a4
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_aa
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getAlgorithmVersion()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "v1.2"

    return-object p0
.end method

.method public getIVBytesSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    return p0
.end method

.method public getKeyBytesSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    return p0
.end method

.method public getMac()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    return-object p0
.end method

.method public getOutputSize(I)I
    .registers 5

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    const/4 v2, 0x5

    if-eq v1, v2, :cond_31

    const/4 v2, 0x6

    if-eq v1, v2, :cond_26

    const/4 v2, 0x7

    if-eq v1, v2, :cond_31

    const/16 v2, 0x8

    if-eq v1, v2, :cond_26

    :goto_22
    iget p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr p1, p0

    return p1

    :cond_26
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v1

    :cond_29
    iget p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_31
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v0

    goto :goto_22
.end method

.method public getUpdateOutputSize(I)I
    .registers 5

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    const/4 v2, 0x3

    if-eq v1, v2, :cond_26

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x6

    if-eq v1, v2, :cond_23

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x8

    if-eq v1, v2, :cond_23

    goto :goto_31

    :cond_23
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v1

    :cond_26
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_31

    :cond_2e
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v0

    :goto_31
    iget p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    rem-int p0, p1, p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/16 v1, 0x8

    if-eqz v0, :cond_38

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    mul-int/2addr v4, v1

    if-ne v0, v4, :cond_21

    goto :goto_4c

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid value for MAC size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_10b

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    :goto_4c
    if-eqz v2, :cond_103

    if-eqz v3, :cond_e0

    array-length v0, v3

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-ne v0, v4, :cond_e0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v2, v4, :cond_bd

    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v2, v4, v5, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const/4 p2, 0x0

    invoke-static {v3, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_90

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    :goto_8d
    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_a9

    :cond_90
    const/16 v1, 0x14

    if-ne v2, v1, :cond_b7

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/4 p2, 0x4

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    const/16 p2, 0xc

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    goto :goto_8d

    :goto_a9
    if-eqz p1, :cond_ae

    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_b0

    :cond_ae
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_b0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void

    :cond_b7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_bd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " key must be "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes long"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes of IV"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_103
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ascon Init parameters must include a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to Ascon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processAADByte(B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v1, p1, :cond_15

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_15
    return-void
.end method

.method public processAADBytes([BII)V
    .registers 8

    .line 0
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_40

    if-gtz p3, :cond_8

    return-void

    :cond_8
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_2c

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_20

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return-void

    :cond_20
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_2c
    :goto_2c
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v0, :cond_38

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_2c

    :cond_38
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return-void

    :cond_40
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processByte(B[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBytes([BII[BI)I

    move-result p0

    return p0
.end method

.method public processBytes([BII[BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 0
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_a3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lez v0, :cond_2f

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_20

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1a
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v1

    :cond_20
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v2, :cond_9b

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_30

    :cond_3f
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    if-ge p3, v0, :cond_4c

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1a

    :cond_4c
    move v2, v1

    :cond_4d
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt v3, v4, :cond_79

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v4, p5, v2

    invoke-direct {p0, v3, v1, p4, v4}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v5, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    if-ge p3, v0, :cond_4d

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget p5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v2

    :cond_79
    sub-int/2addr v4, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v3, p5, v2

    invoke-direct {p0, v0, v1, p4, v3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v2, v0

    move v0, v2

    :goto_8c
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    if-lt p3, v2, :cond_9b

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_8c

    :cond_9b
    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v0

    :cond_a3
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.AsconEngine.AnonymousClass1 (org.bouncycastle.crypto.engines.AsconEngine$1)
.class synthetic Lorg/bouncycastle/crypto/engines/AsconEngine$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AsconEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

.field static final synthetic $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->values()[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->values()[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    :try_start_69
    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon80pq:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128a:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_85} :catch_85

    :catch_85
    return-void
.end method

###### Class org.bouncycastle.crypto.engines.AsconEngine.AsconParameters (org.bouncycastle.crypto.engines.AsconEngine$AsconParameters)
.class public final enum Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AsconEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsconParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum ascon128:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum ascon128a:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum ascon80pq:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon80pq:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128a:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    sget-object v2, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    filled-new-array {v0, v1, v2}, [Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon80pq"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon80pq:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon128a"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128a:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon128"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$values()[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-object v0
.end method

###### Class org.bouncycastle.crypto.engines.AsconEngine.State (org.bouncycastle.crypto.engines.AsconEngine$State)
.class final enum Lorg/bouncycastle/crypto/engines/AsconEngine$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AsconEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/engines/AsconEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .registers 9

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v2, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v3, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v4, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v5, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v6, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v7, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v8, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    filled-new-array/range {v0 .. v8}, [Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncInit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncAad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncFinal"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecInit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecAad"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecFinal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->$values()[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/AsconEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-object v0
.end method
