###### Class in.dragonbra.javasteam.steam.cdn.DepotChunk (in.dragonbra.javasteam.steam.cdn.DepotChunk)
.class public final Lin/dragonbra/javasteam/steam/cdn/DepotChunk;
.super Ljava/lang/Object;
.source "DepotChunk.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepotChunk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepotChunk.kt\nin/dragonbra/javasteam/steam/cdn/DepotChunk\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lin/dragonbra/javasteam/steam/cdn/DepotChunk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/cdn/DepotChunk;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/cdn/DepotChunk;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/DepotChunk;->INSTANCE:Lin/dragonbra/javasteam/steam/cdn/DepotChunk;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final process(Lin/dragonbra/javasteam/types/ChunkData;[B[B[B)I
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "info"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "destination"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "depotKey"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    array-length v3, v1

    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v5

    if-lt v3, v5, :cond_1f3

    .line 42
    array-length v3, v2

    const/16 v5, 0x20

    if-ne v3, v5, :cond_1eb

    .line 45
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v3, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 46
    sget-object v2, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    const-string v5, "AES/ECB/NoPadding"

    invoke-static {v5, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v6, 0x2

    .line 47
    invoke-virtual {v5, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v7, 0x10

    .line 49
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 50
    invoke-virtual {v5, v0, v9, v7, v8}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v5

    .line 52
    const-string v10, ")"

    const-string v11, " != "

    if-ne v7, v5, :cond_1c7

    .line 54
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 55
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v6, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    array-length v3, v0

    sub-int/2addr v3, v7

    new-array v12, v3, [B

    .line 63
    :try_start_5c
    array-length v5, v0

    sub-int/2addr v5, v7

    invoke-virtual {v2, v0, v7, v5, v12}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v0

    if-lt v3, v7, :cond_16d

    .line 72
    aget-byte v2, v12, v9

    const/16 v3, 0x61

    const/16 v5, 0x5a

    const/16 v7, 0x56

    const/4 v8, 0x3

    const/4 v13, 0x1

    if-ne v2, v7, :cond_8d

    .line 73
    aget-byte v14, v12, v13

    const/16 v15, 0x53

    if-ne v14, v15, :cond_8d

    .line 74
    aget-byte v14, v12, v6

    if-ne v14, v5, :cond_8d

    .line 75
    aget-byte v14, v12, v8

    if-ne v14, v3, :cond_8d

    .line 79
    invoke-static {v12, v9, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object v0

    .line 78
    invoke-static {v0, v1, v9}, Lin/dragonbra/javasteam/util/VZstdUtil;->decompress([B[BZ)I

    move-result v0

    goto :goto_d1

    :catchall_87
    move-exception v0

    goto/16 :goto_1bc

    :catch_8a
    move-exception v0

    goto/16 :goto_189

    :cond_8d
    const/4 v14, 0x0

    if-ne v2, v7, :cond_b0

    .line 84
    aget-byte v7, v12, v13

    if-ne v7, v5, :cond_b0

    .line 85
    aget-byte v5, v12, v6

    if-ne v5, v3, :cond_b0

    .line 88
    new-instance v2, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v2, v12, v9, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BII)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_9d} :catch_8a
    .catchall {:try_start_5c .. :try_end_9d} :catchall_87

    .line 89
    :try_start_9d
    invoke-static {v2, v1, v9}, Lin/dragonbra/javasteam/util/VZipUtil;->decompress(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZ)I

    move-result v0

    .line 94
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_a7

    .line 88
    :try_start_a3
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_8a
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_87

    goto :goto_d1

    :catchall_a7
    move-exception v0

    move-object v1, v0

    :try_start_a9
    throw v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception v0

    move-object v3, v0

    :try_start_ac
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_b0
    const/16 v3, 0x50

    const/4 v5, 0x4

    if-ne v2, v3, :cond_149

    .line 96
    aget-byte v2, v12, v13

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_149

    .line 97
    aget-byte v2, v12, v6

    if-ne v2, v8, :cond_149

    .line 98
    aget-byte v2, v12, v8

    if-ne v2, v5, :cond_149

    .line 104
    new-instance v2, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v2, v12, v9, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BII)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c8} :catch_8a
    .catchall {:try_start_ac .. :try_end_c8} :catchall_87

    .line 105
    :try_start_c8
    invoke-static {v2, v1, v9}, Lin/dragonbra/javasteam/util/ZipUtil;->decompress(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZ)I

    move-result v0

    .line 110
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_140

    .line 104
    :try_start_ce
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_8a
    .catchall {:try_start_ce .. :try_end_d1} :catchall_87

    :goto_d1
    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 120
    invoke-static/range {v12 .. v17}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v2

    if-ne v2, v0, :cond_11a

    .line 130
    invoke-static {v9, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v1

    invoke-static {v1}, Lin/dragonbra/javasteam/util/Adler32;->calculate([B)I

    move-result v1

    .line 132
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/types/ChunkData;->getChecksum()I

    move-result v2

    if-ne v1, v2, :cond_f4

    return v0

    .line 133
    :cond_f4
    new-instance v0, Ljava/io/IOException;

    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/types/ChunkData;->getChecksum()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processed data checksum is incorrect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")! Downloaded depot chunk is corrupt or invalid/wrong depot key?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_11a
    new-instance v1, Ljava/io/IOException;

    .line 126
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processed data checksum failed to decompress to the expected chunk uncompressed length. (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", should be "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_140
    move-exception v0

    move-object v1, v0

    .line 104
    :try_start_142
    throw v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_143

    :catchall_143
    move-exception v0

    move-object v3, v0

    :try_start_145
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 112
    :cond_149
    new-instance v0, Ljava/io/IOException;

    .line 114
    invoke-static {v12, v9, v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lin/dragonbra/javasteam/util/Strings;->toHex([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected depot chunk compression (first four bytes are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_16d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough data in the decrypted depot chunk (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_189} :catch_8a
    .catchall {:try_start_145 .. :try_end_189} :catchall_87

    .line 118
    :goto_189
    :try_start_189
    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object v2

    invoke-static {v2}, Lin/dragonbra/javasteam/util/Strings;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decompress chunk "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1bc
    .catchall {:try_start_189 .. :try_end_1bc} :catchall_87

    :goto_1bc
    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 120
    invoke-static/range {v12 .. v17}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([BBIIILjava/lang/Object;)V

    throw v0

    .line 52
    :cond_1c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decrypt depot chunk iv ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_1eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to decrypt depot chunk with non 32 byte key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1f3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination buffer must be longer than the chunk uncompressedLength."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
