###### Class in.dragonbra.javasteam.steam.handlers.steamnotifications.SteamNotifications (in.dragonbra.javasteam.steam.handlers.steamnotifications.SteamNotifications)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamNotifications.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamNotifications.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamNotifications.kt\nin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;

    invoke-static {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;->access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 62
    :cond_e
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final requestCommentNotifications()V
    .registers 8

    .line 26
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 28
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestCommentNotifications:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 26
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientRequestCommentNotifications;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final requestItemAnnouncements()V
    .registers 8

    .line 37
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 39
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestItemAnnouncements:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 37
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientRequestItemAnnouncements;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final requestOfflineMessageCount()V
    .registers 8

    .line 48
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 50
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatRequestOfflineMessageCount:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 48
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientRequestOfflineMessageCount;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamnotifications.SteamNotifications.Companion (in.dragonbra.javasteam.steam.handlers.steamnotifications.SteamNotifications$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;
.super Ljava/lang/Object;
.source "SteamNotifications.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;->getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method

.method private final getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 66
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1a

    const/4 p0, 0x0

    goto :goto_31

    .line 70
    :cond_1a
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/ItemAnnouncementsCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/ItemAnnouncementsCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_31

    .line 69
    :cond_20
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/CommentNotificationsCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_31

    .line 68
    :cond_26
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/OfflineMessageNotificationCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_31

    .line 67
    :cond_2c
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/UserNotificationsCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/callback/UserNotificationsCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_31
    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamnotifications.SteamNotifications.Companion.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamnotifications.SteamNotifications$Companion$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "SteamNotifications.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientUserNotifications:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientChatOfflineMessageNotification:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientCommentNotifications:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientItemAnnouncements:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamnotifications/SteamNotifications$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
