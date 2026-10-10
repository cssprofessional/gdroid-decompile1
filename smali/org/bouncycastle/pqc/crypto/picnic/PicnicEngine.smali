###### Class org.bouncycastle.pqc.crypto.picnic.PicnicEngine (org.bouncycastle.pqc.crypto.picnic.PicnicEngine)
.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field protected static final LOWMC_MAX_AND_GATES:I = 0x478

.field protected static final LOWMC_MAX_KEY_BITS:I = 0x100

.field private static final LOWMC_MAX_STATE_SIZE:I = 0x40

.field protected static final LOWMC_MAX_WORDS:I = 0x10

.field private static final MAX_AUX_BYTES:I = 0xb0

.field private static final MAX_DIGEST_SIZE:I = 0x40

.field private static final PICNIC_MAX_LOWMC_BLOCK_SIZE:I = 0x20

.field private static final TRANSFORM_FS:I = 0x0

.field private static final TRANSFORM_INVALID:I = 0xff

.field private static final TRANSFORM_UR:I = 0x1

.field private static final WORD_SIZE_BITS:I = 0x20

.field protected static final saltSizeBytes:I = 0x20


# instance fields
.field private final CRYPTO_BYTES:I

.field private final CRYPTO_PUBLICKEYBYTES:I

.field private final CRYPTO_SECRETKEYBYTES:I

.field protected final UnruhGWithInputBytes:I

.field protected final UnruhGWithoutInputBytes:I

.field protected final andSizeBytes:I

.field protected final digest:Lorg/bouncycastle/crypto/Xof;

.field protected final digestSizeBytes:I

.field protected final lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

.field protected final numMPCParties:I

.field protected final numMPCRounds:I

.field protected final numOpenedRounds:I

.field protected final numRounds:I

.field protected final numSboxes:I

.field private final parameters:I

.field protected final pqSecurityLevel:I

.field protected final seedSizeBytes:I

.field private signatureLength:I

.field protected final stateSizeBits:I

.field protected final stateSizeBytes:I

.field protected final stateSizeWords:I

.field private final transform:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V
    .registers 19

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    const/16 v2, 0x149

    const/16 v3, 0x55

    const/16 v4, 0x1b6

    const/16 v8, 0x81

    const/16 v9, 0x30

    const/16 v10, 0xc0

    const/16 v11, 0x60

    const/16 v12, 0xff

    const/16 v13, 0x20

    const/4 v14, 0x4

    const/16 v15, 0x80

    const/4 v5, 0x3

    const/16 v6, 0x40

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_1ca

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown parameter set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_40
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_4c
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    :goto_4e
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    goto/16 :goto_f5

    :pswitch_52
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_5e
    iput v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_4e

    :pswitch_61
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0xdb

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v2, 0x2b

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_71
    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_4e

    :pswitch_74
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0x259

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v2, 0x44

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    const/16 v2, 0x10

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_f5

    :pswitch_8b
    const/16 v2, 0x10

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v3, 0x1a3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v3, 0x34

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_f5

    :pswitch_a2
    const/16 v2, 0x10

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v3, 0xfa

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v3, 0x24

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v2, 0x2b

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_f5

    :pswitch_bb
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v2, 0x100

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v3, 0xa

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v2, 0x26

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    goto/16 :goto_4c

    :pswitch_cf
    const/16 v3, 0xa

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v2, 0x1e

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    goto/16 :goto_5e

    :pswitch_e1
    const/16 v3, 0xa

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0xdb

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v2, 0x14

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    goto/16 :goto_71

    :goto_f5
    const/16 v2, 0x49

    const/16 v3, 0x41

    const/16 v4, 0x61

    const/16 v6, 0x31

    packed-switch v1, :pswitch_data_1e6

    const/4 v2, -0x1

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    :goto_105
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_173

    :pswitch_109
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x1ed4e

    goto :goto_105

    :pswitch_111
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x1160b

    goto :goto_105

    :pswitch_119
    const/16 v2, 0x34

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x23

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v2, 0x7d3d

    goto :goto_105

    :pswitch_124
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0xee64

    goto :goto_105

    :pswitch_12c
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x88d4

    goto :goto_105

    :pswitch_134
    const/16 v2, 0x34

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x23

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v2, 0x3914

    goto :goto_105

    :pswitch_13f
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x33276

    goto :goto_105

    :pswitch_147
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x2070c

    goto :goto_105

    :pswitch_14f
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x1dc01

    goto :goto_105

    :pswitch_157
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x12bf0

    goto :goto_105

    :pswitch_15f
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x21

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0xd2cd

    goto :goto_105

    :pswitch_169
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x21

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x84f4

    goto :goto_105

    :goto_173
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/2addr v2, v5

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v4

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    add-int/lit8 v6, v5, 0x1f

    div-int/2addr v6, v13

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    packed-switch v1, :pswitch_data_202

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    goto :goto_1a4

    :pswitch_19e
    const/4 v1, 0x1

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    goto :goto_1a4

    :pswitch_1a2
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    :goto_1a4
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1b0

    add-int/2addr v4, v2

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1b4

    :cond_1b0
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_1b4
    if-eq v5, v15, :cond_1c3

    if-ne v5, v8, :cond_1b9

    goto :goto_1c3

    :cond_1b9
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    :goto_1c0
    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    goto :goto_1c9

    :cond_1c3
    :goto_1c3
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    goto :goto_1c0

    :goto_1c9
    return-void

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_e1
        :pswitch_cf
        :pswitch_cf
        :pswitch_bb
        :pswitch_bb
        :pswitch_a2
        :pswitch_8b
        :pswitch_74
        :pswitch_61
        :pswitch_52
        :pswitch_40
    .end packed-switch

    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_169
        :pswitch_15f
        :pswitch_157
        :pswitch_14f
        :pswitch_147
        :pswitch_13f
        :pswitch_134
        :pswitch_12c
        :pswitch_124
        :pswitch_119
        :pswitch_111
        :pswitch_109
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1a2
        :pswitch_19e
        :pswitch_1a2
        :pswitch_19e
        :pswitch_1a2
        :pswitch_19e
        :pswitch_1a2
        :pswitch_1a2
        :pswitch_1a2
        :pswitch_1a2
        :pswitch_1a2
        :pswitch_1a2
    .end packed-switch
.end method

.method private Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p4, v0, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p2, v0, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p4, v0, p0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v1, p2, p3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v1, 0x0

    invoke-interface {p2, p5, v1, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p5, v1, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_34

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p3, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {p3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p3, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, p1

    :cond_34
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p3, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {p1, p3, v1, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p3

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p0, p5, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V
    .registers 17

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v4, :cond_2d

    move v4, v2

    :goto_14
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2a

    aget-object v5, p3, v3

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {v5, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v5, v1, v2, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method private H3([I[I[[[I[[[B[B[B[B[[[B)V
    .registers 17

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v4, :cond_2b

    move v4, v2

    :goto_14
    const/4 v5, 0x3

    if-ge v4, v5, :cond_28

    aget-object v5, p3, v3

    aget-object v5, v5, v4

    invoke-static {v5, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v5, v1, v2, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method private HCP([B[I[I[[B[B[B[I[I[B)V
    .registers 15

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p4, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v0, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/16 p4, 0x20

    new-array v1, p4, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, p5, v0, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p5, p6, v0, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, p7, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p8, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length p5, p9

    invoke-interface {p4, p9, v0, p5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p4, p1, v0, p5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    if-eqz p2, :cond_3c

    if-eqz p3, :cond_3c

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    :cond_3c
    return-void
.end method

.method private LowMCEnc([I[I[I)V
    .registers 9

    .line 0
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-eq p1, p2, :cond_c

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {p1, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result p1

    invoke-virtual {p0, v0, p3, v2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    const/4 p1, 0x1

    :goto_21
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt p1, v2, :cond_63

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v0, p3, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->substitution([I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, p2, p2, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, p2, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    invoke-virtual {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_63
    return-void
.end method

.method public static appendUnique([III)I
    .registers 5

    .line 0
    if-nez p2, :cond_7

    aput p1, p0, p2

    :goto_4
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_12

    aget v1, p0, v0

    if-ne v1, p1, :cond_f

    return p2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    aput p1, p0, p2

    goto :goto_4
.end method

.method private arePaddingBitsZero([BI)Z
    .registers 4

    .line 0
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result p0

    :goto_4
    mul-int/lit8 v0, p0, 0x8

    if-ge p2, v0, :cond_13

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private arePaddingBitsZero([II)Z
    .registers 4

    .line 0
    and-int/lit8 p0, p2, 0x1f

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    :cond_6
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result p0

    ushr-int/lit8 p2, p2, 0x5

    aget p1, p1, p2

    not-int p0, p0

    and-int/2addr p0, p1

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .registers 8

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v0

    iget-object v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v1, v1, p0

    iget v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    xor-int/2addr v0, v1

    and-int/2addr p1, p2

    xor-int/2addr p1, v0

    xor-int/2addr p1, p3

    iget-object p2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object p0, p2, p0

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 p2, p2, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {p0, p2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    return-void
.end method

.method public static bitsToChunks(I[BI[I)I
    .registers 9

    .line 0
    mul-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    if-le p0, p2, :cond_6

    return v0

    :cond_6
    div-int/2addr p2, p0

    move v1, v0

    :goto_8
    if-ge v1, p2, :cond_22

    aput v0, p3, v1

    move v2, v0

    :goto_d
    if-ge v2, p0, :cond_1f

    aget v3, p3, v1

    mul-int v4, v1, p0

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v4

    shl-int/2addr v4, v2

    add-int/2addr v3, v4

    aput v3, p3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return p2
.end method

.method private commit([B[B[B[BII)V
    .registers 10

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    if-eqz p3, :cond_11

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {p2, p3, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_11
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 p3, 0x20

    invoke-interface {p2, p4, v2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p3

    const/4 p4, 0x2

    invoke-interface {p2, p3, v2, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p3

    invoke-interface {p2, p3, v2, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p1, v2, p0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private commit_h([B[[B)V
    .registers 8

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p2, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v0, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p1, v0, p0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move p2, v2

    :goto_9
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge p2, v0, :cond_1f

    iget v0, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v3, v3, p2

    invoke-interface {v1, v3, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1f
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p1, v2, p0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private computeSaltAndRootSeed([B[I[I[I[B)V
    .registers 9

    .line 0
    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p5

    const/4 v2, 0x0

    invoke-interface {p2, p5, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    int-to-short p2, p2

    invoke-static {p2, v0, v2}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 p3, 0x2

    invoke-interface {p2, v0, v2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p1

    invoke-interface {p0, p1, v2, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private computeSeeds([I[I[I[B)[B
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    add-int/2addr v0, v1

    new-array v0, v0, [B

    new-array v2, v1, [B

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p4

    const/4 v4, 0x0

    invoke-interface {p1, p4, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p1, p2, v4, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/2addr p3, p0

    mul-int/2addr p2, p3

    add-int/2addr p2, v1

    invoke-interface {p1, v0, v4, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method private contains([III)Z
    .registers 6

    .line 0
    const/4 p0, 0x0

    move v0, p0

    :goto_2
    if-ge v0, p2, :cond_d

    aget v1, p1, v0

    if-ne v1, p3, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    return p0
.end method

.method private countNonZeroChallenges([BI)I
    .registers 10

    .line 0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    add-int/lit8 v3, v0, 0x10

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const v5, 0x55555555

    if-gt v3, v4, :cond_21

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    ushr-int/lit8 v4, v0, 0x1

    and-int v6, v0, v4

    or-int/2addr v1, v6

    xor-int/2addr v0, v4

    and-int/2addr v0, v5

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    goto :goto_3

    :cond_21
    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_42

    add-int/lit8 p0, v4, 0x7

    div-int/lit8 p0, p0, 0x8

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result p0

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result p1

    and-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x1

    and-int p2, p0, p1

    or-int/2addr v1, p2

    xor-int/2addr p0, p1

    and-int/2addr p0, v5

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_42
    and-int p0, v1, v5

    if-nez p0, :cond_47

    goto :goto_48

    :cond_47
    const/4 v2, -0x1

    :goto_48
    return v2
.end method

.method private createRandomTape([BI[BII[BI)Z
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v1, 0x0

    if-ge p7, v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p1, p2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p6, v1, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p6, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 p2, 0x20

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p0, p6, v1, p7}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 p0, 0x1

    return p0
.end method

.method private createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V
    .registers 13

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v3, v4, :cond_3a

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    add-int v5, v3, p3

    aget-object v5, p2, v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v4, v5, v2, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, 0x20

    invoke-interface {v4, p4, v2, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v5, v5, v3

    invoke-interface {v4, v5, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_3a
    return-void
.end method

.method private deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I
    .registers 16

    .line 0
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    const/4 v4, -0x1

    if-ge p3, v2, :cond_10

    return v4

    :cond_10
    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->countNonZeroChallenges([BI)I

    move-result v5

    if-gez v5, :cond_17

    return v4

    :cond_17
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/2addr v6, v5

    add-int/lit8 v7, v2, 0x20

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v9, v3

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/2addr v7, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_38

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    sub-int/2addr v8, v5

    mul-int/2addr v6, v8

    add-int/2addr v7, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    mul-int/2addr v6, v5

    add-int/2addr v7, v6

    :cond_38
    if-eq p3, v7, :cond_59

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sigBytesLen = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected bytesRequired = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v4

    :cond_59
    const/4 p3, 0x0

    invoke-static {p2, p4, v1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v2, 0x20

    invoke-static {p2, p4, p1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    move p1, p3

    :goto_67
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge p1, v2, :cond_e7

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v2

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr p4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v5, v9, :cond_8e

    if-nez v2, :cond_84

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_86

    :cond_84
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_86
    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {p2, p4, v6, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v5

    :cond_8e
    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr p4, v5

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr p4, v5

    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    invoke-static {p2, p4, v6, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr p4, v5

    if-eq v2, v9, :cond_b4

    if-ne v2, v3, :cond_e4

    :cond_b4
    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v5, v5, 0x4

    invoke-static {p2, p4, v2, p3, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v5, 0x81

    if-ne v2, v5, :cond_d6

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    sub-int/2addr v6, v9

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v7, p4

    sub-int/2addr v7, v9

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v5, v6

    :cond_d6
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr p4, v5

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    invoke-direct {p0, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([II)Z

    move-result v2

    if-nez v2, :cond_e4

    return v4

    :cond_e4
    add-int/lit8 p1, p1, 0x1

    goto :goto_67

    :cond_e7
    return p3
.end method

.method private deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/lit8 v1, v0, 0x20

    array-length v2, p2

    const/4 v3, -0x1

    if-ge v2, v1, :cond_9

    return v3

    :cond_9
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    const/4 v4, 0x0

    invoke-static {p2, p4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr p4, v0

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v2, 0x20

    invoke-static {p2, p4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v0, p0, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-virtual {v0, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v0

    iput v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v0, v2

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v2

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v5, p0, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    invoke-virtual {v5, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTreeSize([II)I

    move-result v0

    iput v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v1, v0

    const/4 v0, 0x1

    new-array v2, v0, [I

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v5, p0, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    invoke-virtual {v5, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v2

    move v5, v4

    :goto_63
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v5, v6, :cond_92

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v6

    if-eqz v6, :cond_8f

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v7, v8, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v7

    aget v6, v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v7, v0

    if-eq v6, v7, :cond_85

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v1, v6

    :cond_85
    add-int/2addr v1, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v1, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v1, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v1, v6

    :cond_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    :cond_92
    if-eq p3, v1, :cond_b3

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sigLen = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected bytesRequired = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_af
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v3

    :cond_b3
    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    new-array v1, p3, [B

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    invoke-static {p2, p4, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr p4, p3

    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    new-array v1, p3, [B

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    invoke-static {p2, p4, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr p4, p3

    move p3, v4

    :goto_cc
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge p3, v1, :cond_173

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v1, v5, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v1

    if-eqz v1, :cond_16f

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v5, v1, p3

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, p3

    iput v2, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    new-array v5, v2, [B

    iput-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    invoke-static {p2, p4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, p3

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr p4, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v5, v6, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v5

    aget v1, v1, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v5, v0

    if-eq v1, v5, :cond_12e

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p2, p4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr p4, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v5, v5, 0x3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/2addr v5, v6

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v1

    if-nez v1, :cond_12e

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p1, "failed while deserializing aux bits"

    goto :goto_af

    :cond_12e
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p2, p4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr p4, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, p3

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-static {p2, p4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v1, v1, 0x3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/2addr v1, v5

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, p3

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-direct {p0, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v1

    if-nez v1, :cond_161

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p1, "failed while deserializing msgs bits"

    goto/16 :goto_af

    :cond_161
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p2, p4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr p4, v1

    :cond_16f
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_cc

    :cond_173
    return v4
.end method

.method private expandChallengeHash([B[I[I)V
    .registers 14

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v2, v3

    new-array v2, v2, [I

    const/16 v3, 0x40

    new-array v3, v3, [B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v5

    :goto_22
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    const/4 v6, 0x1

    if-ge p1, v4, :cond_56

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result v4

    move v7, v5

    :goto_2e
    if-ge v7, v4, :cond_42

    aget v8, v2, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v8, v9, :cond_3a

    invoke-static {p2, v8, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->appendUnique([III)I

    move-result p1

    :cond_3a
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne p1, v8, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_42
    :goto_42
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v4, v6}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v4, v3, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v4, v3, v5, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_22

    :cond_56
    move p1, v5

    :goto_57
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ge p1, p2, :cond_8a

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v1, v3, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result p2

    move v0, v5

    :goto_62
    if-ge v0, p2, :cond_76

    aget v4, v2, v0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v4, v7, :cond_6e

    aput v4, p3, p1

    add-int/lit8 p1, p1, 0x1

    :cond_6e
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne p1, v4, :cond_73

    goto :goto_76

    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_76
    :goto_76
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p2, v6}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, v3, v5, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, v3, v5, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_57

    :cond_8a
    return-void
.end method

.method public static extend(I)I
    .registers 1

    .line 0
    add-int/lit8 p0, p0, -0x1

    not-int p0, p0

    return p0
.end method

.method private getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .registers 11

    .line 0
    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_e
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v2, v5, :cond_29

    add-int/2addr v3, v0

    move v5, v1

    :goto_14
    if-ge v5, v0, :cond_26

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    invoke-static {p1, v4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    move v3, v7

    goto :goto_14

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    return-void
.end method

.method private getMissingLeavesList([I)[I
    .registers 6

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v3, :cond_1c

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, p1, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-nez v3, :cond_19

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return-object v0
.end method

.method private implH3([I[I[[[B[B[B[B[[[B)V
    .registers 21

    .line 0
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v3, v3, [B

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    aput-byte v7, v1, v4

    move v4, v7

    :goto_17
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v9, 0x3

    if-ge v4, v8, :cond_30

    move v8, v7

    :goto_1d
    if-ge v8, v9, :cond_2d

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v11, p3, v4

    aget-object v11, v11, v8

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v10, v11, v7, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_30
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v4, v6, :cond_52

    move v4, v7

    :goto_35
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v4, v8, :cond_52

    move v8, v7

    :goto_3a
    if-ge v8, v9, :cond_4f

    if-ne v8, v5, :cond_41

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_43

    :cond_41
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_43
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v12, p7, v4

    aget-object v12, v12, v8

    invoke-interface {v11, v12, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_52
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v5

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v4, v5, v7, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v5

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v4, v5, v7, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, 0x20

    move-object/from16 v8, p5

    invoke-interface {v4, v8, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v5, v2

    invoke-interface {v4, v2, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v7, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move v2, v6

    move v4, v7

    :goto_80
    if-eqz v2, :cond_c0

    move v5, v7

    :goto_83
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    if-ge v5, v8, :cond_a9

    aget-byte v8, v3, v5

    move v10, v7

    :goto_8a
    const/16 v11, 0x8

    if-ge v10, v11, :cond_a3

    rsub-int/lit8 v11, v10, 0x6

    ushr-int v11, v8, v11

    and-int/2addr v11, v9

    if-ge v11, v9, :cond_a0

    invoke-direct {p0, v1, v4, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->setChallenge([BII)V

    add-int/lit8 v4, v4, 0x1

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ne v4, v11, :cond_a0

    move v2, v7

    goto :goto_a3

    :cond_a0
    add-int/lit8 v10, v10, 0x2

    goto :goto_8a

    :cond_a3
    :goto_a3
    if-nez v2, :cond_a6

    goto :goto_a9

    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    :cond_a9
    :goto_a9
    if-nez v2, :cond_ac

    goto :goto_c0

    :cond_ac
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v5, v6}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v5, v3, v7, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v5, v3, v7, v8}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_80

    :cond_c0
    :goto_c0
    return-void
.end method

.method public static indexOf([III)I
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    aget v1, p0, v0

    if-ne v1, p2, :cond_8

    return v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static is_picnic3(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x7

    if-eq p0, v0, :cond_e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_e

    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method private mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I
    .registers 8

    .line 0
    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result p5

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v0

    and-int/2addr p4, v0

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v0

    and-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int/2addr p3, p5

    iget p4, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    if-ltz p4, :cond_24

    iget-object p5, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object p4, p5, p4

    iget p5, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {p4, p5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result p4

    iget p5, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    invoke-static {p3, p5, p4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit(III)I

    move-result p3

    :cond_24
    invoke-direct {p0, p3, p6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result p0

    and-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method private mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .registers 20

    .line 0
    move-object/from16 v0, p4

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v5

    aget v7, p1, v2

    aget v8, p2, v4

    and-int v9, v7, v8

    aget v10, p1, v4

    aget v11, p2, v2

    and-int v12, v10, v11

    xor-int/2addr v9, v12

    and-int/2addr v7, v11

    xor-int/2addr v7, v9

    xor-int/2addr v7, v1

    xor-int/2addr v7, v3

    aput v7, p3, v2

    aget v9, p2, v6

    and-int v11, v10, v9

    aget v12, p1, v6

    and-int v13, v12, v8

    xor-int/2addr v11, v13

    and-int/2addr v8, v10

    xor-int/2addr v8, v11

    xor-int/2addr v3, v8

    xor-int/2addr v3, v5

    aput v3, p3, v4

    aget v3, p2, v2

    and-int/2addr v3, v12

    aget v8, p1, v2

    and-int/2addr v8, v9

    xor-int/2addr v3, v8

    and-int v8, v12, v9

    xor-int/2addr v3, v8

    xor-int/2addr v3, v5

    xor-int/2addr v1, v3

    aput v1, p3, v6

    aget-object v1, p5, v2

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    int-to-byte v3, v7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    aget-object v1, p5, v4

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v3, p3, v4

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    aget-object v1, p5, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v3, p3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/2addr v1, v4

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method private mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V
    .registers 21

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    array-length v0, v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v0, v11}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v5, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, v8, v11}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    move v12, v11

    :goto_20
    const/4 v13, 0x3

    if-ge v12, v13, :cond_3e

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v12, v0

    aget-object v0, v9, v12

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_20

    :cond_3e
    invoke-direct {v8, v10, v10, v13}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    const/4 v0, 0x1

    move v12, v0

    :goto_43
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v12, v0, :cond_b1

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, v8, v12}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    move v14, v11

    :goto_4e
    if-ge v14, v13, :cond_6b

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v14, v0

    aget-object v0, v9, v14

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4e

    :cond_6b
    move-object/from16 v14, p1

    invoke-direct {v8, v10, v14, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v0, v8, v15}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x3

    mul-int/lit8 v4, v1, 0x3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, v8, v15}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    invoke-direct {v8, v10, v10, v13}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    :cond_b1
    move v0, v11

    :goto_b2
    if-ge v0, v13, :cond_c3

    add-int/lit8 v1, v0, 0x3

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v1, v2

    aget-object v3, v9, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {v10, v1, v3, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    :cond_c3
    return-void
.end method

.method private mpc_matrix_mul([II[II[III)V
    .registers 18

    .line 0
    const/4 v0, 0x0

    move/from16 v1, p7

    :goto_3
    if-ge v0, v1, :cond_1b

    move-object v9, p0

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v3, v0, v2

    add-int v4, p2, v3

    mul-int/2addr v2, v0

    add-int v6, p4, v2

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

.method private mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .registers 24

    .line 0
    move-object/from16 v0, p1

    const/4 v1, 0x0

    move-object/from16 v9, p0

    :goto_5
    iget v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_58

    add-int/lit8 v10, v1, 0x2

    invoke-static {v0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v11

    aget v12, p2, v10

    add-int/lit8 v13, v1, 0x1

    invoke-static {v0, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v14

    aget v15, p2, v13

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v16

    aget v17, p2, v1

    move-object/from16 v2, p0

    move v3, v11

    move v4, v14

    move v5, v12

    move v6, v15

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v18

    move v3, v14

    move/from16 v4, v16

    move v5, v15

    move/from16 v6, v17

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v15

    move/from16 v3, v16

    move v4, v11

    move/from16 v5, v17

    move v6, v12

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v2

    xor-int v3, v11, v15

    xor-int v4, v11, v14

    xor-int/2addr v2, v4

    xor-int v4, v4, v16

    xor-int v4, v4, v18

    invoke-static {v0, v10, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    invoke-static {v0, v13, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_5

    :cond_58
    return-void
.end method

.method private mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .registers 21

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x3

    new-array v9, v8, [I

    new-array v10, v8, [I

    new-array v11, v8, [I

    new-array v12, v8, [I

    new-array v13, v8, [I

    new-array v14, v8, [I

    const/4 v15, 0x0

    move v5, v15

    :goto_13
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/2addr v0, v8

    if-ge v5, v0, :cond_8d

    move v0, v15

    :goto_19
    if-ge v0, v8, :cond_3c

    add-int/lit8 v1, v0, 0x3

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v5

    add-int/lit8 v2, v1, 0x2

    invoke-static {v7, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    aput v2, v9, v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v7, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    aput v2, v10, v0

    invoke-static {v7, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3c
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v16, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object v1, v11

    move-object v2, v9

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move v0, v15

    :goto_57
    if-ge v0, v8, :cond_8a

    add-int/lit8 v1, v0, 0x3

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int v1, v1, v16

    add-int/lit8 v2, v1, 0x2

    aget v3, v9, v0

    aget v4, v13, v0

    xor-int/2addr v3, v4

    invoke-static {v7, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v2, v1, 0x1

    aget v3, v9, v0

    aget v4, v10, v0

    xor-int/2addr v3, v4

    aget v4, v14, v0

    xor-int/2addr v3, v4

    invoke-static {v7, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    aget v2, v9, v0

    aget v3, v10, v0

    xor-int/2addr v2, v3

    aget v3, v11, v0

    xor-int/2addr v2, v3

    aget v3, v12, v0

    xor-int/2addr v2, v3

    invoke-static {v7, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_8a
    add-int/lit8 v5, v16, 0x3

    goto :goto_13

    :cond_8d
    return-void
.end method

.method private mpc_xor([I[II)V
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    aget v3, p1, v2

    aget v4, p2, v1

    xor-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private mpc_xor_constant([II[III)V
    .registers 9

    .line 0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, p5, :cond_11

    add-int v0, p0, p2

    aget v1, p1, v0

    add-int v2, p0, p4

    aget v2, p3, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method private mpc_xor_constant_verify([I[IIII)V
    .registers 9

    .line 0
    const/4 v0, 0x2

    if-nez p5, :cond_7

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr p0, v0

    goto :goto_d

    :cond_7
    if-ne p5, v0, :cond_1e

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 p0, p0, 0x3

    :goto_d
    const/4 p5, 0x0

    :goto_e
    if-ge p5, p4, :cond_1e

    add-int v0, p5, p0

    aget v1, p1, v0

    add-int v2, p5, p3

    aget v2, p2, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private picnic_keygen([B[B[BLjava/security/SecureRandom;)V
    .registers 10

    .line 0
    array-length v0, p3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    array-length v2, p2

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v3, 0x0

    invoke-static {p3, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    invoke-virtual {p4, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v3, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, p4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LowMCEnc([I[I[I)V

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {v1, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {v2, p2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method private picnic_read_public_key([I[I[B)V
    .registers 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p3, v2, p1, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p3, v1, p2, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v2, :cond_26

    mul-int/lit8 v2, v0, 0x4

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr p0, v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {p3, v3, p0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v3

    aput v3, p1, v0

    add-int/2addr v1, v2

    invoke-static {p3, v1, p0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result p0

    aput p0, p2, v0

    :cond_26
    return-void
.end method

.method private picnic_sign([B[B[B)Z
    .registers 15

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v5, v0, 0x2

    const/4 v7, 0x1

    add-int/2addr v5, v7

    div-int/lit8 v0, v0, 0x4

    const/4 v8, 0x0

    invoke-static {p1, v7, v2, v8, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p1, v1, v3, v8, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p1, v5, v4, v8, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v6, :cond_3b

    mul-int/lit8 v6, v0, 0x4

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr v9, v6

    add-int/lit8 v10, v6, 0x1

    invoke-static {p1, v10, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v10

    aput v10, v2, v0

    add-int/2addr v1, v6

    invoke-static {p1, v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v1

    aput v1, v3, v0

    add-int/2addr v5, v6

    invoke-static {p1, v5, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result p1

    aput p1, v4, v0

    :cond_3b
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result p1

    const-string v0, "Failed to serialize signature"

    const-string v9, "Failed to create signature"

    if-nez p1, :cond_70

    new-instance p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I

    move-result v1

    if-eqz v1, :cond_5b

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p0, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_5b
    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I

    move-result p1

    if-gez p1, :cond_6a

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_6a
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    invoke-static {p1, p3, v8}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return v7

    :cond_70
    new-instance p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z

    move-result v1

    if-nez v1, :cond_84

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p0, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_84
    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I

    move-result p1

    if-gez p1, :cond_6a

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8
.end method

.method private picnic_verify([B[B[BI)I
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-direct {p0, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_read_public_key([I[I[B)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_2d

    new-instance p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    array-length v3, p2

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, p1, p3, p4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I

    move-result p3

    if-eqz p3, :cond_28

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p1, "Error couldn\'t deserialize signature (2)!"

    :goto_24
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v2

    :cond_28
    invoke-direct {p0, p1, v1, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I

    move-result p0

    return p0

    :cond_2d
    new-instance p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    array-length v3, p2

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, p1, p3, p4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I

    move-result p3

    if-eqz p3, :cond_40

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p1, "Error couldn\'t deserialize signature!"

    goto :goto_24

    :cond_40
    invoke-direct {p0, p1, v1, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I

    move-result p0

    return p0
.end method

.method private picnic_write_private_key([B[B[B[B)I
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p4

    if-ge v3, v1, :cond_12

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p1, "Failed writing private key!"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_12
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, p4, v4

    invoke-static {p1, v4, p4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v4, p4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 p1, p0, 0x2

    add-int/2addr p1, v2

    invoke-static {p3, v4, p4, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method private picnic_write_public_key([B[B[B)I
    .registers 9

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p3

    if-ge v3, v1, :cond_12

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p1, "Failed writing public key!"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_12
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, p3, v4

    invoke-static {p1, v4, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 p1, p0, 0x1

    invoke-static {p2, v4, p3, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method private serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I
    .registers 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/16 v1, 0x20

    add-int/2addr v0, v1

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v2

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v4, :cond_43

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, v3

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v0, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_37

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v4

    :cond_37
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, v4

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_43
    array-length v3, p2

    if-ge v3, v0, :cond_48

    const/4 p0, -0x1

    return p0

    :cond_48
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v2, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, p3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-static {v3, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v0, v1

    move v1, v2

    :goto_6d
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v3, :cond_da

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    invoke-static {v4, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_ad

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v3

    :cond_ad
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, v3

    :cond_d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_da
    sub-int/2addr v0, p3

    return v0
.end method

.method private setChallenge([BII)V
    .registers 4

    .line 0
    mul-int/lit8 p2, p2, 0x2

    and-int/lit8 p0, p3, 0x1

    int-to-byte p0, p0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p3, 0x1

    and-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    return-void
.end method

.method private sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I
    .registers 29

    .line 0
    move-object/from16 v9, p0

    move-object/from16 v10, p5

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v11, 0x1

    const/4 v2, 0x3

    aput v2, v1, v11

    const/4 v12, 0x0

    aput v0, v1, v12

    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [[Lorg/bouncycastle/pqc/crypto/picnic/View;

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v4, v2, [I

    aput v3, v4, v8

    aput v1, v4, v11

    aput v0, v4, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[[B

    iget v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array v4, v2, [I

    aput v3, v4, v8

    aput v2, v4, v11

    aput v1, v4, v12

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[[B

    invoke-direct/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSeeds([I[I[I[B)[B

    move-result-object v7

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v16, v0, v1

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v0, v0, v16

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v2, 0x20

    invoke-static {v7, v0, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v6, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v1, v0, 0x9

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v4, v5, [B

    move v3, v12

    :goto_6b
    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v0, :cond_209

    aget-object v0, v13, v3

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v1, v9}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v0, v12

    aget-object v0, v13, v3

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v1, v9}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v0, v11

    aget-object v0, v13, v3

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v1, v9}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v0, v8

    move v2, v12

    :goto_8b
    const-string v1, "createRandomTape failed"

    const/16 v17, -0x1

    if-ge v2, v8, :cond_ee

    mul-int v0, v16, v3

    iget v11, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v0

    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    iget v8, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v12, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v8, v12

    move-object v12, v0

    move-object/from16 v0, p0

    move-object/from16 v18, v15

    move-object v15, v1

    move-object v1, v7

    move/from16 v19, v2

    move v2, v11

    move v11, v3

    move-object v3, v12

    move-object v12, v4

    move v4, v11

    move/from16 v20, v5

    move/from16 v5, v19

    move-object/from16 v21, v14

    move-object v14, v6

    move-object v6, v12

    move-object/from16 v22, v7

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    if-nez v0, :cond_c3

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v17

    :cond_c3
    aget-object v0, v13, v11

    aget-object v0, v0, v19

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v1, 0x0

    invoke-static {v12, v1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v19

    iget v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v12, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v19, 0x1

    move v3, v11

    move-object v4, v12

    move-object v6, v14

    move-object/from16 v15, v18

    move/from16 v5, v20

    move-object/from16 v14, v21

    move-object/from16 v7, v22

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_8b

    :cond_ee
    move v11, v3

    move-object v12, v4

    move/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v21, v14

    move-object/from16 v18, v15

    move-object v15, v1

    move-object v14, v6

    mul-int v8, v16, v11

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int v2, v8, v0

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v0, v1

    iget v7, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v4, v11

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    if-nez v0, :cond_11c

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v17

    :cond_11c
    aget-object v0, v13, v11

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v2, 0x0

    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v6, p1

    invoke-direct {v9, v1, v6, v3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    iput v2, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    div-int/lit8 v5, v20, 0x4

    invoke-static {v12, v2, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v0

    aget-object v1, v13, v11

    move-object/from16 v7, p3

    invoke-direct {v9, v14, v1, v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V

    invoke-static {v0, v12, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    aget-object v1, v13, v11

    aget-object v3, v1, v2

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v3, 0x1

    aget-object v4, v1, v3

    iget-object v3, v4, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v4, 0x2

    aget-object v1, v1, v4

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-direct {v9, v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    iget v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v15, p2

    invoke-static {v0, v15, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result v0

    if-nez v0, :cond_181

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simulation failed; output does not match public key (round = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v17

    :cond_181
    aget-object v0, v13, v11

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v2, v21, v11

    aget-object v2, v2, v1

    move-object/from16 v5, v22

    invoke-direct {v9, v5, v8, v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v0, v8

    aget-object v1, v13, v11

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v3, v21, v11

    aget-object v3, v3, v2

    invoke-direct {v9, v5, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v0, v8

    aget-object v3, v13, v11

    aget-object v3, v3, v1

    aget-object v4, v21, v11

    aget-object v4, v4, v1

    invoke-direct {v9, v5, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v0, v2, :cond_1f3

    aget-object v0, v13, v11

    const/4 v1, 0x0

    aget-object v4, v0, v1

    aget-object v0, v18, v11

    aget-object v17, v0, v1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v5

    move v3, v8

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int v3, v8, v0

    aget-object v0, v13, v11

    const/4 v1, 0x1

    aget-object v4, v0, v1

    aget-object v0, v18, v11

    aget-object v5, v0, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/16 v17, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int v3, v8, v0

    aget-object v0, v13, v11

    aget-object v4, v0, v17

    aget-object v0, v18, v11

    aget-object v5, v0, v17

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    goto :goto_1f7

    :cond_1f3
    move-object/from16 v19, v5

    const/16 v17, 0x2

    :goto_1f7
    add-int/lit8 v3, v11, 0x1

    move-object v4, v12

    move-object v6, v14

    move/from16 v8, v17

    move-object/from16 v15, v18

    move-object/from16 v7, v19

    move/from16 v5, v20

    move-object/from16 v14, v21

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_6b

    :cond_209
    move-object/from16 v19, v7

    move-object/from16 v21, v14

    move-object/from16 v18, v15

    move-object/from16 v15, p2

    move-object/from16 v7, p3

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, v21

    move-object/from16 v7, p4

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V

    const/4 v8, 0x0

    :goto_228
    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v8, v0, :cond_251

    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    aget-object v1, v0, v8

    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    invoke-virtual {v9, v0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v2

    mul-int v4, v16, v8

    aget-object v5, v13, v8

    aget-object v6, v21, v8

    iget v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_244

    const/4 v0, 0x0

    :goto_242
    move-object v7, v0

    goto :goto_247

    :cond_244
    aget-object v0, v18, v8

    goto :goto_242

    :goto_247
    move-object/from16 v0, p0

    move-object/from16 v3, v19

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_228

    :cond_251
    const/4 v0, 0x0

    return v0
.end method

.method private sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z
    .registers 27

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p5

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/16 v6, 0x20

    add-int/lit8 v7, v0, 0x20

    new-array v8, v7, [B

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSaltAndRootSeed([B[I[I[I[B)V

    invoke-static {v8, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v8, v12, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    new-instance v13, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v13, v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v13, v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v6

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v7

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v14, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    new-array v15, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move v8, v12

    :goto_42
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v8, v0, :cond_7a

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v0, v14, v8

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v0, v15, v8

    add-int v1, v8, v7

    aget-object v1, v6, v1

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v0, v1, v2, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    aget-object v1, v14, v8

    aget-object v0, v15, v8

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v2

    aget-object v0, v15, v8

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v3

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    :cond_7a
    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    const/4 v7, 0x2

    new-array v2, v7, [I

    const/4 v9, 0x1

    aput v1, v2, v9

    aput v0, v2, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[B

    const/16 v0, 0xb0

    new-array v8, v0, [B

    move v0, v12

    :goto_95
    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_a3

    aget-object v1, v14, v0

    aget-object v2, v16, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    :cond_a3
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v2, v3, v7

    aput v0, v3, v9

    aput v1, v3, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[[B

    move v6, v12

    :goto_bb
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v6, v0, :cond_104

    move v5, v12

    :goto_c0
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v1, v0, -0x1

    if-ge v5, v1, :cond_e4

    aget-object v0, v17, v6

    aget-object v1, v0, v5

    aget-object v0, v15, v6

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move/from16 v18, v5

    move v5, v6

    move/from16 v19, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v19

    goto :goto_c0

    :cond_e4
    move/from16 v19, v6

    add-int/lit8 v6, v0, -0x1

    aget-object v0, v14, v19

    invoke-direct {v10, v8, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    aget-object v0, v17, v19

    aget-object v1, v0, v6

    aget-object v0, v15, v19

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move-object v3, v8

    move/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v6, v19, 0x1

    goto :goto_bb

    :cond_104
    new-array v8, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v6, v0, [I

    move v5, v12

    :goto_10b
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v5, v0, :cond_14f

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v0, v8, v5

    aget-object v0, v16, v5

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v0, v12, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v4

    move-object/from16 v3, p1

    invoke-virtual {v10, v4, v4, v3, v12}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    aget-object v2, v14, v5

    aget-object v18, v8, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v3, v6

    move-object v9, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object/from16 v5, p3

    move-object/from16 v20, v6

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v0

    if-eqz v0, :cond_144

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "MPC simulation failed, aborting signature"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v12

    :cond_144
    aget-object v0, v16, v18

    invoke-static {v9, v0, v12}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v20

    const/4 v9, 0x1

    goto :goto_10b

    :cond_14f
    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v2, v7, [I

    const/4 v9, 0x1

    aput v1, v2, v9

    aput v0, v2, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [[B

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v3, v7, [I

    aput v2, v3, v9

    aput v1, v3, v12

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v12

    :goto_172
    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_189

    aget-object v2, v4, v1

    aget-object v3, v17, v1

    invoke-direct {v10, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    aget-object v2, v0, v1

    aget-object v3, v16, v1

    aget-object v5, v8, v1

    invoke-direct {v10, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_172

    :cond_189
    new-instance v7, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v7, v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v7, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->buildMerkleTree([[B[B)V

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v2, v0, [I

    iput-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    new-array v3, v0, [I

    iput-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v1, v0, [B

    iput-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v5, v0, v12

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move-object v12, v7

    move-object/from16 v7, p2

    move-object/from16 v19, v8

    move-object/from16 v8, p3

    move-object/from16 v20, v14

    move v14, v9

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v0, v1

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {v10, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v1

    new-array v2, v14, [I

    invoke-virtual {v12, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTree([II[I)[B

    move-result-object v0

    iput-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    const/4 v0, 0x0

    aget v1, v2, v0

    iput v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    mul-int/2addr v0, v1

    invoke-virtual {v13, v3, v4, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v0

    iput v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    iput-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    const/4 v0, 0x0

    :goto_1f2
    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_280

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v10, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v1

    if-eqz v1, :cond_27b

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    invoke-direct {v2, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v1, v0

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v1

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v2, v2, v1

    filled-new-array {v2}, [I

    move-result-object v2

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v6, v4, v5

    new-array v6, v6, [B

    iput-object v6, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    aget-object v7, v15, v0

    mul-int/2addr v4, v5

    invoke-virtual {v7, v2, v14, v6, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v2

    iput v2, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v2, v14

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v3, v1

    if-eq v3, v2, :cond_244

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    aget-object v3, v20, v0

    invoke-direct {v10, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    :cond_244
    aget-object v2, v16, v0

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v19, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v17, v0

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v1, v3, v1

    aget-object v1, v2, v1

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27c

    :cond_27b
    const/4 v5, 0x0

    :goto_27c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f2

    :cond_280
    return v14
.end method

.method private simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I
    .registers 13

    .line 0
    const/16 v0, 0x10

    new-array v1, v0, [I

    new-array v0, v0, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v1, p1, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, v0, v1, p5, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    const/4 p5, 0x1

    :goto_1c
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt p5, v2, :cond_61

    invoke-direct {p0, p3, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v0, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v4, p5, -0x1

    invoke-virtual {v2, p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v0, v0, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v0, v0, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, p5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v1, p1, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, v0, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1c

    :cond_61
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v0, p6, p0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result p0

    if-nez p0, :cond_6a

    const/4 v3, -0x1

    :cond_6a
    return v3
.end method

.method private static subarrayEquals([B[BI)Z
    .registers 7

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_17

    array-length v0, p1

    if-ge v0, p2, :cond_8

    goto :goto_17

    :cond_8
    move v0, v1

    :goto_9
    if-ge v0, p2, :cond_15

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    return v1
.end method

.method private static subarrayEquals([I[II)Z
    .registers 7

    .line 0
    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_17

    array-length v0, p1

    if-ge v0, p2, :cond_8

    goto :goto_17

    :cond_8
    move v0, v1

    :goto_9
    if-ge v0, p2, :cond_15

    aget v2, p0, v0

    aget v3, p1, v0

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    return v1
.end method

.method private substitution([I)V
    .registers 9

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_2e

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    and-int v6, v4, v5

    xor-int/2addr v6, v2

    invoke-static {p1, v1, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    xor-int v1, v2, v4

    and-int v6, v2, v5

    xor-int/2addr v6, v1

    invoke-static {p1, v3, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    xor-int/2addr v1, v5

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_2e
    return-void
.end method

.method private tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v0, v1, :cond_e

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private updateDigest([I[B)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p2, v0, p0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I
    .registers 32

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v12, 0x3

    new-array v3, v12, [I

    const/4 v13, 0x2

    aput v2, v3, v13

    const/4 v14, 0x1

    aput v1, v3, v14

    const/4 v15, 0x0

    aput v0, v3, v15

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [[[B

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array v3, v12, [I

    aput v2, v3, v13

    aput v12, v3, v14

    aput v1, v3, v15

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[[B

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    new-array v2, v12, [I

    aput v1, v2, v13

    aput v12, v2, v14

    aput v0, v2, v15

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [[[I

    iget-object v9, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v8, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v1, v0, 0x6

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v7, v0, [B

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v6, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v5, v0, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    new-array v4, v0, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    move v3, v15

    :goto_67
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v19, -0x1

    const-string v2, "Invalid signature. Did not verify"

    if-ge v3, v0, :cond_15b

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v0, v5, v3

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v1, v10}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v4, v3

    aget-object v20, v9, v3

    aget-object v21, v5, v3

    invoke-virtual {v10, v8, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v22

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v24, v1

    move-object/from16 v1, v20

    move-object v13, v2

    move-object/from16 v2, v21

    move/from16 v21, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v4

    move/from16 v4, v22

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v6

    move/from16 v6, v21

    move-object/from16 v25, v7

    move-object v14, v8

    move-object/from16 v8, p3

    move-object/from16 v26, v9

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z

    move-result v0

    if-nez v0, :cond_b7

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v19

    :cond_b7
    move/from16 v6, v21

    invoke-virtual {v10, v14, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v7

    aget-object v0, v26, v6

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    aget-object v1, v22, v6

    aget-object v2, v16, v6

    aget-object v2, v2, v7

    invoke-direct {v10, v0, v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    aget-object v0, v26, v6

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    aget-object v1, v24, v6

    aget-object v2, v16, v6

    add-int/lit8 v3, v7, 0x1

    rem-int/lit8 v8, v3, 0x3

    aget-object v2, v2, v8

    invoke-direct {v10, v0, v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    aget-object v0, v26, v6

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    aget-object v1, v16, v6

    add-int/lit8 v2, v7, 0x2

    rem-int/lit8 v9, v2, 0x3

    aget-object v1, v1, v9

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_124

    aget-object v0, v26, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    aget-object v4, v22, v6

    aget-object v0, v17, v6

    aget-object v5, v0, v7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    aget-object v0, v26, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    aget-object v4, v24, v6

    aget-object v0, v17, v6

    aget-object v5, v0, v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    if-nez v7, :cond_117

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_119

    :cond_117
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_119
    aget-object v1, v26, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    aget-object v2, v17, v6

    aget-object v2, v2, v9

    invoke-static {v1, v15, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_124
    aget-object v0, v18, v6

    aget-object v1, v22, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v1, v0, v7

    aget-object v0, v18, v6

    aget-object v1, v24, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v1, v0, v8

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v0, v0, [I

    aget-object v1, v22, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v2, v24, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    move-object/from16 v3, p2

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    aget-object v1, v18, v6

    aput-object v0, v1, v9

    add-int/lit8 v0, v6, 0x1

    move v3, v0

    move-object v8, v14

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v4, v24

    move-object/from16 v7, v25

    move-object/from16 v9, v26

    move v14, v13

    const/4 v13, 0x2

    goto/16 :goto_67

    :cond_15b
    move-object/from16 v3, p2

    move-object v14, v8

    move v1, v13

    move-object v13, v2

    mul-int/2addr v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    new-array v9, v0, [B

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object v5, v9

    move-object/from16 v7, p4

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[[I[[[B[B[B[B[[[B)V

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    invoke-static {v14, v9, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v0

    if-nez v0, :cond_190

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move/from16 v15, v19

    :cond_190
    return v15
.end method

.method private verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I
    .registers 37

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v1, v3, v2

    const/4 v7, 0x0

    aput v0, v3, v7

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[[B

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v5, v4, [I

    aput v3, v5, v2

    aput v1, v5, v7

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[B

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v4, v4, [I

    aput v3, v4, v2

    aput v1, v4, v7

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [[B

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v13, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    new-instance v14, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v14, v10, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    const/16 v0, 0x40

    new-array v15, v0, [B

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v6, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    new-array v5, v0, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v0, v10, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v7, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v7

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v1

    const/16 v16, -0x1

    if-eqz v1, :cond_82

    return v16

    :cond_82
    const/4 v1, 0x0

    :goto_83
    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_f7

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v10, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v2

    if-nez v2, :cond_a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v2, v10, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v2, v6, v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v3

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    goto :goto_f4

    :cond_a6
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v2, v10, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v2, v6, v1

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v2

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v2, v3, v2

    filled-new-array {v2}, [I

    move-result-object v24

    aget-object v23, v6, v1

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v25, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v2

    move-object/from16 v28, v4

    move/from16 v29, v1

    invoke-virtual/range {v23 .. v29}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v2

    if-eqz v2, :cond_f4

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reconstruct seeds for round "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_f0
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v16

    :cond_f4
    :goto_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_f7
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/4 v1, 0x1

    add-int/lit8 v7, v0, -0x1

    const/16 v0, 0xb0

    new-array v4, v0, [B

    const/4 v3, 0x0

    :goto_101
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v2, 0x0

    if-ge v3, v0, :cond_206

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v1, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v5, v3

    aget-object v0, v6, v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v17

    aget-object v0, v6, v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v18

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, v17

    move/from16 v17, v3

    move/from16 v3, v18

    move-object/from16 v30, v4

    move-object/from16 v4, v19

    move-object/from16 v18, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v10, v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v0

    if-nez v0, :cond_181

    aget-object v0, v18, v5

    invoke-virtual {v0, v15}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    const/4 v15, 0x0

    :goto_143
    if-ge v15, v7, :cond_161

    aget-object v0, v8, v5

    aget-object v1, v0, v15

    aget-object v0, v6, v5

    invoke-virtual {v0, v15}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move/from16 v17, v5

    move-object/from16 v19, v6

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v19

    goto :goto_143

    :cond_161
    move/from16 v17, v5

    move-object/from16 v19, v6

    aget-object v0, v18, v17

    move-object/from16 v15, v30

    invoke-direct {v10, v15, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    aget-object v0, v8, v17

    aget-object v1, v0, v7

    aget-object v0, v19, v17

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move-object v3, v15

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    goto/16 :goto_1fb

    :cond_181
    move/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v15, v30

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    move/from16 v6, v17

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v1

    aget v5, v0, v1

    const/4 v4, 0x0

    :goto_196
    if-ge v4, v7, :cond_1c7

    if-eq v4, v5, :cond_1ba

    aget-object v0, v8, v6

    aget-object v1, v0, v4

    aget-object v0, v19, v6

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v21, v4

    move-object/from16 v4, v17

    move/from16 v31, v5

    move v5, v6

    move/from16 v17, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    goto :goto_1c0

    :cond_1ba
    move/from16 v21, v4

    move/from16 v31, v5

    move/from16 v17, v6

    :goto_1c0
    add-int/lit8 v4, v21, 0x1

    move/from16 v6, v17

    move/from16 v5, v31

    goto :goto_196

    :cond_1c7
    move/from16 v17, v6

    move v6, v5

    if-eq v7, v6, :cond_1e9

    aget-object v0, v8, v17

    aget-object v1, v0, v7

    aget-object v0, v19, v17

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, v17

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move/from16 v5, v17

    move/from16 v21, v6

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    goto :goto_1eb

    :cond_1e9
    move/from16 v21, v6

    :goto_1eb
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    aget-object v1, v8, v17

    aget-object v1, v1, v21

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1fb
    add-int/lit8 v3, v17, 0x1

    move-object v4, v15

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v15, v20

    goto/16 :goto_101

    :cond_206
    move-object/from16 v18, v5

    move-object/from16 v20, v15

    move-object v15, v2

    const/4 v0, 0x0

    :goto_20c
    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_21a

    aget-object v1, v9, v0

    aget-object v2, v8, v0

    invoke-direct {v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20c

    :cond_21a
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v8, v0, [I

    const/4 v6, 0x0

    :goto_21f
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v6, v0, :cond_2c9

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v0, v13, v6

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v10, v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v0

    if-eqz v0, :cond_2c0

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v7, :cond_24d

    aget-object v1, v18, v6

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->setAuxBits([B)V

    :cond_24d
    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    aget-object v2, v13, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v2, v2, v0

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v18, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    aget-object v1, v13, v6

    iput v0, v1, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, v6

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v2, v1, [I

    invoke-static {v0, v4, v2, v4, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    aget-object v3, v18, v6

    aget-object v4, v13, v6

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move-object/from16 v5, p3

    move v15, v6

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v0

    if-eqz v0, :cond_2b1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPC simulation failed for round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", signature invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f0

    :cond_2b1
    aget-object v0, v12, v15

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, v15

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    aget-object v2, v13, v15

    invoke-direct {v10, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    const/4 v1, 0x0

    goto :goto_2c4

    :cond_2c0
    move-object v1, v15

    move v15, v6

    aput-object v1, v12, v15

    :goto_2c4
    add-int/lit8 v6, v15, 0x1

    move-object v15, v1

    goto/16 :goto_21f

    :cond_2c9
    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v0, v1

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {v10, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v1

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v3, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-virtual {v14, v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->addMerkleNodes([II[BI)I

    move-result v0

    if-eqz v0, :cond_2dd

    return v16

    :cond_2dd
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v14, v12, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->verifyMerkleTree([[B[B)I

    move-result v12

    if-eqz v12, :cond_2e6

    return v16

    :cond_2e6
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/4 v1, 0x0

    aget-object v5, v0, v1

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v4, v9

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    move-object/from16 v2, v20

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v0

    if-nez v0, :cond_30f

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Challenge does not match, signature invalid"

    goto/16 :goto_f0

    :cond_30f
    return v12
.end method

.method private wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .registers 7

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v1, :cond_16

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit(II)I

    move-result v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v2, v2, v0

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    iget p0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    return-void
.end method

.method private xor_three([I[I[I[I)V
    .registers 8

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_12

    aget v1, p2, v0

    aget v2, p3, v0

    xor-int/2addr v1, v2

    aget v2, p4, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method


# virtual methods
.method public aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .registers 11

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_35

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v3

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    xor-int/2addr v6, v2

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    xor-int/2addr v1, v2

    xor-int/2addr v3, v2

    xor-int/2addr v3, v4

    invoke-direct {p0, v2, v4, v6, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v4, v5, v1, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v5, v2, v3, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_35
    return-void
.end method

.method public crypto_sign([B[B[B)V
    .registers 5

    .line 0
    invoke-direct {p0, p3, p2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_sign([B[B[B)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    array-length p0, p2

    const/4 p3, 0x0

    const/4 v0, 0x4

    invoke-static {p2, p3, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public crypto_sign_keypair([B[BLjava/security/SecureRandom;)V
    .registers 7

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    mul-int/lit8 v2, v0, 0x4

    new-array v2, v2, [B

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p0, v1, v2, v0, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_keygen([B[B[BLjava/security/SecureRandom;)V

    invoke-direct {p0, v2, v1, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_public_key([B[B[B)I

    invoke-direct {p0, v0, v2, v1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_private_key([B[B[B[B)I

    return-void
.end method

.method public crypto_sign_open([B[B[B)Z
    .registers 8

    .line 0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    array-length v2, p1

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static {p2, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {p0, p3, v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_verify([B[B[BI)I

    move-result p0

    const/4 p3, -0x1

    if-ne p0, p3, :cond_14

    return v0

    :cond_14
    array-length p0, p1

    invoke-static {p2, v3, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public getChallenge([BI)I
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getCrumbAligned([BI)B

    move-result p0

    return p0
.end method

.method public getPublicKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    return p0
.end method

.method public getSecretKeySize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    return p0
.end method

.method public getSignatureSize(I)I
    .registers 2

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getTrueSignatureSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    return p0
.end method

.method public matrix_mul([I[I[II)V
    .registers 12

    .line 0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    return-void
.end method

.method public matrix_mul_offset([II[II[II)V
    .registers 18

    .line 0
    move-object v0, p0

    const/16 v1, 0x10

    new-array v1, v1, [I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    div-int/lit8 v5, v3, 0x20

    mul-int/lit8 v2, v2, 0x20

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    ushr-int/2addr v3, v2

    const v6, 0x55555555

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v3

    const v6, 0x33333333

    const/4 v7, 0x2

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v3

    const v6, 0xf0f0f0f

    const/4 v7, 0x4

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v3

    move v6, v4

    :goto_2e
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v6, v7, :cond_62

    move v7, v4

    move v8, v7

    :goto_34
    if-ge v7, v5, :cond_47

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v9, v6

    add-int/2addr v9, v7

    add-int v10, p4, v7

    aget v10, p3, v10

    add-int v9, p6, v9

    aget v9, p5, v9

    and-int/2addr v9, v10

    xor-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_47
    if-lez v2, :cond_58

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int v9, p4, v5

    aget v9, p3, v9

    add-int v7, p6, v7

    aget v7, p5, v7

    and-int/2addr v7, v9

    and-int/2addr v7, v3

    xor-int/2addr v8, v7

    :cond_58
    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity32(I)I

    move-result v7

    invoke-static {v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_62
    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v2, p1

    move v3, p2

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .registers 12

    .line 0
    iget-object p0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result p0

    iget-object v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v3, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    aget v3, p1, v0

    aget p1, p1, v2

    aget v4, p2, v0

    aget p2, p2, v2

    and-int/2addr p2, v3

    and-int/2addr p1, v4

    xor-int/2addr p1, p2

    and-int p2, v3, v4

    xor-int/2addr p1, p2

    xor-int/2addr p0, p1

    xor-int/2addr p0, v1

    aput p0, p3, v0

    iget-object p1, p5, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    int-to-byte p0, p0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    iget-object p0, p6, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result p0

    aput p0, p3, v2

    iget p0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/2addr p0, v2

    iput p0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method public mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V
    .registers 24

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    array-length v0, v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v0, v12}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    const/4 v3, 0x0

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, v8, v12}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    const/4 v13, 0x2

    invoke-direct {v8, v11, v11, v13}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    const/4 v0, 0x1

    move v14, v0

    :goto_47
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v14, v0, :cond_ba

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, v8, v14}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    move-object/from16 v15, p3

    invoke-virtual {v8, v11, v15, v9, v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v0, v8, v7}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, p4

    move v12, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, v8, v12}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v3

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v0, p0

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    invoke-direct {v8, v11, v11, v13}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_47

    :cond_ba
    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v3, 0x0

    invoke-static {v11, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {v11, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .registers 23

    .line 0
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x2

    new-array v10, v9, [I

    new-array v11, v9, [I

    new-array v12, v9, [I

    new-array v13, v9, [I

    new-array v14, v9, [I

    new-array v15, v9, [I

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_15
    iget v0, v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v0, v0, 0x3

    if-ge v6, v0, :cond_94

    move/from16 v0, v16

    :goto_1d
    if-ge v0, v9, :cond_40

    add-int/lit8 v1, v0, 0x2

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v6

    add-int/lit8 v2, v1, 0x2

    invoke-static {v8, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    aput v2, v10, v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v8, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    aput v2, v11, v0

    invoke-static {v8, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    aput v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_40
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v17, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object v1, v11

    move-object v2, v12

    move-object v3, v14

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object v1, v12

    move-object v2, v10

    move-object v3, v15

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move/from16 v0, v16

    :goto_5e
    if-ge v0, v9, :cond_91

    add-int/lit8 v1, v0, 0x2

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int v1, v1, v17

    add-int/lit8 v2, v1, 0x2

    aget v3, v10, v0

    aget v4, v14, v0

    xor-int/2addr v3, v4

    invoke-static {v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v2, v1, 0x1

    aget v3, v10, v0

    aget v4, v11, v0

    xor-int/2addr v3, v4

    aget v4, v15, v0

    xor-int/2addr v3, v4

    invoke-static {v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    aget v2, v10, v0

    aget v3, v11, v0

    xor-int/2addr v2, v3

    aget v3, v12, v0

    xor-int/2addr v2, v3

    aget v3, v13, v0

    xor-int/2addr v2, v3

    invoke-static {v8, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_91
    add-int/lit8 v6, v17, 0x3

    goto :goto_15

    :cond_94
    return-void
.end method

.method public prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V
    .registers 14

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_15

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr p4, v3

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3e

    :cond_15
    if-ne p2, v0, :cond_2b

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int v4, p4, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    invoke-static {p3, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr p4, v4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3e

    :cond_2b
    if-ne p2, v1, :cond_7c

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p4

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    invoke-static {p3, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3e
    if-eq p2, v0, :cond_42

    if-ne p2, v1, :cond_4d

    :cond_42
    aget-object p3, p5, v1

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget-object p4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p3, v2, p4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4d
    add-int/lit8 p3, p2, 0x1

    rem-int/lit8 p3, p3, 0x3

    aget-object p3, p5, p3

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget-object p4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p3, v2, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p2, 0x2

    rem-int/lit8 p3, p3, 0x3

    aget-object p4, p6, p3

    iget-object p5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget p6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p4, v2, p5, v2, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne p4, v0, :cond_7b

    if-nez p2, :cond_72

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_74

    :cond_72
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_74
    aget-object p2, p7, p3

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {p2, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7b
    return-void

    :cond_7c
    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p1, "Invalid challenge"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "challenge"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I
    .registers 13

    .line 0
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    const/16 v4, 0x20

    add-int/2addr v2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v6, v3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v5

    add-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    mul-int/2addr v6, v5

    add-int/2addr v2, v6

    :cond_28
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    if-ge v6, v2, :cond_2e

    const/4 p0, -0x1

    return p0

    :cond_2e
    mul-int/2addr v5, v3

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v1, v5, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    add-int/2addr v2, p3

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    invoke-static {p1, v5, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    move p1, v5

    :goto_46
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge p1, v4, :cond_a2

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v4

    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v6, v7, :cond_6d

    if-nez v4, :cond_63

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_65

    :cond_63
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_65
    aget-object v8, v0, p1

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {v8, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    :cond_6d
    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v6

    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v2, v6

    aget-object v8, v0, p1

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    invoke-static {v8, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v2, v6

    if-eq v4, v7, :cond_93

    if-ne v4, v3, :cond_9f

    :cond_93
    aget-object v4, v0, p1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v4, v5, v6, p2, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v4

    :cond_9f
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_a2
    sub-int/2addr v2, p3

    return v2
.end method

.method public verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z
    .registers 28

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v15, 0x0

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v15, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    const/4 v7, 0x1

    if-eqz v12, :cond_d9

    if-eq v12, v7, :cond_88

    const/4 v0, 0x2

    if-eq v12, v0, :cond_2e

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Invalid Challenge!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move/from16 v16, v7

    move v7, v15

    goto/16 :goto_132

    :cond_2e
    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v0, v15

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v17, v5

    move/from16 v5, v16

    move/from16 v16, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_71

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    if-eqz v0, :cond_71

    move/from16 v7, v16

    goto :goto_72

    :cond_71
    move v7, v15

    :goto_72
    if-nez v7, :cond_76

    goto/16 :goto_132

    :cond_76
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v13, v15, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v1, v1, v16

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v13, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_132

    :cond_88
    move/from16 v16, v7

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v13, v15, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v15

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v13, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_cb

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v0, v16

    iget v7, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    if-eqz v0, :cond_cb

    move/from16 v7, v16

    goto :goto_cc

    :cond_cb
    move v7, v15

    :goto_cc
    if-nez v7, :cond_cf

    goto :goto_132

    :cond_cf
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_132

    :cond_d9
    move/from16 v16, v7

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v13, v15, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v15

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v13, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_11e

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v0

    if-eqz v0, :cond_11e

    move/from16 v7, v16

    goto :goto_11f

    :cond_11e
    move v7, v15

    :goto_11f
    if-nez v7, :cond_122

    goto :goto_132

    :cond_122
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v13, v15, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v0, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v1, v1, v16

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v13, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_132
    if-nez v7, :cond_13c

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed to generate random tapes, signature verification will fail (but signature may actually be valid)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v15

    :cond_13c
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    array-length v0, v13

    div-int/lit8 v0, v0, 0x4

    invoke-static {v13, v15, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p9

    move-object/from16 v5, p8

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V

    return v16
.end method

.method public xor_array([I[I[II)V
    .registers 8

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_11

    aget v1, p2, v0

    add-int v2, v0, p4

    aget v2, p3, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method
