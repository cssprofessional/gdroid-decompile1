###### Class in.dragonbra.javasteam.generated.MsgClientLoggedOff (in.dragonbra.javasteam.generated.MsgClientLoggedOff)
.class public Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;
.super Ljava/lang/Object;
.source "MsgClientLoggedOff.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private result:Lin/dragonbra/javasteam/enums/EResult;

.field private secMaxReconnectHint:I

.field private secMinReconnectHint:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 17
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMinReconnectHint:I

    .line 19
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMaxReconnectHint:I

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

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 62
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 63
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMinReconnectHint:I

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMaxReconnectHint:I
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
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientLoggedOff:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 27
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public getSecMaxReconnectHint()I
    .registers 1

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMaxReconnectHint:I

    return p0
.end method

.method public getSecMinReconnectHint()I
    .registers 1

    .line 35
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMinReconnectHint:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
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
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->result:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 54
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMinReconnectHint:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 55
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMaxReconnectHint:I

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

.method public setResult(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method

.method public setSecMaxReconnectHint(I)V
    .registers 2

    .line 47
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMaxReconnectHint:I

    return-void
.end method

.method public setSecMinReconnectHint(I)V
    .registers 2

    .line 39
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientLoggedOff;->secMinReconnectHint:I

    return-void
.end method
