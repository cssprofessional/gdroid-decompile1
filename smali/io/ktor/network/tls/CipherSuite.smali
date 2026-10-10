###### Class io.ktor.network.tls.CipherSuite (io.ktor.network.tls.CipherSuite)
.class public final Lio/ktor/network/tls/CipherSuite;
.super Ljava/lang/Object;
.source "CipherSuites.kt"


# instance fields
.field public final cipherTagSizeInBytes:I

.field public final cipherType:Lio/ktor/network/tls/CipherType;

.field public final code:S

.field public final exchangeType:Lio/ktor/network/tls/SecretExchangeType;

.field public final fixedIvLength:I

.field public final hash:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public final ivLength:I

.field public final jdkCipherName:Ljava/lang/String;

.field public final keyStrength:I

.field public final keyStrengthInBytes:I

.field public final macName:Ljava/lang/String;

.field public final macStrength:I

.field public final macStrengthInBytes:I

.field public final name:Ljava/lang/String;

.field public final openSSLName:Ljava/lang/String;

.field public final signatureAlgorithm:Lio/ktor/network/tls/extensions/SignatureAlgorithm;


# direct methods
.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;)V
    .registers 16

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openSSLName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exchangeType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jdkCipherName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macName"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureAlgorithm"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipherType"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-short p1, p0, Lio/ktor/network/tls/CipherSuite;->code:S

    .line 79
    iput-object p2, p0, Lio/ktor/network/tls/CipherSuite;->name:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lio/ktor/network/tls/CipherSuite;->openSSLName:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lio/ktor/network/tls/CipherSuite;->exchangeType:Lio/ktor/network/tls/SecretExchangeType;

    .line 82
    iput-object p5, p0, Lio/ktor/network/tls/CipherSuite;->jdkCipherName:Ljava/lang/String;

    .line 83
    iput p6, p0, Lio/ktor/network/tls/CipherSuite;->keyStrength:I

    .line 84
    iput p7, p0, Lio/ktor/network/tls/CipherSuite;->fixedIvLength:I

    .line 85
    iput p8, p0, Lio/ktor/network/tls/CipherSuite;->ivLength:I

    .line 86
    iput p9, p0, Lio/ktor/network/tls/CipherSuite;->cipherTagSizeInBytes:I

    .line 87
    iput-object p10, p0, Lio/ktor/network/tls/CipherSuite;->macName:Ljava/lang/String;

    .line 88
    iput p11, p0, Lio/ktor/network/tls/CipherSuite;->macStrength:I

    .line 89
    iput-object p12, p0, Lio/ktor/network/tls/CipherSuite;->hash:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 90
    iput-object p13, p0, Lio/ktor/network/tls/CipherSuite;->signatureAlgorithm:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    .line 91
    iput-object p14, p0, Lio/ktor/network/tls/CipherSuite;->cipherType:Lio/ktor/network/tls/CipherType;

    .line 93
    div-int/lit8 p6, p6, 0x8

    iput p6, p0, Lio/ktor/network/tls/CipherSuite;->keyStrengthInBytes:I

    .line 94
    div-int/lit8 p11, p11, 0x8

    iput p11, p0, Lio/ktor/network/tls/CipherSuite;->macStrengthInBytes:I

    return-void
.end method

.method public synthetic constructor <init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 33

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    .line 91
    sget-object v0, Lio/ktor/network/tls/CipherType;->GCM:Lio/ktor/network/tls/CipherType;

    move-object v15, v0

    goto :goto_c

    :cond_a
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 77
    invoke-direct/range {v1 .. v15}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/network/tls/CipherSuite;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/network/tls/CipherSuite;

    iget-short v1, p0, Lio/ktor/network/tls/CipherSuite;->code:S

    iget-short v3, p1, Lio/ktor/network/tls/CipherSuite;->code:S

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/network/tls/CipherSuite;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->openSSLName:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/network/tls/CipherSuite;->openSSLName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->exchangeType:Lio/ktor/network/tls/SecretExchangeType;

    iget-object v3, p1, Lio/ktor/network/tls/CipherSuite;->exchangeType:Lio/ktor/network/tls/SecretExchangeType;

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->jdkCipherName:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/network/tls/CipherSuite;->jdkCipherName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->keyStrength:I

    iget v3, p1, Lio/ktor/network/tls/CipherSuite;->keyStrength:I

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->fixedIvLength:I

    iget v3, p1, Lio/ktor/network/tls/CipherSuite;->fixedIvLength:I

    if-eq v1, v3, :cond_49

    return v2

    :cond_49
    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->ivLength:I

    iget v3, p1, Lio/ktor/network/tls/CipherSuite;->ivLength:I

    if-eq v1, v3, :cond_50

    return v2

    :cond_50
    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->cipherTagSizeInBytes:I

    iget v3, p1, Lio/ktor/network/tls/CipherSuite;->cipherTagSizeInBytes:I

    if-eq v1, v3, :cond_57

    return v2

    :cond_57
    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->macName:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/network/tls/CipherSuite;->macName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    return v2

    :cond_62
    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->macStrength:I

    iget v3, p1, Lio/ktor/network/tls/CipherSuite;->macStrength:I

    if-eq v1, v3, :cond_69

    return v2

    :cond_69
    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->hash:Lio/ktor/network/tls/extensions/HashAlgorithm;

    iget-object v3, p1, Lio/ktor/network/tls/CipherSuite;->hash:Lio/ktor/network/tls/extensions/HashAlgorithm;

    if-eq v1, v3, :cond_70

    return v2

    :cond_70
    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->signatureAlgorithm:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    iget-object v3, p1, Lio/ktor/network/tls/CipherSuite;->signatureAlgorithm:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    if-eq v1, v3, :cond_77

    return v2

    :cond_77
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->cipherType:Lio/ktor/network/tls/CipherType;

    iget-object p1, p1, Lio/ktor/network/tls/CipherSuite;->cipherType:Lio/ktor/network/tls/CipherType;

    if-eq p0, p1, :cond_7e

    return v2

    :cond_7e
    return v0
.end method

.method public final getCipherTagSizeInBytes()I
    .registers 1

    .line 86
    iget p0, p0, Lio/ktor/network/tls/CipherSuite;->cipherTagSizeInBytes:I

    return p0
.end method

.method public final getCipherType()Lio/ktor/network/tls/CipherType;
    .registers 1

    .line 91
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->cipherType:Lio/ktor/network/tls/CipherType;

    return-object p0
.end method

.method public final getCode()S
    .registers 1

    .line 78
    iget-short p0, p0, Lio/ktor/network/tls/CipherSuite;->code:S

    return p0
.end method

.method public final getExchangeType()Lio/ktor/network/tls/SecretExchangeType;
    .registers 1

    .line 81
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->exchangeType:Lio/ktor/network/tls/SecretExchangeType;

    return-object p0
.end method

.method public final getFixedIvLength()I
    .registers 1

    .line 84
    iget p0, p0, Lio/ktor/network/tls/CipherSuite;->fixedIvLength:I

    return p0
.end method

.method public final getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;
    .registers 1

    .line 89
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->hash:Lio/ktor/network/tls/extensions/HashAlgorithm;

    return-object p0
.end method

.method public final getIvLength()I
    .registers 1

    .line 85
    iget p0, p0, Lio/ktor/network/tls/CipherSuite;->ivLength:I

    return p0
.end method

.method public final getJdkCipherName()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->jdkCipherName:Ljava/lang/String;

    return-object p0
.end method

.method public final getKeyStrength()I
    .registers 1

    .line 83
    iget p0, p0, Lio/ktor/network/tls/CipherSuite;->keyStrength:I

    return p0
.end method

.method public final getKeyStrengthInBytes()I
    .registers 1

    .line 93
    iget p0, p0, Lio/ktor/network/tls/CipherSuite;->keyStrengthInBytes:I

    return p0
.end method

.method public final getMacName()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->macName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMacStrengthInBytes()I
    .registers 1

    .line 94
    iget p0, p0, Lio/ktor/network/tls/CipherSuite;->macStrengthInBytes:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSignatureAlgorithm()Lio/ktor/network/tls/extensions/SignatureAlgorithm;
    .registers 1

    .line 90
    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->signatureAlgorithm:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-short v0, p0, Lio/ktor/network/tls/CipherSuite;->code:S

    invoke-static {v0}, Ljava/lang/Short;->hashCode(S)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->openSSLName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->exchangeType:Lio/ktor/network/tls/SecretExchangeType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->jdkCipherName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->keyStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->fixedIvLength:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->ivLength:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->cipherTagSizeInBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->macName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->macStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->hash:Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->signatureAlgorithm:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->cipherType:Lio/ktor/network/tls/CipherType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CipherSuite(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lio/ktor/network/tls/CipherSuite;->code:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", openSSLName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->openSSLName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exchangeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->exchangeType:Lio/ktor/network/tls/SecretExchangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jdkCipherName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->jdkCipherName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->keyStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fixedIvLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->fixedIvLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ivLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->ivLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cipherTagSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->cipherTagSizeInBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", macName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->macName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", macStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/network/tls/CipherSuite;->macStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->hash:Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signatureAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/CipherSuite;->signatureAlgorithm:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cipherType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/network/tls/CipherSuite;->cipherType:Lio/ktor/network/tls/CipherType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
