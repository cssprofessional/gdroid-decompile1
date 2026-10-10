###### Class in.dragonbra.javasteam.util.stream.MemoryStream (in.dragonbra.javasteam.util.stream.MemoryStream)
.class public Lin/dragonbra/javasteam/util/stream/MemoryStream;
.super Ljava/io/InputStream;
.source "MemoryStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/util/stream/MemoryStream$OutputStreamWrapper;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private final bufferVisible:Z

.field private capacity:I

.field private final expandable:Z

.field private length:I

.field private mark:I

.field private final origin:I

.field private position:I

.field private final writable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    new-array v0, p1, [B

    iput-object v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    .line 42
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->capacity:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    .line 44
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    .line 45
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->writable:Z

    .line 48
    iput-boolean p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->expandable:Z

    .line 49
    iput-boolean p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->bufferVisible:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 102
    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BIIZZ)V

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 115
    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BIIZZ)V

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .registers 6

    .line 129
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 130
    iput-object p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    add-int/2addr p3, p2

    .line 132
    iput p3, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->capacity:I

    .line 133
    iput p3, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    .line 134
    iput p2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    .line 135
    iput p2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    .line 137
    iput-boolean p4, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->writable:Z

    .line 138
    iput-boolean p5, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->bufferVisible:Z

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->expandable:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 81
    iput-object p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    .line 83
    array-length v0, p1

    iput v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->capacity:I

    .line 84
    array-length p1, p1

    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    .line 86
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    .line 88
    iput-boolean p2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->writable:Z

    const/4 p2, 0x1

    .line 89
    iput-boolean p2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->expandable:Z

    .line 90
    iput-boolean p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->bufferVisible:Z

    return-void
.end method

.method private clearBuffer(II)V
    .registers 4

    .line 365
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private expand(I)Z
    .registers 3

    .line 369
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->capacity:I

    if-le p1, v0, :cond_17

    const/16 v0, 0x100

    .line 370
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 371
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 373
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->setCapacity(I)V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 396
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream$OutputStreamWrapper;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream$OutputStreamWrapper;-><init>(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V

    return-object v0
.end method

.method public available()I
    .registers 2

    .line 144
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    iget p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public close()V
    .registers 1

    .line 0
    return-void
.end method

.method public getBuffer()[B
    .registers 2

    .line 204
    iget-boolean v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->bufferVisible:Z

    if-eqz v0, :cond_7

    .line 207
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    return-object p0

    .line 205
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call getBuffer()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCapacity()I
    .registers 2

    .line 216
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->capacity:I

    iget p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLength()J
    .registers 3

    .line 248
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    iget p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 280
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    iget p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public mark(I)V
    .registers 2

    .line 153
    iget p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->mark:I

    return-void
.end method

.method public markSupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .registers 4

    .line 168
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    iget v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-lt v0, v1, :cond_8

    const/4 p0, -0x1

    return p0

    .line 171
    :cond_8
    iget-object v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .registers 7

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 178
    :cond_4
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    iget v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-lt v0, v1, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    sub-int v2, v1, p3

    if-le v0, v2, :cond_12

    sub-int p3, v1, v0

    .line 184
    :cond_12
    iget-object v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    return p3
.end method

.method public readAllBytes()[B
    .registers 1

    .line 387
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .registers 2

    .line 163
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->mark:I

    iput v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    return-void
.end method

.method public seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J
    .registers 5

    .line 303
    sget-object v0, Lin/dragonbra/javasteam/util/stream/MemoryStream$1;->$SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1c

    const/4 v0, 0x3

    if-ne p3, v0, :cond_14

    .line 311
    iget p3, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    goto :goto_21

    .line 314
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "loc"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_1c
    iget p3, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    goto :goto_21

    .line 305
    :cond_1f
    iget p3, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    :goto_21
    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 317
    iput p3, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    int-to-long p0, p3

    return-wide p0
.end method

.method public setCapacity(I)V
    .registers 6

    .line 225
    iget-boolean v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->expandable:Z

    if-eqz v0, :cond_1f

    .line 228
    iget-object v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    if-eqz v0, :cond_c

    array-length v1, v0

    if-ne p1, v1, :cond_c

    return-void

    :cond_c
    if-lez p1, :cond_19

    .line 233
    new-array v1, p1, [B

    if-eqz v0, :cond_1a

    .line 235
    iget v2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 238
    :cond_1a
    :goto_1a
    iput-object v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    .line 239
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->capacity:I

    return-void

    .line 226
    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot expand this MemoryStream"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLength(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2c

    .line 259
    iget-boolean v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->writable:Z

    if-eqz v0, :cond_24

    long-to-int p1, p1

    .line 262
    iget p2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    add-int/2addr p1, p2

    .line 264
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->expand(I)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 265
    iget p2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-le p1, p2, :cond_1b

    .line 266
    invoke-direct {p0, p2, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->clearBuffer(II)V

    .line 269
    :cond_1b
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    .line 270
    iget p2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    if-le p2, p1, :cond_23

    .line 271
    iput p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    :cond_23
    return-void

    .line 260
    :cond_24
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot write to this stream."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 258
    :cond_2c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "MemoryStream length must be non-negative."

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPosition(J)V
    .registers 4

    .line 289
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->origin:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    return-void
.end method

.method public skip(J)J
    .registers 5

    .line 191
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    .line 192
    sget-object v1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->CURRENT:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    invoke-virtual {p0, p1, p2, v1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J

    move-result-wide p0

    int-to-long v0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public toByteArray()[B
    .registers 4

    .line 380
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    new-array v1, v0, [B

    .line 381
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public write([BII)V
    .registers 7

    .line 330
    iget-boolean v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->writable:Z

    if-eqz v0, :cond_2a

    .line 333
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    add-int/2addr v0, p3

    .line 334
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-le v0, v1, :cond_1a

    .line 335
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->expand(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 336
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    iget v2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-le v1, v2, :cond_1a

    .line 337
    invoke-direct {p0, v2, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->clearBuffer(II)V

    .line 341
    :cond_1a
    iget-object v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    iget v2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iput v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    .line 344
    iget p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-le v0, p1, :cond_29

    .line 345
    iput v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    :cond_29
    return-void

    .line 331
    :cond_2a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot write to this stream."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeByte(B)V
    .registers 5

    .line 350
    iget-boolean v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->writable:Z

    if-eqz v0, :cond_28

    .line 353
    iget v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    iget v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-lt v0, v1, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 355
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->expand(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 356
    iget v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    iget v2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    if-le v1, v2, :cond_1b

    .line 357
    invoke-direct {p0, v2, v1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->clearBuffer(II)V

    .line 359
    :cond_1b
    iput v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->length:I

    .line 361
    :cond_1d
    iget-object v0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->buffer:[B

    iget v1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;->position:I

    aput-byte p1, v0, v1

    return-void

    .line 351
    :cond_28
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot write to this stream."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class in.dragonbra.javasteam.util.stream.MemoryStream.AnonymousClass1 (in.dragonbra.javasteam.util.stream.MemoryStream$1)
.class synthetic Lin/dragonbra/javasteam/util/stream/MemoryStream$1;
.super Ljava/lang/Object;
.source "MemoryStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/util/stream/MemoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 303
    invoke-static {}, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->values()[Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lin/dragonbra/javasteam/util/stream/MemoryStream$1;->$SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin:[I

    :try_start_9
    sget-object v1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->BEGIN:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lin/dragonbra/javasteam/util/stream/MemoryStream$1;->$SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin:[I

    sget-object v1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->CURRENT:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lin/dragonbra/javasteam/util/stream/MemoryStream$1;->$SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin:[I

    sget-object v1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->END:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class in.dragonbra.javasteam.util.stream.MemoryStream.OutputStreamWrapper (in.dragonbra.javasteam.util.stream.MemoryStream$OutputStreamWrapper)
.class Lin/dragonbra/javasteam/util/stream/MemoryStream$OutputStreamWrapper;
.super Ljava/io/OutputStream;
.source "MemoryStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/util/stream/MemoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStreamWrapper"
.end annotation


# instance fields
.field private final memoryStream:Lin/dragonbra/javasteam/util/stream/MemoryStream;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V
    .registers 2

    .line 402
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 403
    iput-object p1, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream$OutputStreamWrapper;->memoryStream:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2

    .line 413
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream$OutputStreamWrapper;->memoryStream:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->writeByte(B)V

    return-void
.end method

.method public write([BII)V
    .registers 4

    .line 408
    iget-object p0, p0, Lin/dragonbra/javasteam/util/stream/MemoryStream$OutputStreamWrapper;->memoryStream:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->write([BII)V

    return-void
.end method
