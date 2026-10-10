###### Class in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.ItemAnnouncementsCallback (in.dragonbra.javasteam.steam.handlers.steamnotifications.callback.ItemAnnouncementsCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/ItemAnnouncementsCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "ItemAnnouncementsCallback.kt"


# instance fields
.field private final count:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 19
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 20
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientItemAnnouncements;

    .line 19
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 23
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientItemAnnouncements$Builder;

    .line 25
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientItemAnnouncements$Builder;->getCountNewItems()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/ItemAnnouncementsCallback;->count:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 1

    .line 16
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/ItemAnnouncementsCallback;->count:I

    return p0
.end method
