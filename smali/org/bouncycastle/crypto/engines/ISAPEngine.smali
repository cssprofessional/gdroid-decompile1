###### Class org.bouncycastle.crypto.engines.ISAPEngine (org.bouncycastle.crypto.engines.ISAPEngine)
.class public Lorg/bouncycastle/crypto/engines/ISAPEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
    }
.end annotation


# instance fields
.field final CRYPTO_KEYBYTES:I

.field final CRYPTO_NPUBBYTES:I

.field private ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

.field final ISAP_STATE_SZ:I

.field private ISAP_rH:I

.field private ISAP_rH_SZ:I

.field private aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private algorithmName:Ljava/lang/String;

.field private c:[B

.field private forEncryption:Z

.field private initialised:Z

.field private k:[B

.field private mac:[B

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private npub:[B

.field private final outputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->CRYPTO_KEYBYTES:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->CRYPTO_NPUBBYTES:I

    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_STATE_SZ:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_57

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_43

    const/4 v0, 0x4

    if-eq p1, v0, :cond_37

    goto :goto_61

    :cond_37
    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-K-128 AEAD"

    :goto_40
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    goto :goto_61

    :cond_43
    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-A-128 AEAD"

    goto :goto_40

    :cond_4d
    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-K-128A AEAD"

    goto :goto_40

    :cond_57
    new-instance p1, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string p1, "ISAP-A-128A AEAD"

    goto :goto_40

    :goto_61
    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return p0
.end method

.method public static synthetic access$002(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return p1
.end method

.method public static synthetic access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return p0
.end method

.method public static synthetic access$102(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return p1
.end method

.method public static synthetic access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    return-object p0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-boolean v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-eqz v1, :cond_ca

    iget-boolean v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    const/4 v10, 0x0

    const-string v2, "output buffer is too short"

    const/16 v11, 0x10

    if-eqz v1, :cond_68

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v12, v3

    add-int v13, v9, v12

    add-int/lit8 v1, v13, 0x10

    array-length v4, v8

    if-gt v1, v4, :cond_62

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const/4 v4, 0x0

    array-length v7, v8

    move-object v2, v3

    move v3, v4

    move v4, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v8, v9, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    new-array v2, v11, [B

    iput-object v2, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    array-length v3, v15

    array-length v4, v1

    const/16 v20, 0x0

    move/from16 v16, v3

    move-object/from16 v17, v1

    move/from16 v18, v4

    move-object/from16 v19, v2

    invoke-interface/range {v14 .. v20}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_mac([BI[BI[BI)V

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    invoke-static {v0, v10, v8, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v11

    goto :goto_c3

    :cond_62
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iput-object v15, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    new-array v1, v11, [B

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    array-length v3, v15

    array-length v4, v1

    sub-int v7, v3, v4

    add-int v3, v7, v9

    array-length v4, v8

    if-gt v3, v4, :cond_c4

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    array-length v14, v13

    const/16 v18, 0x0

    move/from16 v16, v7

    move-object/from16 v17, v1

    invoke-interface/range {v12 .. v18}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_mac([BI[BI[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->reset()V

    :goto_98
    if-ge v10, v11, :cond_b1

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    aget-byte v1, v1, v10

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    add-int v3, v7, v10

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_a9

    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    const/4 v3, 0x0

    array-length v6, v8

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v7

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-interface/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    move v12, v7

    :goto_c3
    return v12

    :cond_c4
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getBlockSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return p0
.end method

.method public getIVBytesSize()I
    .registers 1

    .line 0
    const/16 p0, 0x10

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
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    return-object p0
.end method

.method public getOutputSize(I)I
    .registers 2

    .line 0
    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .registers 2

    .line 0
    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_74

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    if-eqz v1, :cond_6c

    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6c

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    if-ne v2, v3, :cond_5c

    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v2, v3, v4, p2, p1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    array-length p1, v1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    array-length p2, v0

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    array-length p2, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    array-length p2, v0

    invoke-static {v0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->reset()V

    return-void

    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ISAP AEAD key must be 128 bits long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ISAP AEAD init parameters must include a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ISAP AEAD requires exactly 12 bytes of IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ISAP AEAD init parameters must include an IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processAADByte(B)V
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .registers 6

    .line 0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_25

    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "input buffer too short"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz p0, :cond_18

    const-string p0, "encryption"

    goto :goto_1a

    :cond_18
    const-string p0, "decryption"

    :goto_1a
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
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

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->processBytes([BII[BI)I

    move-result p0

    return p0
.end method

.method public processBytes([BII[BI)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-eqz v0, :cond_60

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_58

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz p1, :cond_56

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget p2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    if-lt p1, p2, :cond_56

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget p2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    add-int p2, p5, p1

    array-length p3, p4

    if-gt p2, p3, :cond_4e

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const/4 v2, 0x0

    array-length v6, p4

    move-object v1, p2

    move v3, p1

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3, p4, p5, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    array-length p3, p2

    sub-int/2addr p3, p1

    invoke-virtual {p0, p2, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return p1

    :cond_4e
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer is too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    const/4 p0, 0x0

    return p0

    :cond_58
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need call init function before encryption/decryption"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 2

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Need call init function before encryption/decryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.AnonymousClass1 (org.bouncycastle.crypto.engines.ISAPEngine$1)
.class synthetic Lorg/bouncycastle/crypto/engines/ISAPEngine$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->values()[Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I

    :try_start_9
    sget-object v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_A_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I

    sget-object v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_K_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I

    sget-object v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_A_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I

    sget-object v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_K_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A (org.bouncycastle.crypto.engines.ISAPEngine$ISAPAEAD_A)
.class public abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ISAPAEAD_A"
.end annotation


# instance fields
.field protected ISAP_IV1_64:J

.field protected ISAP_IV2_64:J

.field protected ISAP_IV3_64:J

.field protected k64:[J

.field protected npub64:[J

.field protected t0:J

.field protected t1:J

.field protected t2:J

.field protected t3:J

.field protected t4:J

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

.field protected x0:J

.field protected x1:J

.field protected x2:J

.field protected x3:J

.field protected x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p0, 0x40

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$002(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$000(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    shr-int/lit8 p0, p0, 0x3

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$102(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    return-void
.end method

.method private ROTR(JJ)J
    .registers 9

    .line 0
    long-to-int p0, p3

    ushr-long v0, p1, p0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p0, v2

    shl-long p0, p1, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private getLongSize(I)I
    .registers 2

    .line 0
    ushr-int/lit8 p0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public ABSORB_MAC([BI)V
    .registers 12

    .line 0
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x3

    new-array v1, v0, [J

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    move v0, v2

    :goto_a
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v3

    if-lt p2, v3, :cond_2b

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v1, v0

    invoke-virtual {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v6

    xor-long/2addr v3, v6

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    sub-int/2addr p2, v0

    move v0, v5

    goto :goto_a

    :cond_2b
    :goto_2b
    if-ge v2, p2, :cond_43

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    rsub-int/lit8 v1, v2, 0x7

    shl-int/lit8 v1, v1, 0x3

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_43
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    rsub-int/lit8 p1, p2, 0x7

    shl-int/lit8 p1, p1, 0x3

    const-wide/16 v2, 0x80

    shl-long p1, v2, p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    return-void
.end method

.method public P12()V
    .registers 3

    .line 0
    const-wide/16 v0, 0xf0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P6()V

    return-void
.end method

.method public P6()V
    .registers 3

    .line 0
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    return-void
.end method

.method public abstract PX1()V
.end method

.method public abstract PX2()V
.end method

.method public ROUND(J)V
    .registers 22

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    iput-wide v5, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    iput-wide v11, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    xor-long v11, v3, v7

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long v15, v9, v13

    xor-long/2addr v11, v15

    iput-wide v11, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    xor-long v11, v1, v3

    xor-long/2addr v7, v11

    xor-long v7, v7, p1

    not-long v11, v1

    xor-long v15, v9, v13

    and-long/2addr v11, v15

    xor-long/2addr v7, v11

    iput-wide v7, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    xor-long v7, v3, v9

    xor-long/2addr v7, v13

    xor-long/2addr v1, v13

    and-long/2addr v1, v3

    xor-long/2addr v1, v7

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v1, 0x13

    invoke-direct {v0, v5, v6, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v1

    xor-long/2addr v1, v5

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t0:J

    const-wide/16 v5, 0x1c

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    const-wide/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t1:J

    const-wide/16 v5, 0x3d

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t2:J

    const-wide/16 v5, 0x6

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    not-long v1, v1

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    const-wide/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t3:J

    const-wide/16 v5, 0x11

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->t4:J

    const-wide/16 v5, 0x29

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    return-void
.end method

.method public U64BIG(J)J
    .registers 9

    .line 0
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x28

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROTR(JJ)J

    move-result-wide p0

    const-wide v2, 0xff000000ffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public init()V
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->getLongSize(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    aget-wide v1, v0, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v1

    aput-wide v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aput-wide v4, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->getLongSize(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    array-length v4, v2

    invoke-static {v0, v3, v2, v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    aget-wide v4, v0, v3

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aput-wide v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    aget-wide v2, v0, v1

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->reset()V

    return-void
.end method

.method public isap_enc([BII[BII)V
    .registers 15

    .line 0
    shr-int/lit8 p6, p3, 0x3

    new-array v0, p6, [J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p6}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    new-array v2, p6, [J

    move v3, v1

    :goto_b
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v4

    if-lt p3, v4, :cond_2b

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide v4

    aget-wide v6, v0, v3

    xor-long/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX1()V

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v4

    sub-int/2addr p3, v4

    goto :goto_b

    :cond_2b
    invoke-static {v2, v1, p6, p4, p5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object p6

    :goto_34
    if-lez p3, :cond_51

    shl-int/lit8 v0, v3, 0x3

    add-int v1, v0, p5

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    sub-int/2addr v2, p3

    aget-byte v2, p6, v2

    add-int/2addr v0, p2

    add-int/lit8 p3, p3, -0x1

    add-int/2addr v0, p3

    aget-byte v0, p1, v0

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p4, v1

    goto :goto_34

    :cond_51
    return-void
.end method

.method public isap_mac([BI[BI[BI)V
    .registers 13

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV1_64:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ABSORB_MAC([BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    const-wide/16 v2, 0x1

    xor-long/2addr p1, v2

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ABSORB_MAC([BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p1

    invoke-static {p1, p2, p5, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p1

    const/16 p3, 0x8

    invoke-static {p1, p2, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV2_64:J

    const/16 p4, 0x10

    invoke-virtual {p0, v4, v5, p5, p4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->isap_rk(J[BI)V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p1

    invoke-static {p1, p2, p5, p6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->U64BIG(J)J

    move-result-wide p0

    add-int/2addr p6, p3

    invoke-static {p0, p1, p5, p6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void
.end method

.method public isap_rk(J[BI)V
    .registers 12

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->k64:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x1:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x2:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    :goto_17
    shl-int/lit8 p1, p4, 0x3

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_3a

    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    ushr-int/lit8 v0, v1, 0x3

    aget-byte v0, p3, v0

    and-int/lit8 v3, v1, 0x7

    rsub-int/lit8 v3, v3, 0x7

    ushr-int/2addr v0, v3

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x7

    int-to-long v3, v0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    xor-long/2addr p1, v3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX2()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3a
    iget-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    sub-int/2addr p4, v2

    aget-byte p3, p3, p4

    int-to-long p3, p3

    const-wide/16 v0, 0x1

    and-long/2addr p3, v0

    const/16 v0, 0x3f

    shl-long/2addr p3, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x0:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    return-void
.end method

.method public reset()V
    .registers 5

    .line 0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV3_64:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->isap_rk(J[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->npub64:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x3:J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->x4:J

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->PX1()V

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A_128 (org.bouncycastle.crypto.engines.ISAPEngine$ISAPAEAD_A_128)
.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ISAPAEAD_A_128"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    const-wide v0, 0x18040010c0c0c0cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV1_64:J

    const-wide v0, 0x28040010c0c0c0cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV2_64:J

    const-wide v0, 0x38040010c0c0c0cL    # 8.14194196761063E-292

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV3_64:J

    return-void
.end method


# virtual methods
.method public PX1()V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    return-void
.end method

.method public PX2()V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P12()V

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A_128A (org.bouncycastle.crypto.engines.ISAPEngine$ISAPAEAD_A_128A)
.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ISAPAEAD_A_128A"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    const-wide v0, 0x18040010c01060cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV1_64:J

    const-wide v0, 0x28040010c01060cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV2_64:J

    const-wide v0, 0x38040010c01060cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ISAP_IV3_64:J

    return-void
.end method


# virtual methods
.method public PX1()V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->P6()V

    return-void
.end method

.method public PX2()V
    .registers 3

    .line 0
    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;->ROUND(J)V

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K (org.bouncycastle.crypto.engines.ISAPEngine$ISAPAEAD_K)
.class abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ISAPAEAD_K"
.end annotation


# instance fields
.field protected C:[S

.field protected E:[S

.field protected ISAP_IV1_16:[S

.field protected ISAP_IV2_16:[S

.field protected ISAP_IV3_16:[S

.field final ISAP_STATE_SZ_CRYPTO_NPUBBYTES:I

.field private final KeccakF400RoundConstants:[I

.field protected SX:[S

.field protected iv16:[S

.field protected k16:[S

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_STATE_SZ_CRYPTO_NPUBBYTES:I

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    const/16 v0, 0x19

    new-array v1, v0, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    const/16 p0, 0x90

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$002(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$000(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    shr-int/lit8 p0, p0, 0x3

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$102(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    return-void

    :array_32
    .array-data 4
        0x1
        0x8082
        0x808a
        0x8000
        0x808b
        0x1
        0x8081
        0x8009
        0x8a
        0x88
        0x8009
        0xa
        0x808b
        0x8b
        0x8089
        0x8003
        0x8002
        0x80
        0x800a
        0xa
    .end array-data
.end method

.method private ROL16(SI)S
    .registers 3

    .line 0
    const p0, 0xffff

    and-int/2addr p0, p1

    shl-int p1, p0, p2

    rsub-int/lit8 p2, p2, 0x10

    ushr-int/2addr p0, p2

    xor-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method private byteToShort([B[SI)V
    .registers 5

    .line 0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, p3, :cond_e

    shl-int/lit8 v0, p0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v0

    aput-short v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private byteToShortXor([B[SI)V
    .registers 6

    .line 0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, p3, :cond_12

    aget-short v0, p2, p0

    shl-int/lit8 v1, p0, 0x1

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method private shortToByte([S[BI)V
    .registers 6

    .line 0
    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge p0, v0, :cond_10

    aget-short v0, p1, p0

    shl-int/lit8 v1, p0, 0x1

    add-int/2addr v1, p3

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method


# virtual methods
.method public ABSORB_MAC([S[BI[S[S)V
    .registers 13

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    if-le p3, v2, :cond_27

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShortXor([B[SI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    goto :goto_2

    :cond_27
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    const/16 v3, 0x80

    if-ne p3, v2, :cond_49

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result p3

    shr-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShortXor([B[SI)V

    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    aget-short p2, p1, v0

    xor-int/2addr p2, v3

    int-to-short p2, p2

    aput-short p2, p1, v0

    :goto_45
    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    goto :goto_71

    :cond_49
    :goto_49
    if-ge v0, p3, :cond_62

    shr-int/lit8 v2, v0, 0x1

    aget-short v4, p1, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v6, v0, 0x1

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v1, v6

    xor-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_49

    :cond_62
    shr-int/lit8 p2, p3, 0x1

    aget-short v0, p1, p2

    and-int/lit8 p3, p3, 0x1

    shl-int/lit8 p3, p3, 0x3

    shl-int p3, v3, p3

    xor-int/2addr p3, v0

    int-to-short p3, p3

    aput-short p3, p1, p2

    goto :goto_45

    :goto_71
    return-void
.end method

.method public abstract PermuteRoundsBX([S[S[S)V
.end method

.method public abstract PermuteRoundsHX([S[S[S)V
.end method

.method public abstract PermuteRoundsKX([S[S[S)V
.end method

.method public init()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    array-length v2, v1

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShort([B[SI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    array-length v2, v1

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShort([B[SI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->reset()V

    return-void
.end method

.method public isap_enc([BII[BII)V
    .registers 10

    .line 0
    :goto_0
    iget-object p6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result p6

    const/4 v0, 0x0

    if-lt p3, p6, :cond_3c

    :goto_9
    iget-object p6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result p6

    if-ge v0, p6, :cond_2b

    add-int/lit8 p6, p5, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    shr-int/lit8 v2, v0, 0x1

    aget-short v1, v1, v2

    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x3

    ushr-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, p6

    move p2, v2

    goto :goto_9

    :cond_2b
    iget-object p6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result p6

    sub-int/2addr p3, p6

    iget-object p6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, p6, v0, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    goto :goto_0

    :cond_3c
    :goto_3c
    if-ge v0, p3, :cond_58

    add-int/lit8 p6, p5, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    shr-int/lit8 v2, v0, 0x1

    aget-short v1, v1, v2

    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x3

    ushr-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, p6

    move p2, v2

    goto :goto_3c

    :cond_58
    return-void
.end method

.method public isap_mac([BI[BI[BI)V
    .registers 17

    .line 0
    move-object v7, p0

    move-object v8, p5

    move/from16 v9, p6

    const/16 v0, 0x19

    new-array v0, v0, [S

    iput-object v0, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV1_16:[S

    iget-object v1, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v2, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    iget-object v1, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v4, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v5, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ABSORB_MAC([S[BI[S[S)V

    iget-object v1, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v0, 0x18

    aget-short v2, v1, v0

    xor-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    aput-short v2, v1, v0

    iget-object v4, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v5, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ABSORB_MAC([S[BI[S[S)V

    iget-object v0, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    invoke-direct {p0, v0, p5, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->shortToByte([S[BI)V

    iget-object v1, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV2_16:[S

    iget-object v4, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v5, 0x10

    iget-object v6, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    const/16 v3, 0x10

    move-object v0, p0

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->isap_rk([S[BI[SI[S)V

    iget-object v0, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v2, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    iget-object v0, v7, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    invoke-direct {p0, v0, p5, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->shortToByte([S[BI)V

    return-void
.end method

.method public isap_rk([S[BI[SI[S)V
    .registers 14

    .line 0
    const/16 v0, 0x19

    new-array v1, v0, [S

    new-array v0, v0, [S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1, v0, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    move p1, v3

    :goto_16
    shl-int/lit8 v2, p3, 0x3

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_35

    aget-short v2, v1, v3

    shr-int/lit8 v5, p1, 0x3

    aget-byte v5, p2, v5

    and-int/lit8 v6, p1, 0x7

    rsub-int/lit8 v6, v6, 0x7

    ushr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v2, v5

    int-to-short v2, v2

    aput-short v2, v1, v3

    invoke-virtual {p0, v1, v0, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsBX([S[S[S)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_35
    aget-short p1, v1, v3

    add-int/lit8 p3, p3, -0x1

    aget-byte p2, p2, p3

    and-int/lit8 p2, p2, 0x1

    shl-int/lit8 p2, p2, 0x7

    xor-int/2addr p1, p2

    int-to-short p1, p1

    aput-short p1, v1, v3

    invoke-virtual {p0, v1, v0, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    const/16 p0, 0x18

    if-ne p5, p0, :cond_4c

    const/16 v4, 0x11

    :cond_4c
    invoke-static {v1, v3, p4, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public prepareThetaX([S[S)V
    .registers 5

    .line 0
    const/4 p0, 0x0

    aget-short v0, p1, p0

    const/4 v1, 0x5

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xa

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xf

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x14

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, p0

    const/4 p0, 0x1

    aget-short v0, p1, p0

    const/4 v1, 0x6

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xb

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x15

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, p0

    const/4 p0, 0x2

    aget-short v0, p1, p0

    const/4 v1, 0x7

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x11

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, p0

    const/4 p0, 0x3

    aget-short v0, p1, p0

    const/16 v1, 0x8

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xd

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x12

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x17

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, p0

    const/4 p0, 0x4

    aget-short v0, p1, p0

    const/16 v1, 0x9

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xe

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x13

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    aget-short p1, p1, v1

    xor-int/2addr p1, v0

    int-to-short p1, p1

    aput-short p1, p2, p0

    return-void
.end method

.method public reset()V
    .registers 9

    .line 0
    const/16 v0, 0x19

    new-array v1, v0, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV3_16:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v6, 0x18

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    const/16 v4, 0x10

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->isap_rk([S[BI[SI[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v2, 0x11

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    return-void
.end method

.method public rounds12X([S[S[S)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->prepareThetaX([S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_8_18([S[S[S)V

    return-void
.end method

.method public rounds_12_18([S[S[S)V
    .registers 5

    .line 0
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    invoke-virtual {p0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIota([S[S[S)V

    return-void
.end method

.method public rounds_4_18([S[S[S)V
    .registers 5

    .line 0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_8_18([S[S[S)V

    return-void
.end method

.method public rounds_8_18([S[S[S)V
    .registers 5

    .line 0
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_12_18([S[S[S)V

    return-void
.end method

.method public thetaRhoPiChiIota([S[S[S)V
    .registers 30

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x4

    aget-short v2, p3, v1

    const/4 v3, 0x1

    aget-short v4, p3, v3

    invoke-direct {v0, v4, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    xor-int/2addr v2, v4

    int-to-short v2, v2

    const/4 v4, 0x0

    aget-short v5, p3, v4

    const/4 v6, 0x2

    aget-short v7, p3, v6

    invoke-direct {v0, v7, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aget-short v7, p3, v3

    const/4 v8, 0x3

    aget-short v9, p3, v8

    invoke-direct {v0, v9, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    xor-int/2addr v7, v9

    int-to-short v7, v7

    aget-short v9, p3, v6

    aget-short v10, p3, v1

    invoke-direct {v0, v10, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aget-short v10, p3, v8

    aget-short v11, p3, v4

    invoke-direct {v0, v11, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    aget-short v11, p1, v4

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p1, v4

    const/4 v12, 0x6

    aget-short v13, p1, v12

    xor-int/2addr v13, v5

    int-to-short v13, v13

    aput-short v13, p1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    aget-short v15, p1, v14

    xor-int/2addr v15, v7

    int-to-short v15, v15

    aput-short v15, p1, v14

    const/16 v12, 0xb

    invoke-direct {v0, v15, v12}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v15

    const/16 v16, 0x12

    aget-short v17, p1, v16

    xor-int v12, v17, v9

    int-to-short v12, v12

    aput-short v12, p1, v16

    const/4 v14, 0x5

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    const/16 v19, 0x18

    aget-short v20, p1, v19

    xor-int v14, v20, v10

    int-to-short v14, v14

    aput-short v14, p1, v19

    const/16 v1, 0xe

    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v14

    not-int v1, v13

    and-int/2addr v1, v15

    xor-int/2addr v1, v11

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    const/16 v23, 0x13

    aget v8, v8, v23

    xor-int/2addr v1, v8

    int-to-short v1, v1

    aput-short v1, p2, v4

    not-int v1, v15

    and-int/2addr v1, v12

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p2, v3

    not-int v1, v12

    and-int/2addr v1, v14

    xor-int/2addr v1, v15

    int-to-short v1, v1

    aput-short v1, p2, v6

    not-int v1, v14

    and-int/2addr v1, v11

    xor-int/2addr v1, v12

    int-to-short v1, v1

    const/4 v4, 0x3

    aput-short v1, p2, v4

    not-int v1, v11

    and-int/2addr v1, v13

    xor-int/2addr v1, v14

    int-to-short v1, v1

    const/4 v8, 0x4

    aput-short v1, p2, v8

    aget-short v1, p1, v4

    xor-int/2addr v1, v9

    int-to-short v1, v1

    aput-short v1, p1, v4

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    const/16 v4, 0x9

    aget-short v11, p1, v4

    xor-int/2addr v11, v10

    int-to-short v11, v11

    aput-short v11, p1, v4

    invoke-direct {v0, v11, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    const/16 v8, 0xa

    aget-short v12, p1, v8

    xor-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, p1, v8

    const/4 v13, 0x3

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    const/16 v13, 0x10

    aget-short v14, p1, v13

    xor-int/2addr v14, v5

    int-to-short v14, v14

    aput-short v14, p1, v13

    const/16 v15, 0xd

    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v14

    const/16 v22, 0x16

    aget-short v24, p1, v22

    xor-int v13, v24, v7

    int-to-short v13, v13

    aput-short v13, p1, v22

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    not-int v8, v11

    and-int/2addr v8, v12

    xor-int/2addr v8, v1

    int-to-short v8, v8

    const/16 v21, 0x5

    aput-short v8, p2, v21

    not-int v8, v12

    and-int/2addr v8, v14

    xor-int/2addr v8, v11

    int-to-short v8, v8

    const/16 v25, 0x6

    aput-short v8, p2, v25

    not-int v8, v14

    and-int/2addr v8, v13

    xor-int/2addr v8, v12

    int-to-short v8, v8

    const/4 v12, 0x7

    aput-short v8, p2, v12

    not-int v8, v13

    and-int/2addr v8, v1

    xor-int/2addr v8, v14

    int-to-short v8, v8

    const/16 v14, 0x8

    aput-short v8, p2, v14

    not-int v1, v1

    and-int/2addr v1, v11

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p2, v4

    aget-short v1, p1, v3

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, p1, v3

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    aget-short v3, p1, v12

    xor-int/2addr v3, v7

    int-to-short v3, v3

    aput-short v3, p1, v12

    const/4 v8, 0x6

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    aget-short v8, p1, v15

    xor-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, p1, v15

    invoke-direct {v0, v8, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    aget-short v11, p1, v23

    xor-int/2addr v11, v10

    int-to-short v11, v11

    aput-short v11, p1, v23

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    const/16 v13, 0x14

    aget-short v25, p1, v13

    xor-int v4, v25, v2

    int-to-short v4, v4

    aput-short v4, p1, v13

    invoke-direct {v0, v4, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    not-int v13, v3

    and-int/2addr v13, v8

    xor-int/2addr v13, v1

    int-to-short v13, v13

    const/16 v24, 0xa

    aput-short v13, p2, v24

    not-int v13, v8

    and-int/2addr v13, v11

    xor-int/2addr v13, v3

    int-to-short v13, v13

    const/16 v18, 0xb

    aput-short v13, p2, v18

    not-int v13, v11

    and-int/2addr v13, v4

    xor-int/2addr v8, v13

    int-to-short v8, v8

    const/16 v13, 0xc

    aput-short v8, p2, v13

    not-int v8, v4

    and-int/2addr v8, v1

    xor-int/2addr v8, v11

    int-to-short v8, v8

    aput-short v8, p2, v15

    not-int v1, v1

    and-int/2addr v1, v3

    xor-int/2addr v1, v4

    int-to-short v1, v1

    const/16 v3, 0xe

    aput-short v1, p2, v3

    const/4 v1, 0x4

    aget-short v3, p1, v1

    xor-int/2addr v3, v10

    int-to-short v3, v3

    aput-short v3, p1, v1

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    const/4 v8, 0x5

    aget-short v11, p1, v8

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p1, v8

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    aget-short v8, p1, v4

    xor-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p1, v4

    const/16 v4, 0xa

    invoke-direct {v0, v8, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    const/16 v8, 0x11

    aget-short v11, p1, v8

    xor-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, p1, v8

    const/16 v8, 0xf

    invoke-direct {v0, v11, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    const/16 v13, 0x17

    aget-short v15, p1, v13

    xor-int/2addr v15, v9

    int-to-short v15, v15

    aput-short v15, p1, v13

    invoke-direct {v0, v15, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    not-int v15, v1

    and-int/2addr v15, v4

    xor-int/2addr v15, v3

    int-to-short v15, v15

    aput-short v15, p2, v8

    not-int v15, v4

    and-int/2addr v15, v11

    xor-int/2addr v15, v1

    int-to-short v15, v15

    const/16 v17, 0x10

    aput-short v15, p2, v17

    not-int v15, v11

    and-int/2addr v15, v13

    xor-int/2addr v4, v15

    int-to-short v4, v4

    const/16 v15, 0x11

    aput-short v4, p2, v15

    not-int v4, v13

    and-int/2addr v4, v3

    xor-int/2addr v4, v11

    int-to-short v4, v4

    aput-short v4, p2, v16

    not-int v3, v3

    and-int/2addr v1, v3

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p2, v23

    aget-short v1, p1, v6

    xor-int/2addr v1, v7

    int-to-short v1, v1

    aput-short v1, p1, v6

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    aget-short v4, p1, v14

    xor-int/2addr v4, v9

    int-to-short v4, v4

    aput-short v4, p1, v14

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    aget-short v7, p1, v3

    xor-int/2addr v7, v10

    int-to-short v7, v7

    aput-short v7, p1, v3

    invoke-direct {v0, v7, v12}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    aget-short v7, p1, v8

    xor-int/2addr v2, v7

    int-to-short v2, v2

    aput-short v2, p1, v8

    const/16 v7, 0x9

    invoke-direct {v0, v2, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v2

    const/16 v7, 0x15

    aget-short v8, p1, v7

    xor-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, p1, v7

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v0

    not-int v5, v4

    and-int/2addr v5, v3

    xor-int/2addr v5, v1

    int-to-short v5, v5

    const/16 v6, 0x14

    aput-short v5, p2, v6

    not-int v5, v3

    and-int/2addr v5, v2

    xor-int/2addr v5, v4

    int-to-short v5, v5

    const/16 v6, 0x15

    aput-short v5, p2, v6

    not-int v5, v2

    and-int/2addr v5, v0

    xor-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, p2, v22

    not-int v3, v0

    and-int/2addr v3, v1

    xor-int/2addr v2, v3

    int-to-short v2, v2

    const/16 v3, 0x17

    aput-short v2, p2, v3

    not-int v1, v1

    and-int/2addr v1, v4

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, v19

    return-void
.end method

.method public thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V
    .registers 35

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x4

    aget-short v2, p4, v1

    const/4 v3, 0x1

    aget-short v4, p4, v3

    invoke-direct {v0, v4, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    xor-int/2addr v2, v4

    int-to-short v2, v2

    const/4 v4, 0x0

    aget-short v5, p4, v4

    const/4 v6, 0x2

    aget-short v7, p4, v6

    invoke-direct {v0, v7, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aget-short v7, p4, v3

    const/4 v8, 0x3

    aget-short v9, p4, v8

    invoke-direct {v0, v9, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    xor-int/2addr v7, v9

    int-to-short v7, v7

    aget-short v9, p4, v6

    aget-short v10, p4, v1

    invoke-direct {v0, v10, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aget-short v10, p4, v8

    aget-short v11, p4, v4

    invoke-direct {v0, v11, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    aget-short v11, p2, v4

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p2, v4

    const/4 v12, 0x6

    aget-short v13, p2, v12

    xor-int/2addr v13, v5

    int-to-short v13, v13

    aput-short v13, p2, v12

    const/16 v14, 0xc

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    aget-short v15, p2, v14

    xor-int/2addr v15, v7

    int-to-short v15, v15

    aput-short v15, p2, v14

    const/16 v12, 0xb

    invoke-direct {v0, v15, v12}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v15

    const/16 v17, 0x12

    aget-short v18, p2, v17

    xor-int v12, v18, v9

    int-to-short v12, v12

    aput-short v12, p2, v17

    const/4 v14, 0x5

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    const/16 v20, 0x18

    aget-short v21, p2, v20

    xor-int v14, v21, v10

    int-to-short v14, v14

    aput-short v14, p2, v20

    const/16 v1, 0xe

    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v14

    not-int v1, v13

    and-int/2addr v1, v15

    xor-int/2addr v1, v11

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    aget v8, v8, p1

    xor-int/2addr v1, v8

    int-to-short v1, v1

    aput-short v1, p3, v4

    aput-short v1, p4, v4

    not-int v1, v15

    and-int/2addr v1, v12

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p3, v3

    aput-short v1, p4, v3

    not-int v1, v12

    and-int/2addr v1, v14

    xor-int/2addr v1, v15

    int-to-short v1, v1

    aput-short v1, p3, v6

    aput-short v1, p4, v6

    not-int v1, v14

    and-int/2addr v1, v11

    xor-int/2addr v1, v12

    int-to-short v1, v1

    const/4 v8, 0x3

    aput-short v1, p3, v8

    aput-short v1, p4, v8

    not-int v1, v11

    and-int/2addr v1, v13

    xor-int/2addr v1, v14

    int-to-short v1, v1

    const/4 v11, 0x4

    aput-short v1, p3, v11

    aput-short v1, p4, v11

    aget-short v1, p2, v8

    xor-int/2addr v1, v9

    int-to-short v1, v1

    aput-short v1, p2, v8

    const/16 v8, 0xc

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    const/16 v8, 0x9

    aget-short v12, p2, v8

    xor-int/2addr v12, v10

    int-to-short v12, v12

    aput-short v12, p2, v8

    invoke-direct {v0, v12, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    const/16 v11, 0xa

    aget-short v13, p2, v11

    xor-int/2addr v13, v2

    int-to-short v13, v13

    aput-short v13, p2, v11

    const/4 v14, 0x3

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    const/16 v14, 0x10

    aget-short v15, p2, v14

    xor-int/2addr v15, v5

    int-to-short v15, v15

    aput-short v15, p2, v14

    const/16 v14, 0xd

    invoke-direct {v0, v15, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v15

    const/16 v24, 0x16

    aget-short v25, p2, v24

    xor-int v11, v25, v7

    int-to-short v11, v11

    aput-short v11, p2, v24

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    not-int v14, v12

    and-int/2addr v14, v13

    xor-int/2addr v14, v1

    int-to-short v14, v14

    const/16 v22, 0x5

    aput-short v14, p3, v22

    aget-short v27, p4, v4

    xor-int v14, v27, v14

    int-to-short v14, v14

    aput-short v14, p4, v4

    not-int v14, v13

    and-int/2addr v14, v15

    xor-int/2addr v14, v12

    int-to-short v14, v14

    const/16 v16, 0x6

    aput-short v14, p3, v16

    aget-short v27, p4, v3

    xor-int v14, v27, v14

    int-to-short v14, v14

    aput-short v14, p4, v3

    not-int v14, v15

    and-int/2addr v14, v11

    xor-int/2addr v13, v14

    int-to-short v13, v13

    const/4 v14, 0x7

    aput-short v13, p3, v14

    aget-short v27, p4, v6

    xor-int v13, v27, v13

    int-to-short v13, v13

    aput-short v13, p4, v6

    not-int v13, v11

    and-int/2addr v13, v1

    xor-int/2addr v13, v15

    int-to-short v13, v13

    const/16 v15, 0x8

    aput-short v13, p3, v15

    const/16 v23, 0x3

    aget-short v27, p4, v23

    xor-int v13, v27, v13

    int-to-short v13, v13

    aput-short v13, p4, v23

    not-int v1, v1

    and-int/2addr v1, v12

    xor-int/2addr v1, v11

    int-to-short v1, v1

    aput-short v1, p3, v8

    const/4 v11, 0x4

    aget-short v12, p4, v11

    xor-int/2addr v1, v12

    int-to-short v1, v1

    aput-short v1, p4, v11

    aget-short v1, p2, v3

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, p2, v3

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    aget-short v11, p2, v14

    xor-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, p2, v14

    const/4 v12, 0x6

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v11

    const/16 v12, 0xd

    aget-short v13, p2, v12

    xor-int/2addr v13, v9

    int-to-short v13, v13

    aput-short v13, p2, v12

    invoke-direct {v0, v13, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    const/16 v13, 0x13

    aget-short v16, p2, v13

    xor-int v8, v16, v10

    int-to-short v8, v8

    aput-short v8, p2, v13

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v16, 0x14

    aget-short v28, p2, v16

    xor-int v14, v28, v2

    int-to-short v14, v14

    aput-short v14, p2, v16

    invoke-direct {v0, v14, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v14

    not-int v13, v11

    and-int/2addr v13, v12

    xor-int/2addr v13, v1

    int-to-short v13, v13

    const/16 v26, 0xa

    aput-short v13, p3, v26

    aget-short v29, p4, v4

    xor-int v13, v29, v13

    int-to-short v13, v13

    aput-short v13, p4, v4

    not-int v13, v12

    and-int/2addr v13, v8

    xor-int/2addr v13, v11

    int-to-short v13, v13

    const/16 v19, 0xb

    aput-short v13, p3, v19

    aget-short v29, p4, v3

    xor-int v13, v29, v13

    int-to-short v13, v13

    aput-short v13, p4, v3

    not-int v13, v8

    and-int/2addr v13, v14

    xor-int/2addr v12, v13

    int-to-short v12, v12

    const/16 v13, 0xc

    aput-short v12, p3, v13

    aget-short v13, p4, v6

    xor-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, p4, v6

    not-int v12, v14

    and-int/2addr v12, v1

    xor-int/2addr v8, v12

    int-to-short v8, v8

    const/16 v12, 0xd

    aput-short v8, p3, v12

    const/4 v12, 0x3

    aget-short v13, p4, v12

    xor-int/2addr v8, v13

    int-to-short v8, v8

    aput-short v8, p4, v12

    not-int v1, v1

    and-int/2addr v1, v11

    xor-int/2addr v1, v14

    int-to-short v1, v1

    const/16 v8, 0xe

    aput-short v1, p3, v8

    const/4 v8, 0x4

    aget-short v11, p4, v8

    xor-int/2addr v1, v11

    int-to-short v1, v1

    aput-short v1, p4, v8

    aget-short v1, p2, v8

    xor-int/2addr v1, v10

    int-to-short v1, v1

    aput-short v1, p2, v8

    const/16 v11, 0xb

    invoke-direct {v0, v1, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    const/4 v12, 0x5

    aget-short v13, p2, v12

    xor-int/2addr v13, v2

    int-to-short v13, v13

    aput-short v13, p2, v12

    invoke-direct {v0, v13, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v12

    aget-short v8, p2, v11

    xor-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p2, v11

    const/16 v11, 0xa

    invoke-direct {v0, v8, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v11, 0x11

    aget-short v13, p2, v11

    xor-int/2addr v13, v7

    int-to-short v13, v13

    aput-short v13, p2, v11

    const/16 v11, 0xf

    invoke-direct {v0, v13, v11}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v13

    const/16 v14, 0x17

    aget-short v18, p2, v14

    xor-int v6, v18, v9

    int-to-short v6, v6

    aput-short v6, p2, v14

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    not-int v14, v12

    and-int/2addr v14, v8

    xor-int/2addr v14, v1

    int-to-short v14, v14

    aput-short v14, p3, v11

    aget-short v18, p4, v4

    xor-int v14, v18, v14

    int-to-short v14, v14

    aput-short v14, p4, v4

    not-int v14, v8

    and-int/2addr v14, v13

    xor-int/2addr v14, v12

    int-to-short v14, v14

    const/16 v18, 0x10

    aput-short v14, p3, v18

    aget-short v18, p4, v3

    xor-int v14, v18, v14

    int-to-short v14, v14

    aput-short v14, p4, v3

    not-int v14, v13

    and-int/2addr v14, v6

    xor-int/2addr v8, v14

    int-to-short v8, v8

    const/16 v14, 0x11

    aput-short v8, p3, v14

    const/4 v14, 0x2

    aget-short v18, p4, v14

    xor-int v8, v18, v8

    int-to-short v8, v8

    aput-short v8, p4, v14

    not-int v8, v6

    and-int/2addr v8, v1

    xor-int/2addr v8, v13

    int-to-short v8, v8

    aput-short v8, p3, v17

    const/4 v13, 0x3

    aget-short v14, p4, v13

    xor-int/2addr v8, v14

    int-to-short v8, v8

    aput-short v8, p4, v13

    not-int v1, v1

    and-int/2addr v1, v12

    xor-int/2addr v1, v6

    int-to-short v1, v1

    const/16 v6, 0x13

    aput-short v1, p3, v6

    const/4 v6, 0x4

    aget-short v8, p4, v6

    xor-int/2addr v1, v8

    int-to-short v1, v1

    aput-short v1, p4, v6

    const/4 v1, 0x2

    aget-short v6, p2, v1

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p2, v1

    const/16 v1, 0xe

    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    aget-short v7, p2, v15

    xor-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, p2, v15

    const/4 v8, 0x7

    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    aget-short v9, p2, v1

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, p2, v1

    invoke-direct {v0, v9, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    aget-short v8, p2, v11

    xor-int/2addr v2, v8

    int-to-short v2, v2

    aput-short v2, p2, v11

    const/16 v8, 0x9

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v2

    const/16 v8, 0x15

    aget-short v9, p2, v8

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p2, v8

    const/4 v8, 0x2

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v0

    not-int v5, v7

    and-int/2addr v5, v1

    xor-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, p3, v16

    aget-short v8, p4, v4

    xor-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, p4, v4

    not-int v4, v1

    and-int/2addr v4, v2

    xor-int/2addr v4, v7

    int-to-short v4, v4

    const/16 v5, 0x15

    aput-short v4, p3, v5

    aget-short v5, p4, v3

    xor-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p4, v3

    not-int v3, v2

    and-int/2addr v3, v0

    xor-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p3, v24

    const/4 v3, 0x2

    aget-short v4, p4, v3

    xor-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, p4, v3

    not-int v1, v0

    and-int/2addr v1, v6

    xor-int/2addr v1, v2

    int-to-short v1, v1

    const/16 v2, 0x17

    aput-short v1, p3, v2

    const/4 v2, 0x3

    aget-short v3, p4, v2

    xor-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p4, v2

    not-int v1, v6

    and-int/2addr v1, v7

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p3, v20

    const/4 v1, 0x4

    aget-short v2, p4, v1

    xor-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p4, v1

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K_128 (org.bouncycastle.crypto.engines.ISAPEngine$ISAPAEAD_K_128)
.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ISAPAEAD_K_128"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    const/4 p1, 0x4

    new-array v0, p1, [S

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV1_16:[S

    new-array v0, p1, [S

    fill-array-data v0, :array_24

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV2_16:[S

    new-array p1, p1, [S

    fill-array-data p1, :array_2c

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV3_16:[S

    return-void

    :array_1c
    .array-data 2
        -0x7fffs
        0x190s
        0xc14s
        0xc0cs
    .end array-data

    :array_24
    .array-data 2
        -0x7ffes
        0x190s
        0xc14s
        0xc0cs
    .end array-data

    :array_2c
    .array-data 2
        -0x7ffds
        0x190s
        0xc14s
        0xc0cs
    .end array-data
.end method


# virtual methods
.method public PermuteRoundsBX([S[S[S)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds12X([S[S[S)V

    return-void
.end method

.method public PermuteRoundsHX([S[S[S)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->prepareThetaX([S[S)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_4_18([S[S[S)V

    return-void
.end method

.method public PermuteRoundsKX([S[S[S)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds12X([S[S[S)V

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K_128A (org.bouncycastle.crypto.engines.ISAPEngine$ISAPAEAD_K_128A)
.class Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;
.super Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ISAPAEAD_K_128A"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    const/4 p1, 0x4

    new-array v0, p1, [S

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV1_16:[S

    new-array v0, p1, [S

    fill-array-data v0, :array_24

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV2_16:[S

    new-array p1, p1, [S

    fill-array-data p1, :array_2c

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV3_16:[S

    return-void

    :array_1c
    .array-data 2
        -0x7fffs
        0x190s
        0x110s
        0x808s
    .end array-data

    :array_24
    .array-data 2
        -0x7ffes
        0x190s
        0x110s
        0x808s
    .end array-data

    :array_2c
    .array-data 2
        -0x7ffds
        0x190s
        0x110s
        0x808s
    .end array-data
.end method


# virtual methods
.method public PermuteRoundsBX([S[S[S)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->prepareThetaX([S[S)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    array-length p0, p2

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public PermuteRoundsHX([S[S[S)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->prepareThetaX([S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_4_18([S[S[S)V

    return-void
.end method

.method public PermuteRoundsKX([S[S[S)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->prepareThetaX([S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_12_18([S[S[S)V

    return-void
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD (org.bouncycastle.crypto.engines.ISAPEngine$ISAP_AEAD)
.class interface abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISAP_AEAD"
.end annotation


# virtual methods
.method public abstract init()V
.end method

.method public abstract isap_enc([BII[BII)V
.end method

.method public abstract isap_mac([BI[BI[BI)V
.end method

.method public abstract reset()V
.end method

###### Class org.bouncycastle.crypto.engines.ISAPEngine.IsapType (org.bouncycastle.crypto.engines.ISAPEngine$IsapType)
.class public final enum Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

.field public static final enum ISAP_A_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

.field public static final enum ISAP_A_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

.field public static final enum ISAP_K_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

.field public static final enum ISAP_K_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
    .registers 4

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_A_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_K_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    sget-object v2, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_A_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    sget-object v3, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_K_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    const-string v1, "ISAP_A_128A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_A_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    const-string v1, "ISAP_K_128A"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_K_128A:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    const-string v1, "ISAP_A_128"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_A_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    const-string v1, "ISAP_K_128"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ISAP_K_128:Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->$values()[Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->$VALUES:[Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->$VALUES:[Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;

    return-object v0
.end method
