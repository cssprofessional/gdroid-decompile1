###### Class in.dragonbra.javasteam.generated.MsgGSGetPlayStatsResponse (in.dragonbra.javasteam.generated.MsgGSGetPlayStatsResponse)
.class public Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;
.super Ljava/lang/Object;
.source "MsgGSGetPlayStatsResponse.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private lifetimeConnects:I

.field private lifetimeMinutesPlayed:I

.field private rank:I

.field private result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 17
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->rank:I

    .line 19
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeConnects:I

    .line 21
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeMinutesPlayed:I

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 73
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 74
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->rank:I

    .line 75
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeConnects:I

    .line 76
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeMinutesPlayed:I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    .line 77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_25
    move-exception p0

    .line 72
    :try_start_26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 25
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->GSGetPlayStatsResponse:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getLifetimeConnects()I
    .registers 1

    .line 45
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeConnects:I

    return p0
.end method

.method public getLifetimeMinutesPlayed()I
    .registers 1

    .line 53
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeMinutesPlayed:I

    return p0
.end method

.method public getRank()I
    .registers 1

    .line 37
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->rank:I

    return p0
.end method

.method public getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 63
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 64
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->rank:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 65
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeConnects:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 66
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeMinutesPlayed:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 67
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_21
    move-exception p0

    .line 62
    :try_start_22
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
.end method

.method public setLifetimeConnects(I)V
    .registers 2

    .line 49
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeConnects:I

    return-void
.end method

.method public setLifetimeMinutesPlayed(I)V
    .registers 2

    .line 57
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->lifetimeMinutesPlayed:I

    return-void
.end method

.method public setRank(I)V
    .registers 2

    .line 41
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->rank:I

    return-void
.end method

.method public setResult(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGSGetPlayStatsResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method
