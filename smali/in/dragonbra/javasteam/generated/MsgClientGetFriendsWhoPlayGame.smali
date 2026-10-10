###### Class in.dragonbra.javasteam.generated.MsgClientGetFriendsWhoPlayGame (in.dragonbra.javasteam.generated.MsgClientGetFriendsWhoPlayGame)
.class public Lin/dragonbra/javasteam/generated/MsgClientGetFriendsWhoPlayGame;
.super Ljava/lang/Object;
.source "MsgClientGetFriendsWhoPlayGame.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private gameId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientGetFriendsWhoPlayGame;->gameId:J

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

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientGetFriendsWhoPlayGame;->gameId:J
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_f
    move-exception p0

    .line 39
    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 19
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientGetFriendsWhoPlayGame:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getGameId()Lin/dragonbra/javasteam/types/GameID;
    .registers 4

    .line 23
    new-instance v0, Lin/dragonbra/javasteam/types/GameID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientGetFriendsWhoPlayGame;->gameId:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    return-object v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 33
    :try_start_5
    iget-wide p0, p0, Lin/dragonbra/javasteam/generated/MsgClientGetFriendsWhoPlayGame;->gameId:J

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 32
    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method

.method public setGameId(Lin/dragonbra/javasteam/types/GameID;)V
    .registers 4

    .line 27
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GameID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientGetFriendsWhoPlayGame;->gameId:J

    return-void
.end method
