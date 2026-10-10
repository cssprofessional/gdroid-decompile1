###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList (in.dragonbra.javasteam.steam.discovery.SmartCMServerList)
.class public final Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;
.super Ljava/lang/Object;
.source "SmartCMServerList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;,
        Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartCMServerList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartCMServerList.kt\nin/dragonbra/javasteam/steam/discovery/SmartCMServerList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,322:1\n1869#2,2:323\n1869#2,2:325\n1869#2,2:327\n1869#2,2:329\n774#2:332\n865#2,2:333\n774#2:335\n865#2,2:336\n1563#2:338\n1634#2,3:339\n1#3:331\n53#4:342\n*S KotlinDebug\n*F\n+ 1 SmartCMServerList.kt\nin/dragonbra/javasteam/steam/discovery/SmartCMServerList\n*L\n151#1:323,2\n174#1:325,2\n182#1:327,2\n192#1:329,2\n209#1:332\n209#1:333,2\n215#1:335\n215#1:336,2\n300#1:338\n300#1:339,3\n22#1:342\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;

.field private static defaultServerNetFilter:Ljava/lang/String;

.field private static defaultServerWebSocket:Ljava/lang/String;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private badConnectionMemoryTimeSpan:Ljava/time/Duration;

.field private final configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

.field private serverListBeforeRefreshTimeSpan:Ljava/time/Duration;

.field private final servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private serversLastRefresh:Ljava/time/Instant;


# direct methods
.method public static synthetic $r8$lambda$-urgWirmkLGN_0jb0TVqrDvNW6Y(Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/ServerInfo;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidateInternal$lambda$0(Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/ServerInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8VCaZPBsrGKcNc-WZzuaKh7rIHc(Lkotlin/Pair;)Ljava/lang/Comparable;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidateInternal$lambda$2(Lkotlin/Pair;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AQ5fj-6GAG9Vg4hjEj-a7LjM4P0(ILin/dragonbra/javasteam/steam/discovery/ServerInfo;)Lkotlin/Pair;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidateInternal$lambda$1(ILin/dragonbra/javasteam/steam/discovery/ServerInfo;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LSh_dDOZHRFusI2dw5eZ4mCUfBg(Lkotlin/Pair;)Lin/dragonbra/javasteam/steam/discovery/ServerInfo;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidateInternal$lambda$4(Lkotlin/Pair;)Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WhNNvxfS2G-z78VRI9NhYLfRyp0(Lkotlin/Pair;)Ljava/lang/Comparable;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidateInternal$lambda$3(Lkotlin/Pair;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->Companion:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 22
    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    .line 30
    const-string v0, "cmp1-sea1.steamserver.net:443"

    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerWebSocket:Ljava/lang/String;

    .line 38
    const-string v0, "ext1-sea1.steamserver.net:27017"

    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerNetFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;)V
    .registers 4

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    .line 42
    sget-object p1, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    const-string v0, "MIN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serversLastRefresh:Ljava/time/Instant;

    const-wide/16 v0, 0x7

    .line 48
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    const-string v0, "ofDays(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serverListBeforeRefreshTimeSpan:Ljava/time/Duration;

    const-wide/16 v0, 0x5

    .line 54
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object p1

    const-string v0, "ofMinutes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->badConnectionMemoryTimeSpan:Ljava/time/Duration;

    return-void
.end method

.method public static final synthetic access$getDefaultServerNetFilter$cp()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerNetFilter:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDefaultServerWebSocket$cp()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerWebSocket:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setDefaultServerNetFilter$cp(Ljava/lang/String;)V
    .registers 1

    .line 17
    sput-object p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerNetFilter:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setDefaultServerWebSocket$cp(Ljava/lang/String;)V
    .registers 1

    .line 17
    sput-object p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerWebSocket:Ljava/lang/String;

    return-void
.end method

.method private final addCore(Lin/dragonbra/javasteam/steam/discovery/ServerRecord;)V
    .registers 5

    .line 182
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getProtocolTypes()Ljava/util/EnumSet;

    move-result-object v0

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    .line 183
    new-instance v2, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p1, v1}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;-><init>(Lin/dragonbra/javasteam/steam/discovery/ServerRecord;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)V

    .line 184
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_22
    return-void
.end method

.method public static synthetic getBadConnectionMemoryTimeSpan$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final getDefaultServerNetFilter()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->Companion:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;->getDefaultServerNetFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultServerWebSocket()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->Companion:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;->getDefaultServerWebSocket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getNextServerCandidateInternal(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->resetOldScores()V

    .line 248
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    .line 249
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 250
    new-instance v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda0;-><init>(Ljava/util/EnumSet;)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda1;-><init>()V

    .line 251
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 252
    new-instance p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda2;-><init>()V

    new-instance v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-static {v2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda4;-><init>()V

    .line 253
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 254
    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    const/4 p1, 0x0

    if-nez p0, :cond_49

    return-object p1

    .line 260
    :cond_49
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getRecord()Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getEndpoint()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getProtocol()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next server candidate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 261
    new-instance p1, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getRecord()Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getEndpoint()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getProtocol()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;-><init>(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)V

    return-object p1
.end method

.method private static final getNextServerCandidateInternal$lambda$0(Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/ServerInfo;)Z
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getProtocol()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final getNextServerCandidateInternal$lambda$1(ILin/dragonbra/javasteam/steam/discovery/ServerInfo;)Lkotlin/Pair;
    .registers 3

    const-string v0, "server"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final getNextServerCandidateInternal$lambda$2(Lkotlin/Pair;)Ljava/lang/Comparable;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getLastBadConnectionTimeUtc()Ljava/time/Instant;

    move-result-object p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    sget-object p0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    :goto_14
    return-object p0
.end method

.method private static final getNextServerCandidateInternal$lambda$3(Lkotlin/Pair;)Ljava/lang/Comparable;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    return-object p0
.end method

.method private static final getNextServerCandidateInternal$lambda$4(Lkotlin/Pair;)Lin/dragonbra/javasteam/steam/discovery/ServerInfo;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    return-object p0
.end method

.method public static synthetic getServerListBeforeRefreshTimeSpan$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method private final markServerCore(Lin/dragonbra/javasteam/steam/discovery/ServerInfo;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)V
    .registers 3

    .line 233
    sget-object p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1c

    const/4 p2, 0x2

    if-ne p0, p2, :cond_16

    .line 235
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->setLastBadConnectionTimeUtc(Ljava/time/Instant;)V

    goto :goto_20

    .line 233
    :cond_16
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1c
    const/4 p0, 0x0

    .line 234
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->setLastBadConnectionTimeUtc(Ljava/time/Instant;)V

    :goto_20
    return-void
.end method

.method public static synthetic replaceList$default(Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;Ljava/util/List;ZLjava/time/Instant;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x1

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 168
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList(Ljava/util/List;ZLjava/time/Instant;)V

    return-void
.end method

.method private final resolveServerList(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getServerListProvider()Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    move-result-object v0

    invoke-interface {v0}, Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;->getLastServerListRefresh()Ljava/time/Instant;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_1e

    .line 79
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v2

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serverListBeforeRefreshTimeSpan:Ljava/time/Duration;

    invoke-virtual {v2, v3}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v2

    if-ltz v2, :cond_1e

    move p1, v1

    .line 84
    :cond_1e
    const-string v2, " servers from SteamDirectory"

    const-string v3, "Resolved "

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->isAllowDirectoryFetch()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 85
    sget-object p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v7, "Querying SteamDirectory for a fresh server list"

    invoke-static {p1, v7, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 87
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-static {v7, v5, v4, v5}, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;->load$default(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 92
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_63

    .line 93
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 95
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p0, v7, v1, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList(Ljava/util/List;ZLjava/time/Instant;)V

    return-void

    .line 99
    :cond_63
    const-string v7, "Could not query SteamDirectory, falling back to provider"

    invoke-static {p1, v7, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move p1, v1

    goto :goto_72

    .line 101
    :cond_6a
    sget-object p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v7, "Resolving server list using the provider"

    invoke-static {p1, v7, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move p1, v6

    .line 104
    :goto_72
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getServerListProvider()Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    move-result-object v7

    invoke-interface {v7}, Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;->fetchServerList()Ljava/util/List;

    move-result-object v7

    .line 105
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 108
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a7

    .line 109
    sget-object p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " servers from the provider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v7, v6, v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList(Ljava/util/List;ZLjava/time/Instant;)V

    return-void

    .line 115
    :cond_a7
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->isAllowDirectoryFetch()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 116
    sget-object p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Server list provider had no entries, and SteamConfiguration.isAllowDirectoryFetch is false"

    invoke-static {p1, v0, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    invoke-virtual {p0, p1, v6, v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList(Ljava/util/List;ZLjava/time/Instant;)V

    return-void

    :cond_c0
    if-nez p1, :cond_f6

    .line 123
    sget-object p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Server list provider had no entries, will query SteamDirectory"

    invoke-static {p1, v0, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-static {v0, v5, v4, v5}, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;->load$default(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f6

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 128
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList(Ljava/util/List;ZLjava/time/Instant;)V

    return-void

    .line 134
    :cond_f6
    sget-object p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Server list provider had no entries, SteamDirectory failed, falling back to default servers"

    invoke-static {p1, v0, v5, v4, v5}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 137
    sget-object p1, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerWebSocket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createWebSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v0

    .line 138
    sget-object v1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->defaultServerNetFilter:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->tryCreateSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p1

    filled-new-array {v0, p1}, [Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 141
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    invoke-virtual {p0, p1, v6, v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList(Ljava/util/List;ZLjava/time/Instant;)V

    return-void
.end method

.method public static synthetic resolveServerList$default(Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;ZILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 71
    :cond_5
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->resolveServerList(Z)V

    return-void
.end method

.method public static final setDefaultServerNetFilter(Ljava/lang/String;)V
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->Companion:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;->setDefaultServerNetFilter(Ljava/lang/String;)V

    return-void
.end method

.method public static final setDefaultServerWebSocket(Ljava/lang/String;)V
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->Companion:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;->setDefaultServerWebSocket(Ljava/lang/String;)V

    return-void
.end method

.method private final startFetchingServers()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 60
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serversLastRefresh:Ljava/time/Instant;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serverListBeforeRefreshTimeSpan:Ljava/time/Duration;

    invoke-virtual {v0, v2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 61
    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->resolveServerList(Z)V

    goto :goto_24

    :cond_1f
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-static {p0, v0, v1, v2}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->resolveServerList$default(Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;ZILjava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public final forceRefreshServerList()Z
    .registers 3

    const/4 v0, 0x1

    .line 312
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 313
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->resolveServerList(Z)V

    .line 314
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 312
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_18

    :catchall_d
    move-exception p0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 314
    :goto_18
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_21

    check-cast p0, Lkotlin/Unit;

    goto :goto_27

    .line 317
    :cond_21
    sget-object p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public final getAllEndPoints()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation

    .line 297
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 298
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->startFetchingServers()V

    .line 299
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 297
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_17

    :catchall_c
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    :goto_17
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_49

    check-cast v0, Lkotlin/Unit;

    .line 300
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    .line 300
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getRecord()Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 300
    :cond_44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_54

    .line 302
    :cond_49
    sget-object p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Failed to fetch end points"

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_54
    return-object p0
.end method

.method public final getBadConnectionMemoryTimeSpan()Ljava/time/Duration;
    .registers 1

    .line 54
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->badConnectionMemoryTimeSpan:Ljava/time/Duration;

    return-object p0
.end method

.method public final getNextServerCandidate(Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 3

    const-string v0, "supportedProtocolTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const-string v0, "of(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidate(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getNextServerCandidate(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;"
        }
    .end annotation

    const-string v0, "supportedProtocolTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 272
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->startFetchingServers()V

    .line 273
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 271
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    :goto_1c
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_29

    check-cast v0, Lkotlin/Unit;

    .line 275
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->getNextServerCandidateInternal(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p0

    return-object p0

    .line 278
    :cond_29
    sget-object p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string p1, "Error while fetching servers"

    invoke-virtual {p0, p1, v1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getServerListBeforeRefreshTimeSpan()Ljava/time/Duration;
    .registers 1

    .line 48
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serverListBeforeRefreshTimeSpan:Ljava/time/Duration;

    return-object p0
.end method

.method public final replaceList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string v0, "endpointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList$default(Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;Ljava/util/List;ZLjava/time/Instant;ILjava/lang/Object;)V

    return-void
.end method

.method public final replaceList(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 0
    const-string v0, "endpointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->replaceList$default(Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;Ljava/util/List;ZLjava/time/Instant;ILjava/lang/Object;)V

    return-void
.end method

.method public final replaceList(Ljava/util/List;ZLjava/time/Instant;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;Z",
            "Ljava/time/Instant;",
            ")V"
        }
    .end annotation

    const-string v0, "endpointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p3, :cond_14

    .line 171
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p3

    const-string v0, "now(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serversLastRefresh:Ljava/time/Instant;

    .line 172
    iget-object p3, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    .line 174
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->addCore(Lin/dragonbra/javasteam/steam/discovery/ServerRecord;)V

    goto :goto_1f

    :cond_2f
    if-eqz p2, :cond_3a

    .line 177
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->configuration:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getServerListProvider()Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;->updateServerList(Ljava/util/List;)V

    :cond_3a
    return-void
.end method

.method public final resetBadServers()V
    .registers 3

    .line 192
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->setLastBadConnectionTimeUtc(Ljava/time/Instant;)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public final resetOldScores()V
    .registers 4

    .line 149
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->badConnectionMemoryTimeSpan:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 151
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    .line 152
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getLastBadConnectionTimeUtc()Ljava/time/Instant;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 153
    invoke-virtual {v2, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->setLastBadConnectionTimeUtc(Ljava/time/Instant;)V

    goto :goto_10

    :cond_2d
    return-void
.end method

.method public final setBadConnectionMemoryTimeSpan(Ljava/time/Duration;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->badConnectionMemoryTimeSpan:Ljava/time/Duration;

    return-void
.end method

.method public final setServerListBeforeRefreshTimeSpan(Ljava/time/Duration;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->serverListBeforeRefreshTimeSpan:Ljava/time/Duration;

    return-void
.end method

.method public final tryMark(Ljava/net/InetSocketAddress;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)Z
    .registers 5

    const-string v0, "quality"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    .line 198
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->tryMark(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)Z

    move-result p0

    return p0
.end method

.method public final tryMark(Ljava/net/InetSocketAddress;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;",
            "Lin/dragonbra/javasteam/steam/discovery/ServerQuality;",
            ")Z"
        }
    .end annotation

    const-string v0, "quality"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_c3

    if-nez p2, :cond_e

    goto/16 :goto_c3

    .line 208
    :cond_e
    sget-object v3, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->GOOD:Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    if-ne p3, v3, :cond_46

    .line 209
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    .line 774
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    .line 210
    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getRecord()Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v7

    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getEndpoint()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getProtocol()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 865
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 214
    :cond_46
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->servers:Ljava/util/List;

    .line 774
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_55
    :goto_55
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    .line 216
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getRecord()Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v5

    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 865
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 220
    :cond_74
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7b

    return v1

    .line 224
    :cond_7b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    .line 225
    sget-object v1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getRecord()Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getEndpoint()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->getProtocol()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v0, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 226
    invoke-direct {p0, p2, p3}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->markServerCore(Lin/dragonbra/javasteam/steam/discovery/ServerInfo;Lin/dragonbra/javasteam/steam/discovery/ServerQuality;)V

    goto :goto_7f

    :cond_c1
    const/4 p0, 0x1

    return p0

    .line 202
    :cond_c3
    :goto_c3
    sget-object p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t mark an endpoint "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping it"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v0, v2}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v1
.end method

###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList.Companion (in.dragonbra.javasteam.steam.discovery.SmartCMServerList$Companion)
.class public final Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;
.super Ljava/lang/Object;
.source "SmartCMServerList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDefaultServerNetFilter$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getDefaultServerWebSocket$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final getDefaultServerNetFilter()Ljava/lang/String;
    .registers 1

    .line 38
    invoke-static {}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->access$getDefaultServerNetFilter$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultServerWebSocket()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-static {}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->access$getDefaultServerWebSocket$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setDefaultServerNetFilter(Ljava/lang/String;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->access$setDefaultServerNetFilter$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setDefaultServerWebSocket(Ljava/lang/String;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->access$setDefaultServerWebSocket$cp(Ljava/lang/String;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList.WhenMappings (in.dragonbra.javasteam.steam.discovery.SmartCMServerList$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$WhenMappings;
.super Ljava/lang/Object;
.source "SmartCMServerList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->values()[Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->GOOD:Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/steam/discovery/ServerQuality;->BAD:Lin/dragonbra/javasteam/steam/discovery/ServerQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/EnumSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/EnumSet;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda0;->f$0:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda0;->f$0:Ljava/util/EnumSet;

    check-cast p1, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->$r8$lambda$-urgWirmkLGN_0jb0TVqrDvNW6Y(Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/ServerInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    invoke-static {p0, p2}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->$r8$lambda$AQ5fj-6GAG9Vg4hjEj-a7LjM4P0(ILin/dragonbra/javasteam/steam/discovery/ServerInfo;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda2 (in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda2)
.class public final synthetic Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/Pair;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->$r8$lambda$8VCaZPBsrGKcNc-WZzuaKh7rIHc(Lkotlin/Pair;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda3 (in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda3)
.class public final synthetic Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/Pair;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->$r8$lambda$WhNNvxfS2G-z78VRI9NhYLfRyp0(Lkotlin/Pair;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda4 (in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda4)
.class public final synthetic Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/Pair;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;->$r8$lambda$LSh_dDOZHRFusI2dw5eZ4mCUfBg(Lkotlin/Pair;)Lin/dragonbra/javasteam/steam/discovery/ServerInfo;

    move-result-object p0

    return-object p0
.end method
