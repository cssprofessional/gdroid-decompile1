###### Class in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.CommentNotificationsCallback (in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.CommentNotificationsCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "CommentNotificationsCallback.kt"


# instance fields
.field private final commentCount:I

.field private final commentOwnerCount:I

.field private final commentSubscriptionsCount:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 29
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 30
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCommentNotifications;

    .line 29
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 33
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCommentNotifications$Builder;

    .line 35
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCommentNotifications$Builder;->getCountNewComments()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;->commentCount:I

    .line 36
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCommentNotifications$Builder;->getCountNewCommentsOwner()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;->commentOwnerCount:I

    .line 37
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCommentNotifications$Builder;->getCountNewCommentsSubscriptions()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;->commentSubscriptionsCount:I

    return-void
.end method


# virtual methods
.method public final getCommentCount()I
    .registers 1

    .line 16
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;->commentCount:I

    return p0
.end method

.method public final getCommentOwnerCount()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;->commentOwnerCount:I

    return p0
.end method

.method public final getCommentSubscriptionsCount()I
    .registers 1

    .line 26
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;->commentSubscriptionsCount:I

    return p0
.end method
