###### Class in.dragonbra.javasteam.types.DepotManifest (in.dragonbra.javasteam.types.DepotManifest)
.class public final Lin/dragonbra/javasteam/types/DepotManifest;
.super Ljava/lang/Object;
.source "DepotManifest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/DepotManifest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepotManifest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepotManifest.kt\nin/dragonbra/javasteam/types/DepotManifest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,520:1\n1#2:521\n1869#3,2:522\n1869#3:524\n1870#3:527\n1869#3:528\n1869#3,2:529\n1870#3:531\n1869#3:532\n1869#3,2:533\n1870#3:535\n13805#4,2:525\n53#5:536\n*S KotlinDebug\n*F\n+ 1 DepotManifest.kt\nin/dragonbra/javasteam/types/DepotManifest\n*L\n211#1:522,2\n322#1:524\n322#1:527\n352#1:528\n364#1:529,2\n352#1:531\n414#1:532\n442#1:533,2\n414#1:535\n334#1:525,2\n36#1:536\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

.field private static final PROTOBUF_ENDOFMANIFEST_MAGIC:I = 0x32c415ab

.field private static final PROTOBUF_METADATA_MAGIC:I = 0x1f4812be

.field private static final PROTOBUF_PAYLOAD_MAGIC:I = 0x71f617d0

.field private static final PROTOBUF_SIGNATURE_MAGIC:I = 0x1b81b817

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private creationTime:Ljava/util/Date;

.field private depotID:I

.field private encryptedCRC:I

.field private filenamesEncrypted:Z

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/dragonbra/javasteam/types/FileData;",
            ">;"
        }
    .end annotation
.end field

.field private manifestGID:J

.field private totalCompressedSize:J

.field private totalUncompressedSize:J


# direct methods
.method public static synthetic $r8$lambda$lbwdfNDYgnX5DClaGecEHySf4hs(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest;->decryptFilenames$lambda$1$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mpyr-HLDN8cf7JQL4QqwP6REAm8(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest;->decryptFilenames$lambda$1$0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/DepotManifest;->Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/types/DepotManifest;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 36
    sput-object v0, Lin/dragonbra/javasteam/types/DepotManifest;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->creationTime:Ljava/util/Date;

    return-void
.end method

.method public static final synthetic access$internalDeserialize(Lin/dragonbra/javasteam/types/DepotManifest;Ljava/io/InputStream;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest;->internalDeserialize(Ljava/io/InputStream;)V

    return-void
.end method

.method private static final decryptFilenames$lambda$1$0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 214
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final decryptFilenames$lambda$1$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 222
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final decryptFilenames$tryDecryptName(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljavax/crypto/Cipher;Ljavax/crypto/spec/SecretKeySpec;Ljavax/crypto/Cipher;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;)Z
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[B>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[B>;",
            "Ljavax/crypto/Cipher;",
            "Ljavax/crypto/spec/SecretKeySpec;",
            "Ljavax/crypto/Cipher;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    const/4 v4, 0x0

    .line 142
    invoke-interface {v11, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    .line 148
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, [B

    array-length v5, v5

    if-le v4, v5, :cond_27

    .line 149
    new-array v5, v4, [B

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    new-array v4, v4, [B

    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 153
    :cond_27
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x2b

    const/16 v14, 0x2d

    const/4 v15, 0x0

    move-object/from16 v12, p6

    .line 157
    :try_start_37
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v19, 0x2f

    const/16 v20, 0x5f

    const/16 v21, 0x0

    .line 158
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 159
    const-string v13, "\n"

    const-string v14, ""

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 160
    const-string v19, "\r"

    const-string v20, ""

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 161
    const-string v13, " "

    const-string v14, ""

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 163
    array-length v5, v4

    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, [B

    array-length v6, v6

    if-gt v5, v6, :cond_118

    .line 164
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, [B

    const/16 v17, 0xe

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    invoke-static/range {v12 .. v18}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 165
    array-length v4, v4
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_92} :catch_115

    .line 177
    :try_start_92
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0, v9, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v12, 0x2

    move-object/from16 v4, p2

    .line 180
    invoke-virtual {v4, v12, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 181
    array-length v7, v10
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a1} :catch_10b

    const/4 v13, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p2

    move-object v5, v0

    move-object/from16 v8, p7

    move v14, v9

    move v9, v13

    :try_start_aa
    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 184
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v5, p4

    .line 185
    invoke-virtual {v5, v12, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 188
    array-length v2, v10

    array-length v4, v0

    invoke-static {v0, v2, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object v6

    .line 189
    array-length v8, v6

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [B

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_cd} :catch_109

    if-lez v0, :cond_dd

    .line 196
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, [B

    add-int/lit8 v4, v0, -0x1

    aget-byte v2, v2, v4

    if-nez v2, :cond_dd

    add-int/lit8 v0, v0, -0x1

    .line 197
    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 200
    :cond_dd
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move v9, v14

    :goto_e0
    if-ge v9, v0, :cond_f7

    .line 201
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, [B

    aget-byte v4, v4, v9

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_f4

    .line 202
    check-cast v2, [B

    sget-char v4, Ljava/io/File;->separatorChar:C

    int-to-byte v4, v4

    aput-byte v4, v2, v9

    :cond_f4
    add-int/lit8 v9, v9, 0x1

    goto :goto_e0

    .line 206
    :cond_f7
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v14, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :catch_109
    move-exception v0

    goto :goto_10d

    :catch_10b
    move-exception v0

    move v14, v9

    .line 191
    :goto_10d
    sget-object v1, Lin/dragonbra/javasteam/types/DepotManifest;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "Failed to decrypt the filename."

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v14

    :catch_115
    move-exception v0

    move v14, v9

    goto :goto_122

    :cond_118
    move v14, v9

    .line 168
    :try_start_119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_121} :catch_121

    :catch_121
    move-exception v0

    .line 171
    :goto_122
    sget-object v1, Lin/dragonbra/javasteam/types/DepotManifest;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to base64 decode the filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v14
.end method

.method public static final deserialize(Ljava/io/InputStream;)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/DepotManifest;->Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;->deserialize(Ljava/io/InputStream;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object p0

    return-object p0
.end method

.method public static final deserialize([B)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/DepotManifest;->Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;->deserialize([B)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object p0

    return-object p0
.end method

.method private final internalDeserialize(Ljava/io/InputStream;)V
    .registers 9

    .line 258
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 260
    :goto_9
    :try_start_9
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v5

    const v6, 0x32c415ab

    if-ne v5, v6, :cond_2e

    .line 302
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2c

    .line 258
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_24

    if-eqz v3, :cond_24

    if-eqz v4, :cond_24

    .line 305
    invoke-direct {p0, v3}, Lin/dragonbra/javasteam/types/DepotManifest;->parseProtobufManifestMetadata(Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;)V

    .line 306
    invoke-direct {p0, v2}, Lin/dragonbra/javasteam/types/DepotManifest;->parseProtobufManifestPayload(Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;)V

    return-void

    .line 308
    :cond_24
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Missing ContentManifest sections required for parsing depot manifest"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2c
    move-exception p0

    goto :goto_96

    :cond_2e
    sparse-switch v5, :sswitch_data_9c

    .line 298
    :try_start_31
    new-instance p0, Ljava/util/NoSuchElementException;

    const/4 p1, 0x1

    invoke-static {v5, v1, p1, v1}, Lkotlin/text/HexExtensionsKt;->toHexString$default(ILkotlin/text/HexFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized magic value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in depot manifest."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :sswitch_52
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v2

    .line 284
    invoke-static {p1, v2}, Lin/dragonbra/javasteam/util/compat/InputStreamCompatKt;->readNBytesCompat(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;->parseFrom([B)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;

    move-result-object v2

    goto :goto_9

    .line 288
    :sswitch_5f
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v3

    .line 289
    invoke-static {p1, v3}, Lin/dragonbra/javasteam/util/compat/InputStreamCompatKt;->readNBytesCompat(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->parseFrom([B)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;

    move-result-object v3

    goto :goto_9

    .line 293
    :sswitch_6c
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v4

    .line 294
    invoke-static {p1, v4}, Lin/dragonbra/javasteam/util/compat/InputStreamCompatKt;->readNBytesCompat(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-static {v4}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestSignature;->parseFrom([B)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestSignature;

    move-result-object v4

    goto :goto_9

    .line 268
    :sswitch_79
    new-instance p1, Lin/dragonbra/javasteam/types/Steam3Manifest;

    invoke-direct {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;-><init>()V

    .line 269
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/types/Steam3Manifest;->deserialize$javasteam(Lin/dragonbra/javasteam/util/stream/BinaryReader;)V

    .line 270
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest;->parseBinaryManifest(Lin/dragonbra/javasteam/types/Steam3Manifest;)V

    .line 272
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p0
    :try_end_88
    .catchall {:try_start_31 .. :try_end_88} :catchall_2c

    if-ne p0, v5, :cond_8e

    .line 258
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 274
    :cond_8e
    :try_start_8e
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Unable to find end of message marker for depot manifest"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_2c

    .line 258
    :goto_96
    :try_start_96
    throw p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :sswitch_data_9c
    .sparse-switch
        0x16349781 -> :sswitch_79
        0x1b81b817 -> :sswitch_6c
        0x1f4812be -> :sswitch_5f
        0x71f617d0 -> :sswitch_52
    .end sparse-switch
.end method

.method public static final loadFromFile(Ljava/lang/String;)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/DepotManifest;->Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;->loadFromFile(Ljava/lang/String;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object p0

    return-object p0
.end method

.method private final parseBinaryManifest(Lin/dragonbra/javasteam/types/Steam3Manifest;)V
    .registers 15

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getMapping()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getAreFileNamesEncrypted()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    .line 315
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getDepotID()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->depotID:I

    .line 316
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getManifestGID()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->manifestGID:J

    .line 317
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->creationTime:Ljava/util/Date;

    .line 318
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getTotalUncompressedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalUncompressedSize:J

    .line 319
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getTotalCompressedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalCompressedSize:J

    .line 320
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getEncryptedCRC()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->encryptedCRC:I

    .line 322
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/Steam3Manifest;->getMapping()Ljava/util/List;

    move-result-object p1

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;

    .line 323
    new-instance v11, Lin/dragonbra/javasteam/types/FileData;

    .line 324
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->getHashFileName()[B

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->getFlags()Ljava/util/EnumSet;

    move-result-object v4

    .line 327
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->getTotalSize()J

    move-result-wide v5

    .line 328
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->getHashContent()[B

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 330
    iget-boolean v9, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    .line 331
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->getChunks()[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    move-result-object v1

    array-length v10, v1

    .line 323
    const-string v8, ""

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lin/dragonbra/javasteam/types/FileData;-><init>(Ljava/lang/String;[BLjava/util/EnumSet;J[BLjava/lang/String;ZI)V

    .line 334
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->getChunks()[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    move-result-object v0

    .line 13805
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7f
    if-ge v2, v1, :cond_aa

    aget-object v3, v0, v2

    .line 335
    new-instance v12, Lin/dragonbra/javasteam/types/ChunkData;

    .line 336
    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->getChunkGID()[B

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->getChecksum()I

    move-result v6

    .line 338
    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->getOffset()J

    move-result-wide v7

    .line 339
    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->getCompressedSize()I

    move-result v9

    .line 340
    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->getDecompressedSize()I

    move-result v10

    move-object v4, v12

    .line 335
    invoke-direct/range {v4 .. v10}, Lin/dragonbra/javasteam/types/ChunkData;-><init>([BIJII)V

    .line 342
    invoke-virtual {v11}, Lin/dragonbra/javasteam/types/FileData;->getChunks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 345
    :cond_aa
    iget-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_b0
    return-void
.end method

.method private final parseProtobufManifestMetadata(Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;)V
    .registers 4

    .line 380
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->getFilenamesEncrypted()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    .line 381
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->getDepotId()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->depotID:I

    .line 382
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->getGidManifest()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->manifestGID:J

    .line 383
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->getCreationTime()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->creationTime:Ljava/util/Date;

    .line 384
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->getCbDiskOriginal()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalUncompressedSize:J

    .line 385
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->getCbDiskCompressed()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalCompressedSize:J

    .line 386
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->getCrcEncrypted()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->encryptedCRC:I

    return-void
.end method

.method private final parseProtobufManifestPayload(Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;)V
    .registers 14

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;->getMappingsCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;->getMappingsList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getMappingsList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;

    .line 353
    new-instance v11, Lin/dragonbra/javasteam/types/FileData;

    .line 354
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getFilename()Ljava/lang/String;

    move-result-object v2

    const-string v1, "getFilename(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getShaFilename()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    const-string v1, "toByteArray(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getFlags()I

    move-result v4

    invoke-static {v4}, Lin/dragonbra/javasteam/enums/EDepotFileFlag;->from(I)Ljava/util/EnumSet;

    move-result-object v4

    const-string v5, "from(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getSize()J

    move-result-wide v5

    .line 358
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getShaContent()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getLinktarget()Ljava/lang/String;

    move-result-object v8

    const-string v1, "getLinktarget(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iget-boolean v9, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    .line 361
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getChunksList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    move-object v1, v11

    .line 353
    invoke-direct/range {v1 .. v10}, Lin/dragonbra/javasteam/types/FileData;-><init>(Ljava/lang/String;[BLjava/util/EnumSet;J[BLjava/lang/String;ZI)V

    .line 364
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->getChunksList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getChunksList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;

    .line 365
    new-instance v9, Lin/dragonbra/javasteam/types/ChunkData;

    .line 366
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;->getSha()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 367
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;->getCrc()I

    move-result v4

    .line 368
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;->getOffset()J

    move-result-wide v5

    .line 369
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;->getCbCompressed()I

    move-result v7

    .line 370
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;->getCbOriginal()I

    move-result v8

    move-object v2, v9

    .line 365
    invoke-direct/range {v2 .. v8}, Lin/dragonbra/javasteam/types/ChunkData;-><init>([BIJII)V

    .line 372
    invoke-virtual {v11}, Lin/dragonbra/javasteam/types/FileData;->getChunks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 375
    :cond_ae
    iget-object v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_b5
    return-void
.end method


# virtual methods
.method public final decryptFilenames([B)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "encryptionKey"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-boolean v2, v0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    const/4 v3, 0x1

    if-nez v2, :cond_f

    return v3

    .line 128
    :cond_f
    array-length v2, v1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_148

    .line 131
    sget-object v2, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 132
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 133
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v14, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v1, 0x10

    .line 135
    new-array v1, v1, [B

    .line 136
    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 137
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/16 v5, 0x100

    new-array v6, v5, [B

    iput-object v6, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 138
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v5, v5, [B

    iput-object v5, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 211
    :try_start_46
    iget-object v5, v0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    .line 1869
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v11, 0x0

    if-eqz v5, :cond_104

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lin/dragonbra/javasteam/types/FileData;

    .line 212
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 214
    invoke-virtual {v10}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object v17

    new-instance v8, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda0;

    invoke-direct {v8, v9}, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_100

    move-object v5, v13

    move-object v6, v12

    move-object v7, v4

    move-object/from16 v18, v8

    move-object v8, v14

    move-object v3, v9

    move-object v9, v2

    move-object v0, v10

    move-object v10, v15

    move-object/from16 p1, v15

    move v15, v11

    move-object/from16 v11, v17

    move-object v15, v12

    move-object v12, v1

    move-object/from16 v19, v1

    move-object v1, v13

    move-object/from16 v13, v18

    :try_start_7e
    invoke-static/range {v5 .. v13}, Lin/dragonbra/javasteam/types/DepotManifest;->decryptFilenames$tryDecryptName(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljavax/crypto/Cipher;Ljavax/crypto/spec/SecretKeySpec;Ljavax/crypto/Cipher;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;)Z

    move-result v5
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_a4

    if-nez v5, :cond_9b

    .line 230
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    .line 231
    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    .line 218
    :cond_9b
    :try_start_9b
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_a7

    const-string v3, ""

    goto :goto_a7

    :catchall_a4
    move-exception v0

    goto/16 :goto_132

    :cond_a7
    :goto_a7
    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/types/FileData;->setFileName(Ljava/lang/String;)V

    .line 220
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 221
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/FileData;->getLinkTarget()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_bc

    goto :goto_f5

    .line 222
    :cond_bc
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/FileData;->getLinkTarget()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v13, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda1;

    invoke-direct {v13, v3}, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v5, v1

    move-object v6, v15

    move-object v7, v4

    move-object v8, v14

    move-object v9, v2

    move-object/from16 v10, p1

    move-object/from16 v12, v19

    invoke-static/range {v5 .. v13}, Lin/dragonbra/javasteam/types/DepotManifest;->decryptFilenames$tryDecryptName(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljavax/crypto/Cipher;Ljavax/crypto/spec/SecretKeySpec;Ljavax/crypto/Cipher;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;)Z

    move-result v5
    :try_end_d5
    .catchall {:try_start_9b .. :try_end_d5} :catchall_a4

    if-nez v5, :cond_ee

    .line 230
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    .line 231
    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    .line 226
    :cond_ee
    :try_start_ee
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/types/FileData;->setLinkTarget(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_a4

    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    move-object v13, v1

    move-object v12, v15

    move-object/from16 v1, v19

    const/4 v3, 0x1

    move-object/from16 v15, p1

    goto/16 :goto_4c

    :catchall_100
    move-exception v0

    move-object v15, v12

    move-object v1, v13

    goto :goto_132

    :cond_104
    move-object v15, v12

    move-object v1, v13

    .line 230
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    .line 231
    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    move-object/from16 v0, p0

    .line 236
    iget-object v1, v0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->getCASE_INSENSITIVE_ORDER(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lin/dragonbra/javasteam/types/DepotManifest$decryptFilenames$$inlined$compareBy$1;

    invoke-direct {v3, v2}, Lin/dragonbra/javasteam/types/DepotManifest$decryptFilenames$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 238
    iput-boolean v1, v0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    const/4 v0, 0x1

    return v0

    .line 230
    :goto_132
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [B

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    .line 231
    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [B

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    throw v0

    .line 128
    :cond_148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decrypt filnames used with non 32 byte key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCreationTime()Ljava/util/Date;
    .registers 1

    .line 101
    iget-object p0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->creationTime:Ljava/util/Date;

    return-object p0
.end method

.method public final getDepotID()I
    .registers 1

    .line 91
    iget p0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->depotID:I

    return p0
.end method

.method public final getEncryptedCRC()I
    .registers 1

    .line 116
    iget p0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->encryptedCRC:I

    return p0
.end method

.method public final getFilenamesEncrypted()Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    return p0
.end method

.method public final getFiles()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lin/dragonbra/javasteam/types/FileData;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getManifestGID()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->manifestGID:J

    return-wide v0
.end method

.method public final getTotalCompressedSize()J
    .registers 3

    .line 111
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalCompressedSize:J

    return-wide v0
.end method

.method public final getTotalUncompressedSize()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalUncompressedSize:J

    return-wide v0
.end method

.method public final saveToFile(Ljava/lang/String;)V
    .registers 4

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    .line 247
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 248
    :try_start_f
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/DepotManifest;->serialize(Ljava/io/OutputStream;)V

    .line 249
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    const/4 p0, 0x0

    .line 247
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    throw p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final serialize(Ljava/io/OutputStream;)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "output"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$Builder;

    move-result-object v2

    .line 409
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 412
    const-string v4, "SHA-1"

    sget-object v5, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 414
    iget-object v4, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    .line 1869
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/types/FileData;

    .line 415
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    move-result-object v6

    .line 416
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setSize(J)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 417
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getFlags()Ljava/util/EnumSet;

    move-result-object v7

    invoke-static {v7}, Lin/dragonbra/javasteam/enums/EDepotFileFlag;->code(Ljava/util/EnumSet;)I

    move-result v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setFlags(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 420
    iget-boolean v7, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    if-eqz v7, :cond_56

    .line 422
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setFilename(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 423
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getFileNameHash()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setShaFilename(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    goto :goto_98

    .line 425
    :cond_56
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/16 v9, 0x2f

    const/16 v10, 0x5c

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setFilename(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 428
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 429
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "getDefault(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toLowerCase(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v8, "getBytes(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-static {v7}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->shaHash([B)[B

    move-result-object v7

    .line 426
    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setShaFilename(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 436
    :goto_98
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getFileHash()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setShaContent(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 438
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getLinkTarget()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b7

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b0

    goto :goto_b7

    .line 439
    :cond_b0
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getLinkTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->setLinktarget(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 442
    :cond_b7
    :goto_b7
    invoke-virtual {v5}, Lin/dragonbra/javasteam/types/FileData;->getChunks()Ljava/util/List;

    move-result-object v5

    .line 1869
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lin/dragonbra/javasteam/types/ChunkData;

    .line 443
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;

    move-result-object v8

    .line 444
    invoke-virtual {v7}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;->setSha(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;

    .line 445
    invoke-virtual {v7}, Lin/dragonbra/javasteam/types/ChunkData;->getChecksum()I

    move-result v9

    invoke-virtual {v8, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;->setCrc(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;

    .line 446
    invoke-virtual {v7}, Lin/dragonbra/javasteam/types/ChunkData;->getOffset()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;->setOffset(J)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;

    .line 447
    invoke-virtual {v7}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v9

    invoke-virtual {v8, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;->setCbOriginal(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;

    .line 448
    invoke-virtual {v7}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v9

    invoke-virtual {v8, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;->setCbCompressed(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;

    .line 449
    invoke-virtual {v8}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;

    move-result-object v8

    .line 451
    invoke-virtual {v6, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->addChunks(Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$ChunkData;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;

    .line 452
    new-instance v8, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;

    invoke-virtual {v7}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v7}, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;-><init>([B)V

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 455
    :cond_10d
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;

    move-result-object v5

    invoke-virtual {v2, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$Builder;->addMappings(Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$FileMapping;)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$Builder;

    goto/16 :goto_1d

    .line 458
    :cond_116
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    move-result-object v4

    .line 459
    iget v5, p0, Lin/dragonbra/javasteam/types/DepotManifest;->depotID:I

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setDepotId(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 460
    iget-wide v5, p0, Lin/dragonbra/javasteam/types/DepotManifest;->manifestGID:J

    invoke-virtual {v4, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setGidManifest(J)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 461
    iget-object v5, p0, Lin/dragonbra/javasteam/types/DepotManifest;->creationTime:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setCreationTime(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 462
    iget-boolean v5, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setFilenamesEncrypted(Z)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 463
    iget-wide v5, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalUncompressedSize:J

    invoke-virtual {v4, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setCbDiskOriginal(J)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 464
    iget-wide v5, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalCompressedSize:J

    invoke-virtual {v4, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setCbDiskCompressed(J)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 465
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setUniqueChunks(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 469
    new-instance v3, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V

    .line 470
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;

    move-result-object v5

    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V

    .line 472
    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v6, v5, 0x4

    .line 473
    new-array v6, v6, [B

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    shr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    shr-int/lit8 v10, v5, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 480
    new-array v11, v1, [B

    aput-byte v7, v11, v0

    const/4 v7, 0x1

    aput-byte v8, v11, v7

    const/4 v7, 0x2

    aput-byte v9, v11, v7

    const/4 v7, 0x3

    aput-byte v10, v11, v7

    .line 482
    invoke-static {v11, v0, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7, v0, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    invoke-static {v6}, Lin/dragonbra/javasteam/util/Utils;->crc32([B)J

    move-result-wide v5

    long-to-int v1, v5

    .line 486
    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->close()V

    .line 488
    iget-boolean v3, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    if-eqz v3, :cond_19d

    .line 489
    invoke-virtual {v4, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setCrcEncrypted(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 490
    invoke-virtual {v4, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setCrcClear(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    goto :goto_1a5

    .line 492
    :cond_19d
    iget p0, p0, Lin/dragonbra/javasteam/types/DepotManifest;->encryptedCRC:I

    invoke-virtual {v4, p0}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setCrcEncrypted(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 493
    invoke-virtual {v4, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->setCrcClear(I)Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;

    .line 496
    :goto_1a5
    new-instance p0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 499
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestPayload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    const v1, 0x71f617d0

    .line 500
    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 501
    array-length v1, p1

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 502
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 505
    invoke-virtual {v4}, Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/ContentManifest$ContentManifestMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    const v1, 0x1f4812be

    .line 506
    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 507
    array-length v1, p1

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 508
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    const p1, 0x1b81b817

    .line 511
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 512
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    const p1, 0x32c415ab

    .line 515
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 517
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final setCreationTime(Ljava/util/Date;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->creationTime:Ljava/util/Date;

    return-void
.end method

.method public final setDepotID(I)V
    .registers 2

    .line 91
    iput p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->depotID:I

    return-void
.end method

.method public final setEncryptedCRC(I)V
    .registers 2

    .line 116
    iput p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->encryptedCRC:I

    return-void
.end method

.method public final setFilenamesEncrypted(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->filenamesEncrypted:Z

    return-void
.end method

.method public final setFiles(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lin/dragonbra/javasteam/types/FileData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public final setManifestGID(J)V
    .registers 3

    .line 96
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->manifestGID:J

    return-void
.end method

.method public final setTotalCompressedSize(J)V
    .registers 3

    .line 111
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalCompressedSize:J

    return-void
.end method

.method public final setTotalUncompressedSize(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/DepotManifest;->totalUncompressedSize:J

    return-void
.end method

###### Class in.dragonbra.javasteam.types.DepotManifest.Companion (in.dragonbra.javasteam.types.DepotManifest$Companion)
.class public final Lin/dragonbra/javasteam/types/DepotManifest$Companion;
.super Ljava/lang/Object;
.source "DepotManifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/DepotManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepotManifest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepotManifest.kt\nin/dragonbra/javasteam/types/DepotManifest$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,520:1\n1#2:521\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Ljava/io/InputStream;)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 2

    const-string p0, "stream"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p0, Lin/dragonbra/javasteam/types/DepotManifest;

    invoke-direct {p0}, Lin/dragonbra/javasteam/types/DepotManifest;-><init>()V

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest;->access$internalDeserialize(Lin/dragonbra/javasteam/types/DepotManifest;Ljava/io/InputStream;)V

    return-object p0
.end method

.method public final deserialize([B)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 3

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    :try_start_a
    sget-object p1, Lin/dragonbra/javasteam/types/DepotManifest;->Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;->deserialize(Ljava/io/InputStream;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_15

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_15
    move-exception p1

    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final loadFromFile(Ljava/lang/String;)Lin/dragonbra/javasteam/types/DepotManifest;
    .registers 3

    const-string p0, "filename"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_12

    return-object v0

    .line 68
    :cond_12
    new-instance p1, Ljava/io/FileInputStream;

    .line 71
    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    :try_start_17
    sget-object p0, Lin/dragonbra/javasteam/types/DepotManifest;->Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;->deserialize(Ljava/io/InputStream;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_21

    .line 71
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_21
    move-exception p0

    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class in.dragonbra.javasteam.types.DepotManifest.serialize.ByteArrayKey (in.dragonbra.javasteam.types.DepotManifest$serialize$ByteArrayKey)
.class public final Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;
.super Ljava/lang/Object;
.source "DepotManifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/types/DepotManifest;->serialize(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayKey"
.end annotation


# instance fields
.field private final byteArray:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;->byteArray:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 396
    instance-of v0, p1, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;->byteArray:[B

    check-cast p1, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;

    iget-object p1, p1, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;->byteArray:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 398
    iget-object p0, p0, Lin/dragonbra/javasteam/types/DepotManifest$serialize$ByteArrayKey;->byteArray:[B

    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_24

    const/4 v0, 0x0

    .line 399
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 400
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 401
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 402
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    goto :goto_28

    .line 404
    :cond_24
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    :goto_28
    return p0
.end method

###### Class in.dragonbra.javasteam.types.DepotManifest$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.types.DepotManifest$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest;->$r8$lambda$mpyr-HLDN8cf7JQL4QqwP6REAm8(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.DepotManifest$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.types.DepotManifest$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/DepotManifest$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/DepotManifest;->$r8$lambda$lbwdfNDYgnX5DClaGecEHySf4hs(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.DepotManifest$decryptFilenames$$inlined$compareBy$1 (in.dragonbra.javasteam.types.DepotManifest$decryptFilenames$$inlined$compareBy$1)
.class public final Lin/dragonbra/javasteam/types/DepotManifest$decryptFilenames$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/types/DepotManifest;->decryptFilenames([B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$3\n+ 2 DepotManifest.kt\nin/dragonbra/javasteam/types/DepotManifest\n*L\n1#1,328:1\n236#2:329\n*E\n"
.end annotation


# instance fields
.field final synthetic $comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/types/DepotManifest$decryptFilenames$$inlined$compareBy$1;->$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 112
    iget-object p0, p0, Lin/dragonbra/javasteam/types/DepotManifest$decryptFilenames$$inlined$compareBy$1;->$comparator:Ljava/util/Comparator;

    check-cast p1, Lin/dragonbra/javasteam/types/FileData;

    .line 236
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 112
    check-cast p2, Lin/dragonbra/javasteam/types/FileData;

    .line 236
    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
