###### Class io.ktor.http.cio.RequestResponseBuilder (io.ktor.http.cio.RequestResponseBuilder)
.class public final Lio/ktor/http/cio/RequestResponseBuilder;
.super Ljava/lang/Object;
.source "RequestResponseBuilder.kt"


# instance fields
.field public final packet:Lkotlinx/io/Sink;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->BytePacketBuilder()Lkotlinx/io/Sink;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    return-void
.end method


# virtual methods
.method public final build()Lkotlinx/io/Source;
    .registers 1

    .line 108
    iget-object p0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    invoke-static {p0}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->build(Lkotlinx/io/Sink;)Lkotlinx/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public final emptyLine()V
    .registers 3

    .line 99
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 100
    iget-object p0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lkotlinx/io/Sink;->writeByte(B)V

    return-void
.end method

.method public final headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 16

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->append$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 87
    iget-object v7, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v8, ": "

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->append$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->append$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/16 p2, 0xd

    invoke-interface {p1, p2}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 90
    iget-object p0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/16 p1, 0xa

    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeByte(B)V

    return-void
.end method

.method public final release()V
    .registers 1

    .line 116
    iget-object p0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    invoke-interface {p0}, Lkotlinx/io/RawSink;->close()V

    return-void
.end method

.method public final requestLine(Lio/ktor/http/HttpMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 12

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    invoke-virtual {p1}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 44
    iget-object v1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    invoke-interface {p1, v0}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 46
    iget-object v1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/16 p2, 0xd

    invoke-interface {p1, p2}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 48
    iget-object p0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lkotlinx/io/Sink;

    const/16 p1, 0xa

    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeByte(B)V

    return-void
.end method
