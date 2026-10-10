package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PublishedFile.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PublishedFile extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "PublishedFile";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PublishedFile(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -2043817295:
                if (methodName.equals("Unsubscribe")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_Unsubscribe_Response.class, packetMsg);
                    break;
                }
                break;
            case -2012683474:
                if (methodName.equals("GetChangeHistory")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistory_Response.class, packetMsg);
                    break;
                }
                break;
            case -1776157398:
                if (methodName.equals("Subscribe")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_Subscribe_Response.class, packetMsg);
                    break;
                }
                break;
            case -1754979095:
                if (methodName.equals("Update")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_Update_Response.class, packetMsg);
                    break;
                }
                break;
            case -1621491963:
                if (methodName.equals("SetSubscriptionListFromCollection")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_SetSubscriptionListFromCollection_Response.class, packetMsg);
                    break;
                }
                break;
            case -1437235430:
                if (methodName.equals("GetItemChanges")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemChanges_Response.class, packetMsg);
                    break;
                }
                break;
            case -1345220236:
                if (methodName.equals("UpdateContentDescriptors")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_UpdateContentDescriptors_Response.class, packetMsg);
                    break;
                }
                break;
            case -1338850862:
                if (methodName.equals("GetUserFileCount")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Response.class, packetMsg);
                    break;
                }
                break;
            case -1254354781:
                if (methodName.equals("AreFilesInSubscriptionList")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_AreFilesInSubscriptionList_Response.class, packetMsg);
                    break;
                }
                break;
            case -1197396709:
                if (methodName.equals("AddChild")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_AddChild_Response.class, packetMsg);
                    break;
                }
                break;
            case -913934683:
                if (methodName.equals("GetSubSectionData")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetSubSectionData_Response.class, packetMsg);
                    break;
                }
                break;
            case -677284880:
                if (methodName.equals("GetAppRelationships")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationships_Response.class, packetMsg);
                    break;
                }
                break;
            case -410889702:
                if (methodName.equals("StopPlaytimeTracking")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTracking_Response.class, packetMsg);
                    break;
                }
                break;
            case -343146012:
                if (methodName.equals("GetChangeHistoryEntry")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistoryEntry_Response.class, packetMsg);
                    break;
                }
                break;
            case -194158737:
                if (methodName.equals("SetPlaytimeForControllerConfigs")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_SetPlaytimeForControllerConfigs_Response.class, packetMsg);
                    break;
                }
                break;
            case -69821574:
                if (methodName.equals("CanSubscribe")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_CanSubscribe_Response.class, packetMsg);
                    break;
                }
                break;
            case 2672394:
                if (methodName.equals("Vote")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_Vote_Response.class, packetMsg);
                    break;
                }
                break;
            case 293079596:
                if (methodName.equals("GetDetails")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Response.class, packetMsg);
                    break;
                }
                break;
            case 387065503:
                if (methodName.equals("SetCollectionChildren")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_SetCollectionChildren_Response.class, packetMsg);
                    break;
                }
                break;
            case 470829782:
                if (methodName.equals("GetUserFiles")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Response.class, packetMsg);
                    break;
                }
                break;
            case 627996599:
                if (methodName.equals("GetItemInfo")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 632187450:
                if (methodName.equals("StartPlaytimeTracking")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_StartPlaytimeTracking_Response.class, packetMsg);
                    break;
                }
                break;
            case 877947521:
                if (methodName.equals("GetContentDescriptors")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetContentDescriptors_Response.class, packetMsg);
                    break;
                }
                break;
            case 964753007:
                if (methodName.equals("RefreshVotingQueue")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_RefreshVotingQueue_Response.class, packetMsg);
                    break;
                }
                break;
            case 1348101848:
                if (methodName.equals("RemoveChild")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveChild_Response.class, packetMsg);
                    break;
                }
                break;
            case 1360016145:
                if (methodName.equals("StopPlaytimeTrackingForAllAppItems")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response.class, packetMsg);
                    break;
                }
                break;
            case 1429288175:
                if (methodName.equals("Publish")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_Publish_Response.class, packetMsg);
                    break;
                }
                break;
            case 1522438581:
                if (methodName.equals("RemoveAppRelationship")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveAppRelationship_Response.class, packetMsg);
                    break;
                }
                break;
            case 1525928777:
                if (methodName.equals("GetAppRelationshipsBatched")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationshipsBatched_Response.class, packetMsg);
                    break;
                }
                break;
            case 1801898671:
                if (methodName.equals("QueryFiles")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_QueryFiles_Response.class, packetMsg);
                    break;
                }
                break;
            case 1893744251:
                if (methodName.equals("GetUserVoteSummary")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserVoteSummary_Response.class, packetMsg);
                    break;
                }
                break;
            case 2043376075:
                if (methodName.equals("Delete")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_Delete_Response.class, packetMsg);
                    break;
                }
                break;
            case 2107678776:
                if (methodName.equals("AddAppRelationship")) {
                    postResponseMsg(SteammessagesPublishedfileSteamclient.CPublishedFile_AddAppRelationship_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_Vote_Response.Builder>> vote(SteammessagesPublishedfileSteamclient.CPublishedFile_Vote_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_Vote_Response.Builder.class, "PublishedFile.Vote#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_Subscribe_Response.Builder>> subscribe(SteammessagesPublishedfileSteamclient.CPublishedFile_Subscribe_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_Subscribe_Response.Builder.class, "PublishedFile.Subscribe#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_Unsubscribe_Response.Builder>> unsubscribe(SteammessagesPublishedfileSteamclient.CPublishedFile_Unsubscribe_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_Unsubscribe_Response.Builder.class, "PublishedFile.Unsubscribe#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_CanSubscribe_Response.Builder>> canSubscribe(SteammessagesPublishedfileSteamclient.CPublishedFile_CanSubscribe_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_CanSubscribe_Response.Builder.class, "PublishedFile.CanSubscribe#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetSubSectionData_Response.Builder>> getSubSectionData(SteammessagesPublishedfileSteamclient.CPublishedFile_GetSubSectionData_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetSubSectionData_Response.Builder.class, "PublishedFile.GetSubSectionData#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_Publish_Response.Builder>> publish(SteammessagesPublishedfileSteamclient.CPublishedFile_Publish_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_Publish_Response.Builder.class, "PublishedFile.Publish#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Response.Builder>> getDetails(SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Response.Builder.class, "PublishedFile.GetDetails#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemInfo_Response.Builder>> getItemInfo(SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemInfo_Response.Builder.class, "PublishedFile.GetItemInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Response.Builder>> getUserFiles(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Response.Builder.class, "PublishedFile.GetUserFiles#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Response.Builder>> getUserFileCount(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserFiles_Response.Builder.class, "PublishedFile.GetUserFileCount#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_AreFilesInSubscriptionList_Response.Builder>> areFilesInSubscriptionList(SteammessagesPublishedfileSteamclient.CPublishedFile_AreFilesInSubscriptionList_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_AreFilesInSubscriptionList_Response.Builder.class, "PublishedFile.AreFilesInSubscriptionList#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_Update_Response.Builder>> update(SteammessagesPublishedfileSteamclient.CPublishedFile_Update_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_Update_Response.Builder.class, "PublishedFile.Update#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_Delete_Response.Builder>> delete(SteammessagesPublishedfileSteamclient.CPublishedFile_Delete_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_Delete_Response.Builder.class, "PublishedFile.Delete#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistoryEntry_Response.Builder>> getChangeHistoryEntry(SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistoryEntry_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistoryEntry_Response.Builder.class, "PublishedFile.GetChangeHistoryEntry#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistory_Response.Builder>> getChangeHistory(SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistory_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetChangeHistory_Response.Builder.class, "PublishedFile.GetChangeHistory#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_RefreshVotingQueue_Response.Builder>> refreshVotingQueue(SteammessagesPublishedfileSteamclient.CPublishedFile_RefreshVotingQueue_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_RefreshVotingQueue_Response.Builder.class, "PublishedFile.RefreshVotingQueue#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_QueryFiles_Response.Builder>> queryFiles(SteammessagesPublishedfileSteamclient.CPublishedFile_QueryFiles_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_QueryFiles_Response.Builder.class, "PublishedFile.QueryFiles#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_AddAppRelationship_Response.Builder>> addAppRelationship(SteammessagesPublishedfileSteamclient.CPublishedFile_AddAppRelationship_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_AddAppRelationship_Response.Builder.class, "PublishedFile.AddAppRelationship#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveAppRelationship_Response.Builder>> removeAppRelationship(SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveAppRelationship_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveAppRelationship_Response.Builder.class, "PublishedFile.RemoveAppRelationship#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationships_Response.Builder>> getAppRelationships(SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationships_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationships_Response.Builder.class, "PublishedFile.GetAppRelationships#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationshipsBatched_Response.Builder>> getAppRelationshipsBatched(SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationshipsBatched_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetAppRelationshipsBatched_Response.Builder.class, "PublishedFile.GetAppRelationshipsBatched#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_StartPlaytimeTracking_Response.Builder>> startPlaytimeTracking(SteammessagesPublishedfileSteamclient.CPublishedFile_StartPlaytimeTracking_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_StartPlaytimeTracking_Response.Builder.class, "PublishedFile.StartPlaytimeTracking#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTracking_Response.Builder>> stopPlaytimeTracking(SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTracking_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTracking_Response.Builder.class, "PublishedFile.StopPlaytimeTracking#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response.Builder>> stopPlaytimeTrackingForAllAppItems(SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTrackingForAllAppItems_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response.Builder.class, "PublishedFile.StopPlaytimeTrackingForAllAppItems#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_SetPlaytimeForControllerConfigs_Response.Builder>> setPlaytimeForControllerConfigs(SteammessagesPublishedfileSteamclient.CPublishedFile_SetPlaytimeForControllerConfigs_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_SetPlaytimeForControllerConfigs_Response.Builder.class, "PublishedFile.SetPlaytimeForControllerConfigs#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_AddChild_Response.Builder>> addChild(SteammessagesPublishedfileSteamclient.CPublishedFile_AddChild_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_AddChild_Response.Builder.class, "PublishedFile.AddChild#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveChild_Response.Builder>> removeChild(SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveChild_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_RemoveChild_Response.Builder.class, "PublishedFile.RemoveChild#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_SetCollectionChildren_Response.Builder>> setCollectionChildren(SteammessagesPublishedfileSteamclient.CPublishedFile_SetCollectionChildren_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_SetCollectionChildren_Response.Builder.class, "PublishedFile.SetCollectionChildren#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_SetSubscriptionListFromCollection_Response.Builder>> setSubscriptionListFromCollection(SteammessagesPublishedfileSteamclient.CPublishedFile_SetSubscriptionListFromCollection_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_SetSubscriptionListFromCollection_Response.Builder.class, "PublishedFile.SetSubscriptionListFromCollection#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserVoteSummary_Response.Builder>> getUserVoteSummary(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserVoteSummary_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetUserVoteSummary_Response.Builder.class, "PublishedFile.GetUserVoteSummary#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemChanges_Response.Builder>> getItemChanges(SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemChanges_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetItemChanges_Response.Builder.class, "PublishedFile.GetItemChanges#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_GetContentDescriptors_Response.Builder>> getContentDescriptors(SteammessagesPublishedfileSteamclient.CPublishedFile_GetContentDescriptors_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_GetContentDescriptors_Response.Builder.class, "PublishedFile.GetContentDescriptors#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPublishedfileSteamclient.CPublishedFile_UpdateContentDescriptors_Response.Builder>> updateContentDescriptors(SteammessagesPublishedfileSteamclient.CPublishedFile_UpdateContentDescriptors_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPublishedfileSteamclient.CPublishedFile_UpdateContentDescriptors_Response.Builder.class, "PublishedFile.UpdateContentDescriptors#1", request);
    }
}
