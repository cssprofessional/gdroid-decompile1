###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.PrivateBetaCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.PrivateBetaCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "PrivateBetaCallback.kt"


# instance fields
.field private final depotSection:Lin/dragonbra/javasteam/types/KeyValue;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 27
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 28
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaResponse;

    .line 27
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 31
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaResponse$Builder;

    .line 33
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 35
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 37
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;->depotSection:Lin/dragonbra/javasteam/types/KeyValue;

    .line 39
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaResponse$Builder;->getDepotSection()Lcom/google/protobuf/ByteString;

    move-result-object p0

    if-eqz p0, :cond_6a

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaResponse$Builder;->getDepotSection()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    if-lez p0, :cond_6a

    .line 41
    new-instance p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaResponse$Builder;->getDepotSection()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaResponse$Builder;->getDepotSection()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BII)V

    .line 42
    :try_start_5c
    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue;->readAsText(Ljava/io/InputStream;)Z
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_63

    .line 41
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6a

    :catchall_63
    move-exception p1

    :try_start_64
    throw p1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_6a
    :goto_6a
    return-void
.end method


# virtual methods
.method public final getDepotSection()Lin/dragonbra/javasteam/types/KeyValue;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;->depotSection:Lin/dragonbra/javasteam/types/KeyValue;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
