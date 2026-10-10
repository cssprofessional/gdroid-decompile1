###### Class com.gmodvr.flat.AnniversaryShaderOverride (com.gmodvr.flat.AnniversaryShaderOverride)
.class public final Lcom/gmodvr/flat/AnniversaryShaderOverride;
.super Ljava/lang/Object;
.source "AnniversaryShaderOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;
    }
.end annotation


# static fields
.field public static final EXPECTED_DYNAMIC_COMBOS:I = 0x60

.field private static final MAX_VPK_TREE_BYTES:J = 0x4000000L

.field public static final OVERLAY_SUBDIR:Ljava/lang/String; = "anniversary"

.field private static final PROBE_ENTRY:Ljava/lang/String; = "shaders/fxc/lightmappedgeneric_ps20b.vcs"

.field private static final PROBE_VPK_BASE:Ljava/lang/String; = "hl2_misc"

.field private static final VCS_DYNAMIC_COMBOS_OFFSET:I = 0x8

.field private static final VCS_HEADER_PROBE_BYTES:I = 0xc

.field private static final VPK_EMBEDDED_ARCHIVE:I = 0x7fff

.field private static final VPK_SIGNATURE:J = 0x55aa1234L


# direct methods
.method public static bridge synthetic -$$Nest$smreadUnsignedIntLE([BI)J
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readUnsignedIntLE([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRequired(Ljava/io/File;)Z
    .registers 2

    .line 30
    invoke-static {p0}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->probeDynamicCombos(Ljava/io/File;)I

    move-result p0

    if-lez p0, :cond_c

    const/16 v0, 0x60

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static probeDynamicCombos(Ljava/io/File;)I
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 37
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readProbeDynamicCombos(Ljava/io/File;)I

    move-result p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    return v0
.end method

.method private static readDynamicCombos(Ljava/io/File;Ljava/io/File;[BIIIJJJ)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 101
    new-array v1, v0, [B

    move/from16 v2, p4

    .line 103
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_13

    move-object v4, p2

    move v5, p3

    .line 105
    invoke-static {p2, p3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    if-ge v2, v0, :cond_74

    rsub-int/lit8 v0, v2, 0xc

    int-to-long v4, v0

    cmp-long v6, p8, v4

    if-gez v6, :cond_1e

    return v3

    :cond_1e
    const/16 v6, 0x7fff

    move/from16 v7, p5

    if-ne v7, v6, :cond_29

    add-long v6, p10, p6

    move-wide v7, v6

    move-object v6, p1

    goto :goto_43

    .line 117
    :cond_29
    new-instance v6, Ljava/io/File;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 118
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "hl2_misc"

    filled-new-array {v9, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v9, "%s_%03d.vpk"

    invoke-static {v8, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v8, p0

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-wide/from16 v7, p6

    .line 121
    :goto_43
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_4a

    return v3

    .line 122
    :cond_4a
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v10, "r"

    invoke-direct {v9, v6, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-long/2addr v4, v7

    .line 123
    :try_start_52
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_68

    cmp-long v4, v4, v10

    if-lez v4, :cond_5e

    .line 126
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    return v3

    .line 124
    :cond_5e
    :try_start_5e
    invoke-virtual {v9, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    invoke-virtual {v9, v1, v2, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_68

    .line 126
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_74

    :catchall_68
    move-exception v0

    move-object v1, v0

    .line 122
    :try_start_6a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_73

    :catchall_6e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_73
    throw v1

    :cond_74
    :goto_74
    const/16 v0, 0x8

    .line 128
    invoke-static {v1, v0}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readUnsignedIntLE([BI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static readProbeDynamicCombos(Ljava/io/File;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v2, Ljava/io/File;

    const-string v0, "hl2_misc_dir.vpk"

    move-object/from16 v1, p0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_11

    return v3

    .line 50
    :cond_11
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    :try_start_18
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_117

    const-wide/16 v7, 0xc

    cmp-long v0, v5, v7

    if-gez v0, :cond_26

    .line 64
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return v3

    .line 52
    :cond_26
    :try_start_26
    invoke-static {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readUnsignedIntLE(Ljava/io/RandomAccessFile;)J

    move-result-wide v5

    .line 53
    invoke-static {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readUnsignedIntLE(Ljava/io/RandomAccessFile;)J

    move-result-wide v7

    .line 54
    invoke-static {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readUnsignedIntLE(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    const-wide/32 v11, 0x55aa1234

    cmp-long v0, v5, v11

    if-nez v0, :cond_45

    const-wide/16 v5, 0x1

    cmp-long v0, v7, v5

    if-eqz v0, :cond_48

    const-wide/16 v5, 0x2

    cmp-long v5, v7, v5

    if-eqz v5, :cond_48

    :cond_45
    move v0, v3

    goto/16 :goto_11f

    :cond_48
    if-nez v0, :cond_4d

    const/16 v0, 0xc

    goto :goto_4f

    :cond_4d
    const/16 v0, 0x1c

    :goto_4f
    const-wide/16 v5, 0x0

    cmp-long v5, v9, v5

    if-lez v5, :cond_11a

    const-wide/32 v5, 0x4000000

    cmp-long v5, v9, v5

    if-gtz v5, :cond_11a

    int-to-long v5, v0

    add-long v11, v5, v9

    .line 58
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    cmp-long v0, v11, v7

    if-lez v0, :cond_69

    goto/16 :goto_11a

    .line 61
    :cond_69
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v9

    .line 62
    new-array v0, v0, [B

    .line 63
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_72
    .catchall {:try_start_26 .. :try_end_72} :catchall_117

    .line 64
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 66
    new-instance v4, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;

    invoke-direct {v4, v0}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;-><init>([B)V

    .line 68
    :goto_7a
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_85

    return v3

    .line 71
    :cond_85
    :goto_85
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_90

    goto :goto_7a

    .line 74
    :cond_90
    :goto_90
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readString()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9b

    goto :goto_85

    .line 76
    :cond_9b
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readUnsignedIntLE()J

    .line 77
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readUnsignedShortLE()I

    move-result v8

    .line 78
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readUnsignedShortLE()I

    move-result v9

    .line 79
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readUnsignedIntLE()J

    move-result-wide v13

    .line 80
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readUnsignedIntLE()J

    move-result-wide v15

    .line 81
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->readUnsignedShortLE()I

    move-result v10

    const v1, 0xffff

    if-eq v10, v1, :cond_b8

    return v3

    .line 82
    :cond_b8
    invoke-virtual {v4}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->position()I

    move-result v10

    .line 83
    invoke-virtual {v4, v8}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->skip(I)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    const-string v3, ""

    move-object/from16 v17, v4

    goto :goto_e4

    :cond_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_e4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v3, "shaders/fxc/lightmappedgeneric_ps20b.vcs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, v17

    goto :goto_90

    :cond_10a
    move-object/from16 v1, p0

    move-object v3, v0

    move v4, v10

    move v5, v8

    move v6, v9

    move-wide v7, v13

    move-wide v9, v15

    .line 88
    invoke-static/range {v1 .. v12}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readDynamicCombos(Ljava/io/File;Ljava/io/File;[BIIIJJJ)I

    move-result v0

    return v0

    :catchall_117
    move-exception v0

    move-object v1, v0

    goto :goto_123

    .line 64
    :cond_11a
    :goto_11a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    return v0

    :goto_11f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return v0

    .line 50
    :goto_123
    :try_start_123
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_12c

    :catchall_127
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12c
    throw v1
.end method

.method private static readUnsignedIntLE(Ljava/io/RandomAccessFile;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 132
    new-array v0, v0, [B

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p0, 0x0

    .line 134
    invoke-static {v0, p0}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->readUnsignedIntLE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readUnsignedIntLE([BI)J
    .registers 9

    .line 138
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

###### Class com.gmodvr.flat.AnniversaryShaderOverride.Cursor (com.gmodvr.flat.AnniversaryShaderOverride$Cursor)
.class final Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;
.super Ljava/lang/Object;
.source "AnniversaryShaderOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/AnniversaryShaderOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cursor"
.end annotation


# instance fields
.field private at:I

.field private final buffer:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->buffer:[B

    return-void
.end method

.method private require(I)V
    .registers 3

    .line 187
    iget v0, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->buffer:[B

    array-length p0, p0

    if-gt v0, p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VPK tree overrun"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public position()I
    .registers 1

    .line 153
    iget p0, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    return p0
.end method

.method public readString()Ljava/lang/String;
    .registers 7

    .line 164
    iget v0, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    .line 165
    :goto_2
    iget-object v1, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->buffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-byte v2, v1, v0

    if-eqz v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :cond_e
    array-length v2, v1

    if-ge v0, v2, :cond_21

    .line 167
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    sub-int v4, v0, v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v0, v0, 0x1

    .line 168
    iput v0, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    return-object v2

    .line 166
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unterminated VPK string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readUnsignedIntLE()J
    .registers 5

    const/4 v0, 0x4

    .line 180
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->require(I)V

    .line 181
    iget-object v1, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->buffer:[B

    iget v2, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    invoke-static {v1, v2}, Lcom/gmodvr/flat/AnniversaryShaderOverride;->-$$Nest$smreadUnsignedIntLE([BI)J

    move-result-wide v1

    .line 182
    iget v3, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    return-wide v1
.end method

.method public readUnsignedShortLE()I
    .registers 6

    const/4 v0, 0x2

    .line 173
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->require(I)V

    .line 174
    iget-object v1, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->buffer:[B

    iget v2, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/2addr v2, v0

    .line 175
    iput v2, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    return v1
.end method

.method public skip(I)V
    .registers 5

    if-ltz p1, :cond_f

    .line 157
    iget v0, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->buffer:[B

    array-length v2, v2

    if-gt v1, v2, :cond_f

    add-int/2addr v0, p1

    .line 160
    iput v0, p0, Lcom/gmodvr/flat/AnniversaryShaderOverride$Cursor;->at:I

    return-void

    .line 158
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VPK tree overrun"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
