###### Class in.dragonbra.javasteam.rpc.service.FamilyGroups (in.dragonbra.javasteam.rpc.service.FamilyGroups)
.class public final Lin/dragonbra/javasteam/rpc/service/FamilyGroups;
.super Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;
.source "FamilyGroups.kt"


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V
    .registers 3

    const-string v0, "unifiedMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V

    return-void
.end method


# virtual methods
.method public final cancelFamilyGroupInvite(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CancelFamilyGroupInvite_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CancelFamilyGroupInvite_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CancelFamilyGroupInvite_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 307
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CancelFamilyGroupInvite_Response$Builder;

    .line 308
    const-string v1, "FamilyGroups.CancelFamilyGroupInvite#1"

    .line 306
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final clearCooldownSkip(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ClearCooldownSkip_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ClearCooldownSkip_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ClearCooldownSkip_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 472
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ClearCooldownSkip_Response$Builder;

    .line 473
    const-string v1, "FamilyGroups.ClearCooldownSkip#1"

    .line 471
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final confirmInviteToFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmInviteToFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmInviteToFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmInviteToFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmInviteToFamilyGroup_Response$Builder;

    .line 253
    const-string v1, "FamilyGroups.ConfirmInviteToFamilyGroup#1"

    .line 251
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final confirmJoinFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmJoinFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmJoinFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmJoinFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 285
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmJoinFamilyGroup_Response$Builder;

    .line 286
    const-string v1, "FamilyGroups.ConfirmJoinFamilyGroup#1"

    .line 284
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final createFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CreateFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CreateFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CreateFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CreateFamilyGroup_Response$Builder;

    .line 198
    const-string v1, "FamilyGroups.CreateFamilyGroup#1"

    .line 196
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final deleteFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_DeleteFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_DeleteFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_DeleteFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 329
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_DeleteFamilyGroup_Response$Builder;

    .line 330
    const-string v1, "FamilyGroups.DeleteFamilyGroup#1"

    .line 328
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final forceAcceptInvite(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ForceAcceptInvite_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ForceAcceptInvite_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ForceAcceptInvite_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 450
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ForceAcceptInvite_Response$Builder;

    .line 451
    const-string v1, "FamilyGroups.ForceAcceptInvite#1"

    .line 449
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getChangeLog(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetChangeLog_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetChangeLog_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetChangeLog_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 395
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetChangeLog_Response$Builder;

    .line 396
    const-string v1, "FamilyGroups.GetChangeLog#1"

    .line 394
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 208
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroup_Response$Builder;

    .line 209
    const-string v1, "FamilyGroups.GetFamilyGroup#1"

    .line 207
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getFamilyGroupForUser(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroupForUser_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroupForUser_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroupForUser_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 219
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroupForUser_Response$Builder;

    .line 220
    const-string v1, "FamilyGroups.GetFamilyGroupForUser#1"

    .line 218
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getInviteCheckResults(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetInviteCheckResults_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetInviteCheckResults_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetInviteCheckResults_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 461
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetInviteCheckResults_Response$Builder;

    .line 462
    const-string v1, "FamilyGroups.GetInviteCheckResults#1"

    .line 460
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getPlaytimeSummary(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPlaytimeSummary_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPlaytimeSummary_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPlaytimeSummary_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 351
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPlaytimeSummary_Response$Builder;

    .line 352
    const-string v1, "FamilyGroups.GetPlaytimeSummary#1"

    .line 350
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferredLenders(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPreferredLenders_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPreferredLenders_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPreferredLenders_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 439
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPreferredLenders_Response$Builder;

    .line 440
    const-string v1, "FamilyGroups.GetPreferredLenders#1"

    .line 438
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getPurchaseRequests(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPurchaseRequests_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPurchaseRequests_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPurchaseRequests_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 373
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPurchaseRequests_Response$Builder;

    .line 374
    const-string v1, "FamilyGroups.GetPurchaseRequests#1"

    .line 372
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    .line 75
    const-string p0, "FamilyGroups"

    return-object p0
.end method

.method public final getSharedLibraryApps(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetSharedLibraryApps_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetSharedLibraryApps_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetSharedLibraryApps_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 417
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetSharedLibraryApps_Response$Builder;

    .line 418
    const-string v1, "FamilyGroups.GetSharedLibraryApps#1"

    .line 416
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getUsersSharingDevice(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetUsersSharingDevice_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetUsersSharingDevice_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetUsersSharingDevice_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 318
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetUsersSharingDevice_Response$Builder;

    .line 319
    const-string v1, "FamilyGroups.GetUsersSharingDevice#1"

    .line 317
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public handleNotificationMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 3

    .line 0
    const-string p0, "methodName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packetMsg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleResponseMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 4

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packetMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c0

    goto/16 :goto_1bf

    :sswitch_13
    const-string v0, "ConfirmInviteToFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_1bf

    .line 102
    :cond_1d
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmInviteToFamilyGroup_Response;

    .line 101
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_24
    const-string v0, "GetPreferredLenders"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_1bf

    .line 170
    :cond_2e
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPreferredLenders_Response;

    .line 169
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_35
    const-string v0, "RemoveFromFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto/16 :goto_1bf

    .line 118
    :cond_3f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RemoveFromFamilyGroup_Response;

    .line 117
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_46
    const-string v0, "SetFamilyCooldownOverrides"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_1bf

    .line 158
    :cond_50
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetFamilyCooldownOverrides_Response;

    .line 157
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_57
    const-string v0, "InviteToFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_1bf

    .line 98
    :cond_61
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_InviteToFamilyGroup_Response;

    .line 97
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_68
    const-string v0, "GetFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto/16 :goto_1bf

    .line 86
    :cond_72
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroup_Response;

    .line 85
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_79
    const-string v0, "GetChangeLog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_83

    goto/16 :goto_1bf

    .line 154
    :cond_83
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetChangeLog_Response;

    .line 153
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_8a
    const-string v0, "GetInviteCheckResults"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto/16 :goto_1bf

    .line 178
    :cond_94
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetInviteCheckResults_Response;

    .line 177
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_9b
    const-string v0, "SetPreferredLender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    goto/16 :goto_1bf

    .line 166
    :cond_a5
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetPreferredLender_Response;

    .line 165
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_ac
    const-string v0, "ResendInvitationToFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b6

    goto/16 :goto_1bf

    .line 106
    :cond_b6
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ResendInvitationToFamilyGroup_Response;

    .line 105
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_bd
    const-string v0, "GetSharedLibraryApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c7

    goto/16 :goto_1bf

    .line 162
    :cond_c7
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetSharedLibraryApps_Response;

    .line 161
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_ce
    const-string v0, "GetPurchaseRequests"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d8

    goto/16 :goto_1bf

    .line 146
    :cond_d8
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPurchaseRequests_Response;

    .line 145
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_df
    const-string v0, "JoinFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e9

    goto/16 :goto_1bf

    .line 110
    :cond_e9
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_JoinFamilyGroup_Response;

    .line 109
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_f0
    const-string v0, "GetFamilyGroupForUser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fa

    goto/16 :goto_1bf

    .line 90
    :cond_fa
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetFamilyGroupForUser_Response;

    .line 89
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_101
    const-string v0, "ConfirmJoinFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10b

    goto/16 :goto_1bf

    .line 114
    :cond_10b
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ConfirmJoinFamilyGroup_Response;

    .line 113
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_112
    const-string v0, "GetUsersSharingDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11c

    goto/16 :goto_1bf

    .line 126
    :cond_11c
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetUsersSharingDevice_Response;

    .line 125
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_123
    const-string v0, "ClearCooldownSkip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12d

    goto/16 :goto_1bf

    .line 182
    :cond_12d
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ClearCooldownSkip_Response;

    .line 181
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_134
    const-string v0, "CreateFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13e

    goto/16 :goto_1bf

    .line 82
    :cond_13e
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CreateFamilyGroup_Response;

    .line 81
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_145
    const-string v0, "RespondToRequestedPurchase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14f

    goto/16 :goto_1bf

    .line 150
    :cond_14f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RespondToRequestedPurchase_Response;

    .line 149
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_1bf

    .line 80
    :sswitch_156
    const-string v0, "RequestPurchase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_160

    goto/16 :goto_1bf

    .line 142
    :cond_160
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RequestPurchase_Response;

    .line 141
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_1bf

    .line 80
    :sswitch_166
    const-string v0, "ForceAcceptInvite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16f

    goto :goto_1bf

    .line 174
    :cond_16f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ForceAcceptInvite_Response;

    .line 173
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_1bf

    .line 80
    :sswitch_175
    const-string v0, "ModifyFamilyGroupDetails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17e

    goto :goto_1bf

    .line 94
    :cond_17e
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ModifyFamilyGroupDetails_Response;

    .line 93
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_1bf

    .line 80
    :sswitch_184
    const-string v0, "DeleteFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18d

    goto :goto_1bf

    .line 130
    :cond_18d
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_DeleteFamilyGroup_Response;

    .line 129
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_1bf

    .line 80
    :sswitch_193
    const-string v0, "GetPlaytimeSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19c

    goto :goto_1bf

    .line 138
    :cond_19c
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_GetPlaytimeSummary_Response;

    .line 137
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_1bf

    .line 80
    :sswitch_1a2
    const-string v0, "CancelFamilyGroupInvite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ab

    goto :goto_1bf

    .line 122
    :cond_1ab
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_CancelFamilyGroupInvite_Response;

    .line 121
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_1bf

    .line 80
    :sswitch_1b1
    const-string v0, "UndeleteFamilyGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ba

    goto :goto_1bf

    .line 134
    :cond_1ba
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_UndeleteFamilyGroup_Response;

    .line 133
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    :goto_1bf
    return-void

    :sswitch_data_1c0
    .sparse-switch
        -0x76bbbec9 -> :sswitch_1b1
        -0x5ea39716 -> :sswitch_1a2
        -0x5674a9b1 -> :sswitch_193
        -0x4c391d50 -> :sswitch_184
        -0x435ed13f -> :sswitch_175
        -0x3f81ff64 -> :sswitch_166
        -0x3932eb70 -> :sswitch_156
        -0x30138d61 -> :sswitch_145
        -0x24f1c541 -> :sswitch_134
        -0x1aa00da9 -> :sswitch_123
        -0x169cb900 -> :sswitch_112
        -0x136be4cf -> :sswitch_101
        0x1adff00f -> :sswitch_f0
        0x313eadd1 -> :sswitch_df
        0x384e673b -> :sswitch_ce
        0x39920392 -> :sswitch_bd
        0x3c623a0c -> :sswitch_ac
        0x52d9291b -> :sswitch_9b
        0x5715a54d -> :sswitch_8a
        0x5ff5fede -> :sswitch_79
        0x61483c65 -> :sswitch_68
        0x62ebb757 -> :sswitch_57
        0x63052156 -> :sswitch_46
        0x6448a22d -> :sswitch_35
        0x644f65ac -> :sswitch_24
        0x710b74b7 -> :sswitch_13
    .end sparse-switch
.end method

.method public final inviteToFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_InviteToFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_InviteToFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_InviteToFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 241
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_InviteToFamilyGroup_Response$Builder;

    .line 242
    const-string v1, "FamilyGroups.InviteToFamilyGroup#1"

    .line 240
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final joinFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_JoinFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_JoinFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_JoinFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_JoinFamilyGroup_Response$Builder;

    .line 275
    const-string v1, "FamilyGroups.JoinFamilyGroup#1"

    .line 273
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final modifyFamilyGroupDetails(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ModifyFamilyGroupDetails_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ModifyFamilyGroupDetails_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ModifyFamilyGroupDetails_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ModifyFamilyGroupDetails_Response$Builder;

    .line 231
    const-string v1, "FamilyGroups.ModifyFamilyGroupDetails#1"

    .line 229
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final removeFromFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RemoveFromFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RemoveFromFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RemoveFromFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 296
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RemoveFromFamilyGroup_Response$Builder;

    .line 297
    const-string v1, "FamilyGroups.RemoveFromFamilyGroup#1"

    .line 295
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final requestPurchase(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RequestPurchase_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RequestPurchase_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RequestPurchase_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 362
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RequestPurchase_Response$Builder;

    .line 363
    const-string v1, "FamilyGroups.RequestPurchase#1"

    .line 361
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final resendInvitationToFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ResendInvitationToFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ResendInvitationToFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ResendInvitationToFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 263
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_ResendInvitationToFamilyGroup_Response$Builder;

    .line 264
    const-string v1, "FamilyGroups.ResendInvitationToFamilyGroup#1"

    .line 262
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final respondToRequestedPurchase(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RespondToRequestedPurchase_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RespondToRequestedPurchase_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RespondToRequestedPurchase_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 384
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_RespondToRequestedPurchase_Response$Builder;

    .line 385
    const-string v1, "FamilyGroups.RespondToRequestedPurchase#1"

    .line 383
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setFamilyCooldownOverrides(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetFamilyCooldownOverrides_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetFamilyCooldownOverrides_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetFamilyCooldownOverrides_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 406
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetFamilyCooldownOverrides_Response$Builder;

    .line 407
    const-string v1, "FamilyGroups.SetFamilyCooldownOverrides#1"

    .line 405
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setPreferredLender(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetPreferredLender_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetPreferredLender_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetPreferredLender_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 428
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_SetPreferredLender_Response$Builder;

    .line 429
    const-string v1, "FamilyGroups.SetPreferredLender#1"

    .line 427
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final undeleteFamilyGroup(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_UndeleteFamilyGroup_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_UndeleteFamilyGroup_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_UndeleteFamilyGroup_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 340
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesFamilygroupsSteamclient$CFamilyGroups_UndeleteFamilyGroup_Response$Builder;

    .line 341
    const-string v1, "FamilyGroups.UndeleteFamilyGroup#1"

    .line 339
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method
