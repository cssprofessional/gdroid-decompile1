###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby (in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
.super Ljava/lang/Object;
.source "Lobby.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;


# instance fields
.field private final distance:Ljava/lang/Float;

.field private final lobbyFlags:I

.field private final lobbyType:Lin/dragonbra/javasteam/enums/ELobbyType;

.field private final maxMembers:I

.field private final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final numMembers:I

.field private final ownerSteamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final weight:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/enums/ELobbyType;",
            "I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lobbyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "members"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 30
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->lobbyType:Lin/dragonbra/javasteam/enums/ELobbyType;

    .line 31
    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->lobbyFlags:I

    .line 32
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->ownerSteamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 33
    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->metadata:Ljava/util/Map;

    .line 34
    iput p6, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->maxMembers:I

    .line 35
    iput p7, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->numMembers:I

    .line 36
    iput-object p8, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->members:Ljava/util/List;

    .line 37
    iput-object p9, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->distance:Ljava/lang/Float;

    .line 38
    iput-object p10, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->weight:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 26

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_c

    .line 33
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v7, v1

    goto :goto_e

    :cond_c
    move-object/from16 v7, p5

    :goto_e
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_18

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_1a

    :cond_18
    move-object/from16 v10, p8

    :goto_1a
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 28
    invoke-direct/range {v2 .. v12}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;-><init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V

    return-void
.end method

.method public static final decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final decodeMetadata$javasteam([B)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final encodeMetadata$javasteam(Ljava/util/Map;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->encodeMetadata$javasteam(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDistance()Ljava/lang/Float;
    .registers 1

    .line 37
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->distance:Ljava/lang/Float;

    return-object p0
.end method

.method public final getLobbyFlags()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->lobbyFlags:I

    return p0
.end method

.method public final getLobbyType()Lin/dragonbra/javasteam/enums/ELobbyType;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->lobbyType:Lin/dragonbra/javasteam/enums/ELobbyType;

    return-object p0
.end method

.method public final getMaxMembers()I
    .registers 1

    .line 34
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->maxMembers:I

    return p0
.end method

.method public final getMembers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->members:Ljava/util/List;

    return-object p0
.end method

.method public final getMetadata()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final getNumMembers()I
    .registers 1

    .line 35
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->numMembers:I

    return p0
.end method

.method public final getOwnerSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->ownerSteamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getWeight()Ljava/lang/Long;
    .registers 1

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->weight:Ljava/lang/Long;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby.Companion (in.dragonbra.javasteam.steam.handlers.steammatchmaking.Lobby$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;
.super Ljava/lang/Object;
.source "Lobby.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLobby.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Lobby.kt\nin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n216#2,2:90\n1869#3,2:92\n*S KotlinDebug\n*F\n+ 1 Lobby.kt\nin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion\n*L\n48#1:90,2\n77#1:92,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 59
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final decodeMetadata$javasteam([B)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6b

    .line 63
    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_6b

    .line 67
    :cond_6
    new-instance p0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 70
    :try_start_12
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/KeyValue;->tryReadAsBinary(Ljava/io/InputStream;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_5b

    .line 69
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 75
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/types/KeyValue;

    .line 78
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/KeyValue;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_43

    goto :goto_55

    .line 82
    :cond_43
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/KeyValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_55
    :goto_55
    return-object p1

    .line 85
    :cond_56
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :catchall_5b
    move-exception p0

    goto :goto_65

    .line 71
    :cond_5d
    :try_start_5d
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Lobby metadata is of an unexpected format"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_5b

    .line 69
    :goto_65
    :try_start_65
    throw p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 64
    :cond_6b
    :goto_6b
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final encodeMetadata$javasteam(Ljava/util/Map;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 46
    new-instance p0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v0, 0x2

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_34

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lin/dragonbra/javasteam/types/KeyValue;->set(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)V

    goto :goto_13

    .line 52
    :cond_34
    new-instance p1, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V

    .line 53
    :try_start_39
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "asOutputStream(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->saveToStream(Ljava/io/OutputStream;Z)V

    .line 54
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_53

    .line 52
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "use(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_53
    move-exception p0

    :try_start_54
    throw p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toByteString$javasteam([B)Lcom/google/protobuf/ByteString;
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    const-string p1, "copyFrom(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
