###### Class in.dragonbra.javasteam.rpc.service.ChatRoomClient (in.dragonbra.javasteam.rpc.service.ChatRoomClient)
.class public final Lin/dragonbra/javasteam/rpc/service/ChatRoomClient;
.super Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;
.source "ChatRoomClient.kt"


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V
    .registers 3

    const-string v0, "unifiedMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .registers 1

    .line 31
    const-string p0, "ChatRoomClient"

    return-object p0
.end method

.method public handleNotificationMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 4

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packetMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c2

    goto/16 :goto_c0

    :sswitch_13
    const-string v0, "NotifyShouldRejoinChatRoomVoiceChat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_c0

    .line 61
    :cond_1d
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_NotifyShouldRejoinChatRoomVoiceChat_Notification;

    .line 60
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_c0

    .line 39
    :sswitch_24
    const-string v0, "NotifyChatRoomHeaderStateChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_c0

    .line 53
    :cond_2e
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_ChatRoomHeaderState_Notification;

    .line 52
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_c0

    .line 39
    :sswitch_35
    const-string v0, "NotifyAckChatMessageEcho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto/16 :goto_c0

    .line 69
    :cond_3f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_AckChatMessage_Notification;

    .line 68
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_c0

    .line 39
    :sswitch_46
    const-string v0, "NotifyMemberListViewUpdated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_c0

    .line 77
    :cond_50
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoomClient_MemberListViewUpdated_Notification;

    .line 76
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_c0

    .line 39
    :sswitch_57
    const-string v0, "NotifyChatMessageModified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_c0

    .line 45
    :cond_61
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_ChatMessageModified_Notification;

    .line 44
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_c0

    .line 39
    :sswitch_67
    const-string v0, "NotifyChatRoomDisconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_c0

    .line 73
    :cond_70
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$ChatRoomClient_NotifyChatRoomDisconnect_Notification;

    .line 72
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_c0

    .line 39
    :sswitch_76
    const-string v0, "NotifyChatRoomGroupRoomsChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto :goto_c0

    .line 57
    :cond_7f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_ChatRoomGroupRoomsChange_Notification;

    .line 56
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_c0

    .line 39
    :sswitch_85
    const-string v0, "NotifyChatGroupUserStateChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    goto :goto_c0

    .line 65
    :cond_8e
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$ChatRoomClient_NotifyChatGroupUserStateChanged_Notification;

    .line 64
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_c0

    .line 39
    :sswitch_94
    const-string v0, "NotifyMessageReaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9d

    goto :goto_c0

    .line 81
    :cond_9d
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_MessageReaction_Notification;

    .line 80
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_c0

    .line 39
    :sswitch_a3
    const-string v0, "NotifyMemberStateChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ac

    goto :goto_c0

    .line 49
    :cond_ac
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_MemberStateChange_Notification;

    .line 48
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_c0

    .line 39
    :sswitch_b2
    const-string v0, "NotifyIncomingChatMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    goto :goto_c0

    .line 41
    :cond_bb
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_IncomingChatMessage_Notification;

    .line 40
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postNotificationMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    :goto_c0
    return-void

    nop

    :sswitch_data_c2
    .sparse-switch
        -0x7fae60a0 -> :sswitch_b2
        -0x6f2677c2 -> :sswitch_a3
        -0x670ce359 -> :sswitch_94
        -0x4f3782f4 -> :sswitch_85
        -0x114aec3b -> :sswitch_76
        0xfe5dc98 -> :sswitch_67
        0x1bffcb4f -> :sswitch_57
        0x36fa90f5 -> :sswitch_46
        0x480a23d4 -> :sswitch_35
        0x49ed3758 -> :sswitch_24
        0x7c2d661e -> :sswitch_13
    .end sparse-switch
.end method

.method public handleResponseMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 3

    .line 0
    const-string p0, "methodName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packetMsg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyAckChatMessageEcho(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_AckChatMessage_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    const-string v0, "ChatRoomClient.NotifyAckChatMessageEcho#1"

    .line 177
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyChatGroupUserStateChanged(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$ChatRoomClient_NotifyChatGroupUserStateChanged_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    const-string v0, "ChatRoomClient.NotifyChatGroupUserStateChanged#1"

    .line 165
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyChatMessageModified(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_ChatMessageModified_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    const-string v0, "ChatRoomClient.NotifyChatMessageModified#1"

    .line 105
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyChatRoomDisconnect(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$ChatRoomClient_NotifyChatRoomDisconnect_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 190
    const-string v0, "ChatRoomClient.NotifyChatRoomDisconnect#1"

    .line 189
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyChatRoomGroupRoomsChange(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_ChatRoomGroupRoomsChange_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    const-string v0, "ChatRoomClient.NotifyChatRoomGroupRoomsChange#1"

    .line 141
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyChatRoomHeaderStateChange(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_ChatRoomHeaderState_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    const-string v0, "ChatRoomClient.NotifyChatRoomHeaderStateChange#1"

    .line 129
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyIncomingChatMessage(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_IncomingChatMessage_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    const-string v0, "ChatRoomClient.NotifyIncomingChatMessage#1"

    .line 93
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyMemberListViewUpdated(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoomClient_MemberListViewUpdated_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 202
    const-string v0, "ChatRoomClient.NotifyMemberListViewUpdated#1"

    .line 201
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyMemberStateChange(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_MemberStateChange_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    const-string v0, "ChatRoomClient.NotifyMemberStateChange#1"

    .line 117
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyMessageReaction(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_MessageReaction_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    const-string v0, "ChatRoomClient.NotifyMessageReaction#1"

    .line 213
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method

.method public final notifyShouldRejoinChatRoomVoiceChat(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesChatSteamclient$CChatRoom_NotifyShouldRejoinChatRoomVoiceChat_Notification;)V
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    const-string v0, "ChatRoomClient.NotifyShouldRejoinChatRoomVoiceChat#1"

    .line 153
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendNotification(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)V

    return-void
.end method
