###### Class in.dragonbra.javasteam.steam.discovery.ServerRecord (in.dragonbra.javasteam.steam.discovery.ServerRecord)
.class public final Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
.super Ljava/lang/Object;
.source "ServerRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServerRecord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServerRecord.kt\nin/dragonbra/javasteam/steam/discovery/ServerRecord\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,128:1\n53#2:129\n*S KotlinDebug\n*F\n+ 1 ServerRecord.kt\nin/dragonbra/javasteam/steam/discovery/ServerRecord\n*L\n58#1:129\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final endpoint:Ljava/net/InetSocketAddress;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private final protocolTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 58
    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)V
    .registers 4

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocolTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    const-string v0, "of(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;-><init>(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->endpoint:Ljava/net/InetSocketAddress;

    .line 18
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->protocolTypes:Ljava/util/EnumSet;

    .line 30
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getHostString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->host:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->port:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;-><init>(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;)V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 16
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method public static final createServer(Ljava/lang/String;ILin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 4

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createServer(Ljava/lang/String;ILin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final createServer(Ljava/lang/String;ILjava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createServer(Ljava/lang/String;ILjava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final createSocketServer(Ljava/net/InetSocketAddress;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createSocketServer(Ljava/net/InetSocketAddress;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final createWebSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createWebSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final tryCreateSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->tryCreateSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 43
    instance-of v0, p1, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 47
    :cond_6
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->endpoint:Ljava/net/InetSocketAddress;

    check-cast p1, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    iget-object v2, p1, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->endpoint:Ljava/net/InetSocketAddress;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->protocolTypes:Ljava/util/EnumSet;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->protocolTypes:Ljava/util/EnumSet;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public final getEndpoint()Ljava/net/InetSocketAddress;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->endpoint:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final getPort()I
    .registers 1

    .line 35
    iget p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->port:I

    return p0
.end method

.method public final getProtocolTypes()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->protocolTypes:Ljava/util/EnumSet;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 54
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->endpoint:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->protocolTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

###### Class in.dragonbra.javasteam.steam.discovery.ServerRecord.Companion (in.dragonbra.javasteam.steam.discovery.ServerRecord$Companion)
.class public final Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;
.super Ljava/lang/Object;
.source "ServerRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServerRecord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServerRecord.kt\nin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,128:1\n739#2,9:129\n37#3,2:138\n*S KotlinDebug\n*F\n+ 1 ServerRecord.kt\nin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion\n*L\n117#1:129,9\n117#1:138,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createServer(Ljava/lang/String;ILin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 5

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocolTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    const-string v0, "of(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createServer(Ljava/lang/String;ILjava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0
.end method

.method public final createServer(Ljava/lang/String;ILjava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;"
        }
    .end annotation

    const-string p0, "host"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "protocolTypes"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p3, p1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;-><init>(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final createSocketServer(Ljava/net/InetSocketAddress;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 4

    const-string p0, "endpoint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->UDP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;-><init>(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final createWebSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 6

    const-string p0, "address"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance p0, Lkotlin/text/Regex;

    const-string v0, ":"

    invoke-direct {p0, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    .line 739
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3d

    .line 740
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 741
    :goto_20
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 742
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_33

    goto :goto_20

    .line 743
    :cond_33
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_41

    .line 747
    :cond_3d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 38
    :goto_41
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 117
    check-cast p0, [Ljava/lang/String;

    .line 118
    array-length v1, p0

    if-le v1, v2, :cond_5a

    .line 119
    new-instance p1, Ljava/net/InetSocketAddress;

    aget-object v0, p0, v0

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, v0, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_62

    .line 121
    :cond_5a
    new-instance p0, Ljava/net/InetSocketAddress;

    const/16 v0, 0x1bb

    invoke-direct {p0, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object p1, p0

    .line 124
    :goto_62
    new-instance p0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->WEB_SOCKET:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;-><init>(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)V

    return-object p0
.end method

.method public final tryCreateSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 5

    const-string p0, "address"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lin/dragonbra/javasteam/util/NetHelpers;->tryParseIPEndPoint(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_26

    .line 101
    invoke-static {}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create socket server for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0

    .line 105
    :cond_26
    new-instance p1, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->UDP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "of(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v1, v0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;-><init>(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
