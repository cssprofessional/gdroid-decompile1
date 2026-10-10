###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.AppFileInfo (in.dragonbra.javasteam.steam.handlers.steamcloud.AppFileInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;
.super Ljava/lang/Object;
.source "AppFileInfo.kt"


# instance fields
.field private final filename:Ljava/lang/String;

.field private final machineNameIndex:I

.field private final pathPrefixIndex:I

.field private final persistState:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

.field private final platformsToSync:I

.field private final rawFileSize:I

.field private final shaFile:[B

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;)V
    .registers 7

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFileName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->filename:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getShaFile()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const-string v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->shaFile:[B

    .line 10
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getTimeStamp()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->timestamp:Ljava/util/Date;

    .line 11
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getRawFileSize()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->rawFileSize:I

    .line 12
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getPersistState()Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    move-result-object v0

    const-string v1, "getPersistState(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->persistState:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    .line 13
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getPlatformsToSync()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->platformsToSync:I

    .line 14
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getPathPrefixIndex()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->pathPrefixIndex:I

    .line 15
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;->getMachineNameIndex()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->machineNameIndex:I

    return-void
.end method


# virtual methods
.method public final getFilename()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public final getMachineNameIndex()I
    .registers 1

    .line 15
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->machineNameIndex:I

    return p0
.end method

.method public final getPathPrefixIndex()I
    .registers 1

    .line 14
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->pathPrefixIndex:I

    return p0
.end method

.method public final getPersistState()Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;
    .registers 1

    .line 12
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->persistState:Lin/dragonbra/javasteam/protobufs/steamclient/Enums$ECloudStoragePersistState;

    return-object p0
.end method

.method public final getPlatformsToSync()I
    .registers 1

    .line 13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->platformsToSync:I

    return p0
.end method

.method public final getRawFileSize()I
    .registers 1

    .line 11
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->rawFileSize:I

    return p0
.end method

.method public final getShaFile()[B
    .registers 1

    .line 9
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->shaFile:[B

    return-object p0
.end method

.method public final getTimestamp()Ljava/util/Date;
    .registers 1

    .line 10
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;->timestamp:Ljava/util/Date;

    return-object p0
.end method
