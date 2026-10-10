###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.Member (in.dragonbra.javasteam.steam.handlers.steammatchmaking.Member)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
.super Ljava/lang/Object;
.source "Member.kt"


# instance fields
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

.field private final personaName:Ljava/lang/String;

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "personaName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 16
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->personaName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    .line 17
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 14
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;-><init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->personaName:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->metadata:Ljava/util/Map;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->copy(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->personaName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/util/Map;
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

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;"
        }
    .end annotation

    .line 0
    const-string p0, "steamID"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "personaName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "metadata"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;-><init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 24
    instance-of v0, p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    if-eqz v0, :cond_f

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
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

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final getPersonaName()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->personaName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/SteamID;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->personaName:Ljava/lang/String;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->metadata:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Member(steamID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", personaName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", metadata="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
