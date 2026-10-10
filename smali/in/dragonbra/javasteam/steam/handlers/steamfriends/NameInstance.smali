###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.NameInstance (in.dragonbra.javasteam.steam.handlers.steamfriends.NameInstance)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/NameInstance;
.super Ljava/lang/Object;
.source "NameInstance.kt"


# instance fields
.field private final name:Ljava/lang/String;

.field private final nameSince:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistoryResponse$NameTableInstance$NameInstance;)V
    .registers 7

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistoryResponse$NameTableInstance$NameInstance;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/NameInstance;->name:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAMGetPersonaNameHistoryResponse$NameTableInstance$NameInstance;->getNameSince()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/NameInstance;->nameSince:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/NameInstance;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNameSince()Ljava/util/Date;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/NameInstance;->nameSince:Ljava/util/Date;

    return-object p0
.end method
