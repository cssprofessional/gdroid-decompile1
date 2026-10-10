###### Class io.ktor.network.tls.TLSHandshake (io.ktor.network.tls.TLSHandshake)
.class public final Lio/ktor/network/tls/TLSHandshake;
.super Ljava/lang/Object;
.source "Headers.kt"


# instance fields
.field public packet:Lkotlinx/io/Source;

.field public type:Lio/ktor/network/tls/TLSHandshakeType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->HelloRequest:Lio/ktor/network/tls/TLSHandshakeType;

    iput-object v0, p0, Lio/ktor/network/tls/TLSHandshake;->type:Lio/ktor/network/tls/TLSHandshakeType;

    .line 19
    invoke-static {}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getByteReadPacketEmpty()Lkotlinx/io/Source;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/network/tls/TLSHandshake;->packet:Lkotlinx/io/Source;

    return-void
.end method


# virtual methods
.method public final getPacket()Lkotlinx/io/Source;
    .registers 1

    .line 19
    iget-object p0, p0, Lio/ktor/network/tls/TLSHandshake;->packet:Lkotlinx/io/Source;

    return-object p0
.end method

.method public final getType()Lio/ktor/network/tls/TLSHandshakeType;
    .registers 1

    .line 18
    iget-object p0, p0, Lio/ktor/network/tls/TLSHandshake;->type:Lio/ktor/network/tls/TLSHandshakeType;

    return-object p0
.end method

.method public final setPacket(Lkotlinx/io/Source;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lio/ktor/network/tls/TLSHandshake;->packet:Lkotlinx/io/Source;

    return-void
.end method

.method public final setType(Lio/ktor/network/tls/TLSHandshakeType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lio/ktor/network/tls/TLSHandshake;->type:Lio/ktor/network/tls/TLSHandshakeType;

    return-void
.end method
