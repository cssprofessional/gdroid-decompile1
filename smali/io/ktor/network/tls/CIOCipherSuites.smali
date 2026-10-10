###### Class io.ktor.network.tls.CIOCipherSuites (io.ktor.network.tls.CIOCipherSuites)
.class public final Lio/ktor/network/tls/CIOCipherSuites;
.super Ljava/lang/Object;
.source "CipherSuites.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCipherSuites.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSuites.kt\nio/ktor/network/tls/CIOCipherSuites\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n774#2:201\n865#2,2:202\n*S KotlinDebug\n*F\n+ 1 CipherSuites.kt\nio/ktor/network/tls/CIOCipherSuites\n*L\n171#1:201\n171#1:202,2\n*E\n"
.end annotation


# static fields
.field public static final ECDHE_ECDSA_AES128_SHA256:Lio/ktor/network/tls/CipherSuite;

.field public static final ECDHE_ECDSA_AES256_SHA384:Lio/ktor/network/tls/CipherSuite;

.field public static final ECDHE_RSA_AES128_SHA256:Lio/ktor/network/tls/CipherSuite;

.field public static final ECDHE_RSA_AES256_SHA384:Lio/ktor/network/tls/CipherSuite;

.field public static final INSTANCE:Lio/ktor/network/tls/CIOCipherSuites;

.field public static final SupportedSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field public static final TLS_RSA_WITH_AES128_CBC_SHA:Lio/ktor/network/tls/CipherSuite;

.field public static final TLS_RSA_WITH_AES256_CBC_SHA:Lio/ktor/network/tls/CipherSuite;

.field public static final TLS_RSA_WITH_AES_128_GCM_SHA256:Lio/ktor/network/tls/CipherSuite;


# direct methods
.method static constructor <clinit>()V
    .registers 89

    new-instance v0, Lio/ktor/network/tls/CIOCipherSuites;

    invoke-direct {v0}, Lio/ktor/network/tls/CIOCipherSuites;-><init>()V

    sput-object v0, Lio/ktor/network/tls/CIOCipherSuites;->INSTANCE:Lio/ktor/network/tls/CIOCipherSuites;

    .line 106
    new-instance v0, Lio/ktor/network/tls/CipherSuite;

    move-object v1, v0

    .line 108
    sget-object v18, Lio/ktor/network/tls/SecretExchangeType;->RSA:Lio/ktor/network/tls/SecretExchangeType;

    move-object/from16 v5, v18

    .line 111
    sget-object v53, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA256:Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-object/from16 v48, v53

    move-object/from16 v31, v53

    move-object/from16 v13, v53

    sget-object v71, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->RSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-object/from16 v49, v71

    move-object/from16 v67, v71

    move-object/from16 v14, v71

    const/16 v16, 0x2000

    const/16 v17, 0x0

    const/16 v2, 0x9c

    .line 106
    const-string v3, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v4, "AES128-GCM-SHA256"

    const-string v6, "AES/GCM/NoPadding"

    const/16 v7, 0x80

    const/4 v8, 0x4

    const/16 v9, 0xc

    const/16 v10, 0x10

    const-string v11, "AEAD"

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v17}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/CIOCipherSuites;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lio/ktor/network/tls/CipherSuite;

    .line 114
    new-instance v16, Lio/ktor/network/tls/CipherSuite;

    move-object/from16 v72, v16

    .line 116
    sget-object v76, Lio/ktor/network/tls/SecretExchangeType;->ECDHE:Lio/ktor/network/tls/SecretExchangeType;

    move-object/from16 v40, v76

    move-object/from16 v58, v76

    move-object/from16 v23, v76

    .line 118
    sget-object v84, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA384:Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-object/from16 v66, v84

    sget-object v85, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ECDSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-object/from16 v32, v85

    const/16 v87, 0x2000

    const/16 v88, 0x0

    const/16 v73, -0x3fd4

    .line 114
    const-string v74, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v75, "ECDHE-ECDSA-AES256-GCM-SHA384"

    const-string v77, "AES/GCM/NoPadding"

    const/16 v78, 0x100

    const/16 v79, 0x4

    const/16 v80, 0xc

    const/16 v81, 0x10

    const-string v82, "AEAD"

    const/16 v83, 0x0

    const/16 v86, 0x0

    invoke-direct/range {v72 .. v88}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v16, Lio/ktor/network/tls/CIOCipherSuites;->ECDHE_ECDSA_AES256_SHA384:Lio/ktor/network/tls/CipherSuite;

    .line 121
    new-instance v17, Lio/ktor/network/tls/CipherSuite;

    move-object/from16 v19, v17

    const/16 v34, 0x2000

    const/16 v35, 0x0

    const/16 v20, -0x3fd5

    const-string v21, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v22, "ECDHE-ECDSA-AES128-GCM-SHA256"

    const-string v24, "AES/GCM/NoPadding"

    const/16 v25, 0x80

    const/16 v26, 0x4

    const/16 v27, 0xc

    const/16 v28, 0x10

    const-string v29, "AEAD"

    const/16 v30, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v19 .. v35}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v17, Lio/ktor/network/tls/CIOCipherSuites;->ECDHE_ECDSA_AES128_SHA256:Lio/ktor/network/tls/CipherSuite;

    .line 128
    new-instance v19, Lio/ktor/network/tls/CipherSuite;

    move-object/from16 v54, v19

    const/16 v69, 0x2000

    const/16 v70, 0x0

    const/16 v55, -0x3fd0

    const-string v56, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v57, "ECDHE-RSA-AES256-GCM-SHA384"

    const-string v59, "AES/GCM/NoPadding"

    const/16 v60, 0x100

    const/16 v61, 0x4

    const/16 v62, 0xc

    const/16 v63, 0x10

    const-string v64, "AEAD"

    const/16 v65, 0x0

    const/16 v68, 0x0

    invoke-direct/range {v54 .. v70}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v19, Lio/ktor/network/tls/CIOCipherSuites;->ECDHE_RSA_AES256_SHA384:Lio/ktor/network/tls/CipherSuite;

    .line 135
    new-instance v20, Lio/ktor/network/tls/CipherSuite;

    move-object/from16 v36, v20

    const/16 v51, 0x2000

    const/16 v52, 0x0

    const/16 v37, -0x3fd1

    const-string v38, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v39, "ECDHE-RSA-AES128-GCM-SHA256"

    const-string v41, "AES/GCM/NoPadding"

    const/16 v42, 0x80

    const/16 v43, 0x4

    const/16 v44, 0xc

    const/16 v45, 0x10

    const-string v46, "AEAD"

    const/16 v47, 0x0

    const/16 v50, 0x0

    invoke-direct/range {v36 .. v52}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v20, Lio/ktor/network/tls/CIOCipherSuites;->ECDHE_RSA_AES128_SHA256:Lio/ktor/network/tls/CipherSuite;

    .line 142
    new-instance v21, Lio/ktor/network/tls/CipherSuite;

    .line 147
    sget-object v22, Lio/ktor/network/tls/CipherType;->CBC:Lio/ktor/network/tls/CipherType;

    const/16 v2, 0x35

    .line 142
    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v4, "AES-256-CBC-SHA"

    const-string v6, "AES/CBC/NoPadding"

    const/16 v7, 0x100

    const/16 v8, 0x10

    const/16 v9, 0x30

    const/16 v10, 0x14

    const-string v11, "HmacSHA1"

    const/16 v12, 0xa0

    move-object/from16 v1, v21

    move-object/from16 v15, v22

    invoke-direct/range {v1 .. v15}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;)V

    sput-object v21, Lio/ktor/network/tls/CIOCipherSuites;->TLS_RSA_WITH_AES256_CBC_SHA:Lio/ktor/network/tls/CipherSuite;

    .line 150
    new-instance v23, Lio/ktor/network/tls/CipherSuite;

    .line 154
    const-string v11, "HmacSHA1"

    const/16 v2, 0x2f

    .line 150
    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v4, "AES-128-CBC-SHA"

    const-string v6, "AES/CBC/NoPadding"

    const/16 v7, 0x80

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v15}, Lio/ktor/network/tls/CipherSuite;-><init>(SLjava/lang/String;Ljava/lang/String;Lio/ktor/network/tls/SecretExchangeType;Ljava/lang/String;IIIILjava/lang/String;ILio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/CipherType;)V

    sput-object v23, Lio/ktor/network/tls/CIOCipherSuites;->TLS_RSA_WITH_AES128_CBC_SHA:Lio/ktor/network/tls/CipherSuite;

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    move-object/from16 v4, v20

    move-object v5, v0

    move-object/from16 v6, v21

    move-object/from16 v7, v23

    .line 170
    filled-new-array/range {v1 .. v7}, [Lio/ktor/network/tls/CipherSuite;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12a
    :goto_12a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/ktor/network/tls/CipherSuite;

    .line 171
    invoke-static {v3}, Lio/ktor/network/tls/CipherSuitesJvmKt;->isSupported(Lio/ktor/network/tls/CipherSuite;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 865
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12a

    .line 171
    :cond_141
    sput-object v1, Lio/ktor/network/tls/CIOCipherSuites;->SupportedSuites:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSupportedSuites()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 163
    sget-object p0, Lio/ktor/network/tls/CIOCipherSuites;->SupportedSuites:Ljava/util/List;

    return-object p0
.end method
