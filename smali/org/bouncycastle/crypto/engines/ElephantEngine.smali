###### Class org.bouncycastle.crypto.engines.ElephantEngine (org.bouncycastle.crypto.engines.ElephantEngine)
.class public Lorg/bouncycastle/crypto/engines/ElephantEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
    }
.end annotation


# instance fields
.field private final BLOCK_SIZE:I

.field private final CRYPTO_ABYTES:B

.field private final CRYPTO_KEYBYTES:B

.field private final CRYPTO_NPUBBYTES:B

.field private final KeccakRhoOffsets:[I

.field private final KeccakRoundConstants:[B

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private adOff:I

.field private adlen:I

.field private final algorithmName:Ljava/lang/String;

.field private final buffer:[B

.field private current_mask:[B

.field private expanded_key:[B

.field private forEncryption:Z

.field private initialised:Z

.field private inputMessage:[B

.field private inputOff:I

.field private lfsrIV:B

.field private m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field private nBits:I

.field private final nRounds:I

.field private nSBox:I

.field private nb_its:I

.field private next_mask:[B

.field private npub:[B

.field private final outputMessage:[B

.field private final parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field private previous_mask:[B

.field private final previous_outputMessage:[B

.field private final sBoxLayer:[B

.field private tag:[B

.field private final tag_buffer:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;)V
    .registers 16

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_KEYBYTES:B

    const/16 v1, 0xc

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_NPUBBYTES:B

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/16 v6, 0x12

    const/16 v7, 0x14

    const/16 v8, 0x19

    const/16 v9, 0x16

    const/16 v10, 0x45

    const/16 v11, 0x75

    const/16 v12, 0x100

    new-array v12, v12, [B

    fill-array-data v12, :array_ac

    iput-object v12, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    new-array v12, v6, [B

    fill-array-data v12, :array_130

    iput-object v12, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    new-array v12, v8, [I

    fill-array-data v12, :array_13e

    iput-object v12, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    sget-object v12, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    if-eq v12, v3, :cond_73

    if-eq v12, v2, :cond_60

    if-ne v12, v5, :cond_58

    iput v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    iput v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 200 AEAD"

    :goto_55
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    goto :goto_86

    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameter settings for Elephant"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    iput v9, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v0, 0xb0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    iput v9, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x5a

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    iput-byte v10, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 176 AEAD"

    goto :goto_55

    :cond_73
    iput v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    iput v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x50

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    iput-byte v11, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 160 AEAD"

    goto :goto_55

    :goto_86
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void

    :array_ac
    .array-data 1
        -0x12t
        -0x13t
        -0x15t
        -0x20t
        -0x1et
        -0x1ft
        -0x1ct
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0x1bt
        -0x17t
        -0x14t
        -0x1dt
        -0x1at
        -0x22t
        -0x23t
        -0x25t
        -0x30t
        -0x2et
        -0x2ft
        -0x2ct
        -0x21t
        -0x29t
        -0x26t
        -0x28t
        -0x2bt
        -0x27t
        -0x24t
        -0x2dt
        -0x2at
        -0x42t
        -0x43t
        -0x45t
        -0x50t
        -0x4et
        -0x4ft
        -0x4ct
        -0x41t
        -0x49t
        -0x46t
        -0x48t
        -0x4bt
        -0x47t
        -0x44t
        -0x4dt
        -0x4at
        0xet
        0xdt
        0xbt
        0x0t
        0x2t
        0x1t
        0x4t
        0xft
        0x7t
        0xat
        0x8t
        0x5t
        0x9t
        0xct
        0x3t
        0x6t
        0x2et
        0x2dt
        0x2bt
        0x20t
        0x22t
        0x21t
        0x24t
        0x2ft
        0x27t
        0x2at
        0x28t
        0x25t
        0x29t
        0x2ct
        0x23t
        0x26t
        0x1et
        0x1dt
        0x1bt
        0x10t
        0x12t
        0x11t
        0x14t
        0x1ft
        0x17t
        0x1at
        0x18t
        0x15t
        0x19t
        0x1ct
        0x13t
        0x16t
        0x4et
        0x4dt
        0x4bt
        0x40t
        0x42t
        0x41t
        0x44t
        0x4ft
        0x47t
        0x4at
        0x48t
        0x45t
        0x49t
        0x4ct
        0x43t
        0x46t
        -0x2t
        -0x3t
        -0x5t
        -0x10t
        -0xet
        -0xft
        -0xct
        -0x1t
        -0x9t
        -0x6t
        -0x8t
        -0xbt
        -0x7t
        -0x4t
        -0xdt
        -0xat
        0x7et
        0x7dt
        0x7bt
        0x70t
        0x72t
        0x71t
        0x74t
        0x7ft
        0x77t
        0x7at
        0x78t
        0x75t
        0x79t
        0x7ct
        0x73t
        0x76t
        -0x52t
        -0x53t
        -0x55t
        -0x60t
        -0x5et
        -0x5ft
        -0x5ct
        -0x51t
        -0x59t
        -0x56t
        -0x58t
        -0x5bt
        -0x57t
        -0x54t
        -0x5dt
        -0x5at
        -0x72t
        -0x73t
        -0x75t
        -0x80t
        -0x7et
        -0x7ft
        -0x7ct
        -0x71t
        -0x79t
        -0x76t
        -0x78t
        -0x7bt
        -0x77t
        -0x74t
        -0x7dt
        -0x7at
        0x5et
        0x5dt
        0x5bt
        0x50t
        0x52t
        0x51t
        0x54t
        0x5ft
        0x57t
        0x5at
        0x58t
        0x55t
        0x59t
        0x5ct
        0x53t
        0x56t
        -0x62t
        -0x63t
        -0x65t
        -0x70t
        -0x6et
        -0x6ft
        -0x6ct
        -0x61t
        -0x69t
        -0x66t
        -0x68t
        -0x6bt
        -0x67t
        -0x64t
        -0x6dt
        -0x6at
        -0x32t
        -0x33t
        -0x35t
        -0x40t
        -0x3et
        -0x3ft
        -0x3ct
        -0x31t
        -0x39t
        -0x36t
        -0x38t
        -0x3bt
        -0x37t
        -0x34t
        -0x3dt
        -0x3at
        0x3et
        0x3dt
        0x3bt
        0x30t
        0x32t
        0x31t
        0x34t
        0x3ft
        0x37t
        0x3at
        0x38t
        0x35t
        0x39t
        0x3ct
        0x33t
        0x36t
        0x6et
        0x6dt
        0x6bt
        0x60t
        0x62t
        0x61t
        0x64t
        0x6ft
        0x67t
        0x6at
        0x68t
        0x65t
        0x69t
        0x6ct
        0x63t
        0x66t
    .end array-data

    :array_130
    .array-data 1
        0x1t
        -0x7et
        -0x76t
        0x0t
        -0x75t
        0x1t
        -0x7ft
        0x9t
        -0x76t
        -0x78t
        0x9t
        0xat
        -0x75t
        -0x75t
        -0x77t
        0x3t
        0x2t
        -0x80t
    .end array-data

    nop

    :array_13e
    .array-data 4
        0x0
        0x1
        0x6
        0x4
        0x3
        0x4
        0x4
        0x6
        0x7
        0x4
        0x3
        0x2
        0x3
        0x1
        0x7
        0x1
        0x5
        0x7
        0x5
        0x0
        0x2
        0x2
        0x5
        0x0
        0x6
    .end array-data
.end method

.method private KeccakP200Round([BI)V
    .registers 12

    .line 0
    const/16 v0, 0x19

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1e

    move v4, v1

    :goto_a
    if-ge v4, v3, :cond_1b

    aget-byte v5, v0, v2

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v2, v3, :cond_39

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v6, v5, 0x5

    aget-byte v6, v0, v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v6

    add-int/lit8 v2, v2, 0x4

    rem-int/2addr v2, v3

    aget-byte v2, v0, v2

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v2, v5

    goto :goto_1f

    :cond_39
    move v2, v1

    :goto_3a
    if-ge v2, v3, :cond_53

    move v4, v1

    :goto_3d
    if-ge v4, v3, :cond_50

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v6, p1, v5

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v0, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_53
    move v2, v1

    :goto_54
    if-ge v2, v3, :cond_77

    move v4, v1

    :goto_57
    if-ge v4, v3, :cond_74

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v8

    aget v7, v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_77
    move v2, v1

    :goto_78
    if-ge v2, v3, :cond_95

    move v4, v1

    :goto_7b
    if-ge v4, v3, :cond_92

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v5, v6

    rem-int/2addr v5, v3

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, v0, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_95
    move v2, v1

    :goto_96
    if-ge v2, v3, :cond_cd

    move v4, v1

    :goto_99
    if-ge v4, v3, :cond_bc

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v6, 0x5

    invoke-direct {p0, v7, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v7

    aget-byte v7, p1, v7

    not-int v7, v7

    add-int/lit8 v8, v4, 0x2

    rem-int/2addr v8, v3

    invoke-direct {p0, v8, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v8

    aget-byte v8, p1, v8

    and-int/2addr v7, v8

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move v4, v6

    goto :goto_99

    :cond_bc
    move v4, v1

    :goto_bd
    if-ge v4, v3, :cond_ca

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v6, v0, v4

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_bd

    :cond_ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    :cond_cd
    aget-byte v0, p1, v1

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    aget-byte p0, p0, p2

    xor-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    return-void
.end method

.method private ROL8(BI)B
    .registers 3

    .line 0
    if-eqz p2, :cond_a

    and-int/lit16 p0, p1, 0xff

    shl-int p1, p0, p2

    rsub-int/lit8 p2, p2, 0x8

    ushr-int/2addr p0, p2

    xor-int/2addr p1, p0

    :cond_a
    int-to-byte p0, p1

    return p0
.end method

.method private checkAad()V
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_47

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be reused for encryption"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private get_c_block([B[BIII)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p5, p4, :cond_d

    invoke-static {p1, v2, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, p1, v2

    return-void

    :cond_d
    sub-int/2addr p4, p5

    if-gt v0, p4, :cond_14

    invoke-static {p2, p3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    :cond_14
    if-lez p4, :cond_19

    invoke-static {p2, p3, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    iget p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, p4, p0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, p1, p4

    :goto_20
    return-void
.end method

.method private index(II)I
    .registers 3

    .line 0
    mul-int/lit8 p2, p2, 0x5

    add-int/2addr p1, p2

    return p1
.end method

.method private lfsr_step([B[B)V
    .registers 10

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2f

    if-eq v0, v3, :cond_17

    goto :goto_6a

    :cond_17
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v3, p2, v2

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v3

    aget-byte v5, p2, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v5

    xor-int/2addr v3, v5

    aget-byte v1, p2, v1

    shl-int/2addr v1, v4

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_6a

    :cond_2f
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v1, p2, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v1, v3

    const/16 v3, 0x13

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x7

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_6a

    :cond_4c
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v5, p2, v2

    and-int/lit16 v6, v5, 0xff

    shl-int/2addr v6, v3

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x5

    or-int/2addr v5, v6

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v5

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :goto_6a
    iget p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr p0, v4

    invoke-static {p2, v4, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private permutation([B)V
    .registers 15

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_20

    if-eq v0, v1, :cond_20

    if-eq v0, v2, :cond_16

    goto/16 :goto_b5

    :cond_16
    :goto_16
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v3, v0, :cond_b5

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakP200Round([BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    new-array v5, v5, [B

    move v6, v3

    :goto_27
    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v6, v7, :cond_b5

    aget-byte v7, p1, v3

    xor-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, p1, v3

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    sub-int/2addr v7, v4

    aget-byte v8, p1, v7

    and-int/lit8 v9, v0, 0x1

    shl-int/lit8 v9, v9, 0x7

    and-int/lit8 v10, v0, 0x2

    shl-int/lit8 v10, v10, 0x5

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x4

    shl-int/2addr v10, v2

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x8

    shl-int/2addr v10, v4

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x10

    ushr-int/2addr v10, v4

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x20

    ushr-int/lit8 v11, v10, 0x3

    or-int/2addr v9, v11

    and-int/lit8 v11, v0, 0x40

    ushr-int/lit8 v12, v11, 0x5

    or-int/2addr v9, v12

    and-int/lit16 v12, v0, 0x80

    ushr-int/lit8 v12, v12, 0x7

    or-int/2addr v9, v12

    int-to-byte v9, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    shl-int/2addr v0, v4

    ushr-int/lit8 v7, v11, 0x6

    ushr-int/lit8 v8, v10, 0x5

    xor-int/2addr v7, v8

    or-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    move v7, v3

    :goto_6a
    iget v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v7, v8, :cond_7b

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    aput-byte v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    :cond_7b
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([BB)V

    move v7, v3

    :goto_7f
    iget v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v7, v8, :cond_ae

    move v8, v3

    :goto_84
    const/16 v9, 0x8

    if-ge v8, v9, :cond_ab

    shl-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v8

    iget v10, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    add-int/lit8 v11, v10, -0x1

    if-eq v9, v11, :cond_96

    mul-int/2addr v9, v10

    shr-int/2addr v9, v1

    add-int/lit8 v10, v10, -0x1

    rem-int/2addr v9, v10

    :cond_96
    ushr-int/lit8 v10, v9, 0x3

    aget-byte v11, v5, v10

    aget-byte v12, p1, v7

    and-int/lit16 v12, v12, 0xff

    ushr-int/2addr v12, v8

    and-int/2addr v12, v4

    and-int/lit8 v9, v9, 0x7

    shl-int v9, v12, v9

    xor-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_84

    :cond_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    :cond_ae
    invoke-static {v5, v3, p1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_27

    :cond_b5
    :goto_b5
    return-void
.end method

.method private processAADBytes([B)V
    .registers 10

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->checkAad()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :cond_1b
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0xc

    if-eq v1, v3, :cond_9f

    const/4 v5, 0x2

    if-eq v1, v5, :cond_8c

    packed-switch v1, :pswitch_data_f2

    goto :goto_71

    :pswitch_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_63
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    if-ne v1, v4, :cond_71

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v2, p0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v3, p1, v2

    return-void

    :cond_71
    :goto_71
    move v4, v2

    goto :goto_b0

    :pswitch_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be reused for encryption"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    :goto_9c
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_b0

    :cond_9f
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_9c

    :goto_b0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v1, v4

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    sub-int/2addr v5, v6

    if-gt v1, v5, :cond_c5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    invoke-static {v0, v6, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    goto :goto_f0

    :cond_c5
    if-lez v5, :cond_d1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    invoke-static {v7, v6, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :cond_d1
    add-int/2addr v5, v4

    add-int/2addr v4, v1

    invoke-static {p1, v5, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v3, p1, v5

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_ed

    const/16 v0, 0x9

    if-eq p1, v0, :cond_e8

    goto :goto_f0

    :cond_e8
    sget-object p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    :goto_ea
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_f0

    :cond_ed
    sget-object p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_ea

    :goto_f0
    return-void

    nop

    :pswitch_data_f2
    .packed-switch 0x5
        :pswitch_73
        :pswitch_63
        :pswitch_4a
        :pswitch_31
        :pswitch_63
    .end packed-switch
.end method

.method private processBytes([B[BIIIIII)I
    .registers 25

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p5

    iget v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 v9, 0x0

    move/from16 v11, p4

    move v10, v0

    move v0, v9

    :goto_d
    if-ge v10, v11, :cond_10d

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    invoke-direct {v6, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsr_step([B[B)V

    if-ge v10, v8, :cond_7f

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/16 v3, 0xc

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v1, v3, v2, v9}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    add-int/lit8 v1, v8, -0x1

    if-ne v10, v1, :cond_5b

    iget v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v1, v10

    sub-int v1, p7, v1

    goto :goto_5d

    :cond_5b
    iget v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    :goto_5d
    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v2, v7, v9, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-static {v2, v9, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v2, :cond_77

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    invoke-static {v2, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7c

    :cond_77
    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    invoke-static {v7, v9, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7c
    add-int/2addr v0, v1

    :goto_7d
    move v14, v0

    goto :goto_84

    :cond_7f
    move-object/from16 v12, p2

    move/from16 v13, p3

    goto :goto_7d

    :goto_84
    move/from16 v15, p6

    if-lez v10, :cond_ca

    if-gt v10, v15, :cond_ca

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    add-int/lit8 v5, v10, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->get_c_block([B[BIII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_ca
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p8

    if-ge v10, v1, :cond_f5

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_f5
    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iput-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v0, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v14

    goto/16 :goto_d

    :cond_10d
    return v0
.end method

.method private reset(Z)V
    .registers 3

    .line 0
    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    return-void
.end method

.method private rotl(B)B
    .registers 2

    .line 0
    and-int/lit16 p0, p1, 0xff

    shl-int/lit8 p1, p0, 0x1

    ushr-int/lit8 p0, p0, 0x7

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private xor_block([B[BII)V
    .registers 7

    .line 0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, p4, :cond_10

    aget-byte v0, p1, p0

    add-int v1, p0, p3

    aget-byte v1, p2, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    if-eqz v0, :cond_cf

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v1, :cond_12

    add-int v2, v0, p2

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v2, v3

    array-length v3, p1

    if-gt v2, v3, :cond_1d

    :cond_12
    if-nez v1, :cond_25

    add-int v1, v0, p2

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v1, v2

    array-length v2, p1

    if-gt v1, v2, :cond_1d

    goto :goto_25

    :cond_1d
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3c

    if-eq v2, v3, :cond_3c

    goto :goto_41

    :cond_3c
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    :goto_41
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_4e

    move v2, v9

    goto :goto_50

    :cond_4e
    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_50
    sub-int v10, v0, v2

    array-length v0, v1

    div-int v1, v10, v4

    add-int/lit8 v6, v1, 0x1

    rem-int v2, v10, v4

    if-eqz v2, :cond_5d

    move v5, v6

    goto :goto_5e

    :cond_5d
    move v5, v1

    :goto_5e
    add-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v4

    add-int/lit8 v8, v0, 0x1

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v7, v10

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    move-result v0

    add-int/2addr v0, p2

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    array-length v2, v1

    invoke-static {v1, v9, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v10, v0

    goto :goto_cb

    :cond_a7
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    move v0, v9

    :goto_af
    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    if-ge v0, v1, :cond_cb

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_c3

    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :cond_c3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cb
    :goto_cb
    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return v10

    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs call init function before doFinal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getBlockSize()I
    .registers 1

    .line 0
    iget-byte p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    return p0
.end method

.method public getIVBytesSize()I
    .registers 1

    .line 0
    const/16 p0, 0xc

    return p0
.end method

.method public getKeyBytesSize()I
    .registers 1

    .line 0
    const/16 p0, 0x10

    return p0
.end method

.method public getMac()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    return-object p0
.end method

.method public getOutputSize(I)I
    .registers 5

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_25

    const/4 v1, 0x5

    if-eq v0, v1, :cond_25

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3f

    iget-byte p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_25
    return v2

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-byte p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr p1, p0

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .registers 5

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    const/4 v1, 0x5

    if-eq v0, v1, :cond_28

    const/4 v1, 0x6

    if-eq v0, v1, :cond_42

    const/4 v1, 0x7

    if-eq v0, v1, :cond_42

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr p1, v0

    iget-byte p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_28
    return v2

    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, p1

    iget-byte p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v0, p0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b6

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    if-eqz v1, :cond_9d

    array-length v1, v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9d

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v0, v1, v2, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    if-eqz p1, :cond_56

    sget-object p2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_58

    :cond_56
    sget-object p2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    :goto_58
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iget p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-eqz p1, :cond_60

    move p1, v3

    goto :goto_62

    :cond_60
    iget-byte p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_62
    add-int/2addr p2, p1

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void

    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " key must be 128 bits long"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " init parameters must include a key"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " requires exactly 12 bytes of IV"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " init parameters must include an IV"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .registers 6

    .line 0
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_b

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_b
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

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([BII[BI)I

    move-result p0

    return p0
.end method

.method public processBytes([BII[BI)I
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 0
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    add-int v0, v11, v12

    array-length v1, v10

    if-gt v0, v1, :cond_9e

    iget-object v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v2, v1, v12

    iget-boolean v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    const/4 v13, 0x0

    if-eqz v3, :cond_1e

    move v3, v13

    goto :goto_20

    :cond_1e
    iget-byte v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_20
    sub-int/2addr v2, v3

    iget v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-lt v2, v3, :cond_93

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    const/4 v3, 0x2

    if-eq v1, v3, :cond_36

    goto :goto_3b

    :cond_36
    iget-object v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {v9, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    :goto_3b
    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, v12

    iget-boolean v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v3, :cond_44

    move v3, v13

    goto :goto_46

    :cond_44
    iget-byte v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_46
    sub-int v7, v1, v3

    array-length v0, v0

    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v14, v7, v1

    rem-int v3, v7, v1

    if-eqz v3, :cond_53

    move v3, v14

    goto :goto_55

    :cond_53
    add-int/lit8 v3, v14, -0x1

    :goto_55
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v2, v13, v1, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    sub-int v15, v0, v2

    sub-int/2addr v0, v2

    invoke-static {v10, v11, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move v4, v14

    move v6, v14

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    sub-int v0, v12, v15

    iput v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v1, v11, v15

    iget-object v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-static {v10, v1, v2, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    add-int/2addr v0, v14

    iput v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    iget v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v14, v0

    return v14

    :cond_93
    iget-object v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-static {v10, v11, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, v12

    iput v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    return v13

    :cond_9e
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ElephantEngine.AnonymousClass1 (org.bouncycastle.crypto.engines.ElephantEngine$1)
.class synthetic Lorg/bouncycastle/crypto/engines/ElephantEngine$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ElephantEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

.field static final synthetic $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    :try_start_75
    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant160:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant176:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant200:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_91

    :catch_91
    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ElephantEngine.ElephantParameters (org.bouncycastle.crypto.engines.ElephantEngine$ElephantParameters)
.class public final enum Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ElephantEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElephantParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field public static final enum elephant160:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field public static final enum elephant176:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field public static final enum elephant200:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant160:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant176:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant200:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    filled-new-array {v0, v1, v2}, [Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    const-string v1, "elephant160"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant160:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    const-string v1, "elephant176"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant176:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    const-string v1, "elephant200"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->elephant200:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->$values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->$VALUES:[Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->$VALUES:[Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    return-object v0
.end method

###### Class org.bouncycastle.crypto.engines.ElephantEngine.State (org.bouncycastle.crypto.engines.ElephantEngine$State)
.class final enum Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ElephantEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/engines/ElephantEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum DecFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum EncFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field public static final enum Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
    .registers 9

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v4, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v5, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v6, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v7, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    sget-object v8, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    filled-new-array/range {v0 .. v8}, [Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "EncInit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "EncAad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "EncData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "EncFinal"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "DecInit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "DecAad"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "DecData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    const-string v1, "DecFinal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->$values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    return-object v0
.end method
