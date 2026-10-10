###### Class in.dragonbra.javasteam.generated.MsgClientOGSEndSessionResponse (in.dragonbra.javasteam.generated.MsgClientOGSEndSessionResponse)
.class public Lin/dragonbra/javasteam/generated/MsgClientOGSEndSessionResponse;
.super Ljava/lang/Object;
.source "MsgClientOGSEndSessionResponse.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

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

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_13
    move-exception p0

    .line 39
    :try_start_14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 19
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientOGSEndSessionResponse:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
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
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_12
    move-exception p0

    .line 32
    :try_start_13
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw p0
.end method

.method public setResult(Lin/dragonbra/javasteam/enums/EResult;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgClientOGSEndSessionResponse;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-void
.end method
