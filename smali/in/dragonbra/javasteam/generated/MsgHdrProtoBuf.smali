###### Class in.dragonbra.javasteam.generated.MsgHdrProtoBuf (in.dragonbra.javasteam.generated.MsgHdrProtoBuf)
.class public Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;
.super Ljava/lang/Object;
.source "MsgHdrProtoBuf.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableHeader;


# instance fields
.field private headerLength:I

.field private msg:Lin/dragonbra/javasteam/enums/EMsg;

.field private proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lin/dragonbra/javasteam/enums/EMsg;->Invalid:Lin/dragonbra/javasteam/enums/EMsg;

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->headerLength:I

    .line 20
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 65
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/util/MsgUtil;->getMsg(I)Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    .line 66
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->headerLength:I

    .line 67
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object p1

    .line 68
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    .line 69
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_29
    move-exception p0

    .line 64
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
.end method

.method public getHeaderLength()I
    .registers 1

    .line 36
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->headerLength:I

    return p0
.end method

.method public getMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;
    .registers 1

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-object p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 4
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
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EMsg;->code()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lin/dragonbra/javasteam/util/MsgUtil;->makeMsg(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 55
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    .line 56
    array-length v1, p1

    iput v1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->headerLength:I

    .line 57
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 58
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2a

    .line 59
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_2a
    move-exception p0

    .line 53
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw p0
.end method

.method public setEMsg(Lin/dragonbra/javasteam/enums/EMsg;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-void
.end method

.method public setHeaderLength(I)V
    .registers 2

    .line 40
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->headerLength:I

    return-void
.end method

.method public setMsg(Lin/dragonbra/javasteam/enums/EMsg;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->msg:Lin/dragonbra/javasteam/enums/EMsg;

    return-void
.end method

.method public setProto(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method
