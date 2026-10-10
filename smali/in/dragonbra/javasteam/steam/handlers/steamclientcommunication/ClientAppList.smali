###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientAppList (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientAppList)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;
.super Ljava/lang/Object;
.source "ClientAppList.kt"


# instance fields
.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;",
            ">;"
        }
    .end annotation
.end field

.field private final bytesAvailable:J

.field private final clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

.field private final refetchIntervalSecChanging:I

.field private final refetchIntervalSecFull:I

.field private final refetchIntervalSecUpdating:I


# direct methods
.method public constructor <init>(JLjava/util/List;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;",
            ">;",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;",
            "III)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    .line 17
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    .line 18
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    .line 19
    iput p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    .line 20
    iput p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    .line 21
    iput p7, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;JLjava/util/List;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;IIIILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;
    .registers 18

    .line 0
    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_10

    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    goto :goto_11

    :cond_10
    move-object v3, p3

    :goto_11
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    goto :goto_19

    :cond_18
    move-object v4, p4

    :goto_19
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_20

    iget v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    goto :goto_21

    :cond_20
    move v5, p5

    :goto_21
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_28

    iget v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    goto :goto_29

    :cond_28
    move v6, p6

    :goto_29
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_30

    iget v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    goto :goto_31

    :cond_30
    move v7, p7

    :goto_31
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move p5, v5

    move p6, v6

    move p7, v7

    invoke-virtual/range {p0 .. p7}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->copy(JLjava/util/List;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;III)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    return-wide v0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    return p0
.end method

.method public final component5()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    return p0
.end method

.method public final component6()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    return p0
.end method

.method public final copy(JLjava/util/List;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;III)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;",
            ">;",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;",
            "III)",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;"
        }
    .end annotation

    .line 0
    const-string p0, "apps"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientInfo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;-><init>(JLjava/util/List;Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    if-eq v1, v3, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    iget p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    if-eq p0, p1, :cond_40

    return v2

    :cond_40
    return v0
.end method

.method public final getApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    return-object p0
.end method

.method public final getBytesAvailable()J
    .registers 3

    .line 16
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    return-wide v0
.end method

.method public final getClientInfo()Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    return-object p0
.end method

.method public final getRefetchIntervalSecChanging()I
    .registers 1

    .line 20
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    return p0
.end method

.method public final getRefetchIntervalSecFull()I
    .registers 1

    .line 19
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    return p0
.end method

.method public final getRefetchIntervalSecUpdating()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 25
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->bytesAvailable:J

    .line 26
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->apps:Ljava/util/List;

    .line 27
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->clientInfo:Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    .line 28
    iget v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecFull:I

    .line 29
    iget v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecChanging:I

    .line 30
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppList;->refetchIntervalSecUpdating:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n            ClientAppList(\n                bytesAvailable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",\n                apps="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                clientInfo="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                refetchIntervalSecFull="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                refetchIntervalSecChanging="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                refetchIntervalSecUpdating="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n            )\n    "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
