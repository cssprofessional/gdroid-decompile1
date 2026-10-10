###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.HttpHeaders (in.dragonbra.javasteam.steam.handlers.steamcloud.HttpHeaders)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->copy(Ljava/lang/String;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;
    .registers 3

    .line 0
    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;

    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 4
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 1

    .line 5
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->name:Ljava/lang/String;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpHeaders(name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
