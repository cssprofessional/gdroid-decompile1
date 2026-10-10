###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.AppUploadBatchResponse (in.dragonbra.javasteam.steam.handlers.steamcloud.AppUploadBatchResponse)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;
.super Ljava/lang/Object;
.source "AppUploadBatchResponse.kt"


# instance fields
.field private final appChangeNumber:J

.field private final batchID:J


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Response$Builder;)V
    .registers 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Response$Builder;->getBatchId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;->batchID:J

    .line 8
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_BeginAppUploadBatch_Response$Builder;->getAppChangeNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;->appChangeNumber:J

    return-void
.end method


# virtual methods
.method public final getAppChangeNumber()J
    .registers 3

    .line 8
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;->appChangeNumber:J

    return-wide v0
.end method

.method public final getBatchID()J
    .registers 3

    .line 7
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppUploadBatchResponse;->batchID:J

    return-wide v0
.end method
