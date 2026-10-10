###### Class io.ktor.network.sockets.TypeOfService (io.ktor.network.sockets.TypeOfService)
.class public final Lio/ktor/network/sockets/TypeOfService;
.super Ljava/lang/Object;
.source "TypeOfService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/sockets/TypeOfService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

.field public static final IPTOS_LOWCOST:B

.field public static final IPTOS_LOWDELAY:B

.field public static final IPTOS_RELIABILITY:B

.field public static final IPTOS_THROUGHPUT:B

.field public static final UNDEFINED:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/network/sockets/TypeOfService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/TypeOfService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->UNDEFINED:B

    const/4 v0, 0x2

    .line 34
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_LOWCOST:B

    const/4 v0, 0x4

    .line 35
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_RELIABILITY:B

    const/16 v0, 0x8

    .line 36
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_THROUGHPUT:B

    const/16 v0, 0x10

    .line 37
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_LOWDELAY:B

    return-void
.end method

.method public static final synthetic access$getUNDEFINED$cp()B
    .registers 1

    .line 16
    sget-byte v0, Lio/ktor/network/sockets/TypeOfService;->UNDEFINED:B

    return v0
.end method

.method public static constructor-impl(B)B
    .registers 1

    .line 0
    return p0
.end method

.method public static final equals-impl0(BB)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lkotlin/UByte;->equals-impl0(BB)Z

    move-result p0

    return p0
.end method

###### Class io.ktor.network.sockets.TypeOfService.Companion (io.ktor.network.sockets.TypeOfService$Companion)
.class public final Lio/ktor/network/sockets/TypeOfService$Companion;
.super Ljava/lang/Object;
.source "TypeOfService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/TypeOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/sockets/TypeOfService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUNDEFINED-zieKYfw()B
    .registers 1

    .line 33
    invoke-static {}, Lio/ktor/network/sockets/TypeOfService;->access$getUNDEFINED$cp()B

    move-result p0

    return p0
.end method
