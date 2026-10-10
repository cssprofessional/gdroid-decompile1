###### Class in.dragonbra.javasteam.generated.MsgClientChatAction (in.dragonbra.javasteam.generated.MsgClientChatAction)
.class public Lin/dragonbra/javasteam/generated/MsgClientChatAction;
.super Ljava/lang/Object;
.source "MsgClientChatAction.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private chatAction:Lin/dragonbra/javasteam/enums/EChatAction;

.field private steamIdChat:J

.field private steamIdUserToActOn:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdChat:J

    .line 18
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdUserToActOn:J

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EChatAction;->from(I)Lin/dragonbra/javasteam/enums/EChatAction;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->chatAction:Lin/dragonbra/javasteam/enums/EChatAction;

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

    .line 62
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 63
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdChat:J

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdUserToActOn:J

    .line 65
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EChatAction;->from(I)Lin/dragonbra/javasteam/enums/EChatAction;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->chatAction:Lin/dragonbra/javasteam/enums/EChatAction;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1f
    move-exception p0

    .line 62
    :try_start_20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0
.end method

.method public getChatAction()Lin/dragonbra/javasteam/enums/EChatAction;
    .registers 1

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->chatAction:Lin/dragonbra/javasteam/enums/EChatAction;

    return-object p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 24
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatAction:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getSteamIdChat()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdChat:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getSteamIdUserToActOn()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 36
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdUserToActOn:J

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

    .line 53
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 54
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdChat:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 55
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdUserToActOn:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 56
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->chatAction:Lin/dragonbra/javasteam/enums/EChatAction;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/EChatAction;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1c
    move-exception p0

    .line 53
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw p0
.end method

.method public setChatAction(Lin/dragonbra/javasteam/enums/EChatAction;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->chatAction:Lin/dragonbra/javasteam/enums/EChatAction;

    return-void
.end method

.method public setSteamIdChat(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 32
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdChat:J

    return-void
.end method

.method public setSteamIdUserToActOn(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 40
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientChatAction;->steamIdUserToActOn:J

    return-void
.end method
