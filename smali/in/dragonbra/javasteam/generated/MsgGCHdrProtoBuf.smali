###### Class in.dragonbra.javasteam.generated.MsgGCHdrProtoBuf (in.dragonbra.javasteam.generated.MsgGCHdrProtoBuf)
.class public Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;
.super Ljava/lang/Object;
.source "MsgGCHdrProtoBuf.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;


# instance fields
.field private headerLength:I

.field private msg:I

.field private proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->msg:I

    .line 16
    iput v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->headerLength:I

    .line 18
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

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

    .line 62
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 63
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->msg:I

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->headerLength:I

    .line 65
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object p1

    .line 66
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_25
    move-exception p0

    .line 62
    :try_start_26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
.end method

.method public getHeaderLength()I
    .registers 1

    .line 34
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->headerLength:I

    return p0
.end method

.method public getMsg()I
    .registers 1

    .line 26
    iget p0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->msg:I

    return p0
.end method

.method public getProto()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;
    .registers 1

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-object p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 52
    :try_start_5
    iget p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->msg:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 53
    iget-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    .line 54
    array-length v1, p1

    iput v1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->headerLength:I

    .line 55
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 56
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_21
    move-exception p0

    .line 51
    :try_start_22
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
.end method

.method public setEMsg(I)V
    .registers 2

    .line 22
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->msg:I

    return-void
.end method

.method public setHeaderLength(I)V
    .registers 2

    .line 38
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->headerLength:I

    return-void
.end method

.method public setMsg(I)V
    .registers 2

    .line 30
    iput p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->msg:I

    return-void
.end method

.method public setProto(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lin/dragonbra/javasteam/generated/MsgGCHdrProtoBuf;->proto:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    return-void
.end method
