###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.GetPeerContentInfo (in.dragonbra.javasteam.steam.handlers.steamcontent.GetPeerContentInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;
.super Ljava/lang/Object;
.source "GetPeerContentInfo.kt"


# instance fields
.field private final appIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ipPublic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "appIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipPublic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    .line 13
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->copy(Ljava/util/List;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;"
        }
    .end annotation

    .line 0
    const-string p0, "appIds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ipPublic"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getAppIds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    return-object p0
.end method

.method public final getIpPublic()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->appIds:Ljava/util/List;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/GetPeerContentInfo;->ipPublic:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetPeerContentInfo(appIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ipPublic="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
