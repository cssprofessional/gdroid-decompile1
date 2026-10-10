###### Class in.dragonbra.javasteam.steam.discovery.ServerInfo (in.dragonbra.javasteam.steam.discovery.ServerInfo)
.class public final Lin/dragonbra/javasteam/steam/discovery/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.kt"


# instance fields
.field private lastBadConnectionTimeUtc:Ljava/time/Instant;

.field private final protocol:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

.field private final record:Lin/dragonbra/javasteam/steam/discovery/ServerRecord;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/discovery/ServerRecord;Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)V
    .registers 4

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->record:Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->protocol:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    return-void
.end method


# virtual methods
.method public final getLastBadConnectionTimeUtc()Ljava/time/Instant;
    .registers 1

    .line 11
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->lastBadConnectionTimeUtc:Ljava/time/Instant;

    return-object p0
.end method

.method public final getProtocol()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 1

    .line 10
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->protocol:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    return-object p0
.end method

.method public final getRecord()Lin/dragonbra/javasteam/steam/discovery/ServerRecord;
    .registers 1

    .line 10
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->record:Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    return-object p0
.end method

.method public final setLastBadConnectionTimeUtc(Ljava/time/Instant;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/ServerInfo;->lastBadConnectionTimeUtc:Ljava/time/Instant;

    return-void
.end method
