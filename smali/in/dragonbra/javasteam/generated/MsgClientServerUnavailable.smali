###### Class in.dragonbra.javasteam.generated.MsgClientServerUnavailable (in.dragonbra.javasteam.generated.MsgClientServerUnavailable)
.class public Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;
.super Ljava/lang/Object;
.source "MsgClientServerUnavailable.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private eMsgSent:I

.field private eServerTypeUnavailable:Lin/dragonbra/javasteam/enums/EServerType;

.field private jobidSent:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->jobidSent:J

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eMsgSent:I

    .line 19
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EServerType;->from(I)Lin/dragonbra/javasteam/enums/EServerType;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eServerTypeUnavailable:Lin/dragonbra/javasteam/enums/EServerType;

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

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 62
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->jobidSent:J

    .line 63
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eMsgSent:I

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EServerType;->from(I)Lin/dragonbra/javasteam/enums/EServerType;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eServerTypeUnavailable:Lin/dragonbra/javasteam/enums/EServerType;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1f
    move-exception p0

    .line 61
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

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 23
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientServerUnavailable:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getEMsgSent()I
    .registers 1

    .line 35
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eMsgSent:I

    return p0
.end method

.method public getEServerTypeUnavailable()Lin/dragonbra/javasteam/enums/EServerType;
    .registers 1

    .line 43
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eServerTypeUnavailable:Lin/dragonbra/javasteam/enums/EServerType;

    return-object p0
.end method

.method public getJobidSent()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->jobidSent:J

    return-wide v0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 53
    :try_start_5
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->jobidSent:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 54
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eMsgSent:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eServerTypeUnavailable:Lin/dragonbra/javasteam/enums/EServerType;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/EServerType;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 56
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1c
    move-exception p0

    .line 52
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

.method public setEMsgSent(I)V
    .registers 2

    .line 39
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eMsgSent:I

    return-void
.end method

.method public setEServerTypeUnavailable(Lin/dragonbra/javasteam/enums/EServerType;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->eServerTypeUnavailable:Lin/dragonbra/javasteam/enums/EServerType;

    return-void
.end method

.method public setJobidSent(J)V
    .registers 3

    .line 31
    iput-wide p1, p0, Lin/dragonbra/javasteam/generated/MsgClientServerUnavailable;->jobidSent:J

    return-void
.end method
