###### Class in.dragonbra.javasteam.generated.MsgChannelEncryptRequest (in.dragonbra.javasteam.generated.MsgChannelEncryptRequest)
.class public Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;
.super Ljava/lang/Object;
.source "MsgChannelEncryptRequest.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# static fields
.field public static final PROTOCOL_VERSION:I = 0x1


# instance fields
.field private protocolVersion:I

.field private universe:Lin/dragonbra/javasteam/enums/EUniverse;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->protocolVersion:I

    .line 19
    sget-object v0, Lin/dragonbra/javasteam/enums/EUniverse;->Invalid:Lin/dragonbra/javasteam/enums/EUniverse;

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

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

    .line 52
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 53
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->protocolVersion:I

    .line 54
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EUniverse;->from(I)Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->universe:Lin/dragonbra/javasteam/enums/EUniverse;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_19
    move-exception p0

    .line 52
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

    .line 23
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->ChannelEncryptRequest:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getProtocolVersion()I
    .registers 1

    .line 27
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->protocolVersion:I

    return p0
.end method

.method public getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;
    .registers 1

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    return-object p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 45
    :try_start_5
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->protocolVersion:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 46
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/enums/EUniverse;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 47
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_17
    move-exception p0

    .line 44
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

.method public setProtocolVersion(I)V
    .registers 2

    .line 31
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->protocolVersion:I

    return-void
.end method

.method public setUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgChannelEncryptRequest;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    return-void
.end method
