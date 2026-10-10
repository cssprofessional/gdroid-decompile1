###### Class in.dragonbra.javasteam.steam.webapi.SteamDirectory (in.dragonbra.javasteam.steam.webapi.SteamDirectory)
.class public final Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;
.super Ljava/lang/Object;
.source "SteamDirectory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamDirectory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamDirectory.kt\nin/dragonbra/javasteam/steam/webapi/SteamDirectory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1#2:66\n1869#3,2:67\n*S KotlinDebug\n*F\n+ 1 SteamDirectory.kt\nin/dragonbra/javasteam/steam/webapi/SteamDirectory\n*L\n48#1:67,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;->INSTANCE:Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final load(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;",
            ")",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const-string v0, "configuration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;->load$default(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final load(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;->INSTANCE:Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;

    invoke-direct {v0, p0, p1}, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;->loadCore(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic load$default(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 23
    :cond_5
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/webapi/SteamDirectory;->load(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final loadCore(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/lang/Integer;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const-string p0, "ISteamDirectory"

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getWebAPI(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/webapi/WebAPI;

    move-result-object p0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getCellID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cellid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_27

    .line 35
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "maxcount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_27
    const-string p1, "GetCMListForConnect"

    invoke-virtual {p0, p1, v0}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    .line 40
    const-string p1, "success"

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asBoolean$default(Lin/dragonbra/javasteam/types/KeyValue;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    .line 41
    new-instance p1, Ljava/io/IOException;

    const-string p2, "message"

    invoke-virtual {p0, p2}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue;->asString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4c

    const-string p0, "unknown"

    :cond_4c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Steam Web API returned EResult."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_61
    const-string p1, "serverlist"

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7c
    :goto_7c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/types/KeyValue;

    .line 49
    const-string v0, "endPoint"

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_95

    goto :goto_7c

    .line 51
    :cond_95
    const-string v2, "type"

    invoke-virtual {p2, v2}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 52
    const-string v2, "websockets"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    sget-object p2, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createWebSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p2

    goto :goto_be

    .line 53
    :cond_ae
    const-string v2, "netfilter"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bd

    sget-object p2, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->tryCreateSocketServer(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object p2

    goto :goto_be

    :cond_bd
    move-object p2, v1

    :goto_be
    if-eqz p2, :cond_7c

    .line 58
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :cond_c4
    return-object p1
.end method
