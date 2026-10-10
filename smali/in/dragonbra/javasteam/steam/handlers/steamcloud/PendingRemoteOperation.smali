###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.PendingRemoteOperation (in.dragonbra.javasteam.steam.handlers.steamcloud.PendingRemoteOperation)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;
.super Ljava/lang/Object;
.source "PendingRemoteOperation.kt"


# instance fields
.field private final clientId:J

.field private final deviceType:I

.field private final machineName:Ljava/lang/String;

.field private final operation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$ECloudPendingRemoteOperation;

.field private final osType:Lin/dragonbra/javasteam/enums/EOSType;

.field private final timeLastUpdated:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;)V
    .registers 4

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;->getOperation()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$ECloudPendingRemoteOperation;

    move-result-object v0

    const-string v1, "getOperation(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->operation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$ECloudPendingRemoteOperation;

    .line 9
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;->getMachineName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMachineName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->machineName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;->getClientId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->clientId:J

    .line 11
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;->getTimeLastUpdated()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->timeLastUpdated:I

    .line 12
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;->getOsType()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EOSType;->from(I)Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object v0

    if-nez v0, :cond_36

    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->Unknown:Lin/dragonbra/javasteam/enums/EOSType;

    :cond_36
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    .line 13
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$CCloud_PendingRemoteOperation;->getDeviceType()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->deviceType:I

    return-void
.end method


# virtual methods
.method public final getClientId()J
    .registers 3

    .line 10
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->clientId:J

    return-wide v0
.end method

.method public final getDeviceType()I
    .registers 1

    .line 13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->deviceType:I

    return p0
.end method

.method public final getMachineName()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOperation()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$ECloudPendingRemoteOperation;
    .registers 1

    .line 8
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->operation:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientObjects$ECloudPendingRemoteOperation;

    return-object p0
.end method

.method public final getOsType()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 1

    .line 12
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    return-object p0
.end method

.method public final getTimeLastUpdated()I
    .registers 1

    .line 11
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/PendingRemoteOperation;->timeLastUpdated:I

    return p0
.end method
