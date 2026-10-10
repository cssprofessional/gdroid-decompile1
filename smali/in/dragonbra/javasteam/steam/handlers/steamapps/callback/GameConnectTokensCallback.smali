###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.GameConnectTokensCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.GameConnectTokensCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "GameConnectTokensCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameConnectTokensCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameConnectTokensCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,34:1\n1563#2:35\n1634#2,3:36\n*S KotlinDebug\n*F\n+ 1 GameConnectTokensCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback\n*L\n31#1:35\n31#1:36,3\n*E\n"
.end annotation


# instance fields
.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final tokensToKeep:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 25
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens;

    .line 24
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 28
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens$Builder;

    .line 30
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens$Builder;->getMaxTokensToKeep()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback;->tokensToKeep:I

    .line 31
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens$Builder;->getTokensList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getTokensList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 31
    :cond_47
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getTokens()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback;->tokens:Ljava/util/List;

    return-object p0
.end method

.method public final getTokensToKeep()I
    .registers 1

    .line 16
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback;->tokensToKeep:I

    return p0
.end method
