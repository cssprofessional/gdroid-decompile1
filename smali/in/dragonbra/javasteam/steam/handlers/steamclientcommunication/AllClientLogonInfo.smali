###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.AllClientLogonInfo (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.AllClientLogonInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;
.super Ljava/lang/Object;
.source "AllClientLogonInfo.kt"


# instance fields
.field private final refetchIntervalSec:I

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "sessions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    .line 13
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;Ljava/util/List;IILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->copy(Ljava/util/List;I)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;

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
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    return p0
.end method

.method public final copy(Ljava/util/List;I)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;",
            ">;I)",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;"
        }
    .end annotation

    .line 0
    const-string p0, "sessions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;-><init>(Ljava/util/List;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    iget p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    if-eq p0, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getRefetchIntervalSec()I
    .registers 1

    .line 13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    return p0
.end method

.method public final getSessions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 17
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->sessions:Ljava/util/List;

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfo;->refetchIntervalSec:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n           AllClientLogonInfo(\n                sessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                refetchIntervalSec="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n           )\n    "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
