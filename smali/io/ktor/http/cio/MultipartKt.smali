###### Class io.ktor.http.cio.MultipartKt (io.ktor.http.cio.MultipartKt)
.class public final Lio/ktor/http/cio/MultipartKt;
.super Ljava/lang/Object;
.source "Multipart.kt"


# static fields
.field public static final CrLf:Lkotlinx/io/bytestring/ByteString;

.field public static final PrefixString:Lkotlinx/io/bytestring/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 192
    new-instance v6, Lkotlinx/io/bytestring/ByteString;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "\r\n"

    invoke-static {v2, v0, v1, v0}, Lio/ktor/utils/io/core/StringsKt;->toByteArray$default(Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)[B

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/io/bytestring/ByteString;-><init>([BIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lio/ktor/http/cio/MultipartKt;->CrLf:Lkotlinx/io/bytestring/ByteString;

    const/4 v0, 0x2

    .line 267
    new-array v0, v0, [B

    fill-array-data v0, :array_22

    invoke-static {v0}, Lkotlinx/io/bytestring/ByteStringKt;->ByteString([B)Lkotlinx/io/bytestring/ByteString;

    move-result-object v0

    sput-object v0, Lio/ktor/http/cio/MultipartKt;->PrefixString:Lkotlinx/io/bytestring/ByteString;

    return-void

    nop

    :array_22
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public static final synthetic access$getCrLf$p()Lkotlinx/io/bytestring/ByteString;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/http/cio/MultipartKt;->CrLf:Lkotlinx/io/bytestring/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getPrefixString$p()Lkotlinx/io/bytestring/ByteString;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/http/cio/MultipartKt;->PrefixString:Lkotlinx/io/bytestring/ByteString;

    return-object v0
.end method

.method public static final synthetic access$parsePartBodyImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static/range {p0 .. p6}, Lio/ktor/http/cio/MultipartKt;->parsePartBodyImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/ktor/http/cio/MultipartKt;->parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parsePreambleImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static/range {p0 .. p5}, Lio/ktor/http/cio/MultipartKt;->parsePreambleImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$skipIfFoundReadCount(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt;->skipIfFoundReadCount(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final findBoundary(Ljava/lang/CharSequence;)I
    .registers 13

    .line 273
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v2, v0, :cond_5f

    .line 274
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    const/4 v7, 0x1

    if-eqz v3, :cond_59

    const/16 v8, 0x2c

    const/4 v9, 0x2

    if-eq v3, v7, :cond_3a

    const/16 v10, 0x22

    const/4 v11, 0x3

    if-eq v3, v9, :cond_31

    const/4 v6, 0x4

    if-eq v3, v11, :cond_25

    if-eq v3, v6, :cond_23

    goto :goto_5c

    :cond_23
    move v3, v11

    goto :goto_5c

    :cond_25
    if-eq v5, v10, :cond_2e

    const/16 v7, 0x5c

    if-eq v5, v7, :cond_2c

    goto :goto_5c

    :cond_2c
    move v3, v6

    goto :goto_5c

    :cond_2e
    :goto_2e
    move v4, v1

    move v3, v7

    goto :goto_5c

    :cond_31
    if-eq v5, v10, :cond_23

    if-eq v5, v8, :cond_38

    if-eq v5, v6, :cond_2e

    goto :goto_5c

    :cond_38
    :goto_38
    move v3, v1

    goto :goto_5c

    :cond_3a
    const/16 v10, 0x3d

    if-ne v5, v10, :cond_40

    move v3, v9

    goto :goto_5c

    :cond_40
    if-ne v5, v6, :cond_44

    move v4, v1

    goto :goto_5c

    :cond_44
    if-ne v5, v8, :cond_47

    goto :goto_38

    :cond_47
    const/16 v6, 0x20

    if-eq v5, v6, :cond_5c

    if-nez v4, :cond_56

    .line 293
    const-string v5, "boundary="

    invoke-static {p0, v5, v2, v7}, Lkotlin/text/StringsKt__StringsKt;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Z

    move-result v5

    if-eqz v5, :cond_56

    return v2

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_59
    if-ne v5, v6, :cond_5c

    goto :goto_2e

    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_5f
    const/4 p0, -0x1

    return p0
.end method

.method public static final parseBoundaryInternal(Ljava/lang/CharSequence;)[B
    .registers 15

    const-string v0, "contentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-static {p0}, Lio/ktor/http/cio/MultipartKt;->findBoundary(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_be

    add-int/lit8 v0, v0, 0x9

    const/16 v1, 0x4a

    .line 338
    new-array v1, v1, [B

    .line 339
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v3, 0xd

    .line 350
    invoke-static {v2, v1, v3}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    const/16 v3, 0xa

    .line 351
    invoke-static {v2, v1, v3}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    const/16 v3, 0x2d

    .line 352
    invoke-static {v2, v1, v3}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    .line 353
    invoke-static {v2, v1, v3}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    .line 357
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2f
    if-ge v0, v3, :cond_ac

    .line 358
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v7, 0xffff

    and-int v8, v6, v7

    and-int/2addr v7, v6

    const/16 v9, 0x7f

    if-gt v7, v9, :cond_81

    const/16 v7, 0x3b

    const/16 v9, 0x2c

    const/16 v10, 0x20

    const/16 v11, 0x22

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v5, :cond_71

    if-eq v5, v13, :cond_66

    const/4 v7, 0x3

    if-eq v5, v12, :cond_59

    if-eq v5, v7, :cond_53

    goto :goto_7e

    :cond_53
    int-to-byte v5, v8

    .line 402
    invoke-static {v2, v1, v5}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    :cond_57
    move v5, v12

    goto :goto_7e

    :cond_59
    if-eq v6, v11, :cond_ac

    const/16 v9, 0x5c

    if-eq v6, v9, :cond_64

    int-to-byte v6, v8

    .line 398
    invoke-static {v2, v1, v6}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    goto :goto_7e

    :cond_64
    move v5, v7

    goto :goto_7e

    :cond_66
    if-eq v6, v10, :cond_ac

    if-eq v6, v9, :cond_ac

    if-eq v6, v7, :cond_ac

    int-to-byte v6, v8

    .line 388
    invoke-static {v2, v1, v6}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    goto :goto_7e

    :cond_71
    if-eq v6, v10, :cond_7e

    if-eq v6, v11, :cond_57

    if-eq v6, v9, :cond_ac

    if-eq v6, v7, :cond_ac

    int-to-byte v5, v8

    .line 380
    invoke-static {v2, v1, v5}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V

    move v5, v13

    :cond_7e
    :goto_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 361
    :cond_81
    new-instance p0, Ljava/io/IOException;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse multipart: wrong boundary byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - should be 7bit character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 408
    :cond_ac
    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b6

    .line 412
    invoke-static {v1, v4, p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 409
    :cond_b6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Empty multipart boundary is not allowed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_be
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse multipart: Content-Type\'s boundary parameter is missing"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final parseBoundaryInternal$put(Lkotlin/jvm/internal/Ref$IntRef;[BB)V
    .registers 5

    .line 342
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    array-length v1, p1

    if-ge v0, v1, :cond_c

    add-int/lit8 v1, v0, 0x1

    .line 347
    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aput-byte p2, p1, v0

    return-void

    .line 343
    :cond_c
    new-instance p0, Ljava/io/IOException;

    .line 344
    const-string p1, "Failed to parse multipart: boundary shouldn\'t be longer than 70 characters"

    .line 343
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;J)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Long;",
            "J)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->INSTANCE:Lio/ktor/http/ContentType$MultiPart;

    invoke-virtual {v0, p2}, Lio/ktor/http/ContentType$MultiPart;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 185
    invoke-static {p2}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal(Ljava/lang/CharSequence;)[B

    move-result-object v2

    .line 186
    new-instance p2, Lkotlinx/io/bytestring/ByteString;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lkotlinx/io/bytestring/ByteString;-><init>([BIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-wide v7, p4

    .line 189
    invoke-static/range {v3 .. v8}, Lio/ktor/http/cio/MultipartKt;->parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Long;J)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0

    .line 181
    :cond_2f
    new-instance p0, Lio/ktor/http/cio/internals/UnsupportedMediaTypeExceptionCIO;

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse multipart: Content-Type should be multipart/* but it is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/UnsupportedMediaTypeExceptionCIO;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Long;J)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/io/bytestring/ByteString;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/lang/Long;",
            "J)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v7, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p1

    move-wide v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;JLjava/lang/Long;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p3, v7

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final parsePartBodyImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/io/bytestring/ByteString;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p4

    move-object/from16 v0, p6

    instance-of v1, v0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;

    if-eqz v1, :cond_1c

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;

    iget v2, v1, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_1c

    sub-int/2addr v2, v3

    iput v2, v1, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    :goto_1a
    move-object v11, v1

    goto :goto_22

    :cond_1c
    new-instance v1, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_1a

    :goto_22
    iget-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 124
    iget v1, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_b0

    if-eq v1, v4, :cond_94

    if-eq v1, v3, :cond_75

    if-eq v1, v2, :cond_58

    if-ne v1, v14, :cond_50

    iget-wide v1, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$1:J

    iget-object v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/http/cio/HttpHeadersMap;

    iget-object v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/io/bytestring/ByteString;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_19d

    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    iget-wide v1, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$1:J

    iget-wide v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$0:J

    iget-object v5, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    iget-object v5, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/HttpHeadersMap;

    iget-object v6, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v7, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v8, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/io/bytestring/ByteString;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_16a

    :cond_75
    iget-wide v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$0:J

    iget-object v1, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v5, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/HttpHeadersMap;

    iget-object v6, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v7, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v8, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/io/bytestring/ByteString;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v3

    move-object v15, v5

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_138

    :cond_94
    iget-wide v1, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$0:J

    iget-object v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/http/cio/HttpHeadersMap;

    iget-object v4, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v5, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v6, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/io/bytestring/ByteString;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v1

    move-object v15, v3

    goto :goto_fd

    :cond_b0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    const-string v0, "Content-Length"

    move-object/from16 v15, p3

    invoke-virtual {v15, v0}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-static {v0}, Lio/ktor/http/cio/internals/CharsKt;->parseDecLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    goto :goto_c8

    :cond_c7
    move-object v1, v13

    :goto_c8
    if-nez v1, :cond_106

    .line 132
    invoke-static/range {p0 .. p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$4:Ljava/lang/Object;

    iput-wide v9, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$0:J

    iput v4, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readUntil(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteWriteChannel;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_f9

    return-object v12

    :cond_f9
    move-object/from16 v6, p0

    move-object v5, v7

    move-object v4, v8

    :goto_fd
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    goto/16 :goto_176

    .line 133
    :cond_106
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v0, v16, v4

    if-gtz v0, :cond_1a2

    cmp-long v0, v4, v9

    if-gtz v0, :cond_1a2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    iput-object v7, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$4:Ljava/lang/Object;

    iput-wide v9, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$0:J

    iput v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    invoke-static {v7, v8, v4, v5, v11}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_137

    return-object v12

    :cond_137
    move-object v6, v8

    :goto_138
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    iput-object v6, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$4:Ljava/lang/Object;

    iput-wide v9, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$0:J

    iput-wide v3, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$1:J

    iput v2, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    invoke-static {v7, v0, v11}, Lio/ktor/http/cio/MultipartKt;->skipIfFoundReadCount(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_165

    return-object v12

    :cond_165
    move-object v8, v0

    move-object v0, v1

    move-wide v1, v3

    move-wide v3, v9

    move-object v5, v15

    :goto_16a
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    add-long/2addr v1, v9

    move-wide v9, v3

    move-object v15, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    .line 136
    :goto_176
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$2:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$3:Ljava/lang/Object;

    iput-object v13, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$4:Ljava/lang/Object;

    iput-wide v9, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$0:J

    iput-wide v1, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->J$1:J

    iput v14, v11, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    invoke-interface {v4, v11}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_19d

    return-object v12

    .line 138
    :cond_19d
    :goto_19d
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 134
    :cond_1a2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v9, v10}, Lio/ktor/http/cio/MultipartKt;->throwLimitExceeded(JJ)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public static final parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;

    iget v1, v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    :goto_12
    move-object v4, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;

    invoke-direct {v0, p1}, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p1, v4, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 110
    iget v1, v4, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    if-ne v1, v2, :cond_35

    iget-object p0, v4, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/http/cio/internals/CharArrayBuilder;

    iget-object v0, v4, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    :try_start_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_5f

    :catchall_33
    move-exception p1

    goto :goto_70

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    new-instance p1, Lio/ktor/http/cio/internals/CharArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v2, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    :try_start_46
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->L$0:Ljava/lang/Object;

    iput-object p1, v4, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/http/cio/HttpParserKt;->parseHeaders$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_6c

    if-ne p0, v0, :cond_5c

    return-object v0

    :cond_5c
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_5f
    :try_start_5f
    check-cast p1, Lio/ktor/http/cio/HttpHeadersMap;

    if-eqz p1, :cond_64

    return-object p1

    .line 114
    :cond_64
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "Failed to parse multipart headers: unexpected end of stream"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_33

    :catchall_6c
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    .line 116
    :goto_70
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->release()V

    .line 117
    throw p1
.end method

.method public static final parsePreambleImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/io/bytestring/ByteString;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    .line 105
    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readUntil(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteWriteChannel;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final skipIfFoundReadCount(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlinx/io/bytestring/ByteString;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;

    iget v1, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;

    invoke-direct {v0, p2}, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 142
    iget v2, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p0, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/io/bytestring/ByteString;

    iget-object p0, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->label:I

    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->skipIfFound(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4e

    return-object v1

    :cond_4e
    :goto_4e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 144
    invoke-virtual {p1}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p0

    int-to-long p0, p0

    goto :goto_5e

    :cond_5c
    const-wide/16 p0, 0x0

    .line 146
    :goto_5e
    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final throwLimitExceeded(JJ)Ljava/lang/Void;
    .registers 7

    .line 416
    new-instance v0, Ljava/io/IOException;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multipart content length exceeds limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " > "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "; limit is defined using \'formFieldLimit\' argument"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.ktor.http.cio.MultipartKt.AnonymousClass1 (io.ktor.http.cio.MultipartKt$parseMultipart$1)
.class public final Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Multipart.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/MultipartKt;->parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Long;J)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lio/ktor/http/cio/MultipartEvent;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.http.cio.MultipartKt$parseMultipart$1"
    f = "Multipart.kt"
    l = {
        0xd0,
        0xd3,
        0xd6,
        0xd7,
        0xda,
        0xe1,
        0xe5,
        0xec,
        0xf8,
        0xf9,
        0x100,
        0x100,
        0x103,
        0x105
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $boundaryPrefixed:Lkotlinx/io/bytestring/ByteString;

.field public final synthetic $input:Lio/ktor/utils/io/ByteReadChannel;

.field public final synthetic $maxPartSize:J

.field public final synthetic $totalLength:Ljava/lang/Long;

.field public J$0:J

.field public J$1:J

.field public J$2:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;JLjava/lang/Long;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlinx/io/bytestring/ByteString;",
            "J",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/MultipartKt$parseMultipart$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Lkotlinx/io/bytestring/ByteString;

    iput-wide p3, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$maxPartSize:J

    iput-object p5, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v7, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;

    iget-object v1, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Lkotlinx/io/bytestring/ByteString;

    iget-wide v3, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$maxPartSize:J

    iget-object v5, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;JLjava/lang/Long;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 200
    iget v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_476

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    iget-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/io/Source;

    goto :goto_35

    :pswitch_20
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/bytestring/ByteString;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto/16 :goto_43a

    :goto_35
    :pswitch_35
    iget-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/io/Source;

    iget-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/io/bytestring/ByteString;

    iget-object v0, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_472

    :pswitch_46
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$2:J

    iget-wide v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$1:J

    iget-wide v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v10, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/io/Source;

    iget-object v11, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/io/bytestring/ByteString;

    iget-object v12, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-wide/from16 v23, v6

    move-object/from16 v7, p1

    move-object v6, v9

    move-wide/from16 v9, v23

    goto/16 :goto_3de

    :pswitch_6b
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/bytestring/ByteString;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_38b

    :pswitch_7e
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/bytestring/ByteString;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_36a

    :pswitch_91
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$7:Ljava/lang/Object;

    check-cast v4, Lio/ktor/http/cio/HttpHeadersMap;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteChannel;

    iget-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/io/Source;

    iget-object v11, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/io/bytestring/ByteString;

    iget-object v15, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/CountedByteReadChannel;

    :try_start_af
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_bc

    move-object v10, v4

    move-object v4, v7

    move/from16 v23, v12

    move-object v12, v5

    move-object v5, v11

    move/from16 v11, v23

    goto/16 :goto_30c

    :catchall_bc
    move-exception v0

    move-object v14, v4

    goto/16 :goto_330

    :pswitch_c0
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteChannel;

    iget-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/io/Source;

    iget-object v11, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/io/bytestring/ByteString;

    iget-object v15, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/CountedByteReadChannel;

    :try_start_da
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_ed

    move-object/from16 v10, p1

    move-object v9, v1

    move-object/from16 v16, v7

    move-object v7, v11

    move v11, v12

    move-object v12, v5

    :goto_e5
    move-object/from16 v23, v15

    move-object v15, v6

    move-wide v5, v2

    move-object/from16 v3, v23

    goto/16 :goto_2c7

    :catchall_ed
    move-exception v0

    goto/16 :goto_330

    :pswitch_f0
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteChannel;

    iget-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/io/Source;

    iget-object v11, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/io/bytestring/ByteString;

    iget-object v15, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v11

    move v11, v12

    goto/16 :goto_29e

    :pswitch_111
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/bytestring/ByteString;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    :cond_124
    move-wide v9, v2

    goto/16 :goto_257

    :pswitch_127
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/bytestring/ByteString;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_23f

    :pswitch_13a
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/bytestring/ByteString;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v2

    move-object/from16 v2, p1

    goto/16 :goto_21a

    :pswitch_150
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/io/bytestring/ByteString;

    iget-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1ef

    :pswitch_163
    iget-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iget-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/io/bytestring/ByteString;

    iget-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/CountedByteReadChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v2

    move-object v6, v5

    move-object/from16 v2, p1

    move-object v5, v4

    goto :goto_1c5

    :pswitch_176
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    iget-object v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v2}, Lio/ktor/utils/io/CountedByteReadChannelKt;->counted(Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/utils/io/CountedByteReadChannel;

    move-result-object v15

    .line 202
    invoke-virtual {v15}, Lio/ktor/utils/io/CountedByteReadChannel;->getTotalBytesRead()J

    move-result-wide v6

    .line 203
    iget-object v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Lkotlinx/io/bytestring/ByteString;

    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getPrefixString$p()Lkotlinx/io/bytestring/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v3

    invoke-static {v2, v3, v12, v11, v14}, Lkotlinx/io/bytestring/ByteString;->substring$default(Lkotlinx/io/bytestring/ByteString;IIILjava/lang/Object;)Lkotlinx/io/bytestring/ByteString;

    move-result-object v5

    .line 205
    new-instance v4, Lio/ktor/http/cio/MultipartKt$parseMultipart$1$preambleData$1;

    invoke-direct {v4, v5, v15, v14}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1$preambleData$1;-><init>(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/CountedByteReadChannel;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x0

    move-object v2, v1

    move-object/from16 v19, v4

    move/from16 v4, v18

    move-object v12, v5

    move-object/from16 v5, v19

    move-wide v9, v6

    move/from16 v6, v16

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writer$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/WriterJob;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lio/ktor/utils/io/WriterJob;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-wide v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iput v13, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v2, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readRemaining(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_1c3

    return-object v8

    :cond_1c3
    move-object v5, v12

    move-object v6, v15

    .line 200
    :goto_1c5
    move-object v4, v2

    check-cast v4, Lkotlinx/io/Source;

    .line 210
    invoke-static {v4}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v2

    const-wide/16 v15, 0x0

    cmp-long v2, v2, v15

    if-lez v2, :cond_1f0

    .line 211
    new-instance v2, Lio/ktor/http/cio/MultipartEvent$Preamble;

    invoke-direct {v2, v4}, Lio/ktor/http/cio/MultipartEvent$Preamble;-><init>(Lkotlinx/io/Source;)V

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-wide v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iput v11, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_1ee

    return-object v8

    :cond_1ee
    move-wide v2, v9

    :goto_1ef
    move-wide v9, v2

    .line 214
    :cond_1f0
    :goto_1f0
    invoke-virtual {v6}, Lio/ktor/utils/io/CountedByteReadChannel;->isClosedForRead()Z

    move-result v2

    if-nez v2, :cond_33f

    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getPrefixString$p()Lkotlinx/io/bytestring/ByteString;

    move-result-object v2

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-object v14, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-object v14, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    iput-object v14, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    iput-object v14, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$7:Ljava/lang/Object;

    iput-wide v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v3, 0x3

    iput v3, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v6, v2, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->skipIfFound(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_21a

    return-object v8

    :cond_21a
    :goto_21a
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33f

    .line 215
    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getCrLf$p()Lkotlinx/io/bytestring/ByteString;

    move-result-object v2

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-wide v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v3, 0x4

    iput v3, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v6, v2, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->skipIfFound(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_23e

    return-object v8

    :cond_23e
    move-wide v2, v9

    .line 218
    :goto_23f
    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v7, 0x5

    iput v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v6, v5, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->skipIfFound(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_124

    return-object v8

    :goto_257
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_260

    goto :goto_1f0

    .line 222
    :cond_260
    new-instance v2, Lio/ktor/utils/io/ByteChannel;

    const/4 v11, 0x0

    invoke-direct {v2, v11, v13, v14}, Lio/ktor/utils/io/ByteChannel;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 223
    invoke-static {v14, v13, v14}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    .line 224
    new-instance v7, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    invoke-direct {v7, v3, v2}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;-><init>(Lkotlinx/coroutines/Deferred;Lio/ktor/utils/io/ByteReadChannel;)V

    .line 225
    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    iput-wide v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v12, 0x6

    iput v12, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v1, v7, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v8, :cond_291

    return-object v8

    :cond_291
    move-object v15, v6

    move-object v6, v2

    move-object/from16 v23, v5

    move-object v5, v3

    move-wide v2, v9

    move-object/from16 v9, v23

    move-object/from16 v24, v7

    move-object v7, v4

    move-object/from16 v4, v24

    .line 229
    :goto_29e
    :try_start_29e
    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v10, 0x7

    iput v10, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v15, v0}, Lio/ktor/http/cio/MultipartKt;->access$parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2bd
    .catchall {:try_start_29e .. :try_end_2bd} :catchall_32e

    if-ne v10, v8, :cond_2c0

    return-object v8

    :cond_2c0
    move-object v12, v5

    move-object/from16 v16, v7

    move-object v7, v9

    move-object v9, v1

    goto/16 :goto_e5

    .line 200
    :goto_2c7
    :try_start_2c7
    check-cast v10, Lio/ktor/http/cio/HttpHeadersMap;
    :try_end_2c9
    .catchall {:try_start_2c7 .. :try_end_2c9} :catchall_329

    .line 230
    :try_start_2c9
    invoke-interface {v12, v10}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31e

    .line 236
    iget-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Lkotlinx/io/bytestring/ByteString;

    iget-wide v13, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$maxPartSize:J

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-object v15, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$7:Ljava/lang/Object;

    iput-wide v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v2, 0x8

    iput v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    move-object v2, v3

    move-object/from16 v20, v3

    move-object v3, v15

    move-object v4, v10

    move-wide/from16 v21, v5

    move-wide v5, v13

    move-object v13, v7

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lio/ktor/http/cio/MultipartKt;->access$parsePartBodyImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_300
    .catchall {:try_start_2c9 .. :try_end_300} :catchall_319

    if-ne v1, v8, :cond_303

    return-object v8

    :cond_303
    move-object v1, v9

    move-object v5, v13

    move-object v6, v15

    move-object/from16 v4, v16

    move-object/from16 v15, v20

    move-wide/from16 v2, v21

    .line 237
    :goto_30c
    :try_start_30c
    invoke-virtual {v6}, Lio/ktor/utils/io/ByteChannel;->close()V
    :try_end_30f
    .catchall {:try_start_30c .. :try_end_30f} :catchall_315

    move-wide v9, v2

    move-object v6, v15

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1f0

    :catchall_315
    move-exception v0

    move-object v14, v10

    move-object v5, v12

    goto :goto_330

    :catchall_319
    move-exception v0

    move-object v14, v10

    move-object v5, v12

    move-object v6, v15

    goto :goto_330

    .line 231
    :cond_31e
    :try_start_31e
    invoke-virtual {v10}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 232
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 233
    const-string v1, "Multipart processing has been cancelled"

    .line 232
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_329
    .catchall {:try_start_31e .. :try_end_329} :catchall_319

    :catchall_329
    move-exception v0

    move-object v5, v12

    move-object v6, v15

    :goto_32c
    const/4 v14, 0x0

    goto :goto_330

    :catchall_32e
    move-exception v0

    goto :goto_32c

    .line 239
    :goto_330
    invoke-interface {v5, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_33b

    if-eqz v14, :cond_33b

    .line 240
    invoke-virtual {v14}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 242
    :cond_33b
    invoke-static {v6, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->close(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Throwable;)V

    .line 243
    throw v0

    :cond_33f
    move-wide v2, v9

    .line 248
    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getCrLf$p()Lkotlinx/io/bytestring/ByteString;

    move-result-object v7

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$5:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$6:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$7:Ljava/lang/Object;

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v9, 0x9

    iput v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v6, v7, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->skipIfFound(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_36a

    return-object v8

    .line 249
    :cond_36a
    :goto_36a
    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getCrLf$p()Lkotlinx/io/bytestring/ByteString;

    move-result-object v7

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v9, 0xa

    iput v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v6, v7, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->skipIfFound(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_38b

    return-object v8

    .line 251
    :cond_38b
    :goto_38b
    iget-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    if-eqz v7, :cond_419

    .line 252
    invoke-virtual {v6}, Lio/ktor/utils/io/CountedByteReadChannel;->getTotalBytesRead()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 253
    iget-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v11, v9

    const-wide/32 v13, 0x7fffffff

    cmp-long v7, v11, v13

    if-gtz v7, :cond_411

    const-wide/16 v13, 0x0

    cmp-long v7, v11, v13

    if-lez v7, :cond_472

    long-to-int v7, v11

    .line 256
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iput-wide v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$1:J

    iput-wide v11, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$2:J

    const/16 v13, 0xb

    iput v13, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v6, v7, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readPacket(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_3d4

    return-object v8

    :cond_3d4
    move-object v13, v6

    move-object v6, v1

    move-wide/from16 v23, v11

    move-object v11, v4

    move-object v12, v5

    move-wide v4, v9

    move-wide v9, v2

    move-wide/from16 v2, v23

    :goto_3de
    check-cast v7, Lkotlinx/io/Source;

    new-instance v14, Lio/ktor/http/cio/MultipartEvent$Epilogue;

    invoke-direct {v14, v7}, Lio/ktor/http/cio/MultipartEvent$Epilogue;-><init>(Lkotlinx/io/Source;)V

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-wide v9, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iput-wide v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$1:J

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$2:J

    const/16 v1, 0xc

    iput v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v6, v14, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_472

    return-object v8

    .line 254
    :cond_411
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse multipart: prologue is too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_419
    iput-object v1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v7, 0xd

    iput v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v6, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readRemaining(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_43a

    return-object v8

    .line 200
    :cond_43a
    :goto_43a
    check-cast v7, Lkotlinx/io/Source;

    .line 260
    invoke-interface {v7}, Lkotlinx/io/Source;->exhausted()Z

    move-result v9

    if-nez v9, :cond_472

    .line 261
    new-instance v9, Lio/ktor/http/cio/MultipartEvent$Epilogue;

    invoke-direct {v9, v7}, Lio/ktor/http/cio/MultipartEvent$Epilogue;-><init>(Lkotlinx/io/Source;)V

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-wide v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v2, 0xe

    iput v2, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v1, v9, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_472

    return-object v8

    .line 264
    :cond_472
    :goto_472
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_476
    .packed-switch 0x0
        :pswitch_176
        :pswitch_163
        :pswitch_150
        :pswitch_13a
        :pswitch_127
        :pswitch_111
        :pswitch_f0
        :pswitch_c0
        :pswitch_91
        :pswitch_7e
        :pswitch_6b
        :pswitch_46
        :pswitch_35
        :pswitch_20
        :pswitch_1b
    .end packed-switch
.end method

###### Class io.ktor.http.cio.MultipartKt.C00461 (io.ktor.http.cio.MultipartKt$parsePartBodyImpl$1)
.class public final Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Multipart.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/MultipartKt;->parsePartBodyImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.http.cio.MultipartKt"
    f = "Multipart.kt"
    l = {
        0x84,
        0x85,
        0x85,
        0x88
    }
    m = "parsePartBodyImpl"
    v = 0x1
.end annotation


# instance fields
.field public J$0:J

.field public J$1:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 0
    iput-object p1, p0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lio/ktor/http/cio/MultipartKt;->access$parsePartBodyImpl(Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.MultipartKt.C00471 (io.ktor.http.cio.MultipartKt$parsePartHeadersImpl$1)
.class public final Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Multipart.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/MultipartKt;->parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.http.cio.MultipartKt"
    f = "Multipart.kt"
    l = {
        0x71
    }
    m = "parsePartHeadersImpl"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/ktor/http/cio/MultipartKt;->access$parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.MultipartKt.C00481 (io.ktor.http.cio.MultipartKt$skipIfFoundReadCount$1)
.class public final Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Multipart.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/MultipartKt;->skipIfFoundReadCount(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.http.cio.MultipartKt"
    f = "Multipart.kt"
    l = {
        0x8f
    }
    m = "skipIfFoundReadCount"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/http/cio/MultipartKt$skipIfFoundReadCount$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lio/ktor/http/cio/MultipartKt;->access$skipIfFoundReadCount(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
