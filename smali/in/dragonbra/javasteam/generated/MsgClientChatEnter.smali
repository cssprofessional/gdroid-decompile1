###### Class in.dragonbra.javasteam.generated.MsgClientChatEnter (in.dragonbra.javasteam.generated.MsgClientChatEnter)
.class public Lin/dragonbra/javasteam/generated/MsgClientChatEnter;
.super Ljava/lang/Object;
.source "MsgClientChatEnter.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private chatFlags:B

.field private chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

.field private enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

.field private numMembers:I

.field private steamIdChat:J

.field private steamIdClan:J

.field private steamIdFriend:J

.field private steamIdOwner:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdChat:J

    .line 19
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdFriend:J

    const/4 v2, 0x0

    .line 21
    invoke-static {v2}, Lin/dragonbra/javasteam/enums/EChatRoomType;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object v3

    iput-object v3, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 23
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdOwner:J

    .line 25
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdClan:J

    .line 27
    iput-byte v2, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatFlags:B

    .line 29
    invoke-static {v2}, Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    .line 31
    iput v2, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->numMembers:I

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

    .line 118
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 119
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdChat:J

    .line 120
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdFriend:J

    .line 121
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatRoomType;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 122
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdOwner:J

    .line 123
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdClan:J

    .line 124
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatFlags:B

    .line 125
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    .line 126
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->numMembers:I
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_41

    .line 127
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_41
    move-exception p0

    .line 118
    :try_start_42
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0
.end method

.method public getChatFlags()B
    .registers 1

    .line 79
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatFlags:B

    return p0
.end method

.method public getChatRoomType()Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 1

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-object p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 35
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatEnter:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getEnterResponse()Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;
    .registers 1

    .line 87
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    return-object p0
.end method

.method public getNumMembers()I
    .registers 1

    .line 95
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->numMembers:I

    return p0
.end method

.method public getSteamIdChat()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdChat:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdClan()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 71
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdClan:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdFriend()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 47
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdFriend:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdOwner()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 63
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdOwner:J

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

    .line 104
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 105
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdChat:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 106
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdFriend:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 107
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EChatRoomType;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 108
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdOwner:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 109
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdClan:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 110
    iget-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatFlags:B

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V

    .line 111
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 112
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->numMembers:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    .line 113
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_39
    move-exception p0

    .line 104
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p0
.end method

.method public setChatFlags(B)V
    .registers 2

    .line 83
    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatFlags:B

    return-void
.end method

.method public setChatRoomType(Lin/dragonbra/javasteam/enums/EChatRoomType;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-void
.end method

.method public setEnterResponse(Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->enterResponse:Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    return-void
.end method

.method public setNumMembers(I)V
    .registers 2

    .line 99
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->numMembers:I

    return-void
.end method

.method public setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdChat:J

    return-void
.end method

.method public setSteamIdClan(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 75
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdClan:J

    return-void
.end method

.method public setSteamIdFriend(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 51
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdFriend:J

    return-void
.end method

.method public setSteamIdOwner(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 67
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatEnter;->steamIdOwner:J

    return-void
.end method
