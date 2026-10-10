###### Class in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.OfflineMessageNotificationCallback (in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.OfflineMessageNotificationCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "OfflineMessageNotificationCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineMessageNotificationCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineMessageNotificationCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1563#2:37\n1634#2,3:38\n*S KotlinDebug\n*F\n+ 1 OfflineMessageNotificationCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback\n*L\n33#1:37\n33#1:38,3\n*E\n"
.end annotation


# instance fields
.field private final friendsWithOfflineMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;"
        }
    .end annotation
.end field

.field private final messageCount:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 7

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 27
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientOfflineMessageNotification;

    .line 26
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 30
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientOfflineMessageNotification$Builder;

    .line 32
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientOfflineMessageNotification$Builder;->getOfflineMessages()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback;->messageCount:I

    .line 33
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientOfflineMessageNotification$Builder;->getFriendsWithOfflineMessagesList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFriendsWithOfflineMessagesList(...)"

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

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Ljava/lang/Integer;

    .line 33
    new-instance v2, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-direct {v2, v3, v4}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 33
    :cond_4d
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback;->friendsWithOfflineMessages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getFriendsWithOfflineMessages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback;->friendsWithOfflineMessages:Ljava/util/List;

    return-object p0
.end method

.method public final getMessageCount()I
    .registers 1

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback;->messageCount:I

    return p0
.end method
