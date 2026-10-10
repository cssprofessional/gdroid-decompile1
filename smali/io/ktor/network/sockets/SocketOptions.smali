###### Class io.ktor.network.sockets.SocketOptions (io.ktor.network.sockets.SocketOptions)
.class public abstract Lio/ktor/network/sockets/SocketOptions;
.super Ljava/lang/Object;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/sockets/SocketOptions$Companion;,
        Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;,
        Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;,
        Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;,
        Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/network/sockets/SocketOptions$Companion;


# instance fields
.field public final customOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public reuseAddress:Z

.field public reusePort:Z

.field public typeOfService:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/sockets/SocketOptions;->Companion:Lio/ktor/network/sockets/SocketOptions$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/ktor/network/sockets/SocketOptions;->customOptions:Ljava/util/Map;

    .line 53
    sget-object p1, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    invoke-virtual {p1}, Lio/ktor/network/sockets/TypeOfService$Companion;->getUNDEFINED-zieKYfw()B

    move-result p1

    iput-byte p1, p0, Lio/ktor/network/sockets/SocketOptions;->typeOfService:B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lio/ktor/network/sockets/SocketOptions;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .registers 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-byte v0, p1, Lio/ktor/network/sockets/SocketOptions;->typeOfService:B

    iput-byte v0, p0, Lio/ktor/network/sockets/SocketOptions;->typeOfService:B

    .line 24
    iget-boolean v0, p1, Lio/ktor/network/sockets/SocketOptions;->reuseAddress:Z

    iput-boolean v0, p0, Lio/ktor/network/sockets/SocketOptions;->reuseAddress:Z

    .line 25
    iget-boolean p1, p1, Lio/ktor/network/sockets/SocketOptions;->reusePort:Z

    iput-boolean p1, p0, Lio/ktor/network/sockets/SocketOptions;->reusePort:Z

    return-void
.end method

.method public final getCustomOptions()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lio/ktor/network/sockets/SocketOptions;->customOptions:Ljava/util/Map;

    return-object p0
.end method

.method public final getReuseAddress()Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lio/ktor/network/sockets/SocketOptions;->reuseAddress:Z

    return p0
.end method

.method public final getReusePort()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lio/ktor/network/sockets/SocketOptions;->reusePort:Z

    return p0
.end method

.method public final getTypeOfService-zieKYfw()B
    .registers 1

    .line 53
    iget-byte p0, p0, Lio/ktor/network/sockets/SocketOptions;->typeOfService:B

    return p0
.end method

.method public final peer$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
    .registers 4

    .line 29
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lio/ktor/network/sockets/SocketOptions;->customOptions:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;-><init>(Ljava/util/Map;)V

    .line 30
    invoke-virtual {p0, p0}, Lio/ktor/network/sockets/SocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method

###### Class io.ktor.network.sockets.SocketOptions.Companion (io.ktor.network.sockets.SocketOptions$Companion)
.class public final Lio/ktor/network/sockets/SocketOptions$Companion;
.super Ljava/lang/Object;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/sockets/SocketOptions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create$ktor_network()Lio/ktor/network/sockets/SocketOptions;
    .registers 2

    .line 230
    new-instance p0, Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

###### Class io.ktor.network.sockets.SocketOptions.GeneralSocketOptions (io.ktor.network.sockets.SocketOptions$GeneralSocketOptions)
.class public final Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneralSocketOptions"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lio/ktor/network/sockets/SocketOptions;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class io.ktor.network.sockets.SocketOptions.PeerSocketOptions (io.ktor.network.sockets.SocketOptions$PeerSocketOptions)
.class public Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerSocketOptions"
.end annotation


# instance fields
.field public receiveBufferSize:I

.field public sendBufferSize:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lio/ktor/network/sockets/SocketOptions;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, -0x1

    .line 110
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    .line 117
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    return-void
.end method


# virtual methods
.method public copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .registers 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lio/ktor/network/sockets/SocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 121
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    if-eqz v0, :cond_16

    .line 122
    check-cast p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    iget v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    .line 123
    iget p1, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    :cond_16
    return-void
.end method

.method public final getReceiveBufferSize()I
    .registers 1

    .line 117
    iget p0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    return p0
.end method

.method public final getSendBufferSize()I
    .registers 1

    .line 110
    iget p0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    return p0
.end method

.method public final tcpConnect$ktor_network()Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .registers 4

    .line 134
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;-><init>(Ljava/util/Map;)V

    .line 135
    invoke-virtual {p0, p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method

###### Class io.ktor.network.sockets.SocketOptions.TCPClientSocketOptions (io.ktor.network.sockets.SocketOptions$TCPClientSocketOptions)
.class public final Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TCPClientSocketOptions"
.end annotation


# instance fields
.field public keepAlive:Ljava/lang/Boolean;

.field public lingerSeconds:I

.field public noDelay:Z

.field public socketTimeout:J


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    const/4 p1, -0x1

    .line 197
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    const-wide v0, 0x7fffffffffffffffL

    .line 211
    iput-wide v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->socketTimeout:J

    return-void
.end method


# virtual methods
.method public copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .registers 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-super {p0, p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 215
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    if-eqz v0, :cond_1a

    .line 216
    check-cast p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iget-boolean v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    iput-boolean v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    .line 217
    iget v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    .line 218
    iget-object p1, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->keepAlive:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->keepAlive:Ljava/lang/Boolean;

    :cond_1a
    return-void
.end method

.method public final getKeepAlive()Ljava/lang/Boolean;
    .registers 1

    .line 204
    iget-object p0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->keepAlive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getLingerSeconds()I
    .registers 1

    .line 197
    iget p0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    return p0
.end method

.method public final getNoDelay()Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    return p0
.end method

.method public final getSocketTimeout()J
    .registers 3

    .line 211
    iget-wide v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->socketTimeout:J

    return-wide v0
.end method

.method public final setSocketTimeout(J)V
    .registers 3

    .line 211
    iput-wide p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->socketTimeout:J

    return-void
.end method

###### Class io.ktor.network.sockets.SocketOptions.UDPSocketOptions (io.ktor.network.sockets.SocketOptions$UDPSocketOptions)
.class public final Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UDPSocketOptions"
.end annotation


# instance fields
.field public broadcast:Z


# virtual methods
.method public copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .registers 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 164
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    if-eqz v0, :cond_12

    .line 165
    check-cast p1, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    iget-boolean p1, p1, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->broadcast:Z

    iput-boolean p1, p0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->broadcast:Z

    :cond_12
    return-void
.end method

.method public final getBroadcast()Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->broadcast:Z

    return p0
.end method
