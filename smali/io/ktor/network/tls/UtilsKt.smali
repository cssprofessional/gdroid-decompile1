###### Class io.ktor.network.tls.UtilsKt (io.ktor.network.tls.UtilsKt)
.class public final Lio/ktor/network/tls/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nio/ktor/network/tls/UtilsKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,59:1\n21#2,3:60\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nio/ktor/network/tls/UtilsKt\n*L\n53#1:60,3\n*E\n"
.end annotation


# direct methods
.method public static final Digest()Lkotlinx/io/Sink;
    .registers 1

    .line 13
    invoke-static {}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->BytePacketBuilder()Lkotlinx/io/Sink;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/network/tls/Digest;->constructor-impl(Lkotlinx/io/Sink;)Lkotlinx/io/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static final plusAssign-Hh8V18w(Lkotlinx/io/Sink;Lio/ktor/network/tls/TLSHandshake;)V
    .registers 7

    const-string v0, "$v$c$io-ktor-network-tls-Digest$-$this$plusAssign$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v0

    sget-object v1, Lio/ktor/network/tls/TLSHandshakeType;->HelloRequest:Lio/ktor/network/tls/TLSHandshakeType;

    if-eq v0, v1, :cond_44

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    .line 54
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getType()Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getPacket()Lkotlinx/io/Source;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lio/ktor/network/tls/RenderKt;->writeTLSHandshakeType(Lkotlinx/io/Sink;Lio/ktor/network/tls/TLSHandshakeType;I)V

    .line 55
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getPacket()Lkotlinx/io/Source;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_40

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshake;->getPacket()Lkotlinx/io/Source;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/core/ByteReadPacketKt;->copy(Lkotlinx/io/Source;)Lkotlinx/io/Source;

    move-result-object p1

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    .line 52
    :cond_40
    invoke-static {p0, v0}, Lio/ktor/network/tls/Digest;->update-impl(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    return-void

    .line 50
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
