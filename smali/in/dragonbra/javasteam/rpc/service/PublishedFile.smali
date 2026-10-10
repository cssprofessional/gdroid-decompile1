###### Class in.dragonbra.javasteam.rpc.service.PublishedFile (in.dragonbra.javasteam.rpc.service.PublishedFile)
.class public final Lin/dragonbra/javasteam/rpc/service/PublishedFile;
.super Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;
.source "PublishedFile.kt"


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V
    .registers 3

    const-string v0, "unifiedMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V

    return-void
.end method


# virtual methods
.method public final addAppRelationship(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddAppRelationship_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddAppRelationship_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddAppRelationship_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 424
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddAppRelationship_Response$Builder;

    .line 425
    const-string v1, "PublishedFile.AddAppRelationship#1"

    .line 423
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final addChild(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddChild_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddChild_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddChild_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 512
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddChild_Response$Builder;

    .line 513
    const-string v1, "PublishedFile.AddChild#1"

    .line 511
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final areFilesInSubscriptionList(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AreFilesInSubscriptionList_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AreFilesInSubscriptionList_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AreFilesInSubscriptionList_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 347
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AreFilesInSubscriptionList_Response$Builder;

    .line 348
    const-string v1, "PublishedFile.AreFilesInSubscriptionList#1"

    .line 346
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final canSubscribe(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_CanSubscribe_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_CanSubscribe_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_CanSubscribe_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 270
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_CanSubscribe_Response$Builder;

    .line 271
    const-string v1, "PublishedFile.CanSubscribe#1"

    .line 269
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final delete(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Delete_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Delete_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Delete_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 369
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Delete_Response$Builder;

    .line 370
    const-string v1, "PublishedFile.Delete#1"

    .line 368
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getAppRelationships(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationships_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationships_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationships_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 446
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationships_Response$Builder;

    .line 447
    const-string v1, "PublishedFile.GetAppRelationships#1"

    .line 445
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getAppRelationshipsBatched(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationshipsBatched_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationshipsBatched_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationshipsBatched_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 457
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationshipsBatched_Response$Builder;

    .line 458
    const-string v1, "PublishedFile.GetAppRelationshipsBatched#1"

    .line 456
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getChangeHistory(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistory_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistory_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistory_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 391
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistory_Response$Builder;

    .line 392
    const-string v1, "PublishedFile.GetChangeHistory#1"

    .line 390
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getChangeHistoryEntry(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistoryEntry_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistoryEntry_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistoryEntry_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 380
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistoryEntry_Response$Builder;

    .line 381
    const-string v1, "PublishedFile.GetChangeHistoryEntry#1"

    .line 379
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getContentDescriptors(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetContentDescriptors_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetContentDescriptors_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetContentDescriptors_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 578
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetContentDescriptors_Response$Builder;

    .line 579
    const-string v1, "PublishedFile.GetContentDescriptors#1"

    .line 577
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getDetails(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 303
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Response$Builder;

    .line 304
    const-string v1, "PublishedFile.GetDetails#1"

    .line 302
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getItemChanges(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemChanges_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemChanges_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemChanges_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 567
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemChanges_Response$Builder;

    .line 568
    const-string v1, "PublishedFile.GetItemChanges#1"

    .line 566
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getItemInfo(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemInfo_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemInfo_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemInfo_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 314
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemInfo_Response$Builder;

    .line 315
    const-string v1, "PublishedFile.GetItemInfo#1"

    .line 313
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    .line 87
    const-string p0, "PublishedFile"

    return-object p0
.end method

.method public final getSubSectionData(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetSubSectionData_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetSubSectionData_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetSubSectionData_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 281
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetSubSectionData_Response$Builder;

    .line 282
    const-string v1, "PublishedFile.GetSubSectionData#1"

    .line 280
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getUserFileCount(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 336
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Response$Builder;

    .line 337
    const-string v1, "PublishedFile.GetUserFileCount#1"

    .line 335
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getUserFiles(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 325
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Response$Builder;

    .line 326
    const-string v1, "PublishedFile.GetUserFiles#1"

    .line 324
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getUserVoteSummary(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserVoteSummary_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserVoteSummary_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserVoteSummary_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 556
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserVoteSummary_Response$Builder;

    .line 557
    const-string v1, "PublishedFile.GetUserVoteSummary#1"

    .line 555
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
    .registers 5

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packetMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserFiles_Response;

    sparse-switch v0, :sswitch_data_236

    goto/16 :goto_234

    :sswitch_15
    const-string v0, "AddAppRelationship"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_234

    .line 162
    :cond_1f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddAppRelationship_Response;

    .line 161
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_26
    const-string v0, "Delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_234

    .line 142
    :cond_30
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Delete_Response;

    .line 141
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_37
    const-string v0, "GetUserVoteSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_234

    .line 210
    :cond_41
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetUserVoteSummary_Response;

    .line 209
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_48
    const-string v0, "QueryFiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto/16 :goto_234

    .line 158
    :cond_52
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_QueryFiles_Response;

    .line 157
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_59
    const-string v0, "GetAppRelationshipsBatched"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto/16 :goto_234

    .line 174
    :cond_63
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationshipsBatched_Response;

    .line 173
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_6a
    const-string v0, "RemoveAppRelationship"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    goto/16 :goto_234

    .line 166
    :cond_74
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveAppRelationship_Response;

    .line 165
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_7b
    const-string v0, "Publish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    goto/16 :goto_234

    .line 114
    :cond_85
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Publish_Response;

    .line 113
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_8c
    const-string v0, "StopPlaytimeTrackingForAllAppItems"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto/16 :goto_234

    .line 186
    :cond_96
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response;

    .line 185
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_9d
    const-string v0, "RemoveChild"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    goto/16 :goto_234

    .line 198
    :cond_a7
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveChild_Response;

    .line 197
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_ae
    const-string v0, "RefreshVotingQueue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    goto/16 :goto_234

    .line 154
    :cond_b8
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RefreshVotingQueue_Response;

    .line 153
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_bf
    const-string v0, "GetContentDescriptors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c9

    goto/16 :goto_234

    .line 218
    :cond_c9
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetContentDescriptors_Response;

    .line 217
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_d0
    const-string v0, "StartPlaytimeTracking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_da

    goto/16 :goto_234

    .line 178
    :cond_da
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StartPlaytimeTracking_Response;

    .line 177
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_e1
    const-string v0, "GetItemInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_eb

    goto/16 :goto_234

    .line 122
    :cond_eb
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemInfo_Response;

    .line 121
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_f2
    const-string v0, "GetUserFiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fc

    goto/16 :goto_234

    .line 125
    :cond_fc
    invoke-virtual {p0, v1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_101
    const-string v0, "SetCollectionChildren"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10b

    goto/16 :goto_234

    .line 202
    :cond_10b
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetCollectionChildren_Response;

    .line 201
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_112
    const-string v0, "GetDetails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11c

    goto/16 :goto_234

    .line 118
    :cond_11c
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetDetails_Response;

    .line 117
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_123
    const-string v0, "Vote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12d

    goto/16 :goto_234

    .line 94
    :cond_12d
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Vote_Response;

    .line 93
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_134
    const-string v0, "CanSubscribe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13e

    goto/16 :goto_234

    .line 106
    :cond_13e
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_CanSubscribe_Response;

    .line 105
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_145
    const-string v0, "SetPlaytimeForControllerConfigs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14f

    goto/16 :goto_234

    .line 190
    :cond_14f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetPlaytimeForControllerConfigs_Response;

    .line 189
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_156
    const-string v0, "GetChangeHistoryEntry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_160

    goto/16 :goto_234

    .line 146
    :cond_160
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistoryEntry_Response;

    .line 145
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_167
    const-string v0, "StopPlaytimeTracking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_171

    goto/16 :goto_234

    .line 182
    :cond_171
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTracking_Response;

    .line 181
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_178
    const-string v0, "GetAppRelationships"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_182

    goto/16 :goto_234

    .line 170
    :cond_182
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetAppRelationships_Response;

    .line 169
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_189
    const-string v0, "GetSubSectionData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_193

    goto/16 :goto_234

    .line 110
    :cond_193
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetSubSectionData_Response;

    .line 109
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_19a
    const-string v0, "AddChild"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a4

    goto/16 :goto_234

    .line 194
    :cond_1a4
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AddChild_Response;

    .line 193
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_1ab
    const-string v0, "AreFilesInSubscriptionList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b5

    goto/16 :goto_234

    .line 134
    :cond_1b5
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_AreFilesInSubscriptionList_Response;

    .line 133
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_1bc
    const-string v0, "GetUserFileCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c6

    goto/16 :goto_234

    .line 129
    :cond_1c6
    invoke-virtual {p0, v1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto/16 :goto_234

    .line 92
    :sswitch_1cb
    const-string v0, "UpdateContentDescriptors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d5

    goto/16 :goto_234

    .line 222
    :cond_1d5
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_UpdateContentDescriptors_Response;

    .line 221
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_234

    .line 92
    :sswitch_1db
    const-string v0, "GetItemChanges"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e4

    goto :goto_234

    .line 214
    :cond_1e4
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetItemChanges_Response;

    .line 213
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_234

    .line 92
    :sswitch_1ea
    const-string v0, "SetSubscriptionListFromCollection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f3

    goto :goto_234

    .line 206
    :cond_1f3
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetSubscriptionListFromCollection_Response;

    .line 205
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_234

    .line 92
    :sswitch_1f9
    const-string v0, "Update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_202

    goto :goto_234

    .line 138
    :cond_202
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Update_Response;

    .line 137
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_234

    .line 92
    :sswitch_208
    const-string v0, "Subscribe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_211

    goto :goto_234

    .line 98
    :cond_211
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Subscribe_Response;

    .line 97
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_234

    .line 92
    :sswitch_217
    const-string v0, "GetChangeHistory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_220

    goto :goto_234

    .line 150
    :cond_220
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_GetChangeHistory_Response;

    .line 149
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    goto :goto_234

    .line 92
    :sswitch_226
    const-string v0, "Unsubscribe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22f

    goto :goto_234

    .line 102
    :cond_22f
    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Unsubscribe_Response;

    .line 101
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    :goto_234
    return-void

    nop

    :sswitch_data_236
    .sparse-switch
        -0x79d22d4f -> :sswitch_226
        -0x77f71cd2 -> :sswitch_217
        -0x69de02d6 -> :sswitch_208
        -0x689adb17 -> :sswitch_1f9
        -0x60a600fb -> :sswitch_1ea
        -0x55aa78e6 -> :sswitch_1db
        -0x502e6e8c -> :sswitch_1cb
        -0x4fcd3e2e -> :sswitch_1bc
        -0x4ac3ef5d -> :sswitch_1ab
        -0x475ed2e5 -> :sswitch_19a
        -0x3679895b -> :sswitch_189
        -0x285e8c10 -> :sswitch_178
        -0x187dade6 -> :sswitch_167
        -0x1473fe1c -> :sswitch_156
        -0xb92a091 -> :sswitch_145
        -0x4296486 -> :sswitch_134
        0x28c70a -> :sswitch_123
        0x11780a2c -> :sswitch_112
        0x1712269f -> :sswitch_101
        0x1c104ad6 -> :sswitch_f2
        0x256e77b7 -> :sswitch_e1
        0x25ae6a3a -> :sswitch_d0
        0x34546a81 -> :sswitch_bf
        0x3980f66f -> :sswitch_ae
        0x505a66d8 -> :sswitch_9d
        0x51103311 -> :sswitch_8c
        0x553134ef -> :sswitch_7b
        0x5abe91b5 -> :sswitch_6a
        0x5af3d349 -> :sswitch_59
        0x6b66caaf -> :sswitch_48
        0x70e03e7b -> :sswitch_37
        0x79cb71cb -> :sswitch_26
        0x7da0a038 -> :sswitch_15
    .end sparse-switch
.end method

.method public final publish(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Publish_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Publish_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Publish_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 292
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Publish_Response$Builder;

    .line 293
    const-string v1, "PublishedFile.Publish#1"

    .line 291
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final queryFiles(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_QueryFiles_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_QueryFiles_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_QueryFiles_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 413
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_QueryFiles_Response$Builder;

    .line 414
    const-string v1, "PublishedFile.QueryFiles#1"

    .line 412
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final refreshVotingQueue(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RefreshVotingQueue_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RefreshVotingQueue_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RefreshVotingQueue_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 402
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RefreshVotingQueue_Response$Builder;

    .line 403
    const-string v1, "PublishedFile.RefreshVotingQueue#1"

    .line 401
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final removeAppRelationship(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveAppRelationship_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveAppRelationship_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveAppRelationship_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 435
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveAppRelationship_Response$Builder;

    .line 436
    const-string v1, "PublishedFile.RemoveAppRelationship#1"

    .line 434
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final removeChild(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveChild_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveChild_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveChild_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_RemoveChild_Response$Builder;

    .line 524
    const-string v1, "PublishedFile.RemoveChild#1"

    .line 522
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setCollectionChildren(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetCollectionChildren_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetCollectionChildren_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetCollectionChildren_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 534
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetCollectionChildren_Response$Builder;

    .line 535
    const-string v1, "PublishedFile.SetCollectionChildren#1"

    .line 533
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setPlaytimeForControllerConfigs(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetPlaytimeForControllerConfigs_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetPlaytimeForControllerConfigs_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetPlaytimeForControllerConfigs_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 501
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetPlaytimeForControllerConfigs_Response$Builder;

    .line 502
    const-string v1, "PublishedFile.SetPlaytimeForControllerConfigs#1"

    .line 500
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setSubscriptionListFromCollection(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetSubscriptionListFromCollection_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetSubscriptionListFromCollection_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetSubscriptionListFromCollection_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 545
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_SetSubscriptionListFromCollection_Response$Builder;

    .line 546
    const-string v1, "PublishedFile.SetSubscriptionListFromCollection#1"

    .line 544
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final startPlaytimeTracking(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StartPlaytimeTracking_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StartPlaytimeTracking_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StartPlaytimeTracking_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 468
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StartPlaytimeTracking_Response$Builder;

    .line 469
    const-string v1, "PublishedFile.StartPlaytimeTracking#1"

    .line 467
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final stopPlaytimeTracking(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTracking_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTracking_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTracking_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 479
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTracking_Response$Builder;

    .line 480
    const-string v1, "PublishedFile.StopPlaytimeTracking#1"

    .line 478
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final stopPlaytimeTrackingForAllAppItems(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTrackingForAllAppItems_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTrackingForAllAppItems_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 490
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response$Builder;

    .line 491
    const-string v1, "PublishedFile.StopPlaytimeTrackingForAllAppItems#1"

    .line 489
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final subscribe(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Subscribe_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Subscribe_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Subscribe_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 248
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Subscribe_Response$Builder;

    .line 249
    const-string v1, "PublishedFile.Subscribe#1"

    .line 247
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final unsubscribe(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Unsubscribe_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Unsubscribe_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Unsubscribe_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 259
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Unsubscribe_Response$Builder;

    .line 260
    const-string v1, "PublishedFile.Unsubscribe#1"

    .line 258
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final update(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Update_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Update_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Update_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 358
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Update_Response$Builder;

    .line 359
    const-string v1, "PublishedFile.Update#1"

    .line 357
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final updateContentDescriptors(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_UpdateContentDescriptors_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_UpdateContentDescriptors_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_UpdateContentDescriptors_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 589
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_UpdateContentDescriptors_Response$Builder;

    .line 590
    const-string v1, "PublishedFile.UpdateContentDescriptors#1"

    .line 588
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final vote(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Vote_Request;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Vote_Request;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Vote_Response$Builder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->getUnifiedMessages()Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 237
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$CPublishedFile_Vote_Response$Builder;

    .line 238
    const-string v1, "PublishedFile.Vote#1"

    .line 236
    invoke-virtual {p0, v0, v1, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method
