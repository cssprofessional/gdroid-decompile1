###### Class in.dragonbra.javasteam.generated.MsgGSGetUserGroupStatusResponse (in.dragonbra.javasteam.generated.MsgGSGetUserGroupStatusResponse)
.class public Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;
.super Ljava/lang/Object;
.source "MsgGSGetUserGroupStatusResponse.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private clanRank:Lin/dragonbra/javasteam/enums/EClanRank;

.field private clanRelationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

.field private steamIdGroup:J

.field private steamIdUser:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdUser:J

    .line 19
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdGroup:J

    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EClanRelationship;->from(I)Lin/dragonbra/javasteam/enums/EClanRelationship;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRelationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    .line 23
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EClanRank;->from(I)Lin/dragonbra/javasteam/enums/EClanRank;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRank:Lin/dragonbra/javasteam/enums/EClanRank;

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 75
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdUser:J

    .line 76
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdGroup:J

    .line 77
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EClanRelationship;->from(I)Lin/dragonbra/javasteam/enums/EClanRelationship;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRelationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    .line 78
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EClanRank;->from(I)Lin/dragonbra/javasteam/enums/EClanRank;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRank:Lin/dragonbra/javasteam/enums/EClanRank;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    .line 79
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_29
    move-exception p0

    .line 74
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
.end method

.method public getClanRank()Lin/dragonbra/javasteam/enums/EClanRank;
    .registers 1

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRank:Lin/dragonbra/javasteam/enums/EClanRank;

    return-object p0
.end method

.method public getClanRelationship()Lin/dragonbra/javasteam/enums/EClanRelationship;
    .registers 1

    .line 47
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRelationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    return-object p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 27
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->GSGetUserGroupStatusResponse:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSteamIdGroup()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdGroup:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdUser()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 31
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdUser:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 65
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdUser:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 66
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdGroup:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 67
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRelationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EClanRelationship;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 68
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRank:Lin/dragonbra/javasteam/enums/EClanRank;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/EClanRank;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    .line 69
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_25
    move-exception p0

    .line 64
    :try_start_26
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
.end method

.method public setClanRank(Lin/dragonbra/javasteam/enums/EClanRank;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRank:Lin/dragonbra/javasteam/enums/EClanRank;

    return-void
.end method

.method public setClanRelationship(Lin/dragonbra/javasteam/enums/EClanRelationship;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->clanRelationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    return-void
.end method

.method public setSteamIdGroup(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdGroup:J

    return-void
.end method

.method public setSteamIdUser(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 35
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetUserGroupStatusResponse;->steamIdUser:J

    return-void
.end method
