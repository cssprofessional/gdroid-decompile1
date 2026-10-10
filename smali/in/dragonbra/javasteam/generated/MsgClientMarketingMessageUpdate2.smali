###### Class in.dragonbra.javasteam.generated.MsgClientMarketingMessageUpdate2 (in.dragonbra.javasteam.generated.MsgClientMarketingMessageUpdate2)
.class public Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;
.super Ljava/lang/Object;
.source "MsgClientMarketingMessageUpdate2.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# instance fields
.field private count:I

.field private marketingMessageUpdateTime:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->marketingMessageUpdateTime:I

    .line 16
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->count:I

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

    .line 49
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->marketingMessageUpdateTime:I

    .line 51
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->count:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_15
    move-exception p0

    .line 49
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p0
.end method

.method public getCount()I
    .registers 1

    .line 32
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->count:I

    return p0
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 20
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ClientMarketingMessageUpdate2:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getMarketingMessageUpdateTime()I
    .registers 1

    .line 24
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->marketingMessageUpdateTime:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 42
    :try_start_5
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->marketingMessageUpdateTime:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->count:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_13
    move-exception p0

    .line 41
    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
.end method

.method public setCount(I)V
    .registers 2

    .line 36
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->count:I

    return-void
.end method

.method public setMarketingMessageUpdateTime(I)V
    .registers 2

    .line 28
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgClientMarketingMessageUpdate2;->marketingMessageUpdateTime:I

    return-void
.end method
