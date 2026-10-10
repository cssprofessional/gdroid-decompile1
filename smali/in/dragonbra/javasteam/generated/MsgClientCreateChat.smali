###### Class in.dragonbra.javasteam.generated.MsgClientCreateChat (in.dragonbra.javasteam.generated.MsgClientCreateChat)
.class public Lin/dragonbra/javasteam/generated/MsgClientCreateChat;
.super Ljava/lang/Object;
.source "MsgClientCreateChat.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private chatFlags:B

.field private chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

.field private gameId:J

.field private membersMax:I

.field private permissionAll:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;"
        }
    .end annotation
.end field

.field private permissionMember:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;"
        }
    .end annotation
.end field

.field private permissionOfficer:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;"
        }
    .end annotation
.end field

.field private steamIdClan:J

.field private steamIdFriendChat:J

.field private steamIdInvited:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatRoomType;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->gameId:J

    .line 23
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdClan:J

    .line 25
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatPermission;->from(I)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionOfficer:Ljava/util/EnumSet;

    .line 27
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatPermission;->from(I)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionMember:Ljava/util/EnumSet;

    .line 29
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatPermission;->from(I)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionAll:Ljava/util/EnumSet;

    .line 31
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->membersMax:I

    .line 33
    iput-byte v0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatFlags:B

    .line 35
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdFriendChat:J

    .line 37
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdInvited:J

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

    .line 142
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 143
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatRoomType;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 144
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->gameId:J

    .line 145
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdClan:J

    .line 146
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatPermission;->from(I)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionOfficer:Ljava/util/EnumSet;

    .line 147
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatPermission;->from(I)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionMember:Ljava/util/EnumSet;

    .line 148
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatPermission;->from(I)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionAll:Ljava/util/EnumSet;

    .line 149
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->membersMax:I

    .line 150
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatFlags:B

    .line 151
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdFriendChat:J

    .line 152
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdInvited:J
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_55

    .line 153
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_55
    move-exception p0

    .line 142
    :try_start_56
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5e
    throw p0
.end method

.method public getChatFlags()B
    .registers 1

    .line 101
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatFlags:B

    return p0
.end method

.method public getChatRoomType()Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 1

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-object p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 41
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientCreateChat:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getGameId()Lin/dragonbra/javasteam/types/GameID;
    .registers 4

    .line 53
    new-instance v0, Lin/dragonbra/javasteam/types/GameID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->gameId:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    return-object v0
.end method

.method public getMembersMax()I
    .registers 1

    .line 93
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->membersMax:I

    return p0
.end method

.method public getPermissionAll()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionAll:Ljava/util/EnumSet;

    return-object p0
.end method

.method public getPermissionMember()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionMember:Ljava/util/EnumSet;

    return-object p0
.end method

.method public getPermissionOfficer()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionOfficer:Ljava/util/EnumSet;

    return-object p0
.end method

.method public getSteamIdClan()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdClan:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdFriendChat()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 109
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdFriendChat:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdInvited()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 117
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdInvited:J

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

    .line 126
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 127
    :try_start_5
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EChatRoomType;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 128
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->gameId:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 129
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdClan:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 130
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionOfficer:Ljava/util/EnumSet;

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatPermission;->code(Ljava/util/EnumSet;)I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 131
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionMember:Ljava/util/EnumSet;

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatPermission;->code(Ljava/util/EnumSet;)I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 132
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionAll:Ljava/util/EnumSet;

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatPermission;->code(Ljava/util/EnumSet;)I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 133
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->membersMax:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 134
    iget-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatFlags:B

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V

    .line 135
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdFriendChat:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 136
    iget-wide p0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdInvited:J

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_4b

    .line 137
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_4b
    move-exception p0

    .line 126
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_54
    throw p0
.end method

.method public setChatFlags(B)V
    .registers 2

    .line 105
    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatFlags:B

    return-void
.end method

.method public setChatRoomType(Lin/dragonbra/javasteam/enums/EChatRoomType;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->chatRoomType:Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-void
.end method

.method public setGameId(Lin/dragonbra/javasteam/types/GameID;)V
    .registers 4

    .line 57
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/GameID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->gameId:J

    return-void
.end method

.method public setMembersMax(I)V
    .registers 2

    .line 97
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->membersMax:I

    return-void
.end method

.method public setPermissionAll(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionAll:Ljava/util/EnumSet;

    return-void
.end method

.method public setPermissionMember(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionMember:Ljava/util/EnumSet;

    return-void
.end method

.method public setPermissionOfficer(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->permissionOfficer:Ljava/util/EnumSet;

    return-void
.end method

.method public setSteamIdClan(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 65
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdClan:J

    return-void
.end method

.method public setSteamIdFriendChat(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 113
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdFriendChat:J

    return-void
.end method

.method public setSteamIdInvited(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 121
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientCreateChat;->steamIdInvited:J

    return-void
.end method
