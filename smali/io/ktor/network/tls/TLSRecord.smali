###### Class io.ktor.network.tls.TLSRecord (io.ktor.network.tls.TLSRecord)
.class public final Lio/ktor/network/tls/TLSRecord;
.super Ljava/lang/Object;
.source "Headers.kt"


# instance fields
.field public final packet:Lkotlinx/io/Source;

.field public final type:Lio/ktor/network/tls/TLSRecordType;

.field public final version:Lio/ktor/network/tls/TLSVersion;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/ktor/network/tls/TLSRecord;->type:Lio/ktor/network/tls/TLSRecordType;

    .line 13
    iput-object p2, p0, Lio/ktor/network/tls/TLSRecord;->version:Lio/ktor/network/tls/TLSVersion;

    .line 14
    iput-object p3, p0, Lio/ktor/network/tls/TLSRecord;->packet:Lkotlinx/io/Source;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 12
    sget-object p1, Lio/ktor/network/tls/TLSRecordType;->Handshake:Lio/ktor/network/tls/TLSRecordType;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    .line 13
    sget-object p2, Lio/ktor/network/tls/TLSVersion;->TLS12:Lio/ktor/network/tls/TLSVersion;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_14

    .line 14
    invoke-static {}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getByteReadPacketEmpty()Lkotlinx/io/Source;

    move-result-object p3

    .line 11
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;)V

    return-void
.end method


# virtual methods
.method public final getPacket()Lkotlinx/io/Source;
    .registers 1

    .line 14
    iget-object p0, p0, Lio/ktor/network/tls/TLSRecord;->packet:Lkotlinx/io/Source;

    return-object p0
.end method

.method public final getType()Lio/ktor/network/tls/TLSRecordType;
    .registers 1

    .line 12
    iget-object p0, p0, Lio/ktor/network/tls/TLSRecord;->type:Lio/ktor/network/tls/TLSRecordType;

    return-object p0
.end method

.method public final getVersion()Lio/ktor/network/tls/TLSVersion;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/ktor/network/tls/TLSRecord;->version:Lio/ktor/network/tls/TLSVersion;

    return-object p0
.end method
