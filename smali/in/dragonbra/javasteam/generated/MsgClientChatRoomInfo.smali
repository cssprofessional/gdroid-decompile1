###### Class in.dragonbra.javasteam.generated.MsgClientChatRoomInfo (in.dragonbra.javasteam.generated.MsgClientChatRoomInfo)
.class public Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;
.super Ljava/lang/Object;
.source "MsgClientChatRoomInfo.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private steamIdChat:J

.field private type:Lin/dragonbra/javasteam/enums/EChatInfoType;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->steamIdChat:J

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatInfoType;->from(I)Lin/dragonbra/javasteam/enums/EChatInfoType;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

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

    .line 51
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 52
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->steamIdChat:J

    .line 53
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatInfoType;->from(I)Lin/dragonbra/javasteam/enums/EChatInfoType;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 54
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_19
    move-exception p0

    .line 51
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 22
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatRoomInfo:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSteamIdChat()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->steamIdChat:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getType()Lin/dragonbra/javasteam/enums/EChatInfoType;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

    return-object p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 44
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->steamIdChat:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/EChatInfoType;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 46
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_17
    move-exception p0

    .line 43
    :try_start_18
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p0
.end method

.method public setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 30
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->steamIdChat:J

    return-void
.end method

.method public setType(Lin/dragonbra/javasteam/enums/EChatInfoType;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatRoomInfo;->type:Lin/dragonbra/javasteam/enums/EChatInfoType;

    return-void
.end method
