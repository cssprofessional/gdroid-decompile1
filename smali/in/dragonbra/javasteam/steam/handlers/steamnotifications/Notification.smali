###### Class in.dragonbra.javasteam.steam.handlers.steamnotifications.Notification (in.dragonbra.javasteam.steam.handlers.steamnotifications.Notification)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamnotifications/Notification;
.super Ljava/lang/Object;
.source "Notification.kt"


# instance fields
.field private final count:I

.field private final type:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientUserNotifications$Notification;)V
    .registers 3

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientUserNotifications$Notification;->getCount()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/Notification;->count:I

    .line 17
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientUserNotifications$Notification;->getUserNotificationType()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/Notification;->type:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 1

    .line 12
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/Notification;->count:I

    return p0
.end method

.method public final getType()I
    .registers 1

    .line 17
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/Notification;->type:I

    return p0
.end method
