###### Class in.dragonbra.javasteam.steam.cdn.Server (in.dragonbra.javasteam.steam.cdn.Server)
.class public final Lin/dragonbra/javasteam/steam/cdn/Server;
.super Ljava/lang/Object;
.source "Server.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/cdn/Server$Companion;,
        Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/cdn/Server$Companion;


# instance fields
.field private allowedAppIds:[I

.field private cellId:I

.field private host:Ljava/lang/String;

.field private load:I

.field private numEntries:I

.field private port:I

.field private protocol:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

.field private proxyRequestPathTemplate:Ljava/lang/String;

.field private sourceId:I

.field private steamChinaOnly:Z

.field private type:Ljava/lang/String;

.field private useAsProxy:Z

.field private vHost:Ljava/lang/String;

.field private weightedLoad:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/cdn/Server$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/cdn/Server$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/Server;->Companion:Lin/dragonbra/javasteam/steam/cdn/Server$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->protocol:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    const/4 v0, 0x0

    .line 130
    new-array v0, v0, [I

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->allowedAppIds:[I

    return-void
.end method

.method public static final fromHostAndPort(Ljava/lang/String;I)Lin/dragonbra/javasteam/steam/cdn/Server;
    .registers 3

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server;->Companion:Lin/dragonbra/javasteam/steam/cdn/Server$Companion;

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Server$Companion;->fromHostAndPort(Ljava/lang/String;I)Lin/dragonbra/javasteam/steam/cdn/Server;

    move-result-object p0

    return-object p0
.end method

.method public static final fromInetSocketAddress(Ljava/net/InetSocketAddress;)Lin/dragonbra/javasteam/steam/cdn/Server;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server;->Companion:Lin/dragonbra/javasteam/steam/cdn/Server$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/cdn/Server$Companion;->fromInetSocketAddress(Ljava/net/InetSocketAddress;)Lin/dragonbra/javasteam/steam/cdn/Server;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAllowedAppIds()[I
    .registers 1

    .line 130
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->allowedAppIds:[I

    return-object p0
.end method

.method public final getCellId()I
    .registers 1

    .line 88
    iget p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->cellId:I

    return p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoad()I
    .registers 1

    .line 94
    iget p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->load:I

    return p0
.end method

.method public final getNumEntries()I
    .registers 1

    .line 106
    iget p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->numEntries:I

    return p0
.end method

.method public final getPort()I
    .registers 1

    .line 70
    iget p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->port:I

    return p0
.end method

.method public final getProtocol()Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;
    .registers 1

    .line 52
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->protocol:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    return-object p0
.end method

.method public final getProxyRequestPathTemplate()Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->proxyRequestPathTemplate:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceId()I
    .registers 1

    .line 82
    iget p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->sourceId:I

    return p0
.end method

.method public final getSteamChinaOnly()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->steamChinaOnly:Z

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUseAsProxy()Z
    .registers 1

    .line 118
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->useAsProxy:Z

    return p0
.end method

.method public final getVHost()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->vHost:Ljava/lang/String;

    return-object p0
.end method

.method public final getWeightedLoad()F
    .registers 1

    .line 100
    iget p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->weightedLoad:F

    return p0
.end method

.method public final setAllowedAppIds$javasteam([I)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->allowedAppIds:[I

    return-void
.end method

.method public final setCellId$javasteam(I)V
    .registers 2

    .line 89
    iput p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->cellId:I

    return-void
.end method

.method public final setHost$javasteam(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->host:Ljava/lang/String;

    return-void
.end method

.method public final setLoad$javasteam(I)V
    .registers 2

    .line 95
    iput p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->load:I

    return-void
.end method

.method public final setNumEntries$javasteam(I)V
    .registers 2

    .line 107
    iput p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->numEntries:I

    return-void
.end method

.method public final setPort$javasteam(I)V
    .registers 2

    .line 71
    iput p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->port:I

    return-void
.end method

.method public final setProtocol$javasteam(Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->protocol:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    return-void
.end method

.method public final setProxyRequestPathTemplate$javasteam(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->proxyRequestPathTemplate:Ljava/lang/String;

    return-void
.end method

.method public final setSourceId$javasteam(I)V
    .registers 2

    .line 83
    iput p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->sourceId:I

    return-void
.end method

.method public final setSteamChinaOnly$javasteam(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->steamChinaOnly:Z

    return-void
.end method

.method public final setType$javasteam(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUseAsProxy$javasteam(Z)V
    .registers 2

    .line 119
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->useAsProxy:Z

    return-void
.end method

.method public final setVHost$javasteam(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->vHost:Ljava/lang/String;

    return-void
.end method

.method public final setWeightedLoad$javasteam(F)V
    .registers 2

    .line 101
    iput p1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->weightedLoad:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 136
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->host:Ljava/lang/String;

    iget v1, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->port:I

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Server;->type:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.cdn.Server.Companion (in.dragonbra.javasteam.steam.cdn.Server$Companion)
.class public final Lin/dragonbra/javasteam/steam/cdn/Server$Companion;
.super Ljava/lang/Object;
.source "Server.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/cdn/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/cdn/Server$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromHostAndPort(Ljava/lang/String;I)Lin/dragonbra/javasteam/steam/cdn/Server;
    .registers 4

    const-string p0, "hostname"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p0, Lin/dragonbra/javasteam/steam/cdn/Server;

    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/cdn/Server;-><init>()V

    const/16 v0, 0x1bb

    if-ne p2, v0, :cond_11

    .line 27
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTPS:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    goto :goto_13

    :cond_11
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    :goto_13
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/cdn/Server;->setProtocol$javasteam(Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;)V

    .line 28
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->setHost$javasteam(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->setVHost$javasteam(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setPort$javasteam(I)V

    return-object p0
.end method

.method public final fromInetSocketAddress(Ljava/net/InetSocketAddress;)Lin/dragonbra/javasteam/steam/cdn/Server;
    .registers 4

    const-string p0, "endPoint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p0, Lin/dragonbra/javasteam/steam/cdn/Server;

    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/cdn/Server;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    const/16 v1, 0x1bb

    if-ne v0, v1, :cond_15

    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTPS:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    goto :goto_17

    :cond_15
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    :goto_17
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/cdn/Server;->setProtocol$javasteam(Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;)V

    .line 17
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/cdn/Server;->setHost$javasteam(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/cdn/Server;->setVHost$javasteam(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->setPort$javasteam(I)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.cdn.Server.ConnectionProtocol (in.dragonbra.javasteam.steam.cdn.Server$ConnectionProtocol)
.class public final enum Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;
.super Ljava/lang/Enum;
.source "Server.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/cdn/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

.field public static final enum HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

.field public static final enum HTTPS:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;


# direct methods
.method private static final synthetic $values()[Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    sget-object v1, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTPS:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    filled-new-array {v0, v1}, [Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    const-string v1, "HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    .line 46
    new-instance v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    const-string v1, "HTTPS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTPS:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    invoke-static {}, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->$values()[Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->$VALUES:[Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;
    .registers 2

    .line 0
    const-class v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->$VALUES:[Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    return-object v0
.end method
