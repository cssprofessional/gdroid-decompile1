###### Class in.dragonbra.javasteam.generated.MsgClientOGSBeginSession (in.dragonbra.javasteam.generated.MsgClientOGSBeginSession)
.class public Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;
.super Ljava/lang/Object;
.source "MsgClientOGSBeginSession.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private accountId:J

.field private accountType:B

.field private appId:I

.field private timeStarted:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-byte v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountType:B

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountId:J

    .line 19
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->appId:I

    .line 21
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->timeStarted:I

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

    .line 72
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 73
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p1

    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountType:B

    .line 74
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountId:J

    .line 75
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->appId:I

    .line 76
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->timeStarted:I
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_21
    move-exception p0

    .line 72
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
.end method

.method public getAccountId()Lin/dragonbra/javasteam/types/SteamID;
    .registers 4

    .line 37
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountId:J

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getAccountType()B
    .registers 1

    .line 29
    iget-byte p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountType:B

    return p0
.end method

.method public getAppId()I
    .registers 1

    .line 45
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->appId:I

    return p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 25
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientOGSBeginSession:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getTimeStarted()I
    .registers 1

    .line 53
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->timeStarted:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 5
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
    iget-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountType:B

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeByte(B)V

    .line 64
    iget-wide v1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountId:J

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    .line 65
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->appId:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 66
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->timeStarted:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    .line 67
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1d
    move-exception p0

    .line 62
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p0
.end method

.method public setAccountId(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 4

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountId:J

    return-void
.end method

.method public setAccountType(B)V
    .registers 2

    .line 33
    iput-byte p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->accountType:B

    return-void
.end method

.method public setAppId(I)V
    .registers 2

    .line 49
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->appId:I

    return-void
.end method

.method public setTimeStarted(I)V
    .registers 2

    .line 57
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSBeginSession;->timeStarted:I

    return-void
.end method
