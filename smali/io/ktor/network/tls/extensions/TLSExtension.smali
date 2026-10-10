###### Class io.ktor.network.tls.extensions.TLSExtension (io.ktor.network.tls.extensions.TLSExtension)
.class public final Lio/ktor/network/tls/extensions/TLSExtension;
.super Ljava/lang/Object;
.source "TLSExtension.kt"


# instance fields
.field public final length:I

.field public final packet:Lkotlinx/io/Source;

.field public final type:Lio/ktor/network/tls/extensions/TLSExtensionType;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/extensions/TLSExtensionType;ILkotlinx/io/Source;)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/ktor/network/tls/extensions/TLSExtension;->type:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 32
    iput p2, p0, Lio/ktor/network/tls/extensions/TLSExtension;->length:I

    .line 33
    iput-object p3, p0, Lio/ktor/network/tls/extensions/TLSExtension;->packet:Lkotlinx/io/Source;

    return-void
.end method


# virtual methods
.method public final getPacket()Lkotlinx/io/Source;
    .registers 1

    .line 33
    iget-object p0, p0, Lio/ktor/network/tls/extensions/TLSExtension;->packet:Lkotlinx/io/Source;

    return-object p0
.end method

.method public final getType()Lio/ktor/network/tls/extensions/TLSExtensionType;
    .registers 1

    .line 31
    iget-object p0, p0, Lio/ktor/network/tls/extensions/TLSExtension;->type:Lio/ktor/network/tls/extensions/TLSExtensionType;

    return-object p0
.end method
