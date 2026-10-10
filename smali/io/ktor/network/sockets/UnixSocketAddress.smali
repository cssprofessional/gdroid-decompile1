###### Class io.ktor.network.sockets.UnixSocketAddress (io.ktor.network.sockets.UnixSocketAddress)
.class public final Lio/ktor/network/sockets/UnixSocketAddress;
.super Lio/ktor/network/sockets/SocketAddress;
.source "SocketAddressJvm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/sockets/UnixSocketAddress$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/network/sockets/UnixSocketAddress$Companion;

.field public static final unixDomainSocketAddressClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final address:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/network/sockets/UnixSocketAddress$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/UnixSocketAddress$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/sockets/UnixSocketAddress;->Companion:Lio/ktor/network/sockets/UnixSocketAddress$Companion;

    .line 110
    :try_start_8
    const-string v0, "java.net.UnixDomainSocketAddress"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_e} :catch_e

    .line 109
    :catch_e
    sput-object v1, Lio/ktor/network/sockets/UnixSocketAddress;->unixDomainSocketAddressClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lio/ktor/network/sockets/UnixSocketAddress;->Companion:Lio/ktor/network/sockets/UnixSocketAddress$Companion;

    invoke-virtual {v0}, Lio/ktor/network/sockets/UnixSocketAddress$Companion;->checkSupportForUnixDomainSockets$ktor_network()Ljava/lang/Class;

    move-result-object v0

    .line 81
    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "of"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 80
    const-string v0, "null cannot be cast to non-null type java.net.SocketAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/SocketAddress;

    .line 79
    invoke-direct {p0, p1}, Lio/ktor/network/sockets/UnixSocketAddress;-><init>(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketAddress;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    iput-object p1, p0, Lio/ktor/network/sockets/UnixSocketAddress;->address:Ljava/net/SocketAddress;

    .line 68
    invoke-virtual {p0}, Lio/ktor/network/sockets/UnixSocketAddress;->getAddress$ktor_network()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.net.UnixDomainSocketAddress"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "address should be java.net.UnixDomainSocketAddress"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getUnixDomainSocketAddressClass$cp()Ljava/lang/Class;
    .registers 1

    .line 62
    sget-object v0, Lio/ktor/network/sockets/UnixSocketAddress;->unixDomainSocketAddressClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_b

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-class v1, Lio/ktor/network/sockets/UnixSocketAddress;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_16
    const-string v0, "null cannot be cast to non-null type io.ktor.network.sockets.UnixSocketAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/ktor/network/sockets/UnixSocketAddress;

    .line 99
    invoke-virtual {p0}, Lio/ktor/network/sockets/UnixSocketAddress;->getAddress$ktor_network()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {p1}, Lio/ktor/network/sockets/UnixSocketAddress;->getAddress$ktor_network()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAddress$ktor_network()Ljava/net/SocketAddress;
    .registers 1

    .line 64
    iget-object p0, p0, Lio/ktor/network/sockets/UnixSocketAddress;->address:Ljava/net/SocketAddress;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 103
    invoke-virtual {p0}, Lio/ktor/network/sockets/UnixSocketAddress;->getAddress$ktor_network()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 106
    invoke-virtual {p0}, Lio/ktor/network/sockets/UnixSocketAddress;->getAddress$ktor_network()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.sockets.UnixSocketAddress.Companion (io.ktor.network.sockets.UnixSocketAddress$Companion)
.class public final Lio/ktor/network/sockets/UnixSocketAddress$Companion;
.super Ljava/lang/Object;
.source "SocketAddressJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/UnixSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/sockets/UnixSocketAddress$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkSupportForUnixDomainSockets$ktor_network()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lio/ktor/network/sockets/UnixSocketAddress;->access$getUnixDomainSocketAddressClass$cp()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    const-string v0, "Unix domain sockets are unsupported before Java 16."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
