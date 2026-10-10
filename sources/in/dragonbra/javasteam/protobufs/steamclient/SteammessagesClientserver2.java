package in.dragonbra.javasteam.protobufs.steamclient;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SteammessagesClientserver2 {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgAMUnlockH264Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgAMUnlockH264Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgAMUnlockH264_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgAMUnlockH264_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgBadgeCraftedNotification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgBadgeCraftedNotification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_UserItemVoteDetail_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_UserItemVoteDetail_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREGetUserPublishedItemVoteDetails_PublishedFileId_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREGetUserPublishedItemVoteDetails_PublishedFileId_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREGetUserPublishedItemVoteDetails_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREGetUserPublishedItemVoteDetails_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREItemVoteSummaryResponse_ItemVoteSummary_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREItemVoteSummaryResponse_ItemVoteSummary_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREItemVoteSummaryResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREItemVoteSummaryResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREItemVoteSummary_PublishedFileId_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREItemVoteSummary_PublishedFileId_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREItemVoteSummary_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREItemVoteSummary_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREUpdateUserPublishedItemVoteResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREUpdateUserPublishedItemVoteResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgCREUpdateUserPublishedItemVote_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgCREUpdateUserPublishedItemVote_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientActivateOEMLicense_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientActivateOEMLicense_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAuthorizeLocalDeviceNotification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAuthorizeLocalDeviceNotification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAuthorizeLocalDeviceRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAuthorizeLocalDeviceRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAuthorizeLocalDevice_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAuthorizeLocalDevice_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientChatGetFriendMessageHistoryResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientChatGetFriendMessageHistoryResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientChatGetFriendMessageHistory_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientChatGetFriendMessageHistory_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCheckAppBetaPasswordResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCheckAppBetaPasswordResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCheckAppBetaPassword_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCheckAppBetaPassword_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCheckFileSignatureResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCheckFileSignatureResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCheckFileSignature_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCheckFileSignature_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCommentNotifications_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCommentNotifications_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDPCheckSpecialSurveyResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDPCheckSpecialSurveyResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDPCheckSpecialSurvey_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDPCheckSpecialSurvey_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDPSendSpecialSurveyResponseReply_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDPSendSpecialSurveyResponseReply_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDPSendSpecialSurveyResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDPSendSpecialSurveyResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDeauthorizeDeviceRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDeauthorizeDeviceRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDeauthorizeDevice_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDeauthorizeDevice_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientEmailAddrInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientEmailAddrInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_Friend_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_Friend_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFSGetFriendsSteamLevels_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFSGetFriendsSteamLevels_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendUserStatusPublished_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendUserStatusPublished_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetAuthorizedDevicesResponse_AuthorizedDevice_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetAuthorizedDevicesResponse_AuthorizedDevice_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetAuthorizedDevicesResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetAuthorizedDevicesResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetAuthorizedDevices_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetAuthorizedDevices_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetClanActivityCountsResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetClanActivityCountsResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetClanActivityCounts_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetClanActivityCounts_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetDepotDecryptionKeyResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetDepotDecryptionKeyResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetDepotDecryptionKey_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetDepotDecryptionKey_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetPeerContentInfoResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetPeerContentInfoResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetPeerContentInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetPeerContentInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientItemAnnouncements_UnseenItem_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientItemAnnouncements_UnseenItem_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientItemAnnouncements_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientItemAnnouncements_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientKickPlayingSession_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientKickPlayingSession_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientOGSReportBug_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientOGSReportBug_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientOGSReportString_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientOGSReportString_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientOfflineMessageNotification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientOfflineMessageNotification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPendingGameLaunchResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPendingGameLaunchResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPendingGameLaunch_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPendingGameLaunch_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPlayingSessionState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPlayingSessionState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPurchaseResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPurchaseResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPurchaseWithMachineID_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPurchaseWithMachineID_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRedeemGuestPassResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRedeemGuestPassResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRedeemGuestPass_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRedeemGuestPass_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRegisterKey_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRegisterKey_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRegisterOEMMachineResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRegisterOEMMachineResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRegisterOEMMachine_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRegisterOEMMachine_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestCommentNotifications_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestCommentNotifications_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestForgottenPasswordEmailResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestForgottenPasswordEmailResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestForgottenPasswordEmail_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestForgottenPasswordEmail_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestFreeLicenseResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestFreeLicenseResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestFreeLicense_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestFreeLicense_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestItemAnnouncements_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestItemAnnouncements_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestOfflineMessageCount_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestOfflineMessageCount_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRichPresenceInfo_KV_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRichPresenceInfo_KV_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRichPresenceInfo_RichPresence_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRichPresenceInfo_RichPresence_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRichPresenceInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRichPresenceInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRichPresenceRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRichPresenceRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRichPresenceUpload_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRichPresenceUpload_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSentLogs_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSentLogs_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientServiceCallResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientServiceCallResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientServiceCall_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientServiceCall_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientServiceMethodLegacyResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientServiceMethodLegacyResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientServiceMethodLegacy_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientServiceMethodLegacy_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientServiceModule_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientServiceModule_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSharedLibraryLockStatus_LockedLibrary_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSharedLibraryLockStatus_LockedLibrary_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSharedLibraryLockStatus_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSharedLibraryLockStatus_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSharedLibraryStopPlaying_StopApp_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSharedLibraryStopPlaying_StopApp_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSharedLibraryStopPlaying_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSharedLibraryStopPlaying_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStartPeerContentServerResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStartPeerContentServerResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientStartPeerContentServer_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientStartPeerContentServer_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_Stat_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_Stat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUGSGetGlobalStatsResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUGSGetGlobalStatsResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUGSGetGlobalStats_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUGSGetGlobalStats_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUIMode_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUIMode_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUpdateUserGameInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUpdateUserGameInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUseLocalDeviceAuthorizations_DeviceToken_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUseLocalDeviceAuthorizations_DeviceToken_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUseLocalDeviceAuthorizations_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUseLocalDeviceAuthorizations_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUserNotifications_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUserNotifications_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientUserNotifications_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientUserNotifications_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientVanityURLChangedNotification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientVanityURLChangedNotification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientVoiceCallPreAuthorizeResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientVoiceCallPreAuthorizeResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientVoiceCallPreAuthorize_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientVoiceCallPreAuthorize_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgDPGetNumberOfCurrentPlayers_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgDPGetNumberOfCurrentPlayers_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgDRMDownloadRequestWithCrashData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgDRMDownloadRequestWithCrashData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgDRMDownloadResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgDRMDownloadResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgDRMFinalResult_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgDRMFinalResult_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgFSEnumerateFollowingListResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgFSEnumerateFollowingListResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgFSEnumerateFollowingList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgFSEnumerateFollowingList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgFSGetFollowerCountResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgFSGetFollowerCountResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgFSGetFollowerCount_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgFSGetFollowerCount_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgFSGetIsFollowingResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgFSGetIsFollowingResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgFSGetIsFollowing_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgFSGetIsFollowing_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGCClient_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGCClient_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgTrading_CancelTradeRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgTrading_CancelTradeRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgTrading_InitiateTradeRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgTrading_InitiateTradeRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgTrading_InitiateTradeResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgTrading_InitiateTradeResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgTrading_StartSession_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgTrading_StartSession_fieldAccessorTable;

    public interface CMsgClientChatGetFriendMessageHistoryOrBuilder extends MessageOrBuilder {
        long getSteamid();

        boolean hasSteamid();
    }

    public interface CMsgClientChatGetFriendMessageHistoryResponseOrBuilder extends MessageOrBuilder {
        CMsgClientChatGetFriendMessageHistoryResponse.FriendMessage getMessages(int i);

        int getMessagesCount();

        List<CMsgClientChatGetFriendMessageHistoryResponse.FriendMessage> getMessagesList();

        CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder getMessagesOrBuilder(int i);

        List<? extends CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder> getMessagesOrBuilderList();

        long getSteamid();

        int getSuccess();

        boolean hasSteamid();

        boolean hasSuccess();
    }

    public interface CMsgClientCheckAppBetaPasswordOrBuilder extends MessageOrBuilder {
        int getAppId();

        String getBetapassword();

        ByteString getBetapasswordBytes();

        int getLanguage();

        boolean hasAppId();

        boolean hasBetapassword();

        boolean hasLanguage();
    }

    public interface CMsgClientCheckAppBetaPasswordResponseOrBuilder extends MessageOrBuilder {
        CMsgClientCheckAppBetaPasswordResponse.BetaPassword getBetapasswords(int i);

        int getBetapasswordsCount();

        List<CMsgClientCheckAppBetaPasswordResponse.BetaPassword> getBetapasswordsList();

        CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder getBetapasswordsOrBuilder(int i);

        List<? extends CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder> getBetapasswordsOrBuilderList();

        int getEresult();

        boolean hasEresult();
    }

    public interface CMsgClientCommentNotificationsOrBuilder extends MessageOrBuilder {
        int getCountNewComments();

        int getCountNewCommentsOwner();

        int getCountNewCommentsSubscriptions();

        boolean hasCountNewComments();

        boolean hasCountNewCommentsOwner();

        boolean hasCountNewCommentsSubscriptions();
    }

    public interface CMsgClientEmailAddrInfoOrBuilder extends MessageOrBuilder {
        boolean getCredentialChangeRequiresCode();

        String getEmailAddress();

        ByteString getEmailAddressBytes();

        boolean getEmailIsValidated();

        boolean getEmailValidationChanged();

        boolean getPasswordOrSecretqaChangeRequiresCode();

        boolean hasCredentialChangeRequiresCode();

        boolean hasEmailAddress();

        boolean hasEmailIsValidated();

        boolean hasEmailValidationChanged();

        boolean hasPasswordOrSecretqaChangeRequiresCode();
    }

    public interface CMsgClientGetDepotDecryptionKeyOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getDepotId();

        boolean hasAppId();

        boolean hasDepotId();
    }

    public interface CMsgClientGetDepotDecryptionKeyResponseOrBuilder extends MessageOrBuilder {
        ByteString getDepotEncryptionKey();

        int getDepotId();

        int getEresult();

        boolean hasDepotEncryptionKey();

        boolean hasDepotId();

        boolean hasEresult();
    }

    public interface CMsgClientItemAnnouncementsOrBuilder extends MessageOrBuilder {
        int getCountNewItems();

        CMsgClientItemAnnouncements.UnseenItem getUnseenItems(int i);

        int getUnseenItemsCount();

        List<CMsgClientItemAnnouncements.UnseenItem> getUnseenItemsList();

        CMsgClientItemAnnouncements.UnseenItemOrBuilder getUnseenItemsOrBuilder(int i);

        List<? extends CMsgClientItemAnnouncements.UnseenItemOrBuilder> getUnseenItemsOrBuilderList();

        boolean hasCountNewItems();
    }

    public static final class CMsgClientKickPlayingSession extends GeneratedMessage implements CMsgClientKickPlayingSessionOrBuilder {
        private static final CMsgClientKickPlayingSession DEFAULT_INSTANCE;
        public static final int ONLY_STOP_GAME_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientKickPlayingSession> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean onlyStopGame_;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientKickPlayingSessionOrBuilder {
            private int bitField0_;
            private boolean onlyStopGame_;

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            private void buildPartial0(CMsgClientKickPlayingSession cMsgClientKickPlayingSession) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientKickPlayingSession.onlyStopGame_ = this.onlyStopGame_;
                } else {
                    i = 0;
                }
                cMsgClientKickPlayingSession.bitField0_ |= i;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientKickPlayingSession_descriptor;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientKickPlayingSession build() {
                CMsgClientKickPlayingSession cMsgClientKickPlayingSessionBuildPartial = buildPartial();
                if (cMsgClientKickPlayingSessionBuildPartial.isInitialized()) {
                    return cMsgClientKickPlayingSessionBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientKickPlayingSessionBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientKickPlayingSession buildPartial() {
                CMsgClientKickPlayingSession cMsgClientKickPlayingSession = new CMsgClientKickPlayingSession(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientKickPlayingSession);
                }
                onBuilt();
                return cMsgClientKickPlayingSession;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.onlyStopGame_ = false;
                return this;
            }

            public Builder clearOnlyStopGame() {
                this.bitField0_ &= -2;
                this.onlyStopGame_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientKickPlayingSession getDefaultInstanceForType() {
                return CMsgClientKickPlayingSession.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientKickPlayingSession_descriptor;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientKickPlayingSessionOrBuilder
            public boolean getOnlyStopGame() {
                return this.onlyStopGame_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientKickPlayingSessionOrBuilder
            public boolean hasOnlyStopGame() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientKickPlayingSession_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientKickPlayingSession.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.onlyStopGame_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientKickPlayingSession) {
                    return mergeFrom((CMsgClientKickPlayingSession) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientKickPlayingSession cMsgClientKickPlayingSession) {
                if (cMsgClientKickPlayingSession == CMsgClientKickPlayingSession.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientKickPlayingSession.hasOnlyStopGame()) {
                    setOnlyStopGame(cMsgClientKickPlayingSession.getOnlyStopGame());
                }
                mergeUnknownFields(cMsgClientKickPlayingSession.getUnknownFields());
                onChanged();
                return this;
            }

            public Builder setOnlyStopGame(boolean z) {
                this.onlyStopGame_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientKickPlayingSession.class.getName());
            DEFAULT_INSTANCE = new CMsgClientKickPlayingSession();
            PARSER = new AbstractParser<CMsgClientKickPlayingSession>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientKickPlayingSession.1
                @Override // com.google.protobuf.Parser
                public CMsgClientKickPlayingSession parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientKickPlayingSession.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientKickPlayingSession() {
            this.onlyStopGame_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientKickPlayingSession(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.onlyStopGame_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CMsgClientKickPlayingSession getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientKickPlayingSession_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientKickPlayingSession cMsgClientKickPlayingSession) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientKickPlayingSession);
        }

        public static CMsgClientKickPlayingSession parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientKickPlayingSession) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientKickPlayingSession parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientKickPlayingSession) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientKickPlayingSession parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientKickPlayingSession parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientKickPlayingSession parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientKickPlayingSession) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientKickPlayingSession parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientKickPlayingSession) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static CMsgClientKickPlayingSession parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientKickPlayingSession) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientKickPlayingSession parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientKickPlayingSession) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientKickPlayingSession parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientKickPlayingSession parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientKickPlayingSession parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientKickPlayingSession parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<CMsgClientKickPlayingSession> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientKickPlayingSession)) {
                return super.equals(obj);
            }
            CMsgClientKickPlayingSession cMsgClientKickPlayingSession = (CMsgClientKickPlayingSession) obj;
            if (hasOnlyStopGame() != cMsgClientKickPlayingSession.hasOnlyStopGame()) {
                return false;
            }
            return (!hasOnlyStopGame() || getOnlyStopGame() == cMsgClientKickPlayingSession.getOnlyStopGame()) && getUnknownFields().equals(cMsgClientKickPlayingSession.getUnknownFields());
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientKickPlayingSession getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientKickPlayingSessionOrBuilder
        public boolean getOnlyStopGame() {
            return this.onlyStopGame_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientKickPlayingSession> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.onlyStopGame_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeBoolSize;
            return iComputeBoolSize;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientKickPlayingSessionOrBuilder
        public boolean hasOnlyStopGame() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasOnlyStopGame()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getOnlyStopGame());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientKickPlayingSession_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientKickPlayingSession.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeBool(1, this.onlyStopGame_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CMsgClientKickPlayingSessionOrBuilder extends MessageOrBuilder {
        boolean getOnlyStopGame();

        boolean hasOnlyStopGame();
    }

    public interface CMsgClientOfflineMessageNotificationOrBuilder extends MessageOrBuilder {
        int getFriendsWithOfflineMessages(int i);

        int getFriendsWithOfflineMessagesCount();

        List<Integer> getFriendsWithOfflineMessagesList();

        int getOfflineMessages();

        boolean hasOfflineMessages();
    }

    public static final class CMsgClientPlayingSessionState extends GeneratedMessage implements CMsgClientPlayingSessionStateOrBuilder {
        private static final CMsgClientPlayingSessionState DEFAULT_INSTANCE;
        private static final Parser<CMsgClientPlayingSessionState> PARSER;
        public static final int PLAYING_APP_FIELD_NUMBER = 3;
        public static final int PLAYING_BLOCKED_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int playingApp_;
        private boolean playingBlocked_;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPlayingSessionStateOrBuilder {
            private int bitField0_;
            private int playingApp_;
            private boolean playingBlocked_;

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            private void buildPartial0(CMsgClientPlayingSessionState cMsgClientPlayingSessionState) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientPlayingSessionState.playingBlocked_ = this.playingBlocked_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientPlayingSessionState.playingApp_ = this.playingApp_;
                    i |= 2;
                }
                cMsgClientPlayingSessionState.bitField0_ |= i;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientPlayingSessionState_descriptor;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPlayingSessionState build() {
                CMsgClientPlayingSessionState cMsgClientPlayingSessionStateBuildPartial = buildPartial();
                if (cMsgClientPlayingSessionStateBuildPartial.isInitialized()) {
                    return cMsgClientPlayingSessionStateBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPlayingSessionStateBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPlayingSessionState buildPartial() {
                CMsgClientPlayingSessionState cMsgClientPlayingSessionState = new CMsgClientPlayingSessionState(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPlayingSessionState);
                }
                onBuilt();
                return cMsgClientPlayingSessionState;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.playingBlocked_ = false;
                this.playingApp_ = 0;
                return this;
            }

            public Builder clearPlayingApp() {
                this.bitField0_ &= -3;
                this.playingApp_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPlayingBlocked() {
                this.bitField0_ &= -2;
                this.playingBlocked_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPlayingSessionState getDefaultInstanceForType() {
                return CMsgClientPlayingSessionState.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientPlayingSessionState_descriptor;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
            public int getPlayingApp() {
                return this.playingApp_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
            public boolean getPlayingBlocked() {
                return this.playingBlocked_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
            public boolean hasPlayingApp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
            public boolean hasPlayingBlocked() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientPlayingSessionState_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPlayingSessionState.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 16) {
                                    this.playingBlocked_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 24) {
                                    this.playingApp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPlayingSessionState) {
                    return mergeFrom((CMsgClientPlayingSessionState) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPlayingSessionState cMsgClientPlayingSessionState) {
                if (cMsgClientPlayingSessionState == CMsgClientPlayingSessionState.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPlayingSessionState.hasPlayingBlocked()) {
                    setPlayingBlocked(cMsgClientPlayingSessionState.getPlayingBlocked());
                }
                if (cMsgClientPlayingSessionState.hasPlayingApp()) {
                    setPlayingApp(cMsgClientPlayingSessionState.getPlayingApp());
                }
                mergeUnknownFields(cMsgClientPlayingSessionState.getUnknownFields());
                onChanged();
                return this;
            }

            public Builder setPlayingApp(int i) {
                this.playingApp_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setPlayingBlocked(boolean z) {
                this.playingBlocked_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPlayingSessionState.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPlayingSessionState();
            PARSER = new AbstractParser<CMsgClientPlayingSessionState>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionState.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPlayingSessionState parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPlayingSessionState.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientPlayingSessionState() {
            this.playingBlocked_ = false;
            this.playingApp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPlayingSessionState(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.playingBlocked_ = false;
            this.playingApp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CMsgClientPlayingSessionState getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientPlayingSessionState_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPlayingSessionState cMsgClientPlayingSessionState) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPlayingSessionState);
        }

        public static CMsgClientPlayingSessionState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPlayingSessionState) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPlayingSessionState parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPlayingSessionState) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPlayingSessionState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPlayingSessionState parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPlayingSessionState parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPlayingSessionState) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPlayingSessionState parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPlayingSessionState) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static CMsgClientPlayingSessionState parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPlayingSessionState) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPlayingSessionState parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPlayingSessionState) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPlayingSessionState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPlayingSessionState parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPlayingSessionState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPlayingSessionState parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<CMsgClientPlayingSessionState> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientPlayingSessionState)) {
                return super.equals(obj);
            }
            CMsgClientPlayingSessionState cMsgClientPlayingSessionState = (CMsgClientPlayingSessionState) obj;
            if (hasPlayingBlocked() != cMsgClientPlayingSessionState.hasPlayingBlocked()) {
                return false;
            }
            if ((!hasPlayingBlocked() || getPlayingBlocked() == cMsgClientPlayingSessionState.getPlayingBlocked()) && hasPlayingApp() == cMsgClientPlayingSessionState.hasPlayingApp()) {
                return (!hasPlayingApp() || getPlayingApp() == cMsgClientPlayingSessionState.getPlayingApp()) && getUnknownFields().equals(cMsgClientPlayingSessionState.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPlayingSessionState getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPlayingSessionState> getParserForType() {
            return PARSER;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
        public int getPlayingApp() {
            return this.playingApp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
        public boolean getPlayingBlocked() {
            return this.playingBlocked_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(2, this.playingBlocked_) : 0;
            if ((2 & this.bitField0_) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(3, this.playingApp_);
            }
            int serializedSize = iComputeBoolSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
        public boolean hasPlayingApp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPlayingSessionStateOrBuilder
        public boolean hasPlayingBlocked() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasPlayingBlocked()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getPlayingBlocked());
            }
            if (hasPlayingApp()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPlayingApp();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientPlayingSessionState_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPlayingSessionState.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeBool(2, this.playingBlocked_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(3, this.playingApp_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CMsgClientPlayingSessionStateOrBuilder extends MessageOrBuilder {
        int getPlayingApp();

        boolean getPlayingBlocked();

        boolean hasPlayingApp();

        boolean hasPlayingBlocked();
    }

    public interface CMsgClientPurchaseResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        ByteString getPurchaseReceiptInfo();

        int getPurchaseResultDetails();

        boolean hasEresult();

        boolean hasPurchaseReceiptInfo();

        boolean hasPurchaseResultDetails();
    }

    public interface CMsgClientRedeemGuestPassResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        int getMustOwnAppid();

        int getPackageId();

        boolean hasEresult();

        boolean hasMustOwnAppid();

        boolean hasPackageId();
    }

    public interface CMsgClientRequestFreeLicenseOrBuilder extends MessageOrBuilder {
        int getAppids(int i);

        int getAppidsCount();

        List<Integer> getAppidsList();
    }

    public interface CMsgClientRequestFreeLicenseResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        int getGrantedAppids(int i);

        int getGrantedAppidsCount();

        List<Integer> getGrantedAppidsList();

        int getGrantedPackageids(int i);

        int getGrantedPackageidsCount();

        List<Integer> getGrantedPackageidsList();

        boolean hasEresult();
    }

    public interface CMsgClientUserNotificationsOrBuilder extends MessageOrBuilder {
        CMsgClientUserNotifications.Notification getNotifications(int i);

        int getNotificationsCount();

        List<CMsgClientUserNotifications.Notification> getNotificationsList();

        CMsgClientUserNotifications.NotificationOrBuilder getNotificationsOrBuilder(int i);

        List<? extends CMsgClientUserNotifications.NotificationOrBuilder> getNotificationsOrBuilderList();
    }

    public interface CMsgClientVanityURLChangedNotificationOrBuilder extends MessageOrBuilder {
        String getVanityUrl();

        ByteString getVanityUrlBytes();

        boolean hasVanityUrl();
    }

    public interface CMsgDPGetNumberOfCurrentPlayersOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean hasAppid();
    }

    public interface CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        int getPlayerCount();

        boolean hasEresult();

        boolean hasPlayerCount();
    }

    public interface CMsgGCClientOrBuilder extends MessageOrBuilder {
        int getAppid();

        int getFlags();

        String getGcname();

        ByteString getGcnameBytes();

        int getIp();

        int getMsgtype();

        ByteString getPayload();

        long getSteamid();

        boolean hasAppid();

        boolean hasFlags();

        boolean hasGcname();

        boolean hasIp();

        boolean hasMsgtype();

        boolean hasPayload();

        boolean hasSteamid();
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserver2() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserver2.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nOin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_2.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"w\n\u001cCMsgClientUpdateUserGameInfo\u0012\u0014\n\fsteamid_idgs\u0018\u0001 \u0001(\u0006\u0012\u000e\n\u0006gameid\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007game_ip\u0018\u0003 \u0001(\r\u0012\u0011\n\tgame_port\u0018\u0004 \u0001(\r\u0012\r\n\u0005token\u0018\u0005 \u0001(\f\"S\n\u001cCMsgClientRichPresenceUpload\u0012\u0018\n\u0010rich_presence_kv\u0018\u0001 \u0001(\f\u0012\u0019\n\u0011steamid_broadcast\u0018\u0002 \u0003(\u0006\"8\n\u001dCMsgClientRichPresenceRequest\u0012\u0017\n\u000fsteamid_request\u0018\u0001 \u0003(\u0006\"ö\u0001\n\u001aCMsgClientRichPresenceInfo\u0012?\n\rrich_presence\u0018\u0001 \u0003(\u000b2(.CMsgClientRichPresenceInfo.RichPresence\u001a \n\u0002KV\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u001au\n\fRichPresence\u0012\u0014\n\fsteamid_user\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010rich_presence_kv\u0018\u0002 \u0001(\f\u00125\n\rrich_presense\u0018\u0003 \u0003(\u000b2\u001e.CMsgClientRichPresenceInfo.KV\".\n\u001cCMsgClientCheckFileSignature\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\"÷\u0001\n$CMsgClientCheckFileSignatureResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003pid\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007eresult\u0018\u0003 \u0001(\r\u0012\u0010\n\bfilename\u0018\u0004 \u0001(\t\u0012\u0018\n\u0010esignatureresult\u0018\u0005 \u0001(\r\u0012\u0010\n\bsha_file\u0018\u0006 \u0001(\f\u0012\u0017\n\u000fsignatureheader\u0018\u0007 \u0001(\f\u0012\u0010\n\bfilesize\u0018\b \u0001(\r\u0012\u0014\n\fgetlasterror\u0018\t \u0001(\r\u0012\"\n\u001aevalvesignaturecheckdetail\u0018\n \u0001(\r\"$\n\u0015CMsgClientRegisterKey\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\"p\n\u001aCMsgClientPurchaseResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u001f\n\u0017purchase_result_details\u0018\u0002 \u0001(\u0005\u0012\u001d\n\u0015purchase_receipt_info\u0018\u0003 \u0001(\f\"Å\u0001\n\u001cCMsgClientActivateOEMLicense\u0012\u0019\n\u0011bios_manufacturer\u0018\u0001 \u0001(\t\u0012\u0019\n\u0011bios_serialnumber\u0018\u0002 \u0001(\t\u0012\u0014\n\flicense_file\u0018\u0003 \u0001(\f\u0012\u001e\n\u0016mainboard_manufacturer\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011mainboard_product\u0018\u0005 \u0001(\t\u0012\u001e\n\u0016mainboard_serialnumber\u0018\u0006 \u0001(\t\"9\n\u001cCMsgClientRegisterOEMMachine\u0012\u0019\n\u0011oem_register_file\u0018\u0001 \u0001(\f\"7\n$CMsgClientRegisterOEMMachineResponse\u0012\u000f\n\u0007eresult\u0018\u0001 \u0001(\r\"K\n\u001fCMsgClientPurchaseWithMachineID\u0012\u0012\n\npackage_id\u0018\u0001 \u0001(\r\u0012\u0014\n\fmachine_info\u0018\u0002 \u0001(\f\"g\n CMsgTrading_InitiateTradeRequest\u0012\u0018\n\u0010trade_request_id\u0018\u0001 \u0001(\r\u0012\u0015\n\rother_steamid\u0018\u0002 \u0001(\u0004\u0012\u0012\n\nother_name\u0018\u0003 \u0001(\t\"Ò\u0002\n!CMsgTrading_InitiateTradeResponse\u0012\u0010\n\bresponse\u0018\u0001 \u0001(\r\u0012\u0018\n\u0010trade_request_id\u0018\u0002 \u0001(\r\u0012\u0015\n\rother_steamid\u0018\u0003 \u0001(\u0004\u0012 \n\u0018steamguard_required_days\u0018\u0004 \u0001(\r\u0012 \n\u0018new_device_cooldown_days\u0018\u0005 \u0001(\r\u0012-\n%default_password_reset_probation_days\u0018\u0006 \u0001(\r\u0012%\n\u001dpassword_reset_probation_days\u0018\u0007 \u0001(\r\u0012+\n#default_email_change_probation_days\u0018\b \u0001(\r\u0012#\n\u001bemail_change_probation_days\u0018\t \u0001(\r\"7\n\u001eCMsgTrading_CancelTradeRequest\u0012\u0015\n\rother_steamid\u0018\u0001 \u0001(\u0004\"1\n\u0018CMsgTrading_StartSession\u0012\u0015\n\rother_steamid\u0018\u0001 \u0001(\u0004\"C\n\u001fCMsgClientGetDepotDecryptionKey\u0012\u0010\n\bdepot_id\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\"m\n'CMsgClientGetDepotDecryptionKeyResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0010\n\bdepot_id\u0018\u0002 \u0001(\r\u0012\u001c\n\u0014depot_encryption_key\u0018\u0003 \u0001(\f\"X\n\u001eCMsgClientCheckAppBetaPassword\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0014\n\fbetapassword\u0018\u0002 \u0001(\t\u0012\u0010\n\blanguage\u0018\u0003 \u0001(\u0005\"Ú\u0001\n&CMsgClientCheckAppBetaPasswordResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012K\n\rbetapasswords\u0018\u0004 \u0003(\u000b24.CMsgClientCheckAppBetaPasswordResponse.BetaPassword\u001aO\n\fBetaPassword\u0012\u0010\n\bbetaname\u0018\u0001 \u0001(\t\u0012\u0014\n\fbetapassword\u0018\u0002 \u0001(\t\u0012\u0017\n\u000fbetadescription\u0018\u0003 \u0001(\t\"\u0099\u0001\n\u001bCMsgClientUGSGetGlobalStats\u0012\u000e\n\u0006gameid\u0018\u0001 \u0001(\u0004\u0012\u001e\n\u0016history_days_requested\u0018\u0002 \u0001(\r\u0012\u001b\n\u0013time_last_requested\u0018\u0003 \u0001(\u0007\u0012\u0018\n\u0010first_day_cached\u0018\u0004 \u0001(\r\u0012\u0013\n\u000bdays_cached\u0018\u0005 \u0001(\r\"\u0095\u0002\n#CMsgClientUGSGetGlobalStatsResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\u0007\u0012\u0013\n\u000bday_current\u0018\u0003 \u0001(\u0005\u00126\n\u0004days\u0018\u0004 \u0003(\u000b2(.CMsgClientUGSGetGlobalStatsResponse.Day\u001az\n\u0003Day\u0012\u000e\n\u0006day_id\u0018\u0001 \u0001(\r\u0012<\n\u0005stats\u0018\u0002 \u0003(\u000b2-.CMsgClientUGSGetGlobalStatsResponse.Day.Stat\u001a%\n\u0004Stat\u0012\u000f\n\u0007stat_id\u0018\u0001 \u0001(\u0005\u0012\f\n\u0004data\u0018\u0002 \u0001(\u0003\"2\n\u0019CMsgClientRedeemGuestPass\u0012\u0015\n\rguest_pass_id\u0018\u0001 \u0001(\u0006\"c\n!CMsgClientRedeemGuestPassResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\r:\u00012\u0012\u0012\n\npackage_id\u0018\u0002 \u0001(\r\u0012\u0016\n\u000emust_own_appid\u0018\u0003 \u0001(\r\"8\n\u001fCMsgClientGetClanActivityCounts\u0012\u0015\n\rsteamid_clans\u0018\u0001 \u0003(\u0004\"=\n'CMsgClientGetClanActivityCountsResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\r:\u00012\"y\n\u0019CMsgClientOGSReportString\u0012\u0013\n\u000baccumulated\u0018\u0001 \u0001(\b\u0012\u0011\n\tsessionid\u0018\u0002 \u0001(\u0004\u0012\u0010\n\bseverity\u0018\u0003 \u0001(\u0005\u0012\u0011\n\tformatter\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007varargs\u0018\u0005 \u0001(\f\"P\n\u0016CMsgClientOGSReportBug\u0012\u0011\n\tsessionid\u0018\u0001 \u0001(\u0004\u0012\u000f\n\u0007bugtext\u0018\u0002 \u0001(\t\u0012\u0012\n\nscreenshot\u0018\u0003 \u0001(\f\"\u0014\n\u0012CMsgClientSentLogs\"\u0092\u0001\n\fCMsgGCClient\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007msgtype\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007payload\u0018\u0003 \u0001(\f\u0012\u000f\n\u0007steamid\u0018\u0004 \u0001(\u0006\u0012\u000e\n\u0006gcname\u0018\u0005 \u0001(\t\u0012\n\n\u0002ip\u0018\u0006 \u0001(\r\u0012\r\n\u0005flags\u0018\u0007 \u0001(\r\"\u0015\n\u0005EFlag\u0012\f\n\bVALVE_DS\u0010\u0001\".\n\u001cCMsgClientRequestFreeLicense\u0012\u000e\n\u0006appids\u0018\u0002 \u0003(\r\"n\n$CMsgClientRequestFreeLicenseResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\r:\u00012\u0012\u001a\n\u0012granted_packageids\u0018\u0002 \u0003(\r\u0012\u0016\n\u000egranted_appids\u0018\u0003 \u0003(\r\"Ó\u0001\n#CMsgDRMDownloadRequestWithCrashData\u0012\u0016\n\u000edownload_flags\u0018\u0001 \u0001(\r\u0012\u001c\n\u0014download_types_known\u0018\u0002 \u0001(\r\u0012\u0010\n\bguid_drm\u0018\u0003 \u0001(\f\u0012\u0012\n\nguid_split\u0018\u0004 \u0001(\f\u0012\u0012\n\nguid_merge\u0018\u0005 \u0001(\f\u0012\u0013\n\u000bmodule_name\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bmodule_path\u0018\u0007 \u0001(\t\u0012\u0012\n\ncrash_data\u0018\b \u0001(\f\"Û\u0001\n\u0017CMsgDRMDownloadResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\r:\u00012\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\u0012\u001a\n\u0012blob_download_type\u0018\u0003 \u0001(\r\u0012\u0012\n\nmerge_guid\u0018\u0004 \u0001(\f\u0012\u001c\n\u0014download_file_dfs_ip\u0018\u0005 \u0001(\r\u0012\u001e\n\u0016download_file_dfs_port\u0018\u0006 \u0001(\r\u0012\u0019\n\u0011download_file_url\u0018\u0007 \u0001(\t\u0012\u0013\n\u000bmodule_path\u0018\b \u0001(\t\"×\u0001\n\u0012CMsgDRMFinalResult\u0012\u0012\n\u0007eResult\u0018\u0001 \u0001(\r:\u00012\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\u0012\u001a\n\u0012blob_download_type\u0018\u0003 \u0001(\r\u0012\u0014\n\ferror_detail\u0018\u0004 \u0001(\r\u0012\u0012\n\nmerge_guid\u0018\u0005 \u0001(\f\u0012\u001c\n\u0014download_file_dfs_ip\u0018\u0006 \u0001(\r\u0012\u001e\n\u0016download_file_dfs_port\u0018\u0007 \u0001(\r\u0012\u0019\n\u0011download_file_url\u0018\b \u0001(\t\"3\n\u001eCMsgClientDPCheckSpecialSurvey\u0012\u0011\n\tsurvey_id\u0018\u0001 \u0001(\r\"\u0096\u0001\n&CMsgClientDPCheckSpecialSurveyResponse\u0012\u0012\n\u0007eResult\u0018\u0001 \u0001(\r:\u00012\u0012\r\n\u0005state\u0018\u0002 \u0001(\r\u0012\f\n\u0004name\u0018\u0003 \u0001(\t\u0012\u0012\n\ncustom_url\u0018\u0004 \u0001(\t\u0012\u0018\n\u0010include_software\u0018\u0005 \u0001(\b\u0012\r\n\u0005token\u0018\u0006 \u0001(\f\"H\n%CMsgClientDPSendSpecialSurveyResponse\u0012\u0011\n\tsurvey_id\u0018\u0001 \u0001(\r\u0012\f\n\u0004data\u0018\u0002 \u0001(\f\"O\n*CMsgClientDPSendSpecialSurveyResponseReply\u0012\u0012\n\u0007eResult\u0018\u0001 \u0001(\r:\u00012\u0012\r\n\u0005token\u0018\u0002 \u0001(\f\"W\n'CMsgClientRequestForgottenPasswordEmail\u0012\u0014\n\faccount_name\u0018\u0001 \u0001(\t\u0012\u0016\n\u000epassword_tried\u0018\u0002 \u0001(\t\"_\n/CMsgClientRequestForgottenPasswordEmailResponse\u0012\u000f\n\u0007eResult\u0018\u0001 \u0001(\r\u0012\u001b\n\u0013use_secret_question\u0018\u0002 \u0001(\b\"ö\u0001\n\u001bCMsgClientItemAnnouncements\u0012\u0017\n\u000fcount_new_items\u0018\u0001 \u0001(\r\u0012=\n\funseen_items\u0018\u0002 \u0003(\u000b2'.CMsgClientItemAnnouncements.UnseenItem\u001a\u007f\n\nUnseenItem\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0012\n\ncontext_id\u0018\u0002 \u0001(\u0004\u0012\u0010\n\basset_id\u0018\u0003 \u0001(\u0004\u0012\u000e\n\u0006amount\u0018\u0004 \u0001(\u0004\u0012\u0016\n\u000ertime32_gained\u0018\u0005 \u0001(\u0007\u0012\u0014\n\fsource_appid\u0018\u0006 \u0001(\r\"$\n\"CMsgClientRequestItemAnnouncements\"\u009e\u0001\n\u001bCMsgClientUserNotifications\u0012@\n\rnotifications\u0018\u0001 \u0003(\u000b2).CMsgClientUserNotifications.Notification\u001a=\n\fNotification\u0012\u001e\n\u0016user_notification_type\u0018\u0001 \u0001(\r\u0012\r\n\u0005count\u0018\u0002 \u0001(\r\"\u0088\u0001\n\u001eCMsgClientCommentNotifications\u0012\u001a\n\u0012count_new_comments\u0018\u0001 \u0001(\r\u0012 \n\u0018count_new_comments_owner\u0018\u0002 \u0001(\r\u0012(\n count_new_comments_subscriptions\u0018\u0003 \u0001(\r\"'\n%CMsgClientRequestCommentNotifications\"g\n$CMsgClientOfflineMessageNotification\u0012\u0018\n\u0010offline_messages\u0018\u0001 \u0001(\r\u0012%\n\u001dfriends_with_offline_messages\u0018\u0002 \u0003(\r\"&\n$CMsgClientRequestOfflineMessageCount\"8\n%CMsgClientChatGetFriendMessageHistory\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\"ù\u0001\n-CMsgClientChatGetFriendMessageHistoryResponse\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007success\u0018\u0002 \u0001(\r\u0012N\n\bmessages\u0018\u0003 \u0003(\u000b2<.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessage\u001aV\n\rFriendMessage\u0012\u0011\n\taccountid\u0018\u0001 \u0001(\r\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007message\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006unread\u0018\u0004 \u0001(\b\"9\n7CMsgClientChatGetFriendMessageHistoryForOfflineMessages\"7\n!CMsgClientFSGetFriendsSteamLevels\u0012\u0012\n\naccountids\u0018\u0001 \u0003(\r\"\u009b\u0001\n)CMsgClientFSGetFriendsSteamLevelsResponse\u0012B\n\u0007friends\u0018\u0001 \u0003(\u000b21.CMsgClientFSGetFriendsSteamLevelsResponse.Friend\u001a*\n\u0006Friend\u0012\u0011\n\taccountid\u0018\u0001 \u0001(\r\u0012\r\n\u0005level\u0018\u0002 \u0001(\r\"Ê\u0001\n\u0017CMsgClientEmailAddrInfo\u0012\u0015\n\remail_address\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012email_is_validated\u0018\u0002 \u0001(\b\u0012 \n\u0018email_validation_changed\u0018\u0003 \u0001(\b\u0012'\n\u001fcredential_change_requires_code\u0018\u0004 \u0001(\b\u00121\n)password_or_secretqa_change_requires_code\u0018\u0005 \u0001(\b\"\u008b\u0001\n\u0016CMsgCREItemVoteSummary\u0012C\n\u0012published_file_ids\u0018\u0001 \u0003(\u000b2'.CMsgCREItemVoteSummary.PublishedFileId\u001a,\n\u000fPublishedFileId\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\"ú\u0001\n\u001eCMsgCREItemVoteSummaryResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012L\n\u0013item_vote_summaries\u0018\u0002 \u0003(\u000b2/.CMsgCREItemVoteSummaryResponse.ItemVoteSummary\u001av\n\u000fItemVoteSummary\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tvotes_for\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rvotes_against\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007reports\u0018\u0004 \u0001(\u0005\u0012\r\n\u0005score\u0018\u0005 \u0001(\u0002\"P\n\"CMsgCREUpdateUserPublishedItemVote\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007vote_up\u0018\u0002 \u0001(\b\"@\n*CMsgCREUpdateUserPublishedItemVoteResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\"«\u0001\n&CMsgCREGetUserPublishedItemVoteDetails\u0012S\n\u0012published_file_ids\u0018\u0001 \u0003(\u000b27.CMsgCREGetUserPublishedItemVoteDetails.PublishedFileId\u001a,\n\u000fPublishedFileId\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\"ê\u0001\n.CMsgCREGetUserPublishedItemVoteDetailsResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012b\n\u0016user_item_vote_details\u0018\u0002 \u0003(\u000b2B.CMsgCREGetUserPublishedItemVoteDetailsResponse.UserItemVoteDetail\u001a@\n\u0012UserItemVoteDetail\u0012\u0019\n\u0011published_file_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0004vote\u0018\u0002 \u0001(\u0005:\u00010\"*\n\u0016CMsgFSGetFollowerCount\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\"F\n\u001eCMsgFSGetFollowerCountResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0010\n\u0005count\u0018\u0002 \u0001(\u0005:\u00010\"(\n\u0014CMsgFSGetIsFollowing\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\"O\n\u001cCMsgFSGetIsFollowingResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u001b\n\fis_following\u0018\u0002 \u0001(\b:\u0005false\"3\n\u001cCMsgFSEnumerateFollowingList\u0012\u0013\n\u000bstart_index\u0018\u0001 \u0001(\r\"d\n$CMsgFSEnumerateFollowingListResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0015\n\rtotal_results\u0018\u0002 \u0001(\u0005\u0012\u0011\n\tsteam_ids\u0018\u0003 \u0003(\u0006\"0\n\u001fCMsgDPGetNumberOfCurrentPlayers\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\"S\n'CMsgDPGetNumberOfCurrentPlayersResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0014\n\fplayer_count\u0018\u0002 \u0001(\u0005\"a\n#CMsgClientFriendUserStatusPublished\u0012\u0016\n\u000efriend_steamid\u0018\u0001 \u0001(\u0006\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bstatus_text\u0018\u0003 \u0001(\t\"h\n\u001dCMsgClientServiceMethodLegacy\u0012\u0013\n\u000bmethod_name\u0018\u0001 \u0001(\t\u0012\u0019\n\u0011serialized_method\u0018\u0002 \u0001(\f\u0012\u0017\n\u000fis_notification\u0018\u0003 \u0001(\b\"`\n%CMsgClientServiceMethodLegacyResponse\u0012\u0013\n\u000bmethod_name\u0018\u0001 \u0001(\t\u0012\"\n\u001aserialized_method_response\u0018\u0002 \u0001(\f\"5\n\u0010CMsgClientUIMode\u0012\u000e\n\u0006uimode\u0018\u0001 \u0001(\r\u0012\u0011\n\tchat_mode\u0018\u0002 \u0001(\r\"<\n&CMsgClientVanityURLChangedNotification\u0012\u0012\n\nvanity_url\u0018\u0001 \u0001(\t\"y\n%CMsgClientAuthorizeLocalDeviceRequest\u0012\u001a\n\u0012device_description\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010owner_account_id\u0018\u0002 \u0001(\r\u0012\u001a\n\u0012local_device_token\u0018\u0003 \u0001(\u0004\"k\n\u001eCMsgClientAuthorizeLocalDevice\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0018\n\u0010owner_account_id\u0018\u0002 \u0001(\r\u0012\u001b\n\u0013authed_device_token\u0018\u0003 \u0001(\u0004\"v\n*CMsgClientAuthorizeLocalDeviceNotification\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0018\n\u0010owner_account_id\u0018\u0002 \u0001(\r\u0012\u001a\n\u0012local_device_token\u0018\u0003 \u0001(\u0004\"n\n\"CMsgClientDeauthorizeDeviceRequest\u0012\"\n\u001adeauthorization_account_id\u0018\u0001 \u0001(\r\u0012$\n\u001cdeauthorization_device_token\u0018\u0002 \u0001(\u0004\"U\n\u001bCMsgClientDeauthorizeDevice\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\"\n\u001adeauthorization_account_id\u0018\u0002 \u0001(\r\"Ñ\u0001\n&CMsgClientUseLocalDeviceAuthorizations\u0012 \n\u0018authorization_account_id\u0018\u0001 \u0003(\r\u0012J\n\rdevice_tokens\u0018\u0002 \u0003(\u000b23.CMsgClientUseLocalDeviceAuthorizations.DeviceToken\u001a9\n\u000bDeviceToken\u0012\u0018\n\u0010owner_account_id\u0018\u0001 \u0001(\r\u0012\u0010\n\btoken_id\u0018\u0002 \u0001(\u0004\" \n\u001eCMsgClientGetAuthorizedDevices\"\u00ad\u0002\n&CMsgClientGetAuthorizedDevicesResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012S\n\u0011authorized_device\u0018\u0002 \u0003(\u000b28.CMsgClientGetAuthorizedDevicesResponse.AuthorizedDevice\u001a\u0099\u0001\n\u0010AuthorizedDevice\u0012\u0019\n\u0011auth_device_token\u0018\u0001 \u0001(\u0004\u0012\u0013\n\u000bdevice_name\u0018\u0002 \u0001(\t\u0012\u0018\n\u0010last_access_time\u0018\u0003 \u0001(\r\u0012\u0013\n\u000bborrower_id\u0018\u0004 \u0001(\r\u0012\u0012\n\nis_pending\u0018\u0005 \u0001(\b\u0012\u0012\n\napp_played\u0018\u0006 \u0001(\r\"Â\u0001\n!CMsgClientSharedLibraryLockStatus\u0012H\n\u000elocked_library\u0018\u0001 \u0003(\u000b20.CMsgClientSharedLibraryLockStatus.LockedLibrary\u0012\u001d\n\u0015own_library_locked_by\u0018\u0002 \u0001(\r\u001a4\n\rLockedLibrary\u0012\u0010\n\bowner_id\u0018\u0001 \u0001(\r\u0012\u0011\n\tlocked_by\u0018\u0002 \u0001(\r\"§\u0001\n\"CMsgClientSharedLibraryStopPlaying\u0012\u0014\n\fseconds_left\u0018\u0001 \u0001(\u0005\u0012>\n\tstop_apps\u0018\u0002 \u0003(\u000b2+.CMsgClientSharedLibraryStopPlaying.StopApp\u001a+\n\u0007StopApp\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0010\n\bowner_id\u0018\u0002 \u0001(\r\"\u0081\u0002\n\u0015CMsgClientServiceCall\u0012\u0015\n\rsysid_routing\u0018\u0001 \u0001(\f\u0012\u0013\n\u000bcall_handle\u0018\u0002 \u0001(\r\u0012\u0012\n\nmodule_crc\u0018\u0003 \u0001(\r\u0012\u0013\n\u000bmodule_hash\u0018\u0004 \u0001(\f\u0012\u0013\n\u000bfunction_id\u0018\u0005 \u0001(\r\u0012\u0016\n\u000ecub_output_max\u0018\u0006 \u0001(\r\u0012\r\n\u0005flags\u0018\u0007 \u0001(\r\u0012\u0015\n\rcallparameter\u0018\b \u0001(\f\u0012\u0011\n\tping_only\u0018\t \u0001(\b\u0012\u001d\n\u0015max_outstanding_calls\u0018\n \u0001(\r\u0012\u000e\n\u0006app_id\u0018\u000b \u0001(\r\"Z\n\u0017CMsgClientServiceModule\u0012\u0012\n\nmodule_crc\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bmodule_hash\u0018\u0002 \u0001(\f\u0012\u0016\n\u000emodule_content\u0018\u0003 \u0001(\f\"¸\u0004\n\u001dCMsgClientServiceCallResponse\u0012\u0015\n\rsysid_routing\u0018\u0001 \u0001(\f\u0012\u0013\n\u000bcall_handle\u0018\u0002 \u0001(\r\u0012\u0012\n\nmodule_crc\u0018\u0003 \u0001(\r\u0012\u0013\n\u000bmodule_hash\u0018\u0004 \u0001(\f\u0012\u0013\n\u000becallresult\u0018\u0005 \u0001(\r\u0012\u0016\n\u000eresult_content\u0018\u0006 \u0001(\f\u0012\u0017\n\u000fos_version_info\u0018\u0007 \u0001(\f\u0012\u0013\n\u000bsystem_info\u0018\b \u0001(\f\u0012\u0014\n\fload_address\u0018\t \u0001(\u0006\u0012\u0018\n\u0010exception_record\u0018\n \u0001(\f\u0012 \n\u0018portable_os_version_info\u0018\u000b \u0001(\f\u0012\u001c\n\u0014portable_system_info\u0018\f \u0001(\f\u0012\u0015\n\rwas_converted\u0018\r \u0001(\b\u0012\u0017\n\u000finternal_result\u0018\u000e \u0001(\r\u0012\u0015\n\rcurrent_count\u0018\u000f \u0001(\r\u0012\u0018\n\u0010last_call_handle\u0018\u0010 \u0001(\r\u0012\u001c\n\u0014last_call_module_crc\u0018\u0011 \u0001(\r\u0012\u001f\n\u0017last_call_sysid_routing\u0018\u0012 \u0001(\f\u0012\u0018\n\u0010last_ecallresult\u0018\u0013 \u0001(\r\u0012\u001c\n\u0014last_callissue_delta\u0018\u0014 \u0001(\r\u0012\u001f\n\u0017last_callcomplete_delta\u0018\u0015 \u0001(\r\"C\n\u0010CMsgAMUnlockH264\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0010\n\bplatform\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006reason\u0018\u0003 \u0001(\u0005\"F\n\u0018CMsgAMUnlockH264Response\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0016\n\u000eencryption_key\u0018\u0002 \u0001(\f\"M\n\u001dCMsgClientPlayingSessionState\u0012\u0017\n\u000fplaying_blocked\u0018\u0002 \u0001(\b\u0012\u0013\n\u000bplaying_app\u0018\u0003 \u0001(\r\"6\n\u001cCMsgClientKickPlayingSession\u0012\u0016\n\u000eonly_stop_game\u0018\u0001 \u0001(\b\"v\n\u001fCMsgClientVoiceCallPreAuthorize\u0012\u0016\n\u000ecaller_steamid\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010receiver_steamid\u0018\u0002 \u0001(\u0006\u0012\u0011\n\tcaller_id\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006hangup\u0018\u0004 \u0001(\b\"\u0082\u0001\n'CMsgClientVoiceCallPreAuthorizeResponse\u0012\u0016\n\u000ecaller_steamid\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010receiver_steamid\u0018\u0002 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0003 \u0001(\u0005:\u00012\u0012\u0011\n\tcaller_id\u0018\u0004 \u0001(\u0005\"B\n\u001cCMsgBadgeCraftedNotification\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bbadge_level\u0018\u0002 \u0001(\r\"w\n CMsgClientStartPeerContentServer\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010client_remote_id\u0018\u0002 \u0001(\u0006\u0012\u000e\n\u0006app_id\u0018\u0003 \u0001(\r\u0012\u0018\n\u0010current_build_id\u0018\u0004 \u0001(\r\"\u007f\n(CMsgClientStartPeerContentServerResponse\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bserver_port\u0018\u0002 \u0001(\r\u0012\u0018\n\u0010installed_depots\u0018\u0003 \u0003(\r\u0012\u0014\n\faccess_token\u0018\u0004 \u0001(\u0004\"f\n\u001cCMsgClientGetPeerContentInfo\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010client_remote_id\u0018\u0002 \u0001(\u0006\u0012\u001b\n\u0013owned_games_visible\u0018\u0003 \u0001(\b\"D\n$CMsgClientGetPeerContentInfoResponse\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\r\u0012\f\n\u0004apps\u0018\u0002 \u0003(\r\"-\n\u001bCMsgClientPendingGameLaunch\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\"Y\n#CMsgClientPendingGameLaunchResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u000e\n\u0006app_id\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006envkey\u0018\u0003 \u0001(\tB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientUpdateUserGameInfo_descriptor = descriptor2;
        internal_static_CMsgClientUpdateUserGameInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"SteamidIdgs", "Gameid", "GameIp", "GamePort", "Token"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientRichPresenceUpload_descriptor = descriptor3;
        internal_static_CMsgClientRichPresenceUpload_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"RichPresenceKv", "SteamidBroadcast"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientRichPresenceRequest_descriptor = descriptor4;
        internal_static_CMsgClientRichPresenceRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"SteamidRequest"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientRichPresenceInfo_descriptor = descriptor5;
        internal_static_CMsgClientRichPresenceInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"RichPresence"});
        Descriptors.Descriptor descriptor6 = descriptor5.getNestedTypes().get(0);
        internal_static_CMsgClientRichPresenceInfo_KV_descriptor = descriptor6;
        internal_static_CMsgClientRichPresenceInfo_KV_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor7 = descriptor5.getNestedTypes().get(1);
        internal_static_CMsgClientRichPresenceInfo_RichPresence_descriptor = descriptor7;
        internal_static_CMsgClientRichPresenceInfo_RichPresence_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"SteamidUser", "RichPresenceKv", "RichPresense"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientCheckFileSignature_descriptor = descriptor8;
        internal_static_CMsgClientCheckFileSignature_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"AppId"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientCheckFileSignatureResponse_descriptor = descriptor9;
        internal_static_CMsgClientCheckFileSignatureResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"AppId", "Pid", "Eresult", "Filename", "Esignatureresult", "ShaFile", "Signatureheader", "Filesize", "Getlasterror", "Evalvesignaturecheckdetail"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgClientRegisterKey_descriptor = descriptor10;
        internal_static_CMsgClientRegisterKey_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Key"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientPurchaseResponse_descriptor = descriptor11;
        internal_static_CMsgClientPurchaseResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Eresult", "PurchaseResultDetails", "PurchaseReceiptInfo"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(8);
        internal_static_CMsgClientActivateOEMLicense_descriptor = descriptor12;
        internal_static_CMsgClientActivateOEMLicense_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"BiosManufacturer", "BiosSerialnumber", "LicenseFile", "MainboardManufacturer", "MainboardProduct", "MainboardSerialnumber"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgClientRegisterOEMMachine_descriptor = descriptor13;
        internal_static_CMsgClientRegisterOEMMachine_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"OemRegisterFile"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgClientRegisterOEMMachineResponse_descriptor = descriptor14;
        internal_static_CMsgClientRegisterOEMMachineResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(11);
        internal_static_CMsgClientPurchaseWithMachineID_descriptor = descriptor15;
        internal_static_CMsgClientPurchaseWithMachineID_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"PackageId", "MachineInfo"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(12);
        internal_static_CMsgTrading_InitiateTradeRequest_descriptor = descriptor16;
        internal_static_CMsgTrading_InitiateTradeRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"TradeRequestId", "OtherSteamid", "OtherName"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(13);
        internal_static_CMsgTrading_InitiateTradeResponse_descriptor = descriptor17;
        internal_static_CMsgTrading_InitiateTradeResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Response", "TradeRequestId", "OtherSteamid", "SteamguardRequiredDays", "NewDeviceCooldownDays", "DefaultPasswordResetProbationDays", "PasswordResetProbationDays", "DefaultEmailChangeProbationDays", "EmailChangeProbationDays"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(14);
        internal_static_CMsgTrading_CancelTradeRequest_descriptor = descriptor18;
        internal_static_CMsgTrading_CancelTradeRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"OtherSteamid"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(15);
        internal_static_CMsgTrading_StartSession_descriptor = descriptor19;
        internal_static_CMsgTrading_StartSession_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"OtherSteamid"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(16);
        internal_static_CMsgClientGetDepotDecryptionKey_descriptor = descriptor20;
        internal_static_CMsgClientGetDepotDecryptionKey_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"DepotId", "AppId"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(17);
        internal_static_CMsgClientGetDepotDecryptionKeyResponse_descriptor = descriptor21;
        internal_static_CMsgClientGetDepotDecryptionKeyResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Eresult", "DepotId", "DepotEncryptionKey"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(18);
        internal_static_CMsgClientCheckAppBetaPassword_descriptor = descriptor22;
        internal_static_CMsgClientCheckAppBetaPassword_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"AppId", "Betapassword", "Language"});
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(19);
        internal_static_CMsgClientCheckAppBetaPasswordResponse_descriptor = descriptor23;
        internal_static_CMsgClientCheckAppBetaPasswordResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"Eresult", "Betapasswords"});
        Descriptors.Descriptor descriptor24 = descriptor23.getNestedTypes().get(0);
        internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_descriptor = descriptor24;
        internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"Betaname", "Betapassword", "Betadescription"});
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(20);
        internal_static_CMsgClientUGSGetGlobalStats_descriptor = descriptor25;
        internal_static_CMsgClientUGSGetGlobalStats_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[]{"Gameid", "HistoryDaysRequested", "TimeLastRequested", "FirstDayCached", "DaysCached"});
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(21);
        internal_static_CMsgClientUGSGetGlobalStatsResponse_descriptor = descriptor26;
        internal_static_CMsgClientUGSGetGlobalStatsResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[]{"Eresult", "Timestamp", "DayCurrent", "Days"});
        Descriptors.Descriptor descriptor27 = descriptor26.getNestedTypes().get(0);
        internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_descriptor = descriptor27;
        internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"DayId", "Stats"});
        Descriptors.Descriptor descriptor28 = descriptor27.getNestedTypes().get(0);
        internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_Stat_descriptor = descriptor28;
        internal_static_CMsgClientUGSGetGlobalStatsResponse_Day_Stat_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor28, new String[]{"StatId", "Data"});
        Descriptors.Descriptor descriptor29 = getDescriptor().getMessageTypes().get(22);
        internal_static_CMsgClientRedeemGuestPass_descriptor = descriptor29;
        internal_static_CMsgClientRedeemGuestPass_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor29, new String[]{"GuestPassId"});
        Descriptors.Descriptor descriptor30 = getDescriptor().getMessageTypes().get(23);
        internal_static_CMsgClientRedeemGuestPassResponse_descriptor = descriptor30;
        internal_static_CMsgClientRedeemGuestPassResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor30, new String[]{"Eresult", "PackageId", "MustOwnAppid"});
        Descriptors.Descriptor descriptor31 = getDescriptor().getMessageTypes().get(24);
        internal_static_CMsgClientGetClanActivityCounts_descriptor = descriptor31;
        internal_static_CMsgClientGetClanActivityCounts_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor31, new String[]{"SteamidClans"});
        Descriptors.Descriptor descriptor32 = getDescriptor().getMessageTypes().get(25);
        internal_static_CMsgClientGetClanActivityCountsResponse_descriptor = descriptor32;
        internal_static_CMsgClientGetClanActivityCountsResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor32, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor33 = getDescriptor().getMessageTypes().get(26);
        internal_static_CMsgClientOGSReportString_descriptor = descriptor33;
        internal_static_CMsgClientOGSReportString_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor33, new String[]{"Accumulated", "Sessionid", "Severity", "Formatter", "Varargs"});
        Descriptors.Descriptor descriptor34 = getDescriptor().getMessageTypes().get(27);
        internal_static_CMsgClientOGSReportBug_descriptor = descriptor34;
        internal_static_CMsgClientOGSReportBug_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor34, new String[]{"Sessionid", "Bugtext", "Screenshot"});
        Descriptors.Descriptor descriptor35 = getDescriptor().getMessageTypes().get(28);
        internal_static_CMsgClientSentLogs_descriptor = descriptor35;
        internal_static_CMsgClientSentLogs_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor35, new String[0]);
        Descriptors.Descriptor descriptor36 = getDescriptor().getMessageTypes().get(29);
        internal_static_CMsgGCClient_descriptor = descriptor36;
        internal_static_CMsgGCClient_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor36, new String[]{"Appid", "Msgtype", "Payload", "Steamid", "Gcname", "Ip", "Flags"});
        Descriptors.Descriptor descriptor37 = getDescriptor().getMessageTypes().get(30);
        internal_static_CMsgClientRequestFreeLicense_descriptor = descriptor37;
        internal_static_CMsgClientRequestFreeLicense_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor37, new String[]{"Appids"});
        Descriptors.Descriptor descriptor38 = getDescriptor().getMessageTypes().get(31);
        internal_static_CMsgClientRequestFreeLicenseResponse_descriptor = descriptor38;
        internal_static_CMsgClientRequestFreeLicenseResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor38, new String[]{"Eresult", "GrantedPackageids", "GrantedAppids"});
        Descriptors.Descriptor descriptor39 = getDescriptor().getMessageTypes().get(32);
        internal_static_CMsgDRMDownloadRequestWithCrashData_descriptor = descriptor39;
        internal_static_CMsgDRMDownloadRequestWithCrashData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor39, new String[]{"DownloadFlags", "DownloadTypesKnown", "GuidDrm", "GuidSplit", "GuidMerge", "ModuleName", "ModulePath", "CrashData"});
        Descriptors.Descriptor descriptor40 = getDescriptor().getMessageTypes().get(33);
        internal_static_CMsgDRMDownloadResponse_descriptor = descriptor40;
        internal_static_CMsgDRMDownloadResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor40, new String[]{"Eresult", "AppId", "BlobDownloadType", "MergeGuid", "DownloadFileDfsIp", "DownloadFileDfsPort", "DownloadFileUrl", "ModulePath"});
        Descriptors.Descriptor descriptor41 = getDescriptor().getMessageTypes().get(34);
        internal_static_CMsgDRMFinalResult_descriptor = descriptor41;
        internal_static_CMsgDRMFinalResult_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor41, new String[]{"EResult", "AppId", "BlobDownloadType", "ErrorDetail", "MergeGuid", "DownloadFileDfsIp", "DownloadFileDfsPort", "DownloadFileUrl"});
        Descriptors.Descriptor descriptor42 = getDescriptor().getMessageTypes().get(35);
        internal_static_CMsgClientDPCheckSpecialSurvey_descriptor = descriptor42;
        internal_static_CMsgClientDPCheckSpecialSurvey_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor42, new String[]{"SurveyId"});
        Descriptors.Descriptor descriptor43 = getDescriptor().getMessageTypes().get(36);
        internal_static_CMsgClientDPCheckSpecialSurveyResponse_descriptor = descriptor43;
        internal_static_CMsgClientDPCheckSpecialSurveyResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor43, new String[]{"EResult", "State", "Name", "CustomUrl", "IncludeSoftware", "Token"});
        Descriptors.Descriptor descriptor44 = getDescriptor().getMessageTypes().get(37);
        internal_static_CMsgClientDPSendSpecialSurveyResponse_descriptor = descriptor44;
        internal_static_CMsgClientDPSendSpecialSurveyResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor44, new String[]{"SurveyId", "Data"});
        Descriptors.Descriptor descriptor45 = getDescriptor().getMessageTypes().get(38);
        internal_static_CMsgClientDPSendSpecialSurveyResponseReply_descriptor = descriptor45;
        internal_static_CMsgClientDPSendSpecialSurveyResponseReply_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor45, new String[]{"EResult", "Token"});
        Descriptors.Descriptor descriptor46 = getDescriptor().getMessageTypes().get(39);
        internal_static_CMsgClientRequestForgottenPasswordEmail_descriptor = descriptor46;
        internal_static_CMsgClientRequestForgottenPasswordEmail_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor46, new String[]{"AccountName", "PasswordTried"});
        Descriptors.Descriptor descriptor47 = getDescriptor().getMessageTypes().get(40);
        internal_static_CMsgClientRequestForgottenPasswordEmailResponse_descriptor = descriptor47;
        internal_static_CMsgClientRequestForgottenPasswordEmailResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor47, new String[]{"EResult", "UseSecretQuestion"});
        Descriptors.Descriptor descriptor48 = getDescriptor().getMessageTypes().get(41);
        internal_static_CMsgClientItemAnnouncements_descriptor = descriptor48;
        internal_static_CMsgClientItemAnnouncements_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor48, new String[]{"CountNewItems", "UnseenItems"});
        Descriptors.Descriptor descriptor49 = descriptor48.getNestedTypes().get(0);
        internal_static_CMsgClientItemAnnouncements_UnseenItem_descriptor = descriptor49;
        internal_static_CMsgClientItemAnnouncements_UnseenItem_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor49, new String[]{"Appid", "ContextId", "AssetId", "Amount", "Rtime32Gained", "SourceAppid"});
        Descriptors.Descriptor descriptor50 = getDescriptor().getMessageTypes().get(42);
        internal_static_CMsgClientRequestItemAnnouncements_descriptor = descriptor50;
        internal_static_CMsgClientRequestItemAnnouncements_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor50, new String[0]);
        Descriptors.Descriptor descriptor51 = getDescriptor().getMessageTypes().get(43);
        internal_static_CMsgClientUserNotifications_descriptor = descriptor51;
        internal_static_CMsgClientUserNotifications_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor51, new String[]{"Notifications"});
        Descriptors.Descriptor descriptor52 = descriptor51.getNestedTypes().get(0);
        internal_static_CMsgClientUserNotifications_Notification_descriptor = descriptor52;
        internal_static_CMsgClientUserNotifications_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor52, new String[]{"UserNotificationType", "Count"});
        Descriptors.Descriptor descriptor53 = getDescriptor().getMessageTypes().get(44);
        internal_static_CMsgClientCommentNotifications_descriptor = descriptor53;
        internal_static_CMsgClientCommentNotifications_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor53, new String[]{"CountNewComments", "CountNewCommentsOwner", "CountNewCommentsSubscriptions"});
        Descriptors.Descriptor descriptor54 = getDescriptor().getMessageTypes().get(45);
        internal_static_CMsgClientRequestCommentNotifications_descriptor = descriptor54;
        internal_static_CMsgClientRequestCommentNotifications_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor54, new String[0]);
        Descriptors.Descriptor descriptor55 = getDescriptor().getMessageTypes().get(46);
        internal_static_CMsgClientOfflineMessageNotification_descriptor = descriptor55;
        internal_static_CMsgClientOfflineMessageNotification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor55, new String[]{"OfflineMessages", "FriendsWithOfflineMessages"});
        Descriptors.Descriptor descriptor56 = getDescriptor().getMessageTypes().get(47);
        internal_static_CMsgClientRequestOfflineMessageCount_descriptor = descriptor56;
        internal_static_CMsgClientRequestOfflineMessageCount_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor56, new String[0]);
        Descriptors.Descriptor descriptor57 = getDescriptor().getMessageTypes().get(48);
        internal_static_CMsgClientChatGetFriendMessageHistory_descriptor = descriptor57;
        internal_static_CMsgClientChatGetFriendMessageHistory_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor57, new String[]{"Steamid"});
        Descriptors.Descriptor descriptor58 = getDescriptor().getMessageTypes().get(49);
        internal_static_CMsgClientChatGetFriendMessageHistoryResponse_descriptor = descriptor58;
        internal_static_CMsgClientChatGetFriendMessageHistoryResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor58, new String[]{"Steamid", "Success", "Messages"});
        Descriptors.Descriptor descriptor59 = descriptor58.getNestedTypes().get(0);
        internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_descriptor = descriptor59;
        internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor59, new String[]{"Accountid", "Timestamp", "Message", "Unread"});
        Descriptors.Descriptor descriptor60 = getDescriptor().getMessageTypes().get(50);
        internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_descriptor = descriptor60;
        internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor60, new String[0]);
        Descriptors.Descriptor descriptor61 = getDescriptor().getMessageTypes().get(51);
        internal_static_CMsgClientFSGetFriendsSteamLevels_descriptor = descriptor61;
        internal_static_CMsgClientFSGetFriendsSteamLevels_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor61, new String[]{"Accountids"});
        Descriptors.Descriptor descriptor62 = getDescriptor().getMessageTypes().get(52);
        internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_descriptor = descriptor62;
        internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor62, new String[]{"Friends"});
        Descriptors.Descriptor descriptor63 = descriptor62.getNestedTypes().get(0);
        internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_Friend_descriptor = descriptor63;
        internal_static_CMsgClientFSGetFriendsSteamLevelsResponse_Friend_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor63, new String[]{"Accountid", "Level"});
        Descriptors.Descriptor descriptor64 = getDescriptor().getMessageTypes().get(53);
        internal_static_CMsgClientEmailAddrInfo_descriptor = descriptor64;
        internal_static_CMsgClientEmailAddrInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor64, new String[]{"EmailAddress", "EmailIsValidated", "EmailValidationChanged", "CredentialChangeRequiresCode", "PasswordOrSecretqaChangeRequiresCode"});
        Descriptors.Descriptor descriptor65 = getDescriptor().getMessageTypes().get(54);
        internal_static_CMsgCREItemVoteSummary_descriptor = descriptor65;
        internal_static_CMsgCREItemVoteSummary_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor65, new String[]{"PublishedFileIds"});
        Descriptors.Descriptor descriptor66 = descriptor65.getNestedTypes().get(0);
        internal_static_CMsgCREItemVoteSummary_PublishedFileId_descriptor = descriptor66;
        internal_static_CMsgCREItemVoteSummary_PublishedFileId_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor66, new String[]{"PublishedFileId"});
        Descriptors.Descriptor descriptor67 = getDescriptor().getMessageTypes().get(55);
        internal_static_CMsgCREItemVoteSummaryResponse_descriptor = descriptor67;
        internal_static_CMsgCREItemVoteSummaryResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor67, new String[]{"Eresult", "ItemVoteSummaries"});
        Descriptors.Descriptor descriptor68 = descriptor67.getNestedTypes().get(0);
        internal_static_CMsgCREItemVoteSummaryResponse_ItemVoteSummary_descriptor = descriptor68;
        internal_static_CMsgCREItemVoteSummaryResponse_ItemVoteSummary_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor68, new String[]{"PublishedFileId", "VotesFor", "VotesAgainst", "Reports", "Score"});
        Descriptors.Descriptor descriptor69 = getDescriptor().getMessageTypes().get(56);
        internal_static_CMsgCREUpdateUserPublishedItemVote_descriptor = descriptor69;
        internal_static_CMsgCREUpdateUserPublishedItemVote_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor69, new String[]{"PublishedFileId", "VoteUp"});
        Descriptors.Descriptor descriptor70 = getDescriptor().getMessageTypes().get(57);
        internal_static_CMsgCREUpdateUserPublishedItemVoteResponse_descriptor = descriptor70;
        internal_static_CMsgCREUpdateUserPublishedItemVoteResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor70, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor71 = getDescriptor().getMessageTypes().get(58);
        internal_static_CMsgCREGetUserPublishedItemVoteDetails_descriptor = descriptor71;
        internal_static_CMsgCREGetUserPublishedItemVoteDetails_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor71, new String[]{"PublishedFileIds"});
        Descriptors.Descriptor descriptor72 = descriptor71.getNestedTypes().get(0);
        internal_static_CMsgCREGetUserPublishedItemVoteDetails_PublishedFileId_descriptor = descriptor72;
        internal_static_CMsgCREGetUserPublishedItemVoteDetails_PublishedFileId_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor72, new String[]{"PublishedFileId"});
        Descriptors.Descriptor descriptor73 = getDescriptor().getMessageTypes().get(59);
        internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_descriptor = descriptor73;
        internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor73, new String[]{"Eresult", "UserItemVoteDetails"});
        Descriptors.Descriptor descriptor74 = descriptor73.getNestedTypes().get(0);
        internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_UserItemVoteDetail_descriptor = descriptor74;
        internal_static_CMsgCREGetUserPublishedItemVoteDetailsResponse_UserItemVoteDetail_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor74, new String[]{"PublishedFileId", "Vote"});
        Descriptors.Descriptor descriptor75 = getDescriptor().getMessageTypes().get(60);
        internal_static_CMsgFSGetFollowerCount_descriptor = descriptor75;
        internal_static_CMsgFSGetFollowerCount_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor75, new String[]{"SteamId"});
        Descriptors.Descriptor descriptor76 = getDescriptor().getMessageTypes().get(61);
        internal_static_CMsgFSGetFollowerCountResponse_descriptor = descriptor76;
        internal_static_CMsgFSGetFollowerCountResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor76, new String[]{"Eresult", "Count"});
        Descriptors.Descriptor descriptor77 = getDescriptor().getMessageTypes().get(62);
        internal_static_CMsgFSGetIsFollowing_descriptor = descriptor77;
        internal_static_CMsgFSGetIsFollowing_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor77, new String[]{"SteamId"});
        Descriptors.Descriptor descriptor78 = getDescriptor().getMessageTypes().get(63);
        internal_static_CMsgFSGetIsFollowingResponse_descriptor = descriptor78;
        internal_static_CMsgFSGetIsFollowingResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor78, new String[]{"Eresult", "IsFollowing"});
        Descriptors.Descriptor descriptor79 = getDescriptor().getMessageTypes().get(64);
        internal_static_CMsgFSEnumerateFollowingList_descriptor = descriptor79;
        internal_static_CMsgFSEnumerateFollowingList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor79, new String[]{"StartIndex"});
        Descriptors.Descriptor descriptor80 = getDescriptor().getMessageTypes().get(65);
        internal_static_CMsgFSEnumerateFollowingListResponse_descriptor = descriptor80;
        internal_static_CMsgFSEnumerateFollowingListResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor80, new String[]{"Eresult", "TotalResults", "SteamIds"});
        Descriptors.Descriptor descriptor81 = getDescriptor().getMessageTypes().get(66);
        internal_static_CMsgDPGetNumberOfCurrentPlayers_descriptor = descriptor81;
        internal_static_CMsgDPGetNumberOfCurrentPlayers_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor81, new String[]{"Appid"});
        Descriptors.Descriptor descriptor82 = getDescriptor().getMessageTypes().get(67);
        internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_descriptor = descriptor82;
        internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor82, new String[]{"Eresult", "PlayerCount"});
        Descriptors.Descriptor descriptor83 = getDescriptor().getMessageTypes().get(68);
        internal_static_CMsgClientFriendUserStatusPublished_descriptor = descriptor83;
        internal_static_CMsgClientFriendUserStatusPublished_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor83, new String[]{"FriendSteamid", "Appid", "StatusText"});
        Descriptors.Descriptor descriptor84 = getDescriptor().getMessageTypes().get(69);
        internal_static_CMsgClientServiceMethodLegacy_descriptor = descriptor84;
        internal_static_CMsgClientServiceMethodLegacy_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor84, new String[]{"MethodName", "SerializedMethod", "IsNotification"});
        Descriptors.Descriptor descriptor85 = getDescriptor().getMessageTypes().get(70);
        internal_static_CMsgClientServiceMethodLegacyResponse_descriptor = descriptor85;
        internal_static_CMsgClientServiceMethodLegacyResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor85, new String[]{"MethodName", "SerializedMethodResponse"});
        Descriptors.Descriptor descriptor86 = getDescriptor().getMessageTypes().get(71);
        internal_static_CMsgClientUIMode_descriptor = descriptor86;
        internal_static_CMsgClientUIMode_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor86, new String[]{"Uimode", "ChatMode"});
        Descriptors.Descriptor descriptor87 = getDescriptor().getMessageTypes().get(72);
        internal_static_CMsgClientVanityURLChangedNotification_descriptor = descriptor87;
        internal_static_CMsgClientVanityURLChangedNotification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor87, new String[]{"VanityUrl"});
        Descriptors.Descriptor descriptor88 = getDescriptor().getMessageTypes().get(73);
        internal_static_CMsgClientAuthorizeLocalDeviceRequest_descriptor = descriptor88;
        internal_static_CMsgClientAuthorizeLocalDeviceRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor88, new String[]{"DeviceDescription", "OwnerAccountId", "LocalDeviceToken"});
        Descriptors.Descriptor descriptor89 = getDescriptor().getMessageTypes().get(74);
        internal_static_CMsgClientAuthorizeLocalDevice_descriptor = descriptor89;
        internal_static_CMsgClientAuthorizeLocalDevice_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor89, new String[]{"Eresult", "OwnerAccountId", "AuthedDeviceToken"});
        Descriptors.Descriptor descriptor90 = getDescriptor().getMessageTypes().get(75);
        internal_static_CMsgClientAuthorizeLocalDeviceNotification_descriptor = descriptor90;
        internal_static_CMsgClientAuthorizeLocalDeviceNotification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor90, new String[]{"Eresult", "OwnerAccountId", "LocalDeviceToken"});
        Descriptors.Descriptor descriptor91 = getDescriptor().getMessageTypes().get(76);
        internal_static_CMsgClientDeauthorizeDeviceRequest_descriptor = descriptor91;
        internal_static_CMsgClientDeauthorizeDeviceRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor91, new String[]{"DeauthorizationAccountId", "DeauthorizationDeviceToken"});
        Descriptors.Descriptor descriptor92 = getDescriptor().getMessageTypes().get(77);
        internal_static_CMsgClientDeauthorizeDevice_descriptor = descriptor92;
        internal_static_CMsgClientDeauthorizeDevice_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor92, new String[]{"Eresult", "DeauthorizationAccountId"});
        Descriptors.Descriptor descriptor93 = getDescriptor().getMessageTypes().get(78);
        internal_static_CMsgClientUseLocalDeviceAuthorizations_descriptor = descriptor93;
        internal_static_CMsgClientUseLocalDeviceAuthorizations_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor93, new String[]{"AuthorizationAccountId", "DeviceTokens"});
        Descriptors.Descriptor descriptor94 = descriptor93.getNestedTypes().get(0);
        internal_static_CMsgClientUseLocalDeviceAuthorizations_DeviceToken_descriptor = descriptor94;
        internal_static_CMsgClientUseLocalDeviceAuthorizations_DeviceToken_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor94, new String[]{"OwnerAccountId", "TokenId"});
        Descriptors.Descriptor descriptor95 = getDescriptor().getMessageTypes().get(79);
        internal_static_CMsgClientGetAuthorizedDevices_descriptor = descriptor95;
        internal_static_CMsgClientGetAuthorizedDevices_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor95, new String[0]);
        Descriptors.Descriptor descriptor96 = getDescriptor().getMessageTypes().get(80);
        internal_static_CMsgClientGetAuthorizedDevicesResponse_descriptor = descriptor96;
        internal_static_CMsgClientGetAuthorizedDevicesResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor96, new String[]{"Eresult", "AuthorizedDevice"});
        Descriptors.Descriptor descriptor97 = descriptor96.getNestedTypes().get(0);
        internal_static_CMsgClientGetAuthorizedDevicesResponse_AuthorizedDevice_descriptor = descriptor97;
        internal_static_CMsgClientGetAuthorizedDevicesResponse_AuthorizedDevice_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor97, new String[]{"AuthDeviceToken", "DeviceName", "LastAccessTime", "BorrowerId", "IsPending", "AppPlayed"});
        Descriptors.Descriptor descriptor98 = getDescriptor().getMessageTypes().get(81);
        internal_static_CMsgClientSharedLibraryLockStatus_descriptor = descriptor98;
        internal_static_CMsgClientSharedLibraryLockStatus_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor98, new String[]{"LockedLibrary", "OwnLibraryLockedBy"});
        Descriptors.Descriptor descriptor99 = descriptor98.getNestedTypes().get(0);
        internal_static_CMsgClientSharedLibraryLockStatus_LockedLibrary_descriptor = descriptor99;
        internal_static_CMsgClientSharedLibraryLockStatus_LockedLibrary_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor99, new String[]{"OwnerId", "LockedBy"});
        Descriptors.Descriptor descriptor100 = getDescriptor().getMessageTypes().get(82);
        internal_static_CMsgClientSharedLibraryStopPlaying_descriptor = descriptor100;
        internal_static_CMsgClientSharedLibraryStopPlaying_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor100, new String[]{"SecondsLeft", "StopApps"});
        Descriptors.Descriptor descriptor101 = descriptor100.getNestedTypes().get(0);
        internal_static_CMsgClientSharedLibraryStopPlaying_StopApp_descriptor = descriptor101;
        internal_static_CMsgClientSharedLibraryStopPlaying_StopApp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor101, new String[]{"AppId", "OwnerId"});
        Descriptors.Descriptor descriptor102 = getDescriptor().getMessageTypes().get(83);
        internal_static_CMsgClientServiceCall_descriptor = descriptor102;
        internal_static_CMsgClientServiceCall_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor102, new String[]{"SysidRouting", "CallHandle", "ModuleCrc", "ModuleHash", "FunctionId", "CubOutputMax", "Flags", "Callparameter", "PingOnly", "MaxOutstandingCalls", "AppId"});
        Descriptors.Descriptor descriptor103 = getDescriptor().getMessageTypes().get(84);
        internal_static_CMsgClientServiceModule_descriptor = descriptor103;
        internal_static_CMsgClientServiceModule_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor103, new String[]{"ModuleCrc", "ModuleHash", "ModuleContent"});
        Descriptors.Descriptor descriptor104 = getDescriptor().getMessageTypes().get(85);
        internal_static_CMsgClientServiceCallResponse_descriptor = descriptor104;
        internal_static_CMsgClientServiceCallResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor104, new String[]{"SysidRouting", "CallHandle", "ModuleCrc", "ModuleHash", "Ecallresult", "ResultContent", "OsVersionInfo", "SystemInfo", "LoadAddress", "ExceptionRecord", "PortableOsVersionInfo", "PortableSystemInfo", "WasConverted", "InternalResult", "CurrentCount", "LastCallHandle", "LastCallModuleCrc", "LastCallSysidRouting", "LastEcallresult", "LastCallissueDelta", "LastCallcompleteDelta"});
        Descriptors.Descriptor descriptor105 = getDescriptor().getMessageTypes().get(86);
        internal_static_CMsgAMUnlockH264_descriptor = descriptor105;
        internal_static_CMsgAMUnlockH264_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor105, new String[]{"Appid", "Platform", "Reason"});
        Descriptors.Descriptor descriptor106 = getDescriptor().getMessageTypes().get(87);
        internal_static_CMsgAMUnlockH264Response_descriptor = descriptor106;
        internal_static_CMsgAMUnlockH264Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor106, new String[]{"Eresult", "EncryptionKey"});
        Descriptors.Descriptor descriptor107 = getDescriptor().getMessageTypes().get(88);
        internal_static_CMsgClientPlayingSessionState_descriptor = descriptor107;
        internal_static_CMsgClientPlayingSessionState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor107, new String[]{"PlayingBlocked", "PlayingApp"});
        Descriptors.Descriptor descriptor108 = getDescriptor().getMessageTypes().get(89);
        internal_static_CMsgClientKickPlayingSession_descriptor = descriptor108;
        internal_static_CMsgClientKickPlayingSession_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor108, new String[]{"OnlyStopGame"});
        Descriptors.Descriptor descriptor109 = getDescriptor().getMessageTypes().get(90);
        internal_static_CMsgClientVoiceCallPreAuthorize_descriptor = descriptor109;
        internal_static_CMsgClientVoiceCallPreAuthorize_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor109, new String[]{"CallerSteamid", "ReceiverSteamid", "CallerId", "Hangup"});
        Descriptors.Descriptor descriptor110 = getDescriptor().getMessageTypes().get(91);
        internal_static_CMsgClientVoiceCallPreAuthorizeResponse_descriptor = descriptor110;
        internal_static_CMsgClientVoiceCallPreAuthorizeResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor110, new String[]{"CallerSteamid", "ReceiverSteamid", "Eresult", "CallerId"});
        Descriptors.Descriptor descriptor111 = getDescriptor().getMessageTypes().get(92);
        internal_static_CMsgBadgeCraftedNotification_descriptor = descriptor111;
        internal_static_CMsgBadgeCraftedNotification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor111, new String[]{"Appid", "BadgeLevel"});
        Descriptors.Descriptor descriptor112 = getDescriptor().getMessageTypes().get(93);
        internal_static_CMsgClientStartPeerContentServer_descriptor = descriptor112;
        internal_static_CMsgClientStartPeerContentServer_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor112, new String[]{"Steamid", "ClientRemoteId", "AppId", "CurrentBuildId"});
        Descriptors.Descriptor descriptor113 = getDescriptor().getMessageTypes().get(94);
        internal_static_CMsgClientStartPeerContentServerResponse_descriptor = descriptor113;
        internal_static_CMsgClientStartPeerContentServerResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor113, new String[]{"Result", "ServerPort", "InstalledDepots", "AccessToken"});
        Descriptors.Descriptor descriptor114 = getDescriptor().getMessageTypes().get(95);
        internal_static_CMsgClientGetPeerContentInfo_descriptor = descriptor114;
        internal_static_CMsgClientGetPeerContentInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor114, new String[]{"Steamid", "ClientRemoteId", "OwnedGamesVisible"});
        Descriptors.Descriptor descriptor115 = getDescriptor().getMessageTypes().get(96);
        internal_static_CMsgClientGetPeerContentInfoResponse_descriptor = descriptor115;
        internal_static_CMsgClientGetPeerContentInfoResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor115, new String[]{"Result", "Apps"});
        Descriptors.Descriptor descriptor116 = getDescriptor().getMessageTypes().get(97);
        internal_static_CMsgClientPendingGameLaunch_descriptor = descriptor116;
        internal_static_CMsgClientPendingGameLaunch_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor116, new String[]{"AppId"});
        Descriptors.Descriptor descriptor117 = getDescriptor().getMessageTypes().get(98);
        internal_static_CMsgClientPendingGameLaunchResponse_descriptor = descriptor117;
        internal_static_CMsgClientPendingGameLaunchResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor117, new String[]{"Eresult", "AppId", "Envkey"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientPurchaseResponse extends GeneratedMessage implements CMsgClientPurchaseResponseOrBuilder {
        private static final CMsgClientPurchaseResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientPurchaseResponse> PARSER;
        public static final int PURCHASE_RECEIPT_INFO_FIELD_NUMBER = 3;
        public static final int PURCHASE_RESULT_DETAILS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private ByteString purchaseReceiptInfo_;
        private int purchaseResultDetails_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPurchaseResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPurchaseResponse();
            PARSER = new AbstractParser<CMsgClientPurchaseResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPurchaseResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPurchaseResponse.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientPurchaseResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.purchaseResultDetails_ = 0;
            this.purchaseReceiptInfo_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPurchaseResponse() {
            this.eresult_ = 2;
            this.purchaseResultDetails_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.purchaseReceiptInfo_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientPurchaseResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientPurchaseResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPurchaseResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
        public boolean hasPurchaseResultDetails() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
        public int getPurchaseResultDetails() {
            return this.purchaseResultDetails_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
        public boolean hasPurchaseReceiptInfo() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
        public ByteString getPurchaseReceiptInfo() {
            return this.purchaseReceiptInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.purchaseResultDetails_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(3, this.purchaseReceiptInfo_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.eresult_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.purchaseResultDetails_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBytesSize(3, this.purchaseReceiptInfo_);
            }
            int serializedSize = iComputeInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientPurchaseResponse)) {
                return super.equals(obj);
            }
            CMsgClientPurchaseResponse cMsgClientPurchaseResponse = (CMsgClientPurchaseResponse) obj;
            if (hasEresult() != cMsgClientPurchaseResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientPurchaseResponse.getEresult()) || hasPurchaseResultDetails() != cMsgClientPurchaseResponse.hasPurchaseResultDetails()) {
                return false;
            }
            if ((!hasPurchaseResultDetails() || getPurchaseResultDetails() == cMsgClientPurchaseResponse.getPurchaseResultDetails()) && hasPurchaseReceiptInfo() == cMsgClientPurchaseResponse.hasPurchaseReceiptInfo()) {
                return (!hasPurchaseReceiptInfo() || getPurchaseReceiptInfo().equals(cMsgClientPurchaseResponse.getPurchaseReceiptInfo())) && getUnknownFields().equals(cMsgClientPurchaseResponse.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEresult();
            }
            if (hasPurchaseResultDetails()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPurchaseResultDetails();
            }
            if (hasPurchaseReceiptInfo()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPurchaseReceiptInfo().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPurchaseResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPurchaseResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPurchaseResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPurchaseResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPurchaseResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPurchaseResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPurchaseResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPurchaseResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPurchaseResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPurchaseResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPurchaseResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPurchaseResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPurchaseResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPurchaseResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPurchaseResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPurchaseResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPurchaseResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPurchaseResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPurchaseResponse cMsgClientPurchaseResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPurchaseResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPurchaseResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private ByteString purchaseReceiptInfo_;
            private int purchaseResultDetails_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientPurchaseResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientPurchaseResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPurchaseResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.purchaseReceiptInfo_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.purchaseReceiptInfo_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.purchaseResultDetails_ = 0;
                this.purchaseReceiptInfo_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientPurchaseResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPurchaseResponse getDefaultInstanceForType() {
                return CMsgClientPurchaseResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPurchaseResponse build() {
                CMsgClientPurchaseResponse cMsgClientPurchaseResponseBuildPartial = buildPartial();
                if (cMsgClientPurchaseResponseBuildPartial.isInitialized()) {
                    return cMsgClientPurchaseResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPurchaseResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPurchaseResponse buildPartial() {
                CMsgClientPurchaseResponse cMsgClientPurchaseResponse = new CMsgClientPurchaseResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPurchaseResponse);
                }
                onBuilt();
                return cMsgClientPurchaseResponse;
            }

            private void buildPartial0(CMsgClientPurchaseResponse cMsgClientPurchaseResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientPurchaseResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientPurchaseResponse.purchaseResultDetails_ = this.purchaseResultDetails_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientPurchaseResponse.purchaseReceiptInfo_ = this.purchaseReceiptInfo_;
                    i |= 4;
                }
                cMsgClientPurchaseResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPurchaseResponse) {
                    return mergeFrom((CMsgClientPurchaseResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPurchaseResponse cMsgClientPurchaseResponse) {
                if (cMsgClientPurchaseResponse == CMsgClientPurchaseResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPurchaseResponse.hasEresult()) {
                    setEresult(cMsgClientPurchaseResponse.getEresult());
                }
                if (cMsgClientPurchaseResponse.hasPurchaseResultDetails()) {
                    setPurchaseResultDetails(cMsgClientPurchaseResponse.getPurchaseResultDetails());
                }
                if (cMsgClientPurchaseResponse.hasPurchaseReceiptInfo()) {
                    setPurchaseReceiptInfo(cMsgClientPurchaseResponse.getPurchaseReceiptInfo());
                }
                mergeUnknownFields(cMsgClientPurchaseResponse.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.purchaseResultDetails_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.purchaseReceiptInfo_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -2;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
            public boolean hasPurchaseResultDetails() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
            public int getPurchaseResultDetails() {
                return this.purchaseResultDetails_;
            }

            public Builder setPurchaseResultDetails(int i) {
                this.purchaseResultDetails_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPurchaseResultDetails() {
                this.bitField0_ &= -3;
                this.purchaseResultDetails_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
            public boolean hasPurchaseReceiptInfo() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientPurchaseResponseOrBuilder
            public ByteString getPurchaseReceiptInfo() {
                return this.purchaseReceiptInfo_;
            }

            public Builder setPurchaseReceiptInfo(ByteString byteString) {
                byteString.getClass();
                this.purchaseReceiptInfo_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPurchaseReceiptInfo() {
                this.bitField0_ &= -5;
                this.purchaseReceiptInfo_ = CMsgClientPurchaseResponse.getDefaultInstance().getPurchaseReceiptInfo();
                onChanged();
                return this;
            }
        }

        public static CMsgClientPurchaseResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPurchaseResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPurchaseResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPurchaseResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientGetDepotDecryptionKey extends GeneratedMessage implements CMsgClientGetDepotDecryptionKeyOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 2;
        private static final CMsgClientGetDepotDecryptionKey DEFAULT_INSTANCE;
        public static final int DEPOT_ID_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientGetDepotDecryptionKey> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int depotId_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientGetDepotDecryptionKey.class.getName());
            DEFAULT_INSTANCE = new CMsgClientGetDepotDecryptionKey();
            PARSER = new AbstractParser<CMsgClientGetDepotDecryptionKey>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKey.1
                @Override // com.google.protobuf.Parser
                public CMsgClientGetDepotDecryptionKey parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientGetDepotDecryptionKey.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientGetDepotDecryptionKey(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.depotId_ = 0;
            this.appId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientGetDepotDecryptionKey() {
            this.depotId_ = 0;
            this.appId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKey_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKey_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetDepotDecryptionKey.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
        public boolean hasDepotId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
        public int getDepotId() {
            return this.depotId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.depotId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.appId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.depotId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.appId_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientGetDepotDecryptionKey)) {
                return super.equals(obj);
            }
            CMsgClientGetDepotDecryptionKey cMsgClientGetDepotDecryptionKey = (CMsgClientGetDepotDecryptionKey) obj;
            if (hasDepotId() != cMsgClientGetDepotDecryptionKey.hasDepotId()) {
                return false;
            }
            if ((!hasDepotId() || getDepotId() == cMsgClientGetDepotDecryptionKey.getDepotId()) && hasAppId() == cMsgClientGetDepotDecryptionKey.hasAppId()) {
                return (!hasAppId() || getAppId() == cMsgClientGetDepotDecryptionKey.getAppId()) && getUnknownFields().equals(cMsgClientGetDepotDecryptionKey.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasDepotId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getDepotId();
            }
            if (hasAppId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppId();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetDepotDecryptionKey) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetDepotDecryptionKey) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKey parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetDepotDecryptionKey) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetDepotDecryptionKey parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetDepotDecryptionKey) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientGetDepotDecryptionKey) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientGetDepotDecryptionKey parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetDepotDecryptionKey) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientGetDepotDecryptionKey cMsgClientGetDepotDecryptionKey) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientGetDepotDecryptionKey);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientGetDepotDecryptionKeyOrBuilder {
            private int appId_;
            private int bitField0_;
            private int depotId_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKey_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKey_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetDepotDecryptionKey.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.depotId_ = 0;
                this.appId_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKey_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientGetDepotDecryptionKey getDefaultInstanceForType() {
                return CMsgClientGetDepotDecryptionKey.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetDepotDecryptionKey build() {
                CMsgClientGetDepotDecryptionKey cMsgClientGetDepotDecryptionKeyBuildPartial = buildPartial();
                if (cMsgClientGetDepotDecryptionKeyBuildPartial.isInitialized()) {
                    return cMsgClientGetDepotDecryptionKeyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientGetDepotDecryptionKeyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetDepotDecryptionKey buildPartial() {
                CMsgClientGetDepotDecryptionKey cMsgClientGetDepotDecryptionKey = new CMsgClientGetDepotDecryptionKey(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientGetDepotDecryptionKey);
                }
                onBuilt();
                return cMsgClientGetDepotDecryptionKey;
            }

            private void buildPartial0(CMsgClientGetDepotDecryptionKey cMsgClientGetDepotDecryptionKey) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientGetDepotDecryptionKey.depotId_ = this.depotId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientGetDepotDecryptionKey.appId_ = this.appId_;
                    i |= 2;
                }
                cMsgClientGetDepotDecryptionKey.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientGetDepotDecryptionKey) {
                    return mergeFrom((CMsgClientGetDepotDecryptionKey) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientGetDepotDecryptionKey cMsgClientGetDepotDecryptionKey) {
                if (cMsgClientGetDepotDecryptionKey == CMsgClientGetDepotDecryptionKey.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientGetDepotDecryptionKey.hasDepotId()) {
                    setDepotId(cMsgClientGetDepotDecryptionKey.getDepotId());
                }
                if (cMsgClientGetDepotDecryptionKey.hasAppId()) {
                    setAppId(cMsgClientGetDepotDecryptionKey.getAppId());
                }
                mergeUnknownFields(cMsgClientGetDepotDecryptionKey.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.depotId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.appId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
            public boolean hasDepotId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
            public int getDepotId() {
                return this.depotId_;
            }

            public Builder setDepotId(int i) {
                this.depotId_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearDepotId() {
                this.bitField0_ &= -2;
                this.depotId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyOrBuilder
            public int getAppId() {
                return this.appId_;
            }

            public Builder setAppId(int i) {
                this.appId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -3;
                this.appId_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientGetDepotDecryptionKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientGetDepotDecryptionKey> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientGetDepotDecryptionKey> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientGetDepotDecryptionKey getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientGetDepotDecryptionKeyResponse extends GeneratedMessage implements CMsgClientGetDepotDecryptionKeyResponseOrBuilder {
        private static final CMsgClientGetDepotDecryptionKeyResponse DEFAULT_INSTANCE;
        public static final int DEPOT_ENCRYPTION_KEY_FIELD_NUMBER = 3;
        public static final int DEPOT_ID_FIELD_NUMBER = 2;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientGetDepotDecryptionKeyResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private ByteString depotEncryptionKey_;
        private int depotId_;
        private int eresult_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientGetDepotDecryptionKeyResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientGetDepotDecryptionKeyResponse();
            PARSER = new AbstractParser<CMsgClientGetDepotDecryptionKeyResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientGetDepotDecryptionKeyResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientGetDepotDecryptionKeyResponse.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientGetDepotDecryptionKeyResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.depotId_ = 0;
            this.depotEncryptionKey_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientGetDepotDecryptionKeyResponse() {
            this.eresult_ = 2;
            this.depotId_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.depotEncryptionKey_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKeyResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKeyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetDepotDecryptionKeyResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
        public boolean hasDepotId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
        public int getDepotId() {
            return this.depotId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
        public boolean hasDepotEncryptionKey() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
        public ByteString getDepotEncryptionKey() {
            return this.depotEncryptionKey_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.depotId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(3, this.depotEncryptionKey_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.eresult_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(2, this.depotId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBytesSize(3, this.depotEncryptionKey_);
            }
            int serializedSize = iComputeInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientGetDepotDecryptionKeyResponse)) {
                return super.equals(obj);
            }
            CMsgClientGetDepotDecryptionKeyResponse cMsgClientGetDepotDecryptionKeyResponse = (CMsgClientGetDepotDecryptionKeyResponse) obj;
            if (hasEresult() != cMsgClientGetDepotDecryptionKeyResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientGetDepotDecryptionKeyResponse.getEresult()) || hasDepotId() != cMsgClientGetDepotDecryptionKeyResponse.hasDepotId()) {
                return false;
            }
            if ((!hasDepotId() || getDepotId() == cMsgClientGetDepotDecryptionKeyResponse.getDepotId()) && hasDepotEncryptionKey() == cMsgClientGetDepotDecryptionKeyResponse.hasDepotEncryptionKey()) {
                return (!hasDepotEncryptionKey() || getDepotEncryptionKey().equals(cMsgClientGetDepotDecryptionKeyResponse.getDepotEncryptionKey())) && getUnknownFields().equals(cMsgClientGetDepotDecryptionKeyResponse.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEresult();
            }
            if (hasDepotId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDepotId();
            }
            if (hasDepotEncryptionKey()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDepotEncryptionKey().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetDepotDecryptionKeyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetDepotDecryptionKeyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientGetDepotDecryptionKeyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetDepotDecryptionKeyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientGetDepotDecryptionKeyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientGetDepotDecryptionKeyResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientGetDepotDecryptionKeyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientGetDepotDecryptionKeyResponse cMsgClientGetDepotDecryptionKeyResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientGetDepotDecryptionKeyResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientGetDepotDecryptionKeyResponseOrBuilder {
            private int bitField0_;
            private ByteString depotEncryptionKey_;
            private int depotId_;
            private int eresult_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKeyResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKeyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientGetDepotDecryptionKeyResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.depotEncryptionKey_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.depotEncryptionKey_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.depotId_ = 0;
                this.depotEncryptionKey_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientGetDepotDecryptionKeyResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientGetDepotDecryptionKeyResponse getDefaultInstanceForType() {
                return CMsgClientGetDepotDecryptionKeyResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetDepotDecryptionKeyResponse build() {
                CMsgClientGetDepotDecryptionKeyResponse cMsgClientGetDepotDecryptionKeyResponseBuildPartial = buildPartial();
                if (cMsgClientGetDepotDecryptionKeyResponseBuildPartial.isInitialized()) {
                    return cMsgClientGetDepotDecryptionKeyResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientGetDepotDecryptionKeyResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientGetDepotDecryptionKeyResponse buildPartial() {
                CMsgClientGetDepotDecryptionKeyResponse cMsgClientGetDepotDecryptionKeyResponse = new CMsgClientGetDepotDecryptionKeyResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientGetDepotDecryptionKeyResponse);
                }
                onBuilt();
                return cMsgClientGetDepotDecryptionKeyResponse;
            }

            private void buildPartial0(CMsgClientGetDepotDecryptionKeyResponse cMsgClientGetDepotDecryptionKeyResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientGetDepotDecryptionKeyResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientGetDepotDecryptionKeyResponse.depotId_ = this.depotId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientGetDepotDecryptionKeyResponse.depotEncryptionKey_ = this.depotEncryptionKey_;
                    i |= 4;
                }
                cMsgClientGetDepotDecryptionKeyResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientGetDepotDecryptionKeyResponse) {
                    return mergeFrom((CMsgClientGetDepotDecryptionKeyResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientGetDepotDecryptionKeyResponse cMsgClientGetDepotDecryptionKeyResponse) {
                if (cMsgClientGetDepotDecryptionKeyResponse == CMsgClientGetDepotDecryptionKeyResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientGetDepotDecryptionKeyResponse.hasEresult()) {
                    setEresult(cMsgClientGetDepotDecryptionKeyResponse.getEresult());
                }
                if (cMsgClientGetDepotDecryptionKeyResponse.hasDepotId()) {
                    setDepotId(cMsgClientGetDepotDecryptionKeyResponse.getDepotId());
                }
                if (cMsgClientGetDepotDecryptionKeyResponse.hasDepotEncryptionKey()) {
                    setDepotEncryptionKey(cMsgClientGetDepotDecryptionKeyResponse.getDepotEncryptionKey());
                }
                mergeUnknownFields(cMsgClientGetDepotDecryptionKeyResponse.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.depotId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.depotEncryptionKey_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -2;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
            public boolean hasDepotId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
            public int getDepotId() {
                return this.depotId_;
            }

            public Builder setDepotId(int i) {
                this.depotId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDepotId() {
                this.bitField0_ &= -3;
                this.depotId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
            public boolean hasDepotEncryptionKey() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponseOrBuilder
            public ByteString getDepotEncryptionKey() {
                return this.depotEncryptionKey_;
            }

            public Builder setDepotEncryptionKey(ByteString byteString) {
                byteString.getClass();
                this.depotEncryptionKey_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDepotEncryptionKey() {
                this.bitField0_ &= -5;
                this.depotEncryptionKey_ = CMsgClientGetDepotDecryptionKeyResponse.getDefaultInstance().getDepotEncryptionKey();
                onChanged();
                return this;
            }
        }

        public static CMsgClientGetDepotDecryptionKeyResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientGetDepotDecryptionKeyResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientGetDepotDecryptionKeyResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientGetDepotDecryptionKeyResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientCheckAppBetaPassword extends GeneratedMessage implements CMsgClientCheckAppBetaPasswordOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        public static final int BETAPASSWORD_FIELD_NUMBER = 2;
        private static final CMsgClientCheckAppBetaPassword DEFAULT_INSTANCE;
        public static final int LANGUAGE_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientCheckAppBetaPassword> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private volatile Object betapassword_;
        private int bitField0_;
        private int language_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientCheckAppBetaPassword.class.getName());
            DEFAULT_INSTANCE = new CMsgClientCheckAppBetaPassword();
            PARSER = new AbstractParser<CMsgClientCheckAppBetaPassword>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPassword.1
                @Override // com.google.protobuf.Parser
                public CMsgClientCheckAppBetaPassword parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientCheckAppBetaPassword.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientCheckAppBetaPassword(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.betapassword_ = "";
            this.language_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientCheckAppBetaPassword() {
            this.appId_ = 0;
            this.betapassword_ = "";
            this.language_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.betapassword_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPassword_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPassword_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientCheckAppBetaPassword.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
        public boolean hasBetapassword() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
        public String getBetapassword() {
            Object obj = this.betapassword_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.betapassword_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
        public ByteString getBetapasswordBytes() {
            Object obj = this.betapassword_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.betapassword_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
        public int getLanguage() {
            return this.language_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.betapassword_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.language_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.betapassword_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.language_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientCheckAppBetaPassword)) {
                return super.equals(obj);
            }
            CMsgClientCheckAppBetaPassword cMsgClientCheckAppBetaPassword = (CMsgClientCheckAppBetaPassword) obj;
            if (hasAppId() != cMsgClientCheckAppBetaPassword.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientCheckAppBetaPassword.getAppId()) || hasBetapassword() != cMsgClientCheckAppBetaPassword.hasBetapassword()) {
                return false;
            }
            if ((!hasBetapassword() || getBetapassword().equals(cMsgClientCheckAppBetaPassword.getBetapassword())) && hasLanguage() == cMsgClientCheckAppBetaPassword.hasLanguage()) {
                return (!hasLanguage() || getLanguage() == cMsgClientCheckAppBetaPassword.getLanguage()) && getUnknownFields().equals(cMsgClientCheckAppBetaPassword.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppId();
            }
            if (hasBetapassword()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getBetapassword().hashCode();
            }
            if (hasLanguage()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getLanguage();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientCheckAppBetaPassword) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCheckAppBetaPassword) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPassword parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientCheckAppBetaPassword) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientCheckAppBetaPassword parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCheckAppBetaPassword) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientCheckAppBetaPassword) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientCheckAppBetaPassword parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCheckAppBetaPassword) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientCheckAppBetaPassword cMsgClientCheckAppBetaPassword) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientCheckAppBetaPassword);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientCheckAppBetaPasswordOrBuilder {
            private int appId_;
            private Object betapassword_;
            private int bitField0_;
            private int language_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPassword_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPassword_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientCheckAppBetaPassword.class, Builder.class);
            }

            private Builder() {
                this.betapassword_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.betapassword_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.betapassword_ = "";
                this.language_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPassword_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientCheckAppBetaPassword getDefaultInstanceForType() {
                return CMsgClientCheckAppBetaPassword.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientCheckAppBetaPassword build() {
                CMsgClientCheckAppBetaPassword cMsgClientCheckAppBetaPasswordBuildPartial = buildPartial();
                if (cMsgClientCheckAppBetaPasswordBuildPartial.isInitialized()) {
                    return cMsgClientCheckAppBetaPasswordBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientCheckAppBetaPasswordBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientCheckAppBetaPassword buildPartial() {
                CMsgClientCheckAppBetaPassword cMsgClientCheckAppBetaPassword = new CMsgClientCheckAppBetaPassword(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientCheckAppBetaPassword);
                }
                onBuilt();
                return cMsgClientCheckAppBetaPassword;
            }

            private void buildPartial0(CMsgClientCheckAppBetaPassword cMsgClientCheckAppBetaPassword) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientCheckAppBetaPassword.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientCheckAppBetaPassword.betapassword_ = this.betapassword_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientCheckAppBetaPassword.language_ = this.language_;
                    i |= 4;
                }
                cMsgClientCheckAppBetaPassword.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientCheckAppBetaPassword) {
                    return mergeFrom((CMsgClientCheckAppBetaPassword) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientCheckAppBetaPassword cMsgClientCheckAppBetaPassword) {
                if (cMsgClientCheckAppBetaPassword == CMsgClientCheckAppBetaPassword.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientCheckAppBetaPassword.hasAppId()) {
                    setAppId(cMsgClientCheckAppBetaPassword.getAppId());
                }
                if (cMsgClientCheckAppBetaPassword.hasBetapassword()) {
                    this.betapassword_ = cMsgClientCheckAppBetaPassword.betapassword_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cMsgClientCheckAppBetaPassword.hasLanguage()) {
                    setLanguage(cMsgClientCheckAppBetaPassword.getLanguage());
                }
                mergeUnknownFields(cMsgClientCheckAppBetaPassword.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.betapassword_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.language_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
            public int getAppId() {
                return this.appId_;
            }

            public Builder setAppId(int i) {
                this.appId_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -2;
                this.appId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
            public boolean hasBetapassword() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
            public String getBetapassword() {
                Object obj = this.betapassword_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.betapassword_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
            public ByteString getBetapasswordBytes() {
                Object obj = this.betapassword_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.betapassword_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setBetapassword(String str) {
                str.getClass();
                this.betapassword_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearBetapassword() {
                this.betapassword_ = CMsgClientCheckAppBetaPassword.getDefaultInstance().getBetapassword();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setBetapasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.betapassword_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordOrBuilder
            public int getLanguage() {
                return this.language_;
            }

            public Builder setLanguage(int i) {
                this.language_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.bitField0_ &= -5;
                this.language_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientCheckAppBetaPassword getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientCheckAppBetaPassword> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientCheckAppBetaPassword> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientCheckAppBetaPassword getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientCheckAppBetaPasswordResponse extends GeneratedMessage implements CMsgClientCheckAppBetaPasswordResponseOrBuilder {
        public static final int BETAPASSWORDS_FIELD_NUMBER = 4;
        private static final CMsgClientCheckAppBetaPasswordResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientCheckAppBetaPasswordResponse> PARSER;
        private static final long serialVersionUID = 0;
        private List<BetaPassword> betapasswords_;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;

        public interface BetaPasswordOrBuilder extends MessageOrBuilder {
            String getBetadescription();

            ByteString getBetadescriptionBytes();

            String getBetaname();

            ByteString getBetanameBytes();

            String getBetapassword();

            ByteString getBetapasswordBytes();

            boolean hasBetadescription();

            boolean hasBetaname();

            boolean hasBetapassword();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientCheckAppBetaPasswordResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientCheckAppBetaPasswordResponse();
            PARSER = new AbstractParser<CMsgClientCheckAppBetaPasswordResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientCheckAppBetaPasswordResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientCheckAppBetaPasswordResponse.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientCheckAppBetaPasswordResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientCheckAppBetaPasswordResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.betapasswords_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientCheckAppBetaPasswordResponse.class, Builder.class);
        }

        public static final class BetaPassword extends GeneratedMessage implements BetaPasswordOrBuilder {
            public static final int BETADESCRIPTION_FIELD_NUMBER = 3;
            public static final int BETANAME_FIELD_NUMBER = 1;
            public static final int BETAPASSWORD_FIELD_NUMBER = 2;
            private static final BetaPassword DEFAULT_INSTANCE;
            private static final Parser<BetaPassword> PARSER;
            private static final long serialVersionUID = 0;
            private volatile Object betadescription_;
            private volatile Object betaname_;
            private volatile Object betapassword_;
            private int bitField0_;
            private byte memoizedIsInitialized;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", BetaPassword.class.getName());
                DEFAULT_INSTANCE = new BetaPassword();
                PARSER = new AbstractParser<BetaPassword>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPassword.1
                    @Override // com.google.protobuf.Parser
                    public BetaPassword parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = BetaPassword.newBuilder();
                        try {
                            builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                            return builderNewBuilder.buildPartial();
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (UninitializedMessageException e2) {
                            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (IOException e3) {
                            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                        }
                    }
                };
            }

            private BetaPassword(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.betaname_ = "";
                this.betapassword_ = "";
                this.betadescription_ = "";
                this.memoizedIsInitialized = (byte) -1;
            }

            private BetaPassword() {
                this.betaname_ = "";
                this.betapassword_ = "";
                this.betadescription_ = "";
                this.memoizedIsInitialized = (byte) -1;
                this.betaname_ = "";
                this.betapassword_ = "";
                this.betadescription_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_fieldAccessorTable.ensureFieldAccessorsInitialized(BetaPassword.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public boolean hasBetaname() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public String getBetaname() {
                Object obj = this.betaname_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.betaname_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public ByteString getBetanameBytes() {
                Object obj = this.betaname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.betaname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public boolean hasBetapassword() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public String getBetapassword() {
                Object obj = this.betapassword_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.betapassword_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public ByteString getBetapasswordBytes() {
                Object obj = this.betapassword_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.betapassword_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public boolean hasBetadescription() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public String getBetadescription() {
                Object obj = this.betadescription_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.betadescription_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
            public ByteString getBetadescriptionBytes() {
                Object obj = this.betadescription_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.betadescription_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 1, this.betaname_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 2, this.betapassword_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 3, this.betadescription_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.betaname_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeStringSize += GeneratedMessage.computeStringSize(2, this.betapassword_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeStringSize += GeneratedMessage.computeStringSize(3, this.betadescription_);
                }
                int serializedSize = iComputeStringSize + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof BetaPassword)) {
                    return super.equals(obj);
                }
                BetaPassword betaPassword = (BetaPassword) obj;
                if (hasBetaname() != betaPassword.hasBetaname()) {
                    return false;
                }
                if ((hasBetaname() && !getBetaname().equals(betaPassword.getBetaname())) || hasBetapassword() != betaPassword.hasBetapassword()) {
                    return false;
                }
                if ((!hasBetapassword() || getBetapassword().equals(betaPassword.getBetapassword())) && hasBetadescription() == betaPassword.hasBetadescription()) {
                    return (!hasBetadescription() || getBetadescription().equals(betaPassword.getBetadescription())) && getUnknownFields().equals(betaPassword.getUnknownFields());
                }
                return false;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasBetaname()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getBetaname().hashCode();
                }
                if (hasBetapassword()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getBetapassword().hashCode();
                }
                if (hasBetadescription()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getBetadescription().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static BetaPassword parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static BetaPassword parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static BetaPassword parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static BetaPassword parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static BetaPassword parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static BetaPassword parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static BetaPassword parseFrom(InputStream inputStream) throws IOException {
                return (BetaPassword) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static BetaPassword parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (BetaPassword) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static BetaPassword parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (BetaPassword) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static BetaPassword parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (BetaPassword) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static BetaPassword parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (BetaPassword) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static BetaPassword parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (BetaPassword) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(BetaPassword betaPassword) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(betaPassword);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements BetaPasswordOrBuilder {
                private Object betadescription_;
                private Object betaname_;
                private Object betapassword_;
                private int bitField0_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_fieldAccessorTable.ensureFieldAccessorsInitialized(BetaPassword.class, Builder.class);
                }

                private Builder() {
                    this.betaname_ = "";
                    this.betapassword_ = "";
                    this.betadescription_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.betaname_ = "";
                    this.betapassword_ = "";
                    this.betadescription_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.betaname_ = "";
                    this.betapassword_ = "";
                    this.betadescription_ = "";
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_BetaPassword_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public BetaPassword getDefaultInstanceForType() {
                    return BetaPassword.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public BetaPassword build() {
                    BetaPassword betaPasswordBuildPartial = buildPartial();
                    if (betaPasswordBuildPartial.isInitialized()) {
                        return betaPasswordBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) betaPasswordBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public BetaPassword buildPartial() {
                    BetaPassword betaPassword = new BetaPassword(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(betaPassword);
                    }
                    onBuilt();
                    return betaPassword;
                }

                private void buildPartial0(BetaPassword betaPassword) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        betaPassword.betaname_ = this.betaname_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        betaPassword.betapassword_ = this.betapassword_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        betaPassword.betadescription_ = this.betadescription_;
                        i |= 4;
                    }
                    betaPassword.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof BetaPassword) {
                        return mergeFrom((BetaPassword) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(BetaPassword betaPassword) {
                    if (betaPassword == BetaPassword.getDefaultInstance()) {
                        return this;
                    }
                    if (betaPassword.hasBetaname()) {
                        this.betaname_ = betaPassword.betaname_;
                        this.bitField0_ |= 1;
                        onChanged();
                    }
                    if (betaPassword.hasBetapassword()) {
                        this.betapassword_ = betaPassword.betapassword_;
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    if (betaPassword.hasBetadescription()) {
                        this.betadescription_ = betaPassword.betadescription_;
                        this.bitField0_ |= 4;
                        onChanged();
                    }
                    mergeUnknownFields(betaPassword.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    extensionRegistryLite.getClass();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int tag = codedInputStream.readTag();
                                if (tag != 0) {
                                    if (tag == 10) {
                                        this.betaname_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 18) {
                                        this.betapassword_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 26) {
                                        this.betadescription_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 4;
                                    } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                throw e.unwrapIOException();
                            }
                        } catch (Throwable th) {
                            onChanged();
                            throw th;
                        }
                    }
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public boolean hasBetaname() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public String getBetaname() {
                    Object obj = this.betaname_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.betaname_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public ByteString getBetanameBytes() {
                    Object obj = this.betaname_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.betaname_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setBetaname(String str) {
                    str.getClass();
                    this.betaname_ = str;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearBetaname() {
                    this.betaname_ = BetaPassword.getDefaultInstance().getBetaname();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder setBetanameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.betaname_ = byteString;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public boolean hasBetapassword() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public String getBetapassword() {
                    Object obj = this.betapassword_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.betapassword_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public ByteString getBetapasswordBytes() {
                    Object obj = this.betapassword_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.betapassword_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setBetapassword(String str) {
                    str.getClass();
                    this.betapassword_ = str;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearBetapassword() {
                    this.betapassword_ = BetaPassword.getDefaultInstance().getBetapassword();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder setBetapasswordBytes(ByteString byteString) {
                    byteString.getClass();
                    this.betapassword_ = byteString;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public boolean hasBetadescription() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public String getBetadescription() {
                    Object obj = this.betadescription_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.betadescription_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponse.BetaPasswordOrBuilder
                public ByteString getBetadescriptionBytes() {
                    Object obj = this.betadescription_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.betadescription_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setBetadescription(String str) {
                    str.getClass();
                    this.betadescription_ = str;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearBetadescription() {
                    this.betadescription_ = BetaPassword.getDefaultInstance().getBetadescription();
                    this.bitField0_ &= -5;
                    onChanged();
                    return this;
                }

                public Builder setBetadescriptionBytes(ByteString byteString) {
                    byteString.getClass();
                    this.betadescription_ = byteString;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }
            }

            public static BetaPassword getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<BetaPassword> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<BetaPassword> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BetaPassword getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
        public List<BetaPassword> getBetapasswordsList() {
            return this.betapasswords_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
        public List<? extends BetaPasswordOrBuilder> getBetapasswordsOrBuilderList() {
            return this.betapasswords_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
        public int getBetapasswordsCount() {
            return this.betapasswords_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
        public BetaPassword getBetapasswords(int i) {
            return this.betapasswords_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
        public BetaPasswordOrBuilder getBetapasswordsOrBuilder(int i) {
            return this.betapasswords_.get(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            for (int i = 0; i < this.betapasswords_.size(); i++) {
                codedOutputStream.writeMessage(4, this.betapasswords_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.eresult_) : 0;
            for (int i2 = 0; i2 < this.betapasswords_.size(); i2++) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(4, this.betapasswords_.get(i2));
            }
            int serializedSize = iComputeInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientCheckAppBetaPasswordResponse)) {
                return super.equals(obj);
            }
            CMsgClientCheckAppBetaPasswordResponse cMsgClientCheckAppBetaPasswordResponse = (CMsgClientCheckAppBetaPasswordResponse) obj;
            if (hasEresult() != cMsgClientCheckAppBetaPasswordResponse.hasEresult()) {
                return false;
            }
            return (!hasEresult() || getEresult() == cMsgClientCheckAppBetaPasswordResponse.getEresult()) && getBetapasswordsList().equals(cMsgClientCheckAppBetaPasswordResponse.getBetapasswordsList()) && getUnknownFields().equals(cMsgClientCheckAppBetaPasswordResponse.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEresult();
            }
            if (getBetapasswordsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getBetapasswordsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientCheckAppBetaPasswordResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCheckAppBetaPasswordResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientCheckAppBetaPasswordResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCheckAppBetaPasswordResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientCheckAppBetaPasswordResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientCheckAppBetaPasswordResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCheckAppBetaPasswordResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientCheckAppBetaPasswordResponse cMsgClientCheckAppBetaPasswordResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientCheckAppBetaPasswordResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientCheckAppBetaPasswordResponseOrBuilder {
            private RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> betapasswordsBuilder_;
            private List<BetaPassword> betapasswords_;
            private int bitField0_;
            private int eresult_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientCheckAppBetaPasswordResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.betapasswords_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.betapasswords_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.betapasswords_ = Collections.emptyList();
                } else {
                    this.betapasswords_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientCheckAppBetaPasswordResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientCheckAppBetaPasswordResponse getDefaultInstanceForType() {
                return CMsgClientCheckAppBetaPasswordResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientCheckAppBetaPasswordResponse build() {
                CMsgClientCheckAppBetaPasswordResponse cMsgClientCheckAppBetaPasswordResponseBuildPartial = buildPartial();
                if (cMsgClientCheckAppBetaPasswordResponseBuildPartial.isInitialized()) {
                    return cMsgClientCheckAppBetaPasswordResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientCheckAppBetaPasswordResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientCheckAppBetaPasswordResponse buildPartial() {
                CMsgClientCheckAppBetaPasswordResponse cMsgClientCheckAppBetaPasswordResponse = new CMsgClientCheckAppBetaPasswordResponse(this);
                buildPartialRepeatedFields(cMsgClientCheckAppBetaPasswordResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientCheckAppBetaPasswordResponse);
                }
                onBuilt();
                return cMsgClientCheckAppBetaPasswordResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientCheckAppBetaPasswordResponse cMsgClientCheckAppBetaPasswordResponse) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.betapasswords_ = Collections.unmodifiableList(this.betapasswords_);
                        this.bitField0_ &= -3;
                    }
                    cMsgClientCheckAppBetaPasswordResponse.betapasswords_ = this.betapasswords_;
                    return;
                }
                cMsgClientCheckAppBetaPasswordResponse.betapasswords_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientCheckAppBetaPasswordResponse cMsgClientCheckAppBetaPasswordResponse) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientCheckAppBetaPasswordResponse.eresult_ = this.eresult_;
                } else {
                    i = 0;
                }
                cMsgClientCheckAppBetaPasswordResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientCheckAppBetaPasswordResponse) {
                    return mergeFrom((CMsgClientCheckAppBetaPasswordResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientCheckAppBetaPasswordResponse cMsgClientCheckAppBetaPasswordResponse) {
                if (cMsgClientCheckAppBetaPasswordResponse == CMsgClientCheckAppBetaPasswordResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientCheckAppBetaPasswordResponse.hasEresult()) {
                    setEresult(cMsgClientCheckAppBetaPasswordResponse.getEresult());
                }
                if (this.betapasswordsBuilder_ == null) {
                    if (!cMsgClientCheckAppBetaPasswordResponse.betapasswords_.isEmpty()) {
                        if (this.betapasswords_.isEmpty()) {
                            this.betapasswords_ = cMsgClientCheckAppBetaPasswordResponse.betapasswords_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureBetapasswordsIsMutable();
                            this.betapasswords_.addAll(cMsgClientCheckAppBetaPasswordResponse.betapasswords_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientCheckAppBetaPasswordResponse.betapasswords_.isEmpty()) {
                    if (this.betapasswordsBuilder_.isEmpty()) {
                        this.betapasswordsBuilder_.dispose();
                        this.betapasswordsBuilder_ = null;
                        this.betapasswords_ = cMsgClientCheckAppBetaPasswordResponse.betapasswords_;
                        this.bitField0_ &= -3;
                        this.betapasswordsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetBetapasswordsFieldBuilder() : null;
                    } else {
                        this.betapasswordsBuilder_.addAllMessages(cMsgClientCheckAppBetaPasswordResponse.betapasswords_);
                    }
                }
                mergeUnknownFields(cMsgClientCheckAppBetaPasswordResponse.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 34) {
                                    BetaPassword betaPassword = (BetaPassword) codedInputStream.readMessage(BetaPassword.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureBetapasswordsIsMutable();
                                        this.betapasswords_.add(betaPassword);
                                    } else {
                                        repeatedFieldBuilder.addMessage(betaPassword);
                                    }
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -2;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            private void ensureBetapasswordsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.betapasswords_ = new ArrayList(this.betapasswords_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
            public List<BetaPassword> getBetapasswordsList() {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.betapasswords_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
            public int getBetapasswordsCount() {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.betapasswords_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
            public BetaPassword getBetapasswords(int i) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.betapasswords_.get(i);
                }
                return (BetaPassword) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setBetapasswords(int i, BetaPassword betaPassword) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    betaPassword.getClass();
                    ensureBetapasswordsIsMutable();
                    this.betapasswords_.set(i, betaPassword);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, betaPassword);
                }
                return this;
            }

            public Builder setBetapasswords(int i, BetaPassword.Builder builder) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureBetapasswordsIsMutable();
                    this.betapasswords_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addBetapasswords(BetaPassword betaPassword) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    betaPassword.getClass();
                    ensureBetapasswordsIsMutable();
                    this.betapasswords_.add(betaPassword);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(betaPassword);
                }
                return this;
            }

            public Builder addBetapasswords(int i, BetaPassword betaPassword) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    betaPassword.getClass();
                    ensureBetapasswordsIsMutable();
                    this.betapasswords_.add(i, betaPassword);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, betaPassword);
                }
                return this;
            }

            public Builder addBetapasswords(BetaPassword.Builder builder) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureBetapasswordsIsMutable();
                    this.betapasswords_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addBetapasswords(int i, BetaPassword.Builder builder) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureBetapasswordsIsMutable();
                    this.betapasswords_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllBetapasswords(Iterable<? extends BetaPassword> iterable) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureBetapasswordsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.betapasswords_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearBetapasswords() {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.betapasswords_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeBetapasswords(int i) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureBetapasswordsIsMutable();
                    this.betapasswords_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public BetaPassword.Builder getBetapasswordsBuilder(int i) {
                return (BetaPassword.Builder) internalGetBetapasswordsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
            public BetaPasswordOrBuilder getBetapasswordsOrBuilder(int i) {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.betapasswords_.get(i);
                }
                return (BetaPasswordOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCheckAppBetaPasswordResponseOrBuilder
            public List<? extends BetaPasswordOrBuilder> getBetapasswordsOrBuilderList() {
                RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> repeatedFieldBuilder = this.betapasswordsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.betapasswords_);
            }

            public BetaPassword.Builder addBetapasswordsBuilder() {
                return (BetaPassword.Builder) internalGetBetapasswordsFieldBuilder().addBuilder(BetaPassword.getDefaultInstance());
            }

            public BetaPassword.Builder addBetapasswordsBuilder(int i) {
                return (BetaPassword.Builder) internalGetBetapasswordsFieldBuilder().addBuilder(i, BetaPassword.getDefaultInstance());
            }

            public List<BetaPassword.Builder> getBetapasswordsBuilderList() {
                return internalGetBetapasswordsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<BetaPassword, BetaPassword.Builder, BetaPasswordOrBuilder> internalGetBetapasswordsFieldBuilder() {
                if (this.betapasswordsBuilder_ == null) {
                    this.betapasswordsBuilder_ = new RepeatedFieldBuilder<>(this.betapasswords_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.betapasswords_ = null;
                }
                return this.betapasswordsBuilder_;
            }
        }

        public static CMsgClientCheckAppBetaPasswordResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientCheckAppBetaPasswordResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientCheckAppBetaPasswordResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientCheckAppBetaPasswordResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRedeemGuestPassResponse extends GeneratedMessage implements CMsgClientRedeemGuestPassResponseOrBuilder {
        private static final CMsgClientRedeemGuestPassResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int MUST_OWN_APPID_FIELD_NUMBER = 3;
        public static final int PACKAGE_ID_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientRedeemGuestPassResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private int mustOwnAppid_;
        private int packageId_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRedeemGuestPassResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRedeemGuestPassResponse();
            PARSER = new AbstractParser<CMsgClientRedeemGuestPassResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRedeemGuestPassResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRedeemGuestPassResponse.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientRedeemGuestPassResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.packageId_ = 0;
            this.mustOwnAppid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRedeemGuestPassResponse() {
            this.packageId_ = 0;
            this.mustOwnAppid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientRedeemGuestPassResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientRedeemGuestPassResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRedeemGuestPassResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
        public boolean hasPackageId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
        public int getPackageId() {
            return this.packageId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
        public boolean hasMustOwnAppid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
        public int getMustOwnAppid() {
            return this.mustOwnAppid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.eresult_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.packageId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.mustOwnAppid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.eresult_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.packageId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.mustOwnAppid_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientRedeemGuestPassResponse)) {
                return super.equals(obj);
            }
            CMsgClientRedeemGuestPassResponse cMsgClientRedeemGuestPassResponse = (CMsgClientRedeemGuestPassResponse) obj;
            if (hasEresult() != cMsgClientRedeemGuestPassResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientRedeemGuestPassResponse.getEresult()) || hasPackageId() != cMsgClientRedeemGuestPassResponse.hasPackageId()) {
                return false;
            }
            if ((!hasPackageId() || getPackageId() == cMsgClientRedeemGuestPassResponse.getPackageId()) && hasMustOwnAppid() == cMsgClientRedeemGuestPassResponse.hasMustOwnAppid()) {
                return (!hasMustOwnAppid() || getMustOwnAppid() == cMsgClientRedeemGuestPassResponse.getMustOwnAppid()) && getUnknownFields().equals(cMsgClientRedeemGuestPassResponse.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEresult();
            }
            if (hasPackageId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPackageId();
            }
            if (hasMustOwnAppid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getMustOwnAppid();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRedeemGuestPassResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRedeemGuestPassResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRedeemGuestPassResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRedeemGuestPassResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRedeemGuestPassResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRedeemGuestPassResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRedeemGuestPassResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRedeemGuestPassResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRedeemGuestPassResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRedeemGuestPassResponse cMsgClientRedeemGuestPassResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRedeemGuestPassResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientRedeemGuestPassResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private int mustOwnAppid_;
            private int packageId_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientRedeemGuestPassResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientRedeemGuestPassResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRedeemGuestPassResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.packageId_ = 0;
                this.mustOwnAppid_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientRedeemGuestPassResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRedeemGuestPassResponse getDefaultInstanceForType() {
                return CMsgClientRedeemGuestPassResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRedeemGuestPassResponse build() {
                CMsgClientRedeemGuestPassResponse cMsgClientRedeemGuestPassResponseBuildPartial = buildPartial();
                if (cMsgClientRedeemGuestPassResponseBuildPartial.isInitialized()) {
                    return cMsgClientRedeemGuestPassResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRedeemGuestPassResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRedeemGuestPassResponse buildPartial() {
                CMsgClientRedeemGuestPassResponse cMsgClientRedeemGuestPassResponse = new CMsgClientRedeemGuestPassResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientRedeemGuestPassResponse);
                }
                onBuilt();
                return cMsgClientRedeemGuestPassResponse;
            }

            private void buildPartial0(CMsgClientRedeemGuestPassResponse cMsgClientRedeemGuestPassResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientRedeemGuestPassResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientRedeemGuestPassResponse.packageId_ = this.packageId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientRedeemGuestPassResponse.mustOwnAppid_ = this.mustOwnAppid_;
                    i |= 4;
                }
                cMsgClientRedeemGuestPassResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRedeemGuestPassResponse) {
                    return mergeFrom((CMsgClientRedeemGuestPassResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRedeemGuestPassResponse cMsgClientRedeemGuestPassResponse) {
                if (cMsgClientRedeemGuestPassResponse == CMsgClientRedeemGuestPassResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientRedeemGuestPassResponse.hasEresult()) {
                    setEresult(cMsgClientRedeemGuestPassResponse.getEresult());
                }
                if (cMsgClientRedeemGuestPassResponse.hasPackageId()) {
                    setPackageId(cMsgClientRedeemGuestPassResponse.getPackageId());
                }
                if (cMsgClientRedeemGuestPassResponse.hasMustOwnAppid()) {
                    setMustOwnAppid(cMsgClientRedeemGuestPassResponse.getMustOwnAppid());
                }
                mergeUnknownFields(cMsgClientRedeemGuestPassResponse.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.eresult_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.packageId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.mustOwnAppid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -2;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
            public boolean hasPackageId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
            public int getPackageId() {
                return this.packageId_;
            }

            public Builder setPackageId(int i) {
                this.packageId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPackageId() {
                this.bitField0_ &= -3;
                this.packageId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
            public boolean hasMustOwnAppid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRedeemGuestPassResponseOrBuilder
            public int getMustOwnAppid() {
                return this.mustOwnAppid_;
            }

            public Builder setMustOwnAppid(int i) {
                this.mustOwnAppid_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearMustOwnAppid() {
                this.bitField0_ &= -5;
                this.mustOwnAppid_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientRedeemGuestPassResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRedeemGuestPassResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRedeemGuestPassResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRedeemGuestPassResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgGCClient extends GeneratedMessage implements CMsgGCClientOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CMsgGCClient DEFAULT_INSTANCE;
        public static final int FLAGS_FIELD_NUMBER = 7;
        public static final int GCNAME_FIELD_NUMBER = 5;
        public static final int IP_FIELD_NUMBER = 6;
        public static final int MSGTYPE_FIELD_NUMBER = 2;
        private static final Parser<CMsgGCClient> PARSER;
        public static final int PAYLOAD_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private int flags_;
        private volatile Object gcname_;
        private int ip_;
        private byte memoizedIsInitialized;
        private int msgtype_;
        private ByteString payload_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgGCClient.class.getName());
            DEFAULT_INSTANCE = new CMsgGCClient();
            PARSER = new AbstractParser<CMsgGCClient>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClient.1
                @Override // com.google.protobuf.Parser
                public CMsgGCClient parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgGCClient.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgGCClient(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.msgtype_ = 0;
            this.payload_ = ByteString.EMPTY;
            this.steamid_ = 0L;
            this.gcname_ = "";
            this.ip_ = 0;
            this.flags_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgGCClient() {
            this.appid_ = 0;
            this.msgtype_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.payload_ = byteString;
            this.steamid_ = 0L;
            this.gcname_ = "";
            this.ip_ = 0;
            this.flags_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.payload_ = byteString;
            this.gcname_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgGCClient_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgGCClient_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGCClient.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public boolean hasMsgtype() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public int getMsgtype() {
            return this.msgtype_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public boolean hasPayload() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public ByteString getPayload() {
            return this.payload_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public boolean hasGcname() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public String getGcname() {
            Object obj = this.gcname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gcname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public ByteString getGcnameBytes() {
            Object obj = this.gcname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gcname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public boolean hasIp() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public int getIp() {
            return this.ip_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public boolean hasFlags() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
        public int getFlags() {
            return this.flags_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.msgtype_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(3, this.payload_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(4, this.steamid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.gcname_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.ip_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.flags_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.msgtype_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(3, this.payload_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(4, this.steamid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(5, this.gcname_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.ip_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.flags_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgGCClient)) {
                return super.equals(obj);
            }
            CMsgGCClient cMsgGCClient = (CMsgGCClient) obj;
            if (hasAppid() != cMsgGCClient.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cMsgGCClient.getAppid()) || hasMsgtype() != cMsgGCClient.hasMsgtype()) {
                return false;
            }
            if ((hasMsgtype() && getMsgtype() != cMsgGCClient.getMsgtype()) || hasPayload() != cMsgGCClient.hasPayload()) {
                return false;
            }
            if ((hasPayload() && !getPayload().equals(cMsgGCClient.getPayload())) || hasSteamid() != cMsgGCClient.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cMsgGCClient.getSteamid()) || hasGcname() != cMsgGCClient.hasGcname()) {
                return false;
            }
            if ((hasGcname() && !getGcname().equals(cMsgGCClient.getGcname())) || hasIp() != cMsgGCClient.hasIp()) {
                return false;
            }
            if ((!hasIp() || getIp() == cMsgGCClient.getIp()) && hasFlags() == cMsgGCClient.hasFlags()) {
                return (!hasFlags() || getFlags() == cMsgGCClient.getFlags()) && getUnknownFields().equals(cMsgGCClient.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            if (hasMsgtype()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMsgtype();
            }
            if (hasPayload()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPayload().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasGcname()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getGcname().hashCode();
            }
            if (hasIp()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getIp();
            }
            if (hasFlags()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getFlags();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgGCClient parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgGCClient parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgGCClient parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgGCClient parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgGCClient parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgGCClient parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgGCClient parseFrom(InputStream inputStream) throws IOException {
            return (CMsgGCClient) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgGCClient parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGCClient) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGCClient parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgGCClient) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgGCClient parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGCClient) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGCClient parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgGCClient) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgGCClient parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGCClient) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgGCClient cMsgGCClient) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgGCClient);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgGCClientOrBuilder {
            private int appid_;
            private int bitField0_;
            private int flags_;
            private Object gcname_;
            private int ip_;
            private int msgtype_;
            private ByteString payload_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgGCClient_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgGCClient_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGCClient.class, Builder.class);
            }

            private Builder() {
                this.payload_ = ByteString.EMPTY;
                this.gcname_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.payload_ = ByteString.EMPTY;
                this.gcname_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.msgtype_ = 0;
                this.payload_ = ByteString.EMPTY;
                this.steamid_ = 0L;
                this.gcname_ = "";
                this.ip_ = 0;
                this.flags_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgGCClient_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgGCClient getDefaultInstanceForType() {
                return CMsgGCClient.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGCClient build() {
                CMsgGCClient cMsgGCClientBuildPartial = buildPartial();
                if (cMsgGCClientBuildPartial.isInitialized()) {
                    return cMsgGCClientBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgGCClientBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGCClient buildPartial() {
                CMsgGCClient cMsgGCClient = new CMsgGCClient(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgGCClient);
                }
                onBuilt();
                return cMsgGCClient;
            }

            private void buildPartial0(CMsgGCClient cMsgGCClient) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgGCClient.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgGCClient.msgtype_ = this.msgtype_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgGCClient.payload_ = this.payload_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgGCClient.steamid_ = this.steamid_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgGCClient.gcname_ = this.gcname_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgGCClient.ip_ = this.ip_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgGCClient.flags_ = this.flags_;
                    i |= 64;
                }
                cMsgGCClient.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgGCClient) {
                    return mergeFrom((CMsgGCClient) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgGCClient cMsgGCClient) {
                if (cMsgGCClient == CMsgGCClient.getDefaultInstance()) {
                    return this;
                }
                if (cMsgGCClient.hasAppid()) {
                    setAppid(cMsgGCClient.getAppid());
                }
                if (cMsgGCClient.hasMsgtype()) {
                    setMsgtype(cMsgGCClient.getMsgtype());
                }
                if (cMsgGCClient.hasPayload()) {
                    setPayload(cMsgGCClient.getPayload());
                }
                if (cMsgGCClient.hasSteamid()) {
                    setSteamid(cMsgGCClient.getSteamid());
                }
                if (cMsgGCClient.hasGcname()) {
                    this.gcname_ = cMsgGCClient.gcname_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (cMsgGCClient.hasIp()) {
                    setIp(cMsgGCClient.getIp());
                }
                if (cMsgGCClient.hasFlags()) {
                    setFlags(cMsgGCClient.getFlags());
                }
                mergeUnknownFields(cMsgGCClient.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.msgtype_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.payload_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 33) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.gcname_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.ip_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.flags_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public boolean hasMsgtype() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public int getMsgtype() {
                return this.msgtype_;
            }

            public Builder setMsgtype(int i) {
                this.msgtype_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMsgtype() {
                this.bitField0_ &= -3;
                this.msgtype_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public boolean hasPayload() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            public Builder setPayload(ByteString byteString) {
                byteString.getClass();
                this.payload_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPayload() {
                this.bitField0_ &= -5;
                this.payload_ = CMsgGCClient.getDefaultInstance().getPayload();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -9;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public boolean hasGcname() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public String getGcname() {
                Object obj = this.gcname_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.gcname_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public ByteString getGcnameBytes() {
                Object obj = this.gcname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gcname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setGcname(String str) {
                str.getClass();
                this.gcname_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearGcname() {
                this.gcname_ = CMsgGCClient.getDefaultInstance().getGcname();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setGcnameBytes(ByteString byteString) {
                byteString.getClass();
                this.gcname_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public boolean hasIp() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public int getIp() {
                return this.ip_;
            }

            public Builder setIp(int i) {
                this.ip_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearIp() {
                this.bitField0_ &= -33;
                this.ip_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public boolean hasFlags() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgGCClientOrBuilder
            public int getFlags() {
                return this.flags_;
            }

            public Builder setFlags(int i) {
                this.flags_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearFlags() {
                this.bitField0_ &= -65;
                this.flags_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgGCClient getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgGCClient> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgGCClient> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgGCClient getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRequestFreeLicense extends GeneratedMessage implements CMsgClientRequestFreeLicenseOrBuilder {
        public static final int APPIDS_FIELD_NUMBER = 2;
        private static final CMsgClientRequestFreeLicense DEFAULT_INSTANCE;
        private static final Parser<CMsgClientRequestFreeLicense> PARSER;
        private static final long serialVersionUID = 0;
        private Internal.IntList appids_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRequestFreeLicense.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRequestFreeLicense();
            PARSER = new AbstractParser<CMsgClientRequestFreeLicense>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicense.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRequestFreeLicense parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRequestFreeLicense.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientRequestFreeLicense(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRequestFreeLicense() {
            this.appids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.appids_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicense_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicense_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestFreeLicense.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseOrBuilder
        public List<Integer> getAppidsList() {
            return this.appids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseOrBuilder
        public int getAppidsCount() {
            return this.appids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseOrBuilder
        public int getAppids(int i) {
            return this.appids_.getInt(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i = 0; i < this.appids_.size(); i++) {
                codedOutputStream.writeUInt32(2, this.appids_.getInt(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.appids_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.appids_.getInt(i2));
            }
            int size = iComputeUInt32SizeNoTag + getAppidsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientRequestFreeLicense)) {
                return super.equals(obj);
            }
            CMsgClientRequestFreeLicense cMsgClientRequestFreeLicense = (CMsgClientRequestFreeLicense) obj;
            return getAppidsList().equals(cMsgClientRequestFreeLicense.getAppidsList()) && getUnknownFields().equals(cMsgClientRequestFreeLicense.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getAppidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppidsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientRequestFreeLicense parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRequestFreeLicense parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicense parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRequestFreeLicense parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicense parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRequestFreeLicense parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicense parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestFreeLicense) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestFreeLicense parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFreeLicense) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicense parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestFreeLicense) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestFreeLicense parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFreeLicense) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicense parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRequestFreeLicense) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRequestFreeLicense parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFreeLicense) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRequestFreeLicense cMsgClientRequestFreeLicense) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRequestFreeLicense);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientRequestFreeLicenseOrBuilder {
            private Internal.IntList appids_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicense_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicense_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestFreeLicense.class, Builder.class);
            }

            private Builder() {
                this.appids_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.appids_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appids_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicense_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRequestFreeLicense getDefaultInstanceForType() {
                return CMsgClientRequestFreeLicense.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestFreeLicense build() {
                CMsgClientRequestFreeLicense cMsgClientRequestFreeLicenseBuildPartial = buildPartial();
                if (cMsgClientRequestFreeLicenseBuildPartial.isInitialized()) {
                    return cMsgClientRequestFreeLicenseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRequestFreeLicenseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestFreeLicense buildPartial() {
                CMsgClientRequestFreeLicense cMsgClientRequestFreeLicense = new CMsgClientRequestFreeLicense(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientRequestFreeLicense);
                }
                onBuilt();
                return cMsgClientRequestFreeLicense;
            }

            private void buildPartial0(CMsgClientRequestFreeLicense cMsgClientRequestFreeLicense) {
                if ((this.bitField0_ & 1) != 0) {
                    this.appids_.makeImmutable();
                    cMsgClientRequestFreeLicense.appids_ = this.appids_;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRequestFreeLicense) {
                    return mergeFrom((CMsgClientRequestFreeLicense) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRequestFreeLicense cMsgClientRequestFreeLicense) {
                if (cMsgClientRequestFreeLicense == CMsgClientRequestFreeLicense.getDefaultInstance()) {
                    return this;
                }
                if (!cMsgClientRequestFreeLicense.appids_.isEmpty()) {
                    if (this.appids_.isEmpty()) {
                        Internal.IntList intList = cMsgClientRequestFreeLicense.appids_;
                        this.appids_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 1;
                    } else {
                        ensureAppidsIsMutable();
                        this.appids_.addAll(cMsgClientRequestFreeLicense.appids_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientRequestFreeLicense.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 16) {
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureAppidsIsMutable();
                                    this.appids_.addInt(uInt32);
                                } else if (tag == 18) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureAppidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.appids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            private void ensureAppidsIsMutable() {
                if (!this.appids_.isModifiable()) {
                    this.appids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.appids_);
                }
                this.bitField0_ |= 1;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseOrBuilder
            public List<Integer> getAppidsList() {
                this.appids_.makeImmutable();
                return this.appids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseOrBuilder
            public int getAppidsCount() {
                return this.appids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseOrBuilder
            public int getAppids(int i) {
                return this.appids_.getInt(i);
            }

            public Builder setAppids(int i, int i2) {
                ensureAppidsIsMutable();
                this.appids_.setInt(i, i2);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addAppids(int i) {
                ensureAppidsIsMutable();
                this.appids_.addInt(i);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addAllAppids(Iterable<? extends Integer> iterable) {
                ensureAppidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.appids_);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppids() {
                this.appids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientRequestFreeLicense getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRequestFreeLicense> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRequestFreeLicense> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRequestFreeLicense getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRequestFreeLicenseResponse extends GeneratedMessage implements CMsgClientRequestFreeLicenseResponseOrBuilder {
        private static final CMsgClientRequestFreeLicenseResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int GRANTED_APPIDS_FIELD_NUMBER = 3;
        public static final int GRANTED_PACKAGEIDS_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientRequestFreeLicenseResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private Internal.IntList grantedAppids_;
        private Internal.IntList grantedPackageids_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRequestFreeLicenseResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRequestFreeLicenseResponse();
            PARSER = new AbstractParser<CMsgClientRequestFreeLicenseResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRequestFreeLicenseResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRequestFreeLicenseResponse.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientRequestFreeLicenseResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.grantedPackageids_ = GeneratedMessage.emptyIntList();
            this.grantedAppids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRequestFreeLicenseResponse() {
            this.eresult_ = 2;
            this.grantedPackageids_ = GeneratedMessage.emptyIntList();
            this.grantedAppids_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.grantedPackageids_ = GeneratedMessage.emptyIntList();
            this.grantedAppids_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicenseResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicenseResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestFreeLicenseResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public List<Integer> getGrantedPackageidsList() {
            return this.grantedPackageids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public int getGrantedPackageidsCount() {
            return this.grantedPackageids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public int getGrantedPackageids(int i) {
            return this.grantedPackageids_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public List<Integer> getGrantedAppidsList() {
            return this.grantedAppids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public int getGrantedAppidsCount() {
            return this.grantedAppids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
        public int getGrantedAppids(int i) {
            return this.grantedAppids_.getInt(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.eresult_);
            }
            for (int i = 0; i < this.grantedPackageids_.size(); i++) {
                codedOutputStream.writeUInt32(2, this.grantedPackageids_.getInt(i));
            }
            for (int i2 = 0; i2 < this.grantedAppids_.size(); i2++) {
                codedOutputStream.writeUInt32(3, this.grantedAppids_.getInt(i2));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.eresult_) : 0;
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.grantedPackageids_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.grantedPackageids_.getInt(i2));
            }
            int size = iComputeUInt32Size + iComputeUInt32SizeNoTag + getGrantedPackageidsList().size();
            int iComputeUInt32SizeNoTag2 = 0;
            for (int i3 = 0; i3 < this.grantedAppids_.size(); i3++) {
                iComputeUInt32SizeNoTag2 += CodedOutputStream.computeUInt32SizeNoTag(this.grantedAppids_.getInt(i3));
            }
            int size2 = size + iComputeUInt32SizeNoTag2 + getGrantedAppidsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientRequestFreeLicenseResponse)) {
                return super.equals(obj);
            }
            CMsgClientRequestFreeLicenseResponse cMsgClientRequestFreeLicenseResponse = (CMsgClientRequestFreeLicenseResponse) obj;
            if (hasEresult() != cMsgClientRequestFreeLicenseResponse.hasEresult()) {
                return false;
            }
            return (!hasEresult() || getEresult() == cMsgClientRequestFreeLicenseResponse.getEresult()) && getGrantedPackageidsList().equals(cMsgClientRequestFreeLicenseResponse.getGrantedPackageidsList()) && getGrantedAppidsList().equals(cMsgClientRequestFreeLicenseResponse.getGrantedAppidsList()) && getUnknownFields().equals(cMsgClientRequestFreeLicenseResponse.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEresult();
            }
            if (getGrantedPackageidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getGrantedPackageidsList().hashCode();
            }
            if (getGrantedAppidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getGrantedAppidsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestFreeLicenseResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFreeLicenseResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicenseResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestFreeLicenseResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestFreeLicenseResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFreeLicenseResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRequestFreeLicenseResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRequestFreeLicenseResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFreeLicenseResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRequestFreeLicenseResponse cMsgClientRequestFreeLicenseResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRequestFreeLicenseResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientRequestFreeLicenseResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private Internal.IntList grantedAppids_;
            private Internal.IntList grantedPackageids_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicenseResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicenseResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestFreeLicenseResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.grantedPackageids_ = GeneratedMessage.emptyIntList();
                this.grantedAppids_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.grantedPackageids_ = GeneratedMessage.emptyIntList();
                this.grantedAppids_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.grantedPackageids_ = GeneratedMessage.emptyIntList();
                this.grantedAppids_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestFreeLicenseResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRequestFreeLicenseResponse getDefaultInstanceForType() {
                return CMsgClientRequestFreeLicenseResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestFreeLicenseResponse build() {
                CMsgClientRequestFreeLicenseResponse cMsgClientRequestFreeLicenseResponseBuildPartial = buildPartial();
                if (cMsgClientRequestFreeLicenseResponseBuildPartial.isInitialized()) {
                    return cMsgClientRequestFreeLicenseResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRequestFreeLicenseResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestFreeLicenseResponse buildPartial() {
                CMsgClientRequestFreeLicenseResponse cMsgClientRequestFreeLicenseResponse = new CMsgClientRequestFreeLicenseResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientRequestFreeLicenseResponse);
                }
                onBuilt();
                return cMsgClientRequestFreeLicenseResponse;
            }

            private void buildPartial0(CMsgClientRequestFreeLicenseResponse cMsgClientRequestFreeLicenseResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientRequestFreeLicenseResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    this.grantedPackageids_.makeImmutable();
                    cMsgClientRequestFreeLicenseResponse.grantedPackageids_ = this.grantedPackageids_;
                }
                if ((i2 & 4) != 0) {
                    this.grantedAppids_.makeImmutable();
                    cMsgClientRequestFreeLicenseResponse.grantedAppids_ = this.grantedAppids_;
                }
                cMsgClientRequestFreeLicenseResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRequestFreeLicenseResponse) {
                    return mergeFrom((CMsgClientRequestFreeLicenseResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRequestFreeLicenseResponse cMsgClientRequestFreeLicenseResponse) {
                if (cMsgClientRequestFreeLicenseResponse == CMsgClientRequestFreeLicenseResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientRequestFreeLicenseResponse.hasEresult()) {
                    setEresult(cMsgClientRequestFreeLicenseResponse.getEresult());
                }
                if (!cMsgClientRequestFreeLicenseResponse.grantedPackageids_.isEmpty()) {
                    if (this.grantedPackageids_.isEmpty()) {
                        Internal.IntList intList = cMsgClientRequestFreeLicenseResponse.grantedPackageids_;
                        this.grantedPackageids_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureGrantedPackageidsIsMutable();
                        this.grantedPackageids_.addAll(cMsgClientRequestFreeLicenseResponse.grantedPackageids_);
                    }
                    onChanged();
                }
                if (!cMsgClientRequestFreeLicenseResponse.grantedAppids_.isEmpty()) {
                    if (this.grantedAppids_.isEmpty()) {
                        Internal.IntList intList2 = cMsgClientRequestFreeLicenseResponse.grantedAppids_;
                        this.grantedAppids_ = intList2;
                        intList2.makeImmutable();
                        this.bitField0_ |= 4;
                    } else {
                        ensureGrantedAppidsIsMutable();
                        this.grantedAppids_.addAll(cMsgClientRequestFreeLicenseResponse.grantedAppids_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientRequestFreeLicenseResponse.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.eresult_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureGrantedPackageidsIsMutable();
                                    this.grantedPackageids_.addInt(uInt32);
                                } else if (tag == 18) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureGrantedPackageidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.grantedPackageids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (tag == 24) {
                                    int uInt322 = codedInputStream.readUInt32();
                                    ensureGrantedAppidsIsMutable();
                                    this.grantedAppids_.addInt(uInt322);
                                } else if (tag == 26) {
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureGrantedAppidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.grantedAppids_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -2;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            private void ensureGrantedPackageidsIsMutable() {
                if (!this.grantedPackageids_.isModifiable()) {
                    this.grantedPackageids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.grantedPackageids_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public List<Integer> getGrantedPackageidsList() {
                this.grantedPackageids_.makeImmutable();
                return this.grantedPackageids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public int getGrantedPackageidsCount() {
                return this.grantedPackageids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public int getGrantedPackageids(int i) {
                return this.grantedPackageids_.getInt(i);
            }

            public Builder setGrantedPackageids(int i, int i2) {
                ensureGrantedPackageidsIsMutable();
                this.grantedPackageids_.setInt(i, i2);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addGrantedPackageids(int i) {
                ensureGrantedPackageidsIsMutable();
                this.grantedPackageids_.addInt(i);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllGrantedPackageids(Iterable<? extends Integer> iterable) {
                ensureGrantedPackageidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.grantedPackageids_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearGrantedPackageids() {
                this.grantedPackageids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            private void ensureGrantedAppidsIsMutable() {
                if (!this.grantedAppids_.isModifiable()) {
                    this.grantedAppids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.grantedAppids_);
                }
                this.bitField0_ |= 4;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public List<Integer> getGrantedAppidsList() {
                this.grantedAppids_.makeImmutable();
                return this.grantedAppids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public int getGrantedAppidsCount() {
                return this.grantedAppids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestFreeLicenseResponseOrBuilder
            public int getGrantedAppids(int i) {
                return this.grantedAppids_.getInt(i);
            }

            public Builder setGrantedAppids(int i, int i2) {
                ensureGrantedAppidsIsMutable();
                this.grantedAppids_.setInt(i, i2);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder addGrantedAppids(int i) {
                ensureGrantedAppidsIsMutable();
                this.grantedAppids_.addInt(i);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder addAllGrantedAppids(Iterable<? extends Integer> iterable) {
                ensureGrantedAppidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.grantedAppids_);
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearGrantedAppids() {
                this.grantedAppids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }
        }

        public static CMsgClientRequestFreeLicenseResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRequestFreeLicenseResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRequestFreeLicenseResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRequestFreeLicenseResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientItemAnnouncements extends GeneratedMessage implements CMsgClientItemAnnouncementsOrBuilder {
        public static final int COUNT_NEW_ITEMS_FIELD_NUMBER = 1;
        private static final CMsgClientItemAnnouncements DEFAULT_INSTANCE;
        private static final Parser<CMsgClientItemAnnouncements> PARSER;
        public static final int UNSEEN_ITEMS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int countNewItems_;
        private byte memoizedIsInitialized;
        private List<UnseenItem> unseenItems_;

        public interface UnseenItemOrBuilder extends MessageOrBuilder {
            long getAmount();

            int getAppid();

            long getAssetId();

            long getContextId();

            int getRtime32Gained();

            int getSourceAppid();

            boolean hasAmount();

            boolean hasAppid();

            boolean hasAssetId();

            boolean hasContextId();

            boolean hasRtime32Gained();

            boolean hasSourceAppid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientItemAnnouncements.class.getName());
            DEFAULT_INSTANCE = new CMsgClientItemAnnouncements();
            PARSER = new AbstractParser<CMsgClientItemAnnouncements>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.1
                @Override // com.google.protobuf.Parser
                public CMsgClientItemAnnouncements parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientItemAnnouncements.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientItemAnnouncements(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.countNewItems_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientItemAnnouncements() {
            this.countNewItems_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.unseenItems_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientItemAnnouncements.class, Builder.class);
        }

        public static final class UnseenItem extends GeneratedMessage implements UnseenItemOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 4;
            public static final int APPID_FIELD_NUMBER = 1;
            public static final int ASSET_ID_FIELD_NUMBER = 3;
            public static final int CONTEXT_ID_FIELD_NUMBER = 2;
            private static final UnseenItem DEFAULT_INSTANCE;
            private static final Parser<UnseenItem> PARSER;
            public static final int RTIME32_GAINED_FIELD_NUMBER = 5;
            public static final int SOURCE_APPID_FIELD_NUMBER = 6;
            private static final long serialVersionUID = 0;
            private long amount_;
            private int appid_;
            private long assetId_;
            private int bitField0_;
            private long contextId_;
            private byte memoizedIsInitialized;
            private int rtime32Gained_;
            private int sourceAppid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", UnseenItem.class.getName());
                DEFAULT_INSTANCE = new UnseenItem();
                PARSER = new AbstractParser<UnseenItem>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItem.1
                    @Override // com.google.protobuf.Parser
                    public UnseenItem parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = UnseenItem.newBuilder();
                        try {
                            builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                            return builderNewBuilder.buildPartial();
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (UninitializedMessageException e2) {
                            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (IOException e3) {
                            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                        }
                    }
                };
            }

            private UnseenItem(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.appid_ = 0;
                this.contextId_ = 0L;
                this.assetId_ = 0L;
                this.amount_ = 0L;
                this.rtime32Gained_ = 0;
                this.sourceAppid_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private UnseenItem() {
                this.appid_ = 0;
                this.contextId_ = 0L;
                this.assetId_ = 0L;
                this.amount_ = 0L;
                this.rtime32Gained_ = 0;
                this.sourceAppid_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_UnseenItem_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_UnseenItem_fieldAccessorTable.ensureFieldAccessorsInitialized(UnseenItem.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public boolean hasContextId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public long getContextId() {
                return this.contextId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public boolean hasAssetId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public long getAssetId() {
                return this.assetId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public boolean hasAmount() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public long getAmount() {
                return this.amount_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public boolean hasRtime32Gained() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public int getRtime32Gained() {
                return this.rtime32Gained_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public boolean hasSourceAppid() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
            public int getSourceAppid() {
                return this.sourceAppid_;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    codedOutputStream.writeUInt32(1, this.appid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt64(2, this.contextId_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeUInt64(3, this.assetId_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeUInt64(4, this.amount_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeFixed32(5, this.rtime32Gained_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeUInt32(6, this.sourceAppid_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.contextId_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt64Size(3, this.assetId_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt64Size(4, this.amount_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeFixed32Size(5, this.rtime32Gained_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.sourceAppid_);
                }
                int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof UnseenItem)) {
                    return super.equals(obj);
                }
                UnseenItem unseenItem = (UnseenItem) obj;
                if (hasAppid() != unseenItem.hasAppid()) {
                    return false;
                }
                if ((hasAppid() && getAppid() != unseenItem.getAppid()) || hasContextId() != unseenItem.hasContextId()) {
                    return false;
                }
                if ((hasContextId() && getContextId() != unseenItem.getContextId()) || hasAssetId() != unseenItem.hasAssetId()) {
                    return false;
                }
                if ((hasAssetId() && getAssetId() != unseenItem.getAssetId()) || hasAmount() != unseenItem.hasAmount()) {
                    return false;
                }
                if ((hasAmount() && getAmount() != unseenItem.getAmount()) || hasRtime32Gained() != unseenItem.hasRtime32Gained()) {
                    return false;
                }
                if ((!hasRtime32Gained() || getRtime32Gained() == unseenItem.getRtime32Gained()) && hasSourceAppid() == unseenItem.hasSourceAppid()) {
                    return (!hasSourceAppid() || getSourceAppid() == unseenItem.getSourceAppid()) && getUnknownFields().equals(unseenItem.getUnknownFields());
                }
                return false;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasAppid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
                }
                if (hasContextId()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getContextId());
                }
                if (hasAssetId()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getAssetId());
                }
                if (hasAmount()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getAmount());
                }
                if (hasRtime32Gained()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getRtime32Gained();
                }
                if (hasSourceAppid()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + getSourceAppid();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static UnseenItem parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static UnseenItem parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static UnseenItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static UnseenItem parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static UnseenItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static UnseenItem parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static UnseenItem parseFrom(InputStream inputStream) throws IOException {
                return (UnseenItem) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static UnseenItem parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (UnseenItem) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static UnseenItem parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (UnseenItem) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static UnseenItem parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (UnseenItem) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static UnseenItem parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (UnseenItem) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static UnseenItem parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (UnseenItem) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(UnseenItem unseenItem) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(unseenItem);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements UnseenItemOrBuilder {
                private long amount_;
                private int appid_;
                private long assetId_;
                private int bitField0_;
                private long contextId_;
                private int rtime32Gained_;
                private int sourceAppid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_UnseenItem_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_UnseenItem_fieldAccessorTable.ensureFieldAccessorsInitialized(UnseenItem.class, Builder.class);
                }

                private Builder() {
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.appid_ = 0;
                    this.contextId_ = 0L;
                    this.assetId_ = 0L;
                    this.amount_ = 0L;
                    this.rtime32Gained_ = 0;
                    this.sourceAppid_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_UnseenItem_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public UnseenItem getDefaultInstanceForType() {
                    return UnseenItem.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public UnseenItem build() {
                    UnseenItem unseenItemBuildPartial = buildPartial();
                    if (unseenItemBuildPartial.isInitialized()) {
                        return unseenItemBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) unseenItemBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public UnseenItem buildPartial() {
                    UnseenItem unseenItem = new UnseenItem(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(unseenItem);
                    }
                    onBuilt();
                    return unseenItem;
                }

                private void buildPartial0(UnseenItem unseenItem) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        unseenItem.appid_ = this.appid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        unseenItem.contextId_ = this.contextId_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        unseenItem.assetId_ = this.assetId_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        unseenItem.amount_ = this.amount_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        unseenItem.rtime32Gained_ = this.rtime32Gained_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        unseenItem.sourceAppid_ = this.sourceAppid_;
                        i |= 32;
                    }
                    unseenItem.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof UnseenItem) {
                        return mergeFrom((UnseenItem) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(UnseenItem unseenItem) {
                    if (unseenItem == UnseenItem.getDefaultInstance()) {
                        return this;
                    }
                    if (unseenItem.hasAppid()) {
                        setAppid(unseenItem.getAppid());
                    }
                    if (unseenItem.hasContextId()) {
                        setContextId(unseenItem.getContextId());
                    }
                    if (unseenItem.hasAssetId()) {
                        setAssetId(unseenItem.getAssetId());
                    }
                    if (unseenItem.hasAmount()) {
                        setAmount(unseenItem.getAmount());
                    }
                    if (unseenItem.hasRtime32Gained()) {
                        setRtime32Gained(unseenItem.getRtime32Gained());
                    }
                    if (unseenItem.hasSourceAppid()) {
                        setSourceAppid(unseenItem.getSourceAppid());
                    }
                    mergeUnknownFields(unseenItem.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    extensionRegistryLite.getClass();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int tag = codedInputStream.readTag();
                                if (tag != 0) {
                                    if (tag == 8) {
                                        this.appid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.contextId_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.assetId_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 32) {
                                        this.amount_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 45) {
                                        this.rtime32Gained_ = codedInputStream.readFixed32();
                                        this.bitField0_ |= 16;
                                    } else if (tag == 48) {
                                        this.sourceAppid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 32;
                                    } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                throw e.unwrapIOException();
                            }
                        } catch (Throwable th) {
                            onChanged();
                            throw th;
                        }
                    }
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public boolean hasAppid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public int getAppid() {
                    return this.appid_;
                }

                public Builder setAppid(int i) {
                    this.appid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearAppid() {
                    this.bitField0_ &= -2;
                    this.appid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public boolean hasContextId() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public long getContextId() {
                    return this.contextId_;
                }

                public Builder setContextId(long j) {
                    this.contextId_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearContextId() {
                    this.bitField0_ &= -3;
                    this.contextId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public boolean hasAssetId() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public long getAssetId() {
                    return this.assetId_;
                }

                public Builder setAssetId(long j) {
                    this.assetId_ = j;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearAssetId() {
                    this.bitField0_ &= -5;
                    this.assetId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public boolean hasAmount() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public long getAmount() {
                    return this.amount_;
                }

                public Builder setAmount(long j) {
                    this.amount_ = j;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearAmount() {
                    this.bitField0_ &= -9;
                    this.amount_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public boolean hasRtime32Gained() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public int getRtime32Gained() {
                    return this.rtime32Gained_;
                }

                public Builder setRtime32Gained(int i) {
                    this.rtime32Gained_ = i;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearRtime32Gained() {
                    this.bitField0_ &= -17;
                    this.rtime32Gained_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public boolean hasSourceAppid() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncements.UnseenItemOrBuilder
                public int getSourceAppid() {
                    return this.sourceAppid_;
                }

                public Builder setSourceAppid(int i) {
                    this.sourceAppid_ = i;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearSourceAppid() {
                    this.bitField0_ &= -33;
                    this.sourceAppid_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static UnseenItem getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<UnseenItem> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<UnseenItem> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public UnseenItem getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
        public boolean hasCountNewItems() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
        public int getCountNewItems() {
            return this.countNewItems_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
        public List<UnseenItem> getUnseenItemsList() {
            return this.unseenItems_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
        public List<? extends UnseenItemOrBuilder> getUnseenItemsOrBuilderList() {
            return this.unseenItems_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
        public int getUnseenItemsCount() {
            return this.unseenItems_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
        public UnseenItem getUnseenItems(int i) {
            return this.unseenItems_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
        public UnseenItemOrBuilder getUnseenItemsOrBuilder(int i) {
            return this.unseenItems_.get(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.countNewItems_);
            }
            for (int i = 0; i < this.unseenItems_.size(); i++) {
                codedOutputStream.writeMessage(2, this.unseenItems_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.countNewItems_) : 0;
            for (int i2 = 0; i2 < this.unseenItems_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(2, this.unseenItems_.get(i2));
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientItemAnnouncements)) {
                return super.equals(obj);
            }
            CMsgClientItemAnnouncements cMsgClientItemAnnouncements = (CMsgClientItemAnnouncements) obj;
            if (hasCountNewItems() != cMsgClientItemAnnouncements.hasCountNewItems()) {
                return false;
            }
            return (!hasCountNewItems() || getCountNewItems() == cMsgClientItemAnnouncements.getCountNewItems()) && getUnseenItemsList().equals(cMsgClientItemAnnouncements.getUnseenItemsList()) && getUnknownFields().equals(cMsgClientItemAnnouncements.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasCountNewItems()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCountNewItems();
            }
            if (getUnseenItemsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getUnseenItemsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientItemAnnouncements parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientItemAnnouncements parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientItemAnnouncements parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientItemAnnouncements parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientItemAnnouncements parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientItemAnnouncements parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientItemAnnouncements parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientItemAnnouncements parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientItemAnnouncements parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientItemAnnouncements) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientItemAnnouncements parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientItemAnnouncements) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientItemAnnouncements parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientItemAnnouncements parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientItemAnnouncements cMsgClientItemAnnouncements) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientItemAnnouncements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientItemAnnouncementsOrBuilder {
            private int bitField0_;
            private int countNewItems_;
            private RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> unseenItemsBuilder_;
            private List<UnseenItem> unseenItems_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientItemAnnouncements.class, Builder.class);
            }

            private Builder() {
                this.unseenItems_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.unseenItems_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.countNewItems_ = 0;
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.unseenItems_ = Collections.emptyList();
                } else {
                    this.unseenItems_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientItemAnnouncements_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientItemAnnouncements getDefaultInstanceForType() {
                return CMsgClientItemAnnouncements.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientItemAnnouncements build() {
                CMsgClientItemAnnouncements cMsgClientItemAnnouncementsBuildPartial = buildPartial();
                if (cMsgClientItemAnnouncementsBuildPartial.isInitialized()) {
                    return cMsgClientItemAnnouncementsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientItemAnnouncementsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientItemAnnouncements buildPartial() {
                CMsgClientItemAnnouncements cMsgClientItemAnnouncements = new CMsgClientItemAnnouncements(this);
                buildPartialRepeatedFields(cMsgClientItemAnnouncements);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientItemAnnouncements);
                }
                onBuilt();
                return cMsgClientItemAnnouncements;
            }

            private void buildPartialRepeatedFields(CMsgClientItemAnnouncements cMsgClientItemAnnouncements) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.unseenItems_ = Collections.unmodifiableList(this.unseenItems_);
                        this.bitField0_ &= -3;
                    }
                    cMsgClientItemAnnouncements.unseenItems_ = this.unseenItems_;
                    return;
                }
                cMsgClientItemAnnouncements.unseenItems_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientItemAnnouncements cMsgClientItemAnnouncements) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientItemAnnouncements.countNewItems_ = this.countNewItems_;
                } else {
                    i = 0;
                }
                cMsgClientItemAnnouncements.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientItemAnnouncements) {
                    return mergeFrom((CMsgClientItemAnnouncements) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientItemAnnouncements cMsgClientItemAnnouncements) {
                if (cMsgClientItemAnnouncements == CMsgClientItemAnnouncements.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientItemAnnouncements.hasCountNewItems()) {
                    setCountNewItems(cMsgClientItemAnnouncements.getCountNewItems());
                }
                if (this.unseenItemsBuilder_ == null) {
                    if (!cMsgClientItemAnnouncements.unseenItems_.isEmpty()) {
                        if (this.unseenItems_.isEmpty()) {
                            this.unseenItems_ = cMsgClientItemAnnouncements.unseenItems_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureUnseenItemsIsMutable();
                            this.unseenItems_.addAll(cMsgClientItemAnnouncements.unseenItems_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientItemAnnouncements.unseenItems_.isEmpty()) {
                    if (this.unseenItemsBuilder_.isEmpty()) {
                        this.unseenItemsBuilder_.dispose();
                        this.unseenItemsBuilder_ = null;
                        this.unseenItems_ = cMsgClientItemAnnouncements.unseenItems_;
                        this.bitField0_ &= -3;
                        this.unseenItemsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetUnseenItemsFieldBuilder() : null;
                    } else {
                        this.unseenItemsBuilder_.addAllMessages(cMsgClientItemAnnouncements.unseenItems_);
                    }
                }
                mergeUnknownFields(cMsgClientItemAnnouncements.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.countNewItems_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    UnseenItem unseenItem = (UnseenItem) codedInputStream.readMessage(UnseenItem.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureUnseenItemsIsMutable();
                                        this.unseenItems_.add(unseenItem);
                                    } else {
                                        repeatedFieldBuilder.addMessage(unseenItem);
                                    }
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
            public boolean hasCountNewItems() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
            public int getCountNewItems() {
                return this.countNewItems_;
            }

            public Builder setCountNewItems(int i) {
                this.countNewItems_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCountNewItems() {
                this.bitField0_ &= -2;
                this.countNewItems_ = 0;
                onChanged();
                return this;
            }

            private void ensureUnseenItemsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.unseenItems_ = new ArrayList(this.unseenItems_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
            public List<UnseenItem> getUnseenItemsList() {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.unseenItems_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
            public int getUnseenItemsCount() {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.unseenItems_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
            public UnseenItem getUnseenItems(int i) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.unseenItems_.get(i);
                }
                return (UnseenItem) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setUnseenItems(int i, UnseenItem unseenItem) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    unseenItem.getClass();
                    ensureUnseenItemsIsMutable();
                    this.unseenItems_.set(i, unseenItem);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, unseenItem);
                }
                return this;
            }

            public Builder setUnseenItems(int i, UnseenItem.Builder builder) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUnseenItemsIsMutable();
                    this.unseenItems_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUnseenItems(UnseenItem unseenItem) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    unseenItem.getClass();
                    ensureUnseenItemsIsMutable();
                    this.unseenItems_.add(unseenItem);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(unseenItem);
                }
                return this;
            }

            public Builder addUnseenItems(int i, UnseenItem unseenItem) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    unseenItem.getClass();
                    ensureUnseenItemsIsMutable();
                    this.unseenItems_.add(i, unseenItem);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, unseenItem);
                }
                return this;
            }

            public Builder addUnseenItems(UnseenItem.Builder builder) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUnseenItemsIsMutable();
                    this.unseenItems_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUnseenItems(int i, UnseenItem.Builder builder) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUnseenItemsIsMutable();
                    this.unseenItems_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUnseenItems(Iterable<? extends UnseenItem> iterable) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUnseenItemsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.unseenItems_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUnseenItems() {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.unseenItems_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeUnseenItems(int i) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUnseenItemsIsMutable();
                    this.unseenItems_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public UnseenItem.Builder getUnseenItemsBuilder(int i) {
                return (UnseenItem.Builder) internalGetUnseenItemsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
            public UnseenItemOrBuilder getUnseenItemsOrBuilder(int i) {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.unseenItems_.get(i);
                }
                return (UnseenItemOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientItemAnnouncementsOrBuilder
            public List<? extends UnseenItemOrBuilder> getUnseenItemsOrBuilderList() {
                RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> repeatedFieldBuilder = this.unseenItemsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.unseenItems_);
            }

            public UnseenItem.Builder addUnseenItemsBuilder() {
                return (UnseenItem.Builder) internalGetUnseenItemsFieldBuilder().addBuilder(UnseenItem.getDefaultInstance());
            }

            public UnseenItem.Builder addUnseenItemsBuilder(int i) {
                return (UnseenItem.Builder) internalGetUnseenItemsFieldBuilder().addBuilder(i, UnseenItem.getDefaultInstance());
            }

            public List<UnseenItem.Builder> getUnseenItemsBuilderList() {
                return internalGetUnseenItemsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UnseenItem, UnseenItem.Builder, UnseenItemOrBuilder> internalGetUnseenItemsFieldBuilder() {
                if (this.unseenItemsBuilder_ == null) {
                    this.unseenItemsBuilder_ = new RepeatedFieldBuilder<>(this.unseenItems_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.unseenItems_ = null;
                }
                return this.unseenItemsBuilder_;
            }
        }

        public static CMsgClientItemAnnouncements getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientItemAnnouncements> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientItemAnnouncements> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientItemAnnouncements getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRequestItemAnnouncements extends GeneratedMessage implements MessageOrBuilder {
        private static final CMsgClientRequestItemAnnouncements DEFAULT_INSTANCE;
        private static final Parser<CMsgClientRequestItemAnnouncements> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRequestItemAnnouncements.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRequestItemAnnouncements();
            PARSER = new AbstractParser<CMsgClientRequestItemAnnouncements>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestItemAnnouncements.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRequestItemAnnouncements parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRequestItemAnnouncements.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientRequestItemAnnouncements(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRequestItemAnnouncements() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestItemAnnouncements_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestItemAnnouncements_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestItemAnnouncements.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof CMsgClientRequestItemAnnouncements) {
                return getUnknownFields().equals(((CMsgClientRequestItemAnnouncements) obj).getUnknownFields());
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((779 + getDescriptor().hashCode()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestItemAnnouncements parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestItemAnnouncements) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestItemAnnouncements parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestItemAnnouncements) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRequestItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRequestItemAnnouncements parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestItemAnnouncements) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRequestItemAnnouncements cMsgClientRequestItemAnnouncements) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRequestItemAnnouncements);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements MessageOrBuilder {
            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestItemAnnouncements_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestItemAnnouncements_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestItemAnnouncements.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestItemAnnouncements_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRequestItemAnnouncements getDefaultInstanceForType() {
                return CMsgClientRequestItemAnnouncements.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestItemAnnouncements build() {
                CMsgClientRequestItemAnnouncements cMsgClientRequestItemAnnouncementsBuildPartial = buildPartial();
                if (cMsgClientRequestItemAnnouncementsBuildPartial.isInitialized()) {
                    return cMsgClientRequestItemAnnouncementsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRequestItemAnnouncementsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestItemAnnouncements buildPartial() {
                CMsgClientRequestItemAnnouncements cMsgClientRequestItemAnnouncements = new CMsgClientRequestItemAnnouncements(this);
                onBuilt();
                return cMsgClientRequestItemAnnouncements;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRequestItemAnnouncements) {
                    return mergeFrom((CMsgClientRequestItemAnnouncements) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRequestItemAnnouncements cMsgClientRequestItemAnnouncements) {
                if (cMsgClientRequestItemAnnouncements == CMsgClientRequestItemAnnouncements.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cMsgClientRequestItemAnnouncements.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } finally {
                        onChanged();
                    }
                }
                return this;
            }
        }

        public static CMsgClientRequestItemAnnouncements getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRequestItemAnnouncements> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRequestItemAnnouncements> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRequestItemAnnouncements getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientUserNotifications extends GeneratedMessage implements CMsgClientUserNotificationsOrBuilder {
        private static final CMsgClientUserNotifications DEFAULT_INSTANCE;
        public static final int NOTIFICATIONS_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientUserNotifications> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Notification> notifications_;

        public interface NotificationOrBuilder extends MessageOrBuilder {
            int getCount();

            int getUserNotificationType();

            boolean hasCount();

            boolean hasUserNotificationType();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientUserNotifications.class.getName());
            DEFAULT_INSTANCE = new CMsgClientUserNotifications();
            PARSER = new AbstractParser<CMsgClientUserNotifications>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.1
                @Override // com.google.protobuf.Parser
                public CMsgClientUserNotifications parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientUserNotifications.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientUserNotifications(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientUserNotifications() {
            this.memoizedIsInitialized = (byte) -1;
            this.notifications_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUserNotifications.class, Builder.class);
        }

        public static final class Notification extends GeneratedMessage implements NotificationOrBuilder {
            public static final int COUNT_FIELD_NUMBER = 2;
            private static final Notification DEFAULT_INSTANCE;
            private static final Parser<Notification> PARSER;
            public static final int USER_NOTIFICATION_TYPE_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private int count_;
            private byte memoizedIsInitialized;
            private int userNotificationType_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Notification.class.getName());
                DEFAULT_INSTANCE = new Notification();
                PARSER = new AbstractParser<Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.Notification.1
                    @Override // com.google.protobuf.Parser
                    public Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Notification.newBuilder();
                        try {
                            builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                            return builderNewBuilder.buildPartial();
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (UninitializedMessageException e2) {
                            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (IOException e3) {
                            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                        }
                    }
                };
            }

            private Notification(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.userNotificationType_ = 0;
                this.count_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Notification() {
                this.userNotificationType_ = 0;
                this.count_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(Notification.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
            public boolean hasUserNotificationType() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
            public int getUserNotificationType() {
                return this.userNotificationType_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
            public boolean hasCount() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
            public int getCount() {
                return this.count_;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    codedOutputStream.writeUInt32(1, this.userNotificationType_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.count_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.userNotificationType_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.count_);
                }
                int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Notification)) {
                    return super.equals(obj);
                }
                Notification notification = (Notification) obj;
                if (hasUserNotificationType() != notification.hasUserNotificationType()) {
                    return false;
                }
                if ((!hasUserNotificationType() || getUserNotificationType() == notification.getUserNotificationType()) && hasCount() == notification.hasCount()) {
                    return (!hasCount() || getCount() == notification.getCount()) && getUnknownFields().equals(notification.getUnknownFields());
                }
                return false;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasUserNotificationType()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getUserNotificationType();
                }
                if (hasCount()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getCount();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Notification parseFrom(InputStream inputStream) throws IOException {
                return (Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Notification notification) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(notification);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements NotificationOrBuilder {
                private int bitField0_;
                private int count_;
                private int userNotificationType_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_Notification_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(Notification.class, Builder.class);
                }

                private Builder() {
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.userNotificationType_ = 0;
                    this.count_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_Notification_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Notification getDefaultInstanceForType() {
                    return Notification.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Notification build() {
                    Notification notificationBuildPartial = buildPartial();
                    if (notificationBuildPartial.isInitialized()) {
                        return notificationBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) notificationBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Notification buildPartial() {
                    Notification notification = new Notification(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(notification);
                    }
                    onBuilt();
                    return notification;
                }

                private void buildPartial0(Notification notification) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        notification.userNotificationType_ = this.userNotificationType_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        notification.count_ = this.count_;
                        i |= 2;
                    }
                    notification.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Notification) {
                        return mergeFrom((Notification) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Notification notification) {
                    if (notification == Notification.getDefaultInstance()) {
                        return this;
                    }
                    if (notification.hasUserNotificationType()) {
                        setUserNotificationType(notification.getUserNotificationType());
                    }
                    if (notification.hasCount()) {
                        setCount(notification.getCount());
                    }
                    mergeUnknownFields(notification.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    extensionRegistryLite.getClass();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int tag = codedInputStream.readTag();
                                if (tag != 0) {
                                    if (tag == 8) {
                                        this.userNotificationType_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.count_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                throw e.unwrapIOException();
                            }
                        } catch (Throwable th) {
                            onChanged();
                            throw th;
                        }
                    }
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
                public boolean hasUserNotificationType() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
                public int getUserNotificationType() {
                    return this.userNotificationType_;
                }

                public Builder setUserNotificationType(int i) {
                    this.userNotificationType_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearUserNotificationType() {
                    this.bitField0_ &= -2;
                    this.userNotificationType_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
                public boolean hasCount() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotifications.NotificationOrBuilder
                public int getCount() {
                    return this.count_;
                }

                public Builder setCount(int i) {
                    this.count_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearCount() {
                    this.bitField0_ &= -3;
                    this.count_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static Notification getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Notification> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Notification> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Notification getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
        public List<Notification> getNotificationsList() {
            return this.notifications_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
        public List<? extends NotificationOrBuilder> getNotificationsOrBuilderList() {
            return this.notifications_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
        public int getNotificationsCount() {
            return this.notifications_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
        public Notification getNotifications(int i) {
            return this.notifications_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
        public NotificationOrBuilder getNotificationsOrBuilder(int i) {
            return this.notifications_.get(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i = 0; i < this.notifications_.size(); i++) {
                codedOutputStream.writeMessage(1, this.notifications_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = 0;
            for (int i2 = 0; i2 < this.notifications_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.notifications_.get(i2));
            }
            int serializedSize = iComputeMessageSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientUserNotifications)) {
                return super.equals(obj);
            }
            CMsgClientUserNotifications cMsgClientUserNotifications = (CMsgClientUserNotifications) obj;
            return getNotificationsList().equals(cMsgClientUserNotifications.getNotificationsList()) && getUnknownFields().equals(cMsgClientUserNotifications.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getNotificationsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getNotificationsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientUserNotifications parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientUserNotifications parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientUserNotifications parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientUserNotifications parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientUserNotifications parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientUserNotifications parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientUserNotifications parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUserNotifications) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUserNotifications parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUserNotifications) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUserNotifications parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientUserNotifications) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientUserNotifications parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUserNotifications) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientUserNotifications parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientUserNotifications) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientUserNotifications parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientUserNotifications) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientUserNotifications cMsgClientUserNotifications) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientUserNotifications);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientUserNotificationsOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> notificationsBuilder_;
            private List<Notification> notifications_;

            private void buildPartial0(CMsgClientUserNotifications cMsgClientUserNotifications) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientUserNotifications.class, Builder.class);
            }

            private Builder() {
                this.notifications_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.notifications_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.notifications_ = Collections.emptyList();
                } else {
                    this.notifications_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientUserNotifications_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientUserNotifications getDefaultInstanceForType() {
                return CMsgClientUserNotifications.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUserNotifications build() {
                CMsgClientUserNotifications cMsgClientUserNotificationsBuildPartial = buildPartial();
                if (cMsgClientUserNotificationsBuildPartial.isInitialized()) {
                    return cMsgClientUserNotificationsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientUserNotificationsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientUserNotifications buildPartial() {
                CMsgClientUserNotifications cMsgClientUserNotifications = new CMsgClientUserNotifications(this);
                buildPartialRepeatedFields(cMsgClientUserNotifications);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientUserNotifications);
                }
                onBuilt();
                return cMsgClientUserNotifications;
            }

            private void buildPartialRepeatedFields(CMsgClientUserNotifications cMsgClientUserNotifications) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.notifications_ = Collections.unmodifiableList(this.notifications_);
                        this.bitField0_ &= -2;
                    }
                    cMsgClientUserNotifications.notifications_ = this.notifications_;
                    return;
                }
                cMsgClientUserNotifications.notifications_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientUserNotifications) {
                    return mergeFrom((CMsgClientUserNotifications) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientUserNotifications cMsgClientUserNotifications) {
                if (cMsgClientUserNotifications == CMsgClientUserNotifications.getDefaultInstance()) {
                    return this;
                }
                if (this.notificationsBuilder_ == null) {
                    if (!cMsgClientUserNotifications.notifications_.isEmpty()) {
                        if (this.notifications_.isEmpty()) {
                            this.notifications_ = cMsgClientUserNotifications.notifications_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureNotificationsIsMutable();
                            this.notifications_.addAll(cMsgClientUserNotifications.notifications_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientUserNotifications.notifications_.isEmpty()) {
                    if (this.notificationsBuilder_.isEmpty()) {
                        this.notificationsBuilder_.dispose();
                        this.notificationsBuilder_ = null;
                        this.notifications_ = cMsgClientUserNotifications.notifications_;
                        this.bitField0_ &= -2;
                        this.notificationsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetNotificationsFieldBuilder() : null;
                    } else {
                        this.notificationsBuilder_.addAllMessages(cMsgClientUserNotifications.notifications_);
                    }
                }
                mergeUnknownFields(cMsgClientUserNotifications.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    Notification notification = (Notification) codedInputStream.readMessage(Notification.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureNotificationsIsMutable();
                                        this.notifications_.add(notification);
                                    } else {
                                        repeatedFieldBuilder.addMessage(notification);
                                    }
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            private void ensureNotificationsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.notifications_ = new ArrayList(this.notifications_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
            public List<Notification> getNotificationsList() {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.notifications_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
            public int getNotificationsCount() {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.notifications_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
            public Notification getNotifications(int i) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.notifications_.get(i);
                }
                return (Notification) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setNotifications(int i, Notification notification) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    notification.getClass();
                    ensureNotificationsIsMutable();
                    this.notifications_.set(i, notification);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, notification);
                }
                return this;
            }

            public Builder setNotifications(int i, Notification.Builder builder) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNotificationsIsMutable();
                    this.notifications_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addNotifications(Notification notification) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    notification.getClass();
                    ensureNotificationsIsMutable();
                    this.notifications_.add(notification);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(notification);
                }
                return this;
            }

            public Builder addNotifications(int i, Notification notification) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    notification.getClass();
                    ensureNotificationsIsMutable();
                    this.notifications_.add(i, notification);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, notification);
                }
                return this;
            }

            public Builder addNotifications(Notification.Builder builder) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNotificationsIsMutable();
                    this.notifications_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addNotifications(int i, Notification.Builder builder) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNotificationsIsMutable();
                    this.notifications_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllNotifications(Iterable<? extends Notification> iterable) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNotificationsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.notifications_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearNotifications() {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.notifications_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeNotifications(int i) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNotificationsIsMutable();
                    this.notifications_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Notification.Builder getNotificationsBuilder(int i) {
                return (Notification.Builder) internalGetNotificationsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
            public NotificationOrBuilder getNotificationsOrBuilder(int i) {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.notifications_.get(i);
                }
                return (NotificationOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientUserNotificationsOrBuilder
            public List<? extends NotificationOrBuilder> getNotificationsOrBuilderList() {
                RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> repeatedFieldBuilder = this.notificationsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.notifications_);
            }

            public Notification.Builder addNotificationsBuilder() {
                return (Notification.Builder) internalGetNotificationsFieldBuilder().addBuilder(Notification.getDefaultInstance());
            }

            public Notification.Builder addNotificationsBuilder(int i) {
                return (Notification.Builder) internalGetNotificationsFieldBuilder().addBuilder(i, Notification.getDefaultInstance());
            }

            public List<Notification.Builder> getNotificationsBuilderList() {
                return internalGetNotificationsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Notification, Notification.Builder, NotificationOrBuilder> internalGetNotificationsFieldBuilder() {
                if (this.notificationsBuilder_ == null) {
                    this.notificationsBuilder_ = new RepeatedFieldBuilder<>(this.notifications_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.notifications_ = null;
                }
                return this.notificationsBuilder_;
            }
        }

        public static CMsgClientUserNotifications getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientUserNotifications> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientUserNotifications> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientUserNotifications getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientCommentNotifications extends GeneratedMessage implements CMsgClientCommentNotificationsOrBuilder {
        public static final int COUNT_NEW_COMMENTS_FIELD_NUMBER = 1;
        public static final int COUNT_NEW_COMMENTS_OWNER_FIELD_NUMBER = 2;
        public static final int COUNT_NEW_COMMENTS_SUBSCRIPTIONS_FIELD_NUMBER = 3;
        private static final CMsgClientCommentNotifications DEFAULT_INSTANCE;
        private static final Parser<CMsgClientCommentNotifications> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int countNewCommentsOwner_;
        private int countNewCommentsSubscriptions_;
        private int countNewComments_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientCommentNotifications.class.getName());
            DEFAULT_INSTANCE = new CMsgClientCommentNotifications();
            PARSER = new AbstractParser<CMsgClientCommentNotifications>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotifications.1
                @Override // com.google.protobuf.Parser
                public CMsgClientCommentNotifications parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientCommentNotifications.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientCommentNotifications(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.countNewComments_ = 0;
            this.countNewCommentsOwner_ = 0;
            this.countNewCommentsSubscriptions_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientCommentNotifications() {
            this.countNewComments_ = 0;
            this.countNewCommentsOwner_ = 0;
            this.countNewCommentsSubscriptions_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientCommentNotifications_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientCommentNotifications_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientCommentNotifications.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
        public boolean hasCountNewComments() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
        public int getCountNewComments() {
            return this.countNewComments_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
        public boolean hasCountNewCommentsOwner() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
        public int getCountNewCommentsOwner() {
            return this.countNewCommentsOwner_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
        public boolean hasCountNewCommentsSubscriptions() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
        public int getCountNewCommentsSubscriptions() {
            return this.countNewCommentsSubscriptions_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.countNewComments_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.countNewCommentsOwner_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.countNewCommentsSubscriptions_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.countNewComments_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.countNewCommentsOwner_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.countNewCommentsSubscriptions_);
            }
            int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientCommentNotifications)) {
                return super.equals(obj);
            }
            CMsgClientCommentNotifications cMsgClientCommentNotifications = (CMsgClientCommentNotifications) obj;
            if (hasCountNewComments() != cMsgClientCommentNotifications.hasCountNewComments()) {
                return false;
            }
            if ((hasCountNewComments() && getCountNewComments() != cMsgClientCommentNotifications.getCountNewComments()) || hasCountNewCommentsOwner() != cMsgClientCommentNotifications.hasCountNewCommentsOwner()) {
                return false;
            }
            if ((!hasCountNewCommentsOwner() || getCountNewCommentsOwner() == cMsgClientCommentNotifications.getCountNewCommentsOwner()) && hasCountNewCommentsSubscriptions() == cMsgClientCommentNotifications.hasCountNewCommentsSubscriptions()) {
                return (!hasCountNewCommentsSubscriptions() || getCountNewCommentsSubscriptions() == cMsgClientCommentNotifications.getCountNewCommentsSubscriptions()) && getUnknownFields().equals(cMsgClientCommentNotifications.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasCountNewComments()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCountNewComments();
            }
            if (hasCountNewCommentsOwner()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getCountNewCommentsOwner();
            }
            if (hasCountNewCommentsSubscriptions()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCountNewCommentsSubscriptions();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientCommentNotifications parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientCommentNotifications parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientCommentNotifications parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientCommentNotifications parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientCommentNotifications parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientCommentNotifications parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientCommentNotifications parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientCommentNotifications parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientCommentNotifications parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientCommentNotifications) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientCommentNotifications parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCommentNotifications) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientCommentNotifications parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientCommentNotifications parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientCommentNotifications cMsgClientCommentNotifications) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientCommentNotifications);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientCommentNotificationsOrBuilder {
            private int bitField0_;
            private int countNewCommentsOwner_;
            private int countNewCommentsSubscriptions_;
            private int countNewComments_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientCommentNotifications_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientCommentNotifications_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientCommentNotifications.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.countNewComments_ = 0;
                this.countNewCommentsOwner_ = 0;
                this.countNewCommentsSubscriptions_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientCommentNotifications_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientCommentNotifications getDefaultInstanceForType() {
                return CMsgClientCommentNotifications.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientCommentNotifications build() {
                CMsgClientCommentNotifications cMsgClientCommentNotificationsBuildPartial = buildPartial();
                if (cMsgClientCommentNotificationsBuildPartial.isInitialized()) {
                    return cMsgClientCommentNotificationsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientCommentNotificationsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientCommentNotifications buildPartial() {
                CMsgClientCommentNotifications cMsgClientCommentNotifications = new CMsgClientCommentNotifications(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientCommentNotifications);
                }
                onBuilt();
                return cMsgClientCommentNotifications;
            }

            private void buildPartial0(CMsgClientCommentNotifications cMsgClientCommentNotifications) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientCommentNotifications.countNewComments_ = this.countNewComments_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientCommentNotifications.countNewCommentsOwner_ = this.countNewCommentsOwner_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientCommentNotifications.countNewCommentsSubscriptions_ = this.countNewCommentsSubscriptions_;
                    i |= 4;
                }
                cMsgClientCommentNotifications.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientCommentNotifications) {
                    return mergeFrom((CMsgClientCommentNotifications) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientCommentNotifications cMsgClientCommentNotifications) {
                if (cMsgClientCommentNotifications == CMsgClientCommentNotifications.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientCommentNotifications.hasCountNewComments()) {
                    setCountNewComments(cMsgClientCommentNotifications.getCountNewComments());
                }
                if (cMsgClientCommentNotifications.hasCountNewCommentsOwner()) {
                    setCountNewCommentsOwner(cMsgClientCommentNotifications.getCountNewCommentsOwner());
                }
                if (cMsgClientCommentNotifications.hasCountNewCommentsSubscriptions()) {
                    setCountNewCommentsSubscriptions(cMsgClientCommentNotifications.getCountNewCommentsSubscriptions());
                }
                mergeUnknownFields(cMsgClientCommentNotifications.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.countNewComments_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.countNewCommentsOwner_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.countNewCommentsSubscriptions_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
            public boolean hasCountNewComments() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
            public int getCountNewComments() {
                return this.countNewComments_;
            }

            public Builder setCountNewComments(int i) {
                this.countNewComments_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCountNewComments() {
                this.bitField0_ &= -2;
                this.countNewComments_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
            public boolean hasCountNewCommentsOwner() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
            public int getCountNewCommentsOwner() {
                return this.countNewCommentsOwner_;
            }

            public Builder setCountNewCommentsOwner(int i) {
                this.countNewCommentsOwner_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearCountNewCommentsOwner() {
                this.bitField0_ &= -3;
                this.countNewCommentsOwner_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
            public boolean hasCountNewCommentsSubscriptions() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientCommentNotificationsOrBuilder
            public int getCountNewCommentsSubscriptions() {
                return this.countNewCommentsSubscriptions_;
            }

            public Builder setCountNewCommentsSubscriptions(int i) {
                this.countNewCommentsSubscriptions_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCountNewCommentsSubscriptions() {
                this.bitField0_ &= -5;
                this.countNewCommentsSubscriptions_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientCommentNotifications getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientCommentNotifications> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientCommentNotifications> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientCommentNotifications getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRequestCommentNotifications extends GeneratedMessage implements MessageOrBuilder {
        private static final CMsgClientRequestCommentNotifications DEFAULT_INSTANCE;
        private static final Parser<CMsgClientRequestCommentNotifications> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRequestCommentNotifications.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRequestCommentNotifications();
            PARSER = new AbstractParser<CMsgClientRequestCommentNotifications>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestCommentNotifications.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRequestCommentNotifications parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRequestCommentNotifications.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientRequestCommentNotifications(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRequestCommentNotifications() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestCommentNotifications_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestCommentNotifications_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestCommentNotifications.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof CMsgClientRequestCommentNotifications) {
                return getUnknownFields().equals(((CMsgClientRequestCommentNotifications) obj).getUnknownFields());
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((779 + getDescriptor().hashCode()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        public static CMsgClientRequestCommentNotifications parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestCommentNotifications parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestCommentNotifications) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestCommentNotifications parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestCommentNotifications) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRequestCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRequestCommentNotifications parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestCommentNotifications) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRequestCommentNotifications cMsgClientRequestCommentNotifications) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRequestCommentNotifications);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements MessageOrBuilder {
            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestCommentNotifications_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestCommentNotifications_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestCommentNotifications.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestCommentNotifications_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRequestCommentNotifications getDefaultInstanceForType() {
                return CMsgClientRequestCommentNotifications.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestCommentNotifications build() {
                CMsgClientRequestCommentNotifications cMsgClientRequestCommentNotificationsBuildPartial = buildPartial();
                if (cMsgClientRequestCommentNotificationsBuildPartial.isInitialized()) {
                    return cMsgClientRequestCommentNotificationsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRequestCommentNotificationsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestCommentNotifications buildPartial() {
                CMsgClientRequestCommentNotifications cMsgClientRequestCommentNotifications = new CMsgClientRequestCommentNotifications(this);
                onBuilt();
                return cMsgClientRequestCommentNotifications;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRequestCommentNotifications) {
                    return mergeFrom((CMsgClientRequestCommentNotifications) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRequestCommentNotifications cMsgClientRequestCommentNotifications) {
                if (cMsgClientRequestCommentNotifications == CMsgClientRequestCommentNotifications.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cMsgClientRequestCommentNotifications.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } finally {
                        onChanged();
                    }
                }
                return this;
            }
        }

        public static CMsgClientRequestCommentNotifications getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRequestCommentNotifications> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRequestCommentNotifications> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRequestCommentNotifications getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientOfflineMessageNotification extends GeneratedMessage implements CMsgClientOfflineMessageNotificationOrBuilder {
        private static final CMsgClientOfflineMessageNotification DEFAULT_INSTANCE;
        public static final int FRIENDS_WITH_OFFLINE_MESSAGES_FIELD_NUMBER = 2;
        public static final int OFFLINE_MESSAGES_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientOfflineMessageNotification> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Internal.IntList friendsWithOfflineMessages_;
        private byte memoizedIsInitialized;
        private int offlineMessages_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientOfflineMessageNotification.class.getName());
            DEFAULT_INSTANCE = new CMsgClientOfflineMessageNotification();
            PARSER = new AbstractParser<CMsgClientOfflineMessageNotification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotification.1
                @Override // com.google.protobuf.Parser
                public CMsgClientOfflineMessageNotification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientOfflineMessageNotification.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientOfflineMessageNotification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.offlineMessages_ = 0;
            this.friendsWithOfflineMessages_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientOfflineMessageNotification() {
            this.offlineMessages_ = 0;
            this.friendsWithOfflineMessages_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.friendsWithOfflineMessages_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientOfflineMessageNotification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientOfflineMessageNotification_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientOfflineMessageNotification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
        public boolean hasOfflineMessages() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
        public int getOfflineMessages() {
            return this.offlineMessages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
        public List<Integer> getFriendsWithOfflineMessagesList() {
            return this.friendsWithOfflineMessages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
        public int getFriendsWithOfflineMessagesCount() {
            return this.friendsWithOfflineMessages_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
        public int getFriendsWithOfflineMessages(int i) {
            return this.friendsWithOfflineMessages_.getInt(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.offlineMessages_);
            }
            for (int i = 0; i < this.friendsWithOfflineMessages_.size(); i++) {
                codedOutputStream.writeUInt32(2, this.friendsWithOfflineMessages_.getInt(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.offlineMessages_) : 0;
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.friendsWithOfflineMessages_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.friendsWithOfflineMessages_.getInt(i2));
            }
            int size = iComputeUInt32Size + iComputeUInt32SizeNoTag + getFriendsWithOfflineMessagesList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientOfflineMessageNotification)) {
                return super.equals(obj);
            }
            CMsgClientOfflineMessageNotification cMsgClientOfflineMessageNotification = (CMsgClientOfflineMessageNotification) obj;
            if (hasOfflineMessages() != cMsgClientOfflineMessageNotification.hasOfflineMessages()) {
                return false;
            }
            return (!hasOfflineMessages() || getOfflineMessages() == cMsgClientOfflineMessageNotification.getOfflineMessages()) && getFriendsWithOfflineMessagesList().equals(cMsgClientOfflineMessageNotification.getFriendsWithOfflineMessagesList()) && getUnknownFields().equals(cMsgClientOfflineMessageNotification.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasOfflineMessages()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getOfflineMessages();
            }
            if (getFriendsWithOfflineMessagesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFriendsWithOfflineMessagesList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientOfflineMessageNotification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientOfflineMessageNotification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientOfflineMessageNotification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientOfflineMessageNotification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientOfflineMessageNotification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientOfflineMessageNotification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientOfflineMessageNotification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientOfflineMessageNotification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientOfflineMessageNotification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientOfflineMessageNotification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientOfflineMessageNotification cMsgClientOfflineMessageNotification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientOfflineMessageNotification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientOfflineMessageNotificationOrBuilder {
            private int bitField0_;
            private Internal.IntList friendsWithOfflineMessages_;
            private int offlineMessages_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientOfflineMessageNotification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientOfflineMessageNotification_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientOfflineMessageNotification.class, Builder.class);
            }

            private Builder() {
                this.friendsWithOfflineMessages_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.friendsWithOfflineMessages_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.offlineMessages_ = 0;
                this.friendsWithOfflineMessages_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientOfflineMessageNotification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientOfflineMessageNotification getDefaultInstanceForType() {
                return CMsgClientOfflineMessageNotification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientOfflineMessageNotification build() {
                CMsgClientOfflineMessageNotification cMsgClientOfflineMessageNotificationBuildPartial = buildPartial();
                if (cMsgClientOfflineMessageNotificationBuildPartial.isInitialized()) {
                    return cMsgClientOfflineMessageNotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientOfflineMessageNotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientOfflineMessageNotification buildPartial() {
                CMsgClientOfflineMessageNotification cMsgClientOfflineMessageNotification = new CMsgClientOfflineMessageNotification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientOfflineMessageNotification);
                }
                onBuilt();
                return cMsgClientOfflineMessageNotification;
            }

            private void buildPartial0(CMsgClientOfflineMessageNotification cMsgClientOfflineMessageNotification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientOfflineMessageNotification.offlineMessages_ = this.offlineMessages_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    this.friendsWithOfflineMessages_.makeImmutable();
                    cMsgClientOfflineMessageNotification.friendsWithOfflineMessages_ = this.friendsWithOfflineMessages_;
                }
                cMsgClientOfflineMessageNotification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientOfflineMessageNotification) {
                    return mergeFrom((CMsgClientOfflineMessageNotification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientOfflineMessageNotification cMsgClientOfflineMessageNotification) {
                if (cMsgClientOfflineMessageNotification == CMsgClientOfflineMessageNotification.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientOfflineMessageNotification.hasOfflineMessages()) {
                    setOfflineMessages(cMsgClientOfflineMessageNotification.getOfflineMessages());
                }
                if (!cMsgClientOfflineMessageNotification.friendsWithOfflineMessages_.isEmpty()) {
                    if (this.friendsWithOfflineMessages_.isEmpty()) {
                        Internal.IntList intList = cMsgClientOfflineMessageNotification.friendsWithOfflineMessages_;
                        this.friendsWithOfflineMessages_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureFriendsWithOfflineMessagesIsMutable();
                        this.friendsWithOfflineMessages_.addAll(cMsgClientOfflineMessageNotification.friendsWithOfflineMessages_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientOfflineMessageNotification.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.offlineMessages_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureFriendsWithOfflineMessagesIsMutable();
                                    this.friendsWithOfflineMessages_.addInt(uInt32);
                                } else if (tag == 18) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureFriendsWithOfflineMessagesIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.friendsWithOfflineMessages_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
            public boolean hasOfflineMessages() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
            public int getOfflineMessages() {
                return this.offlineMessages_;
            }

            public Builder setOfflineMessages(int i) {
                this.offlineMessages_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearOfflineMessages() {
                this.bitField0_ &= -2;
                this.offlineMessages_ = 0;
                onChanged();
                return this;
            }

            private void ensureFriendsWithOfflineMessagesIsMutable() {
                if (!this.friendsWithOfflineMessages_.isModifiable()) {
                    this.friendsWithOfflineMessages_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.friendsWithOfflineMessages_);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
            public List<Integer> getFriendsWithOfflineMessagesList() {
                this.friendsWithOfflineMessages_.makeImmutable();
                return this.friendsWithOfflineMessages_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
            public int getFriendsWithOfflineMessagesCount() {
                return this.friendsWithOfflineMessages_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientOfflineMessageNotificationOrBuilder
            public int getFriendsWithOfflineMessages(int i) {
                return this.friendsWithOfflineMessages_.getInt(i);
            }

            public Builder setFriendsWithOfflineMessages(int i, int i2) {
                ensureFriendsWithOfflineMessagesIsMutable();
                this.friendsWithOfflineMessages_.setInt(i, i2);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addFriendsWithOfflineMessages(int i) {
                ensureFriendsWithOfflineMessagesIsMutable();
                this.friendsWithOfflineMessages_.addInt(i);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllFriendsWithOfflineMessages(Iterable<? extends Integer> iterable) {
                ensureFriendsWithOfflineMessagesIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.friendsWithOfflineMessages_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFriendsWithOfflineMessages() {
                this.friendsWithOfflineMessages_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }
        }

        public static CMsgClientOfflineMessageNotification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientOfflineMessageNotification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientOfflineMessageNotification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientOfflineMessageNotification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRequestOfflineMessageCount extends GeneratedMessage implements MessageOrBuilder {
        private static final CMsgClientRequestOfflineMessageCount DEFAULT_INSTANCE;
        private static final Parser<CMsgClientRequestOfflineMessageCount> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRequestOfflineMessageCount.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRequestOfflineMessageCount();
            PARSER = new AbstractParser<CMsgClientRequestOfflineMessageCount>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientRequestOfflineMessageCount.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRequestOfflineMessageCount parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRequestOfflineMessageCount.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientRequestOfflineMessageCount(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRequestOfflineMessageCount() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestOfflineMessageCount_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientRequestOfflineMessageCount_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestOfflineMessageCount.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof CMsgClientRequestOfflineMessageCount) {
                return getUnknownFields().equals(((CMsgClientRequestOfflineMessageCount) obj).getUnknownFields());
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((779 + getDescriptor().hashCode()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestOfflineMessageCount) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestOfflineMessageCount) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestOfflineMessageCount parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestOfflineMessageCount) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestOfflineMessageCount parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestOfflineMessageCount) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRequestOfflineMessageCount) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRequestOfflineMessageCount parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestOfflineMessageCount) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRequestOfflineMessageCount cMsgClientRequestOfflineMessageCount) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRequestOfflineMessageCount);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements MessageOrBuilder {
            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestOfflineMessageCount_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestOfflineMessageCount_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestOfflineMessageCount.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientRequestOfflineMessageCount_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRequestOfflineMessageCount getDefaultInstanceForType() {
                return CMsgClientRequestOfflineMessageCount.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestOfflineMessageCount build() {
                CMsgClientRequestOfflineMessageCount cMsgClientRequestOfflineMessageCountBuildPartial = buildPartial();
                if (cMsgClientRequestOfflineMessageCountBuildPartial.isInitialized()) {
                    return cMsgClientRequestOfflineMessageCountBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRequestOfflineMessageCountBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestOfflineMessageCount buildPartial() {
                CMsgClientRequestOfflineMessageCount cMsgClientRequestOfflineMessageCount = new CMsgClientRequestOfflineMessageCount(this);
                onBuilt();
                return cMsgClientRequestOfflineMessageCount;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRequestOfflineMessageCount) {
                    return mergeFrom((CMsgClientRequestOfflineMessageCount) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRequestOfflineMessageCount cMsgClientRequestOfflineMessageCount) {
                if (cMsgClientRequestOfflineMessageCount == CMsgClientRequestOfflineMessageCount.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cMsgClientRequestOfflineMessageCount.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } finally {
                        onChanged();
                    }
                }
                return this;
            }
        }

        public static CMsgClientRequestOfflineMessageCount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRequestOfflineMessageCount> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRequestOfflineMessageCount> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRequestOfflineMessageCount getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientChatGetFriendMessageHistory extends GeneratedMessage implements CMsgClientChatGetFriendMessageHistoryOrBuilder {
        private static final CMsgClientChatGetFriendMessageHistory DEFAULT_INSTANCE;
        private static final Parser<CMsgClientChatGetFriendMessageHistory> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientChatGetFriendMessageHistory.class.getName());
            DEFAULT_INSTANCE = new CMsgClientChatGetFriendMessageHistory();
            PARSER = new AbstractParser<CMsgClientChatGetFriendMessageHistory>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistory.1
                @Override // com.google.protobuf.Parser
                public CMsgClientChatGetFriendMessageHistory parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientChatGetFriendMessageHistory.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientChatGetFriendMessageHistory(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientChatGetFriendMessageHistory() {
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistory_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistory_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChatGetFriendMessageHistory.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeFixed64(1, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientChatGetFriendMessageHistory)) {
                return super.equals(obj);
            }
            CMsgClientChatGetFriendMessageHistory cMsgClientChatGetFriendMessageHistory = (CMsgClientChatGetFriendMessageHistory) obj;
            if (hasSteamid() != cMsgClientChatGetFriendMessageHistory.hasSteamid()) {
                return false;
            }
            return (!hasSteamid() || getSteamid() == cMsgClientChatGetFriendMessageHistory.getSteamid()) && getUnknownFields().equals(cMsgClientChatGetFriendMessageHistory.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistory) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistory) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistory parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistory) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChatGetFriendMessageHistory parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistory) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistory) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientChatGetFriendMessageHistory parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistory) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientChatGetFriendMessageHistory cMsgClientChatGetFriendMessageHistory) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientChatGetFriendMessageHistory);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientChatGetFriendMessageHistoryOrBuilder {
            private int bitField0_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistory_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistory_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChatGetFriendMessageHistory.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistory_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientChatGetFriendMessageHistory getDefaultInstanceForType() {
                return CMsgClientChatGetFriendMessageHistory.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChatGetFriendMessageHistory build() {
                CMsgClientChatGetFriendMessageHistory cMsgClientChatGetFriendMessageHistoryBuildPartial = buildPartial();
                if (cMsgClientChatGetFriendMessageHistoryBuildPartial.isInitialized()) {
                    return cMsgClientChatGetFriendMessageHistoryBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientChatGetFriendMessageHistoryBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChatGetFriendMessageHistory buildPartial() {
                CMsgClientChatGetFriendMessageHistory cMsgClientChatGetFriendMessageHistory = new CMsgClientChatGetFriendMessageHistory(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientChatGetFriendMessageHistory);
                }
                onBuilt();
                return cMsgClientChatGetFriendMessageHistory;
            }

            private void buildPartial0(CMsgClientChatGetFriendMessageHistory cMsgClientChatGetFriendMessageHistory) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientChatGetFriendMessageHistory.steamid_ = this.steamid_;
                } else {
                    i = 0;
                }
                cMsgClientChatGetFriendMessageHistory.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientChatGetFriendMessageHistory) {
                    return mergeFrom((CMsgClientChatGetFriendMessageHistory) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientChatGetFriendMessageHistory cMsgClientChatGetFriendMessageHistory) {
                if (cMsgClientChatGetFriendMessageHistory == CMsgClientChatGetFriendMessageHistory.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientChatGetFriendMessageHistory.hasSteamid()) {
                    setSteamid(cMsgClientChatGetFriendMessageHistory.getSteamid());
                }
                mergeUnknownFields(cMsgClientChatGetFriendMessageHistory.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 9) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -2;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientChatGetFriendMessageHistory getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientChatGetFriendMessageHistory> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientChatGetFriendMessageHistory> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientChatGetFriendMessageHistory getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientChatGetFriendMessageHistoryResponse extends GeneratedMessage implements CMsgClientChatGetFriendMessageHistoryResponseOrBuilder {
        private static final CMsgClientChatGetFriendMessageHistoryResponse DEFAULT_INSTANCE;
        public static final int MESSAGES_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientChatGetFriendMessageHistoryResponse> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        public static final int SUCCESS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private List<FriendMessage> messages_;
        private long steamid_;
        private int success_;

        public interface FriendMessageOrBuilder extends MessageOrBuilder {
            int getAccountid();

            String getMessage();

            ByteString getMessageBytes();

            int getTimestamp();

            boolean getUnread();

            boolean hasAccountid();

            boolean hasMessage();

            boolean hasTimestamp();

            boolean hasUnread();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientChatGetFriendMessageHistoryResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientChatGetFriendMessageHistoryResponse();
            PARSER = new AbstractParser<CMsgClientChatGetFriendMessageHistoryResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientChatGetFriendMessageHistoryResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientChatGetFriendMessageHistoryResponse.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientChatGetFriendMessageHistoryResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.success_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientChatGetFriendMessageHistoryResponse() {
            this.steamid_ = 0L;
            this.success_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.messages_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChatGetFriendMessageHistoryResponse.class, Builder.class);
        }

        public static final class FriendMessage extends GeneratedMessage implements FriendMessageOrBuilder {
            public static final int ACCOUNTID_FIELD_NUMBER = 1;
            private static final FriendMessage DEFAULT_INSTANCE;
            public static final int MESSAGE_FIELD_NUMBER = 3;
            private static final Parser<FriendMessage> PARSER;
            public static final int TIMESTAMP_FIELD_NUMBER = 2;
            public static final int UNREAD_FIELD_NUMBER = 4;
            private static final long serialVersionUID = 0;
            private int accountid_;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private volatile Object message_;
            private int timestamp_;
            private boolean unread_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", FriendMessage.class.getName());
                DEFAULT_INSTANCE = new FriendMessage();
                PARSER = new AbstractParser<FriendMessage>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessage.1
                    @Override // com.google.protobuf.Parser
                    public FriendMessage parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = FriendMessage.newBuilder();
                        try {
                            builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                            return builderNewBuilder.buildPartial();
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (UninitializedMessageException e2) {
                            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                        } catch (IOException e3) {
                            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                        }
                    }
                };
            }

            private FriendMessage(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.accountid_ = 0;
                this.timestamp_ = 0;
                this.message_ = "";
                this.unread_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            private FriendMessage() {
                this.accountid_ = 0;
                this.timestamp_ = 0;
                this.message_ = "";
                this.unread_ = false;
                this.memoizedIsInitialized = (byte) -1;
                this.message_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(FriendMessage.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public boolean hasAccountid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public int getAccountid() {
                return this.accountid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public boolean hasTimestamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public int getTimestamp() {
                return this.timestamp_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.message_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.message_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public boolean hasUnread() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
            public boolean getUnread() {
                return this.unread_;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    codedOutputStream.writeUInt32(1, this.accountid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.timestamp_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 3, this.message_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBool(4, this.unread_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.accountid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.timestamp_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.message_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeBoolSize(4, this.unread_);
                }
                int serializedSize = iComputeUInt32Size + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof FriendMessage)) {
                    return super.equals(obj);
                }
                FriendMessage friendMessage = (FriendMessage) obj;
                if (hasAccountid() != friendMessage.hasAccountid()) {
                    return false;
                }
                if ((hasAccountid() && getAccountid() != friendMessage.getAccountid()) || hasTimestamp() != friendMessage.hasTimestamp()) {
                    return false;
                }
                if ((hasTimestamp() && getTimestamp() != friendMessage.getTimestamp()) || hasMessage() != friendMessage.hasMessage()) {
                    return false;
                }
                if ((!hasMessage() || getMessage().equals(friendMessage.getMessage())) && hasUnread() == friendMessage.hasUnread()) {
                    return (!hasUnread() || getUnread() == friendMessage.getUnread()) && getUnknownFields().equals(friendMessage.getUnknownFields());
                }
                return false;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasAccountid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getAccountid();
                }
                if (hasTimestamp()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getTimestamp();
                }
                if (hasMessage()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getMessage().hashCode();
                }
                if (hasUnread()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getUnread());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static FriendMessage parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static FriendMessage parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static FriendMessage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static FriendMessage parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static FriendMessage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static FriendMessage parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static FriendMessage parseFrom(InputStream inputStream) throws IOException {
                return (FriendMessage) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static FriendMessage parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FriendMessage) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static FriendMessage parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (FriendMessage) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static FriendMessage parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FriendMessage) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static FriendMessage parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (FriendMessage) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static FriendMessage parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FriendMessage) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(FriendMessage friendMessage) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(friendMessage);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements FriendMessageOrBuilder {
                private int accountid_;
                private int bitField0_;
                private Object message_;
                private int timestamp_;
                private boolean unread_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(FriendMessage.class, Builder.class);
                }

                private Builder() {
                    this.message_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.message_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.accountid_ = 0;
                    this.timestamp_ = 0;
                    this.message_ = "";
                    this.unread_ = false;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_FriendMessage_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public FriendMessage getDefaultInstanceForType() {
                    return FriendMessage.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public FriendMessage build() {
                    FriendMessage friendMessageBuildPartial = buildPartial();
                    if (friendMessageBuildPartial.isInitialized()) {
                        return friendMessageBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendMessageBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public FriendMessage buildPartial() {
                    FriendMessage friendMessage = new FriendMessage(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(friendMessage);
                    }
                    onBuilt();
                    return friendMessage;
                }

                private void buildPartial0(FriendMessage friendMessage) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        friendMessage.accountid_ = this.accountid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        friendMessage.timestamp_ = this.timestamp_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        friendMessage.message_ = this.message_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        friendMessage.unread_ = this.unread_;
                        i |= 8;
                    }
                    friendMessage.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof FriendMessage) {
                        return mergeFrom((FriendMessage) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(FriendMessage friendMessage) {
                    if (friendMessage == FriendMessage.getDefaultInstance()) {
                        return this;
                    }
                    if (friendMessage.hasAccountid()) {
                        setAccountid(friendMessage.getAccountid());
                    }
                    if (friendMessage.hasTimestamp()) {
                        setTimestamp(friendMessage.getTimestamp());
                    }
                    if (friendMessage.hasMessage()) {
                        this.message_ = friendMessage.message_;
                        this.bitField0_ |= 4;
                        onChanged();
                    }
                    if (friendMessage.hasUnread()) {
                        setUnread(friendMessage.getUnread());
                    }
                    mergeUnknownFields(friendMessage.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    extensionRegistryLite.getClass();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int tag = codedInputStream.readTag();
                                if (tag != 0) {
                                    if (tag == 8) {
                                        this.accountid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.timestamp_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 26) {
                                        this.message_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 32) {
                                        this.unread_ = codedInputStream.readBool();
                                        this.bitField0_ |= 8;
                                    } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                throw e.unwrapIOException();
                            }
                        } catch (Throwable th) {
                            onChanged();
                            throw th;
                        }
                    }
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public boolean hasAccountid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public int getAccountid() {
                    return this.accountid_;
                }

                public Builder setAccountid(int i) {
                    this.accountid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearAccountid() {
                    this.bitField0_ &= -2;
                    this.accountid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public boolean hasTimestamp() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public int getTimestamp() {
                    return this.timestamp_;
                }

                public Builder setTimestamp(int i) {
                    this.timestamp_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearTimestamp() {
                    this.bitField0_ &= -3;
                    this.timestamp_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public boolean hasMessage() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public String getMessage() {
                    Object obj = this.message_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.message_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public ByteString getMessageBytes() {
                    Object obj = this.message_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.message_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setMessage(String str) {
                    str.getClass();
                    this.message_ = str;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearMessage() {
                    this.message_ = FriendMessage.getDefaultInstance().getMessage();
                    this.bitField0_ &= -5;
                    onChanged();
                    return this;
                }

                public Builder setMessageBytes(ByteString byteString) {
                    byteString.getClass();
                    this.message_ = byteString;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public boolean hasUnread() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponse.FriendMessageOrBuilder
                public boolean getUnread() {
                    return this.unread_;
                }

                public Builder setUnread(boolean z) {
                    this.unread_ = z;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearUnread() {
                    this.bitField0_ &= -9;
                    this.unread_ = false;
                    onChanged();
                    return this;
                }
            }

            public static FriendMessage getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<FriendMessage> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<FriendMessage> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FriendMessage getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public boolean hasSuccess() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public int getSuccess() {
            return this.success_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public List<FriendMessage> getMessagesList() {
            return this.messages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public List<? extends FriendMessageOrBuilder> getMessagesOrBuilderList() {
            return this.messages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public int getMessagesCount() {
            return this.messages_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public FriendMessage getMessages(int i) {
            return this.messages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
        public FriendMessageOrBuilder getMessagesOrBuilder(int i) {
            return this.messages_.get(i);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeFixed64(1, this.steamid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.success_);
            }
            for (int i = 0; i < this.messages_.size(); i++) {
                codedOutputStream.writeMessage(3, this.messages_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.success_);
            }
            for (int i2 = 0; i2 < this.messages_.size(); i2++) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(3, this.messages_.get(i2));
            }
            int serializedSize = iComputeFixed64Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientChatGetFriendMessageHistoryResponse)) {
                return super.equals(obj);
            }
            CMsgClientChatGetFriendMessageHistoryResponse cMsgClientChatGetFriendMessageHistoryResponse = (CMsgClientChatGetFriendMessageHistoryResponse) obj;
            if (hasSteamid() != cMsgClientChatGetFriendMessageHistoryResponse.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cMsgClientChatGetFriendMessageHistoryResponse.getSteamid()) && hasSuccess() == cMsgClientChatGetFriendMessageHistoryResponse.hasSuccess()) {
                return (!hasSuccess() || getSuccess() == cMsgClientChatGetFriendMessageHistoryResponse.getSuccess()) && getMessagesList().equals(cMsgClientChatGetFriendMessageHistoryResponse.getMessagesList()) && getUnknownFields().equals(cMsgClientChatGetFriendMessageHistoryResponse.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasSuccess()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSuccess();
            }
            if (getMessagesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getMessagesList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientChatGetFriendMessageHistoryResponse cMsgClientChatGetFriendMessageHistoryResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientChatGetFriendMessageHistoryResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientChatGetFriendMessageHistoryResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> messagesBuilder_;
            private List<FriendMessage> messages_;
            private long steamid_;
            private int success_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChatGetFriendMessageHistoryResponse.class, Builder.class);
            }

            private Builder() {
                this.messages_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.messages_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.success_ = 0;
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.messages_ = Collections.emptyList();
                } else {
                    this.messages_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientChatGetFriendMessageHistoryResponse getDefaultInstanceForType() {
                return CMsgClientChatGetFriendMessageHistoryResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChatGetFriendMessageHistoryResponse build() {
                CMsgClientChatGetFriendMessageHistoryResponse cMsgClientChatGetFriendMessageHistoryResponseBuildPartial = buildPartial();
                if (cMsgClientChatGetFriendMessageHistoryResponseBuildPartial.isInitialized()) {
                    return cMsgClientChatGetFriendMessageHistoryResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientChatGetFriendMessageHistoryResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChatGetFriendMessageHistoryResponse buildPartial() {
                CMsgClientChatGetFriendMessageHistoryResponse cMsgClientChatGetFriendMessageHistoryResponse = new CMsgClientChatGetFriendMessageHistoryResponse(this);
                buildPartialRepeatedFields(cMsgClientChatGetFriendMessageHistoryResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientChatGetFriendMessageHistoryResponse);
                }
                onBuilt();
                return cMsgClientChatGetFriendMessageHistoryResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientChatGetFriendMessageHistoryResponse cMsgClientChatGetFriendMessageHistoryResponse) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.messages_ = Collections.unmodifiableList(this.messages_);
                        this.bitField0_ &= -5;
                    }
                    cMsgClientChatGetFriendMessageHistoryResponse.messages_ = this.messages_;
                    return;
                }
                cMsgClientChatGetFriendMessageHistoryResponse.messages_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientChatGetFriendMessageHistoryResponse cMsgClientChatGetFriendMessageHistoryResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientChatGetFriendMessageHistoryResponse.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientChatGetFriendMessageHistoryResponse.success_ = this.success_;
                    i |= 2;
                }
                cMsgClientChatGetFriendMessageHistoryResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientChatGetFriendMessageHistoryResponse) {
                    return mergeFrom((CMsgClientChatGetFriendMessageHistoryResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientChatGetFriendMessageHistoryResponse cMsgClientChatGetFriendMessageHistoryResponse) {
                if (cMsgClientChatGetFriendMessageHistoryResponse == CMsgClientChatGetFriendMessageHistoryResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientChatGetFriendMessageHistoryResponse.hasSteamid()) {
                    setSteamid(cMsgClientChatGetFriendMessageHistoryResponse.getSteamid());
                }
                if (cMsgClientChatGetFriendMessageHistoryResponse.hasSuccess()) {
                    setSuccess(cMsgClientChatGetFriendMessageHistoryResponse.getSuccess());
                }
                if (this.messagesBuilder_ == null) {
                    if (!cMsgClientChatGetFriendMessageHistoryResponse.messages_.isEmpty()) {
                        if (this.messages_.isEmpty()) {
                            this.messages_ = cMsgClientChatGetFriendMessageHistoryResponse.messages_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureMessagesIsMutable();
                            this.messages_.addAll(cMsgClientChatGetFriendMessageHistoryResponse.messages_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientChatGetFriendMessageHistoryResponse.messages_.isEmpty()) {
                    if (this.messagesBuilder_.isEmpty()) {
                        this.messagesBuilder_.dispose();
                        this.messagesBuilder_ = null;
                        this.messages_ = cMsgClientChatGetFriendMessageHistoryResponse.messages_;
                        this.bitField0_ &= -5;
                        this.messagesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetMessagesFieldBuilder() : null;
                    } else {
                        this.messagesBuilder_.addAllMessages(cMsgClientChatGetFriendMessageHistoryResponse.messages_);
                    }
                }
                mergeUnknownFields(cMsgClientChatGetFriendMessageHistoryResponse.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 9) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.success_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    FriendMessage friendMessage = (FriendMessage) codedInputStream.readMessage(FriendMessage.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureMessagesIsMutable();
                                        this.messages_.add(friendMessage);
                                    } else {
                                        repeatedFieldBuilder.addMessage(friendMessage);
                                    }
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -2;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public boolean hasSuccess() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public int getSuccess() {
                return this.success_;
            }

            public Builder setSuccess(int i) {
                this.success_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSuccess() {
                this.bitField0_ &= -3;
                this.success_ = 0;
                onChanged();
                return this;
            }

            private void ensureMessagesIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.messages_ = new ArrayList(this.messages_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public List<FriendMessage> getMessagesList() {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.messages_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public int getMessagesCount() {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messages_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public FriendMessage getMessages(int i) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messages_.get(i);
                }
                return (FriendMessage) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setMessages(int i, FriendMessage friendMessage) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    friendMessage.getClass();
                    ensureMessagesIsMutable();
                    this.messages_.set(i, friendMessage);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, friendMessage);
                }
                return this;
            }

            public Builder setMessages(int i, FriendMessage.Builder builder) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessagesIsMutable();
                    this.messages_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMessages(FriendMessage friendMessage) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    friendMessage.getClass();
                    ensureMessagesIsMutable();
                    this.messages_.add(friendMessage);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(friendMessage);
                }
                return this;
            }

            public Builder addMessages(int i, FriendMessage friendMessage) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    friendMessage.getClass();
                    ensureMessagesIsMutable();
                    this.messages_.add(i, friendMessage);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, friendMessage);
                }
                return this;
            }

            public Builder addMessages(FriendMessage.Builder builder) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessagesIsMutable();
                    this.messages_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMessages(int i, FriendMessage.Builder builder) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessagesIsMutable();
                    this.messages_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMessages(Iterable<? extends FriendMessage> iterable) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessagesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.messages_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMessages() {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.messages_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeMessages(int i) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessagesIsMutable();
                    this.messages_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public FriendMessage.Builder getMessagesBuilder(int i) {
                return (FriendMessage.Builder) internalGetMessagesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public FriendMessageOrBuilder getMessagesOrBuilder(int i) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messages_.get(i);
                }
                return (FriendMessageOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryResponseOrBuilder
            public List<? extends FriendMessageOrBuilder> getMessagesOrBuilderList() {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.messages_);
            }

            public FriendMessage.Builder addMessagesBuilder() {
                return (FriendMessage.Builder) internalGetMessagesFieldBuilder().addBuilder(FriendMessage.getDefaultInstance());
            }

            public FriendMessage.Builder addMessagesBuilder(int i) {
                return (FriendMessage.Builder) internalGetMessagesFieldBuilder().addBuilder(i, FriendMessage.getDefaultInstance());
            }

            public List<FriendMessage.Builder> getMessagesBuilderList() {
                return internalGetMessagesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> internalGetMessagesFieldBuilder() {
                if (this.messagesBuilder_ == null) {
                    this.messagesBuilder_ = new RepeatedFieldBuilder<>(this.messages_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.messages_ = null;
                }
                return this.messagesBuilder_;
            }
        }

        public static CMsgClientChatGetFriendMessageHistoryResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientChatGetFriendMessageHistoryResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientChatGetFriendMessageHistoryResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientChatGetFriendMessageHistoryResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientChatGetFriendMessageHistoryForOfflineMessages extends GeneratedMessage implements MessageOrBuilder {
        private static final CMsgClientChatGetFriendMessageHistoryForOfflineMessages DEFAULT_INSTANCE;
        private static final Parser<CMsgClientChatGetFriendMessageHistoryForOfflineMessages> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientChatGetFriendMessageHistoryForOfflineMessages.class.getName());
            DEFAULT_INSTANCE = new CMsgClientChatGetFriendMessageHistoryForOfflineMessages();
            PARSER = new AbstractParser<CMsgClientChatGetFriendMessageHistoryForOfflineMessages>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientChatGetFriendMessageHistoryForOfflineMessages.1
                @Override // com.google.protobuf.Parser
                public CMsgClientChatGetFriendMessageHistoryForOfflineMessages parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientChatGetFriendMessageHistoryForOfflineMessages.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientChatGetFriendMessageHistoryForOfflineMessages(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientChatGetFriendMessageHistoryForOfflineMessages() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChatGetFriendMessageHistoryForOfflineMessages.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof CMsgClientChatGetFriendMessageHistoryForOfflineMessages) {
                return getUnknownFields().equals(((CMsgClientChatGetFriendMessageHistoryForOfflineMessages) obj).getUnknownFields());
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((779 + getDescriptor().hashCode()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryForOfflineMessages) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryForOfflineMessages) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryForOfflineMessages) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryForOfflineMessages) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryForOfflineMessages) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChatGetFriendMessageHistoryForOfflineMessages) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientChatGetFriendMessageHistoryForOfflineMessages cMsgClientChatGetFriendMessageHistoryForOfflineMessages) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientChatGetFriendMessageHistoryForOfflineMessages);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements MessageOrBuilder {
            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChatGetFriendMessageHistoryForOfflineMessages.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientChatGetFriendMessageHistoryForOfflineMessages_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientChatGetFriendMessageHistoryForOfflineMessages getDefaultInstanceForType() {
                return CMsgClientChatGetFriendMessageHistoryForOfflineMessages.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChatGetFriendMessageHistoryForOfflineMessages build() {
                CMsgClientChatGetFriendMessageHistoryForOfflineMessages cMsgClientChatGetFriendMessageHistoryForOfflineMessagesBuildPartial = buildPartial();
                if (cMsgClientChatGetFriendMessageHistoryForOfflineMessagesBuildPartial.isInitialized()) {
                    return cMsgClientChatGetFriendMessageHistoryForOfflineMessagesBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientChatGetFriendMessageHistoryForOfflineMessagesBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChatGetFriendMessageHistoryForOfflineMessages buildPartial() {
                CMsgClientChatGetFriendMessageHistoryForOfflineMessages cMsgClientChatGetFriendMessageHistoryForOfflineMessages = new CMsgClientChatGetFriendMessageHistoryForOfflineMessages(this);
                onBuilt();
                return cMsgClientChatGetFriendMessageHistoryForOfflineMessages;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientChatGetFriendMessageHistoryForOfflineMessages) {
                    return mergeFrom((CMsgClientChatGetFriendMessageHistoryForOfflineMessages) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientChatGetFriendMessageHistoryForOfflineMessages cMsgClientChatGetFriendMessageHistoryForOfflineMessages) {
                if (cMsgClientChatGetFriendMessageHistoryForOfflineMessages == CMsgClientChatGetFriendMessageHistoryForOfflineMessages.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cMsgClientChatGetFriendMessageHistoryForOfflineMessages.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } finally {
                        onChanged();
                    }
                }
                return this;
            }
        }

        public static CMsgClientChatGetFriendMessageHistoryForOfflineMessages getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientChatGetFriendMessageHistoryForOfflineMessages> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientChatGetFriendMessageHistoryForOfflineMessages> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientChatGetFriendMessageHistoryForOfflineMessages getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientEmailAddrInfo extends GeneratedMessage implements CMsgClientEmailAddrInfoOrBuilder {
        public static final int CREDENTIAL_CHANGE_REQUIRES_CODE_FIELD_NUMBER = 4;
        private static final CMsgClientEmailAddrInfo DEFAULT_INSTANCE;
        public static final int EMAIL_ADDRESS_FIELD_NUMBER = 1;
        public static final int EMAIL_IS_VALIDATED_FIELD_NUMBER = 2;
        public static final int EMAIL_VALIDATION_CHANGED_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientEmailAddrInfo> PARSER;
        public static final int PASSWORD_OR_SECRETQA_CHANGE_REQUIRES_CODE_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean credentialChangeRequiresCode_;
        private volatile Object emailAddress_;
        private boolean emailIsValidated_;
        private boolean emailValidationChanged_;
        private byte memoizedIsInitialized;
        private boolean passwordOrSecretqaChangeRequiresCode_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientEmailAddrInfo.class.getName());
            DEFAULT_INSTANCE = new CMsgClientEmailAddrInfo();
            PARSER = new AbstractParser<CMsgClientEmailAddrInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfo.1
                @Override // com.google.protobuf.Parser
                public CMsgClientEmailAddrInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientEmailAddrInfo.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientEmailAddrInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.emailAddress_ = "";
            this.emailIsValidated_ = false;
            this.emailValidationChanged_ = false;
            this.credentialChangeRequiresCode_ = false;
            this.passwordOrSecretqaChangeRequiresCode_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientEmailAddrInfo() {
            this.emailAddress_ = "";
            this.emailIsValidated_ = false;
            this.emailValidationChanged_ = false;
            this.credentialChangeRequiresCode_ = false;
            this.passwordOrSecretqaChangeRequiresCode_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.emailAddress_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientEmailAddrInfo_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientEmailAddrInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientEmailAddrInfo.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean hasEmailAddress() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public String getEmailAddress() {
            Object obj = this.emailAddress_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.emailAddress_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public ByteString getEmailAddressBytes() {
            Object obj = this.emailAddress_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.emailAddress_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean hasEmailIsValidated() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean getEmailIsValidated() {
            return this.emailIsValidated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean hasEmailValidationChanged() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean getEmailValidationChanged() {
            return this.emailValidationChanged_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean hasCredentialChangeRequiresCode() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean getCredentialChangeRequiresCode() {
            return this.credentialChangeRequiresCode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean hasPasswordOrSecretqaChangeRequiresCode() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
        public boolean getPasswordOrSecretqaChangeRequiresCode() {
            return this.passwordOrSecretqaChangeRequiresCode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 1, this.emailAddress_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.emailIsValidated_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.emailValidationChanged_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.credentialChangeRequiresCode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.passwordOrSecretqaChangeRequiresCode_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.emailAddress_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(2, this.emailIsValidated_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(3, this.emailValidationChanged_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(4, this.credentialChangeRequiresCode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(5, this.passwordOrSecretqaChangeRequiresCode_);
            }
            int serializedSize = iComputeStringSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientEmailAddrInfo)) {
                return super.equals(obj);
            }
            CMsgClientEmailAddrInfo cMsgClientEmailAddrInfo = (CMsgClientEmailAddrInfo) obj;
            if (hasEmailAddress() != cMsgClientEmailAddrInfo.hasEmailAddress()) {
                return false;
            }
            if ((hasEmailAddress() && !getEmailAddress().equals(cMsgClientEmailAddrInfo.getEmailAddress())) || hasEmailIsValidated() != cMsgClientEmailAddrInfo.hasEmailIsValidated()) {
                return false;
            }
            if ((hasEmailIsValidated() && getEmailIsValidated() != cMsgClientEmailAddrInfo.getEmailIsValidated()) || hasEmailValidationChanged() != cMsgClientEmailAddrInfo.hasEmailValidationChanged()) {
                return false;
            }
            if ((hasEmailValidationChanged() && getEmailValidationChanged() != cMsgClientEmailAddrInfo.getEmailValidationChanged()) || hasCredentialChangeRequiresCode() != cMsgClientEmailAddrInfo.hasCredentialChangeRequiresCode()) {
                return false;
            }
            if ((!hasCredentialChangeRequiresCode() || getCredentialChangeRequiresCode() == cMsgClientEmailAddrInfo.getCredentialChangeRequiresCode()) && hasPasswordOrSecretqaChangeRequiresCode() == cMsgClientEmailAddrInfo.hasPasswordOrSecretqaChangeRequiresCode()) {
                return (!hasPasswordOrSecretqaChangeRequiresCode() || getPasswordOrSecretqaChangeRequiresCode() == cMsgClientEmailAddrInfo.getPasswordOrSecretqaChangeRequiresCode()) && getUnknownFields().equals(cMsgClientEmailAddrInfo.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEmailAddress()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEmailAddress().hashCode();
            }
            if (hasEmailIsValidated()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getEmailIsValidated());
            }
            if (hasEmailValidationChanged()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getEmailValidationChanged());
            }
            if (hasCredentialChangeRequiresCode()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getCredentialChangeRequiresCode());
            }
            if (hasPasswordOrSecretqaChangeRequiresCode()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getPasswordOrSecretqaChangeRequiresCode());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientEmailAddrInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientEmailAddrInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientEmailAddrInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientEmailAddrInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientEmailAddrInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientEmailAddrInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientEmailAddrInfo parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientEmailAddrInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientEmailAddrInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientEmailAddrInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientEmailAddrInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientEmailAddrInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientEmailAddrInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientEmailAddrInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientEmailAddrInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientEmailAddrInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientEmailAddrInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientEmailAddrInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientEmailAddrInfo cMsgClientEmailAddrInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientEmailAddrInfo);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientEmailAddrInfoOrBuilder {
            private int bitField0_;
            private boolean credentialChangeRequiresCode_;
            private Object emailAddress_;
            private boolean emailIsValidated_;
            private boolean emailValidationChanged_;
            private boolean passwordOrSecretqaChangeRequiresCode_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientEmailAddrInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientEmailAddrInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientEmailAddrInfo.class, Builder.class);
            }

            private Builder() {
                this.emailAddress_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.emailAddress_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.emailAddress_ = "";
                this.emailIsValidated_ = false;
                this.emailValidationChanged_ = false;
                this.credentialChangeRequiresCode_ = false;
                this.passwordOrSecretqaChangeRequiresCode_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientEmailAddrInfo_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientEmailAddrInfo getDefaultInstanceForType() {
                return CMsgClientEmailAddrInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientEmailAddrInfo build() {
                CMsgClientEmailAddrInfo cMsgClientEmailAddrInfoBuildPartial = buildPartial();
                if (cMsgClientEmailAddrInfoBuildPartial.isInitialized()) {
                    return cMsgClientEmailAddrInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientEmailAddrInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientEmailAddrInfo buildPartial() {
                CMsgClientEmailAddrInfo cMsgClientEmailAddrInfo = new CMsgClientEmailAddrInfo(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientEmailAddrInfo);
                }
                onBuilt();
                return cMsgClientEmailAddrInfo;
            }

            private void buildPartial0(CMsgClientEmailAddrInfo cMsgClientEmailAddrInfo) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientEmailAddrInfo.emailAddress_ = this.emailAddress_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientEmailAddrInfo.emailIsValidated_ = this.emailIsValidated_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientEmailAddrInfo.emailValidationChanged_ = this.emailValidationChanged_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientEmailAddrInfo.credentialChangeRequiresCode_ = this.credentialChangeRequiresCode_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientEmailAddrInfo.passwordOrSecretqaChangeRequiresCode_ = this.passwordOrSecretqaChangeRequiresCode_;
                    i |= 16;
                }
                cMsgClientEmailAddrInfo.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientEmailAddrInfo) {
                    return mergeFrom((CMsgClientEmailAddrInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientEmailAddrInfo cMsgClientEmailAddrInfo) {
                if (cMsgClientEmailAddrInfo == CMsgClientEmailAddrInfo.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientEmailAddrInfo.hasEmailAddress()) {
                    this.emailAddress_ = cMsgClientEmailAddrInfo.emailAddress_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cMsgClientEmailAddrInfo.hasEmailIsValidated()) {
                    setEmailIsValidated(cMsgClientEmailAddrInfo.getEmailIsValidated());
                }
                if (cMsgClientEmailAddrInfo.hasEmailValidationChanged()) {
                    setEmailValidationChanged(cMsgClientEmailAddrInfo.getEmailValidationChanged());
                }
                if (cMsgClientEmailAddrInfo.hasCredentialChangeRequiresCode()) {
                    setCredentialChangeRequiresCode(cMsgClientEmailAddrInfo.getCredentialChangeRequiresCode());
                }
                if (cMsgClientEmailAddrInfo.hasPasswordOrSecretqaChangeRequiresCode()) {
                    setPasswordOrSecretqaChangeRequiresCode(cMsgClientEmailAddrInfo.getPasswordOrSecretqaChangeRequiresCode());
                }
                mergeUnknownFields(cMsgClientEmailAddrInfo.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    this.emailAddress_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.emailIsValidated_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.emailValidationChanged_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.credentialChangeRequiresCode_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.passwordOrSecretqaChangeRequiresCode_ = codedInputStream.readBool();
                                    this.bitField0_ |= 16;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean hasEmailAddress() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public String getEmailAddress() {
                Object obj = this.emailAddress_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.emailAddress_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public ByteString getEmailAddressBytes() {
                Object obj = this.emailAddress_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.emailAddress_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setEmailAddress(String str) {
                str.getClass();
                this.emailAddress_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEmailAddress() {
                this.emailAddress_ = CMsgClientEmailAddrInfo.getDefaultInstance().getEmailAddress();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setEmailAddressBytes(ByteString byteString) {
                byteString.getClass();
                this.emailAddress_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean hasEmailIsValidated() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean getEmailIsValidated() {
                return this.emailIsValidated_;
            }

            public Builder setEmailIsValidated(boolean z) {
                this.emailIsValidated_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearEmailIsValidated() {
                this.bitField0_ &= -3;
                this.emailIsValidated_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean hasEmailValidationChanged() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean getEmailValidationChanged() {
                return this.emailValidationChanged_;
            }

            public Builder setEmailValidationChanged(boolean z) {
                this.emailValidationChanged_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearEmailValidationChanged() {
                this.bitField0_ &= -5;
                this.emailValidationChanged_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean hasCredentialChangeRequiresCode() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean getCredentialChangeRequiresCode() {
                return this.credentialChangeRequiresCode_;
            }

            public Builder setCredentialChangeRequiresCode(boolean z) {
                this.credentialChangeRequiresCode_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearCredentialChangeRequiresCode() {
                this.bitField0_ &= -9;
                this.credentialChangeRequiresCode_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean hasPasswordOrSecretqaChangeRequiresCode() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientEmailAddrInfoOrBuilder
            public boolean getPasswordOrSecretqaChangeRequiresCode() {
                return this.passwordOrSecretqaChangeRequiresCode_;
            }

            public Builder setPasswordOrSecretqaChangeRequiresCode(boolean z) {
                this.passwordOrSecretqaChangeRequiresCode_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearPasswordOrSecretqaChangeRequiresCode() {
                this.bitField0_ &= -17;
                this.passwordOrSecretqaChangeRequiresCode_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientEmailAddrInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientEmailAddrInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientEmailAddrInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientEmailAddrInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgDPGetNumberOfCurrentPlayers extends GeneratedMessage implements CMsgDPGetNumberOfCurrentPlayersOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CMsgDPGetNumberOfCurrentPlayers DEFAULT_INSTANCE;
        private static final Parser<CMsgDPGetNumberOfCurrentPlayers> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgDPGetNumberOfCurrentPlayers.class.getName());
            DEFAULT_INSTANCE = new CMsgDPGetNumberOfCurrentPlayers();
            PARSER = new AbstractParser<CMsgDPGetNumberOfCurrentPlayers>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayers.1
                @Override // com.google.protobuf.Parser
                public CMsgDPGetNumberOfCurrentPlayers parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgDPGetNumberOfCurrentPlayers.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgDPGetNumberOfCurrentPlayers(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgDPGetNumberOfCurrentPlayers() {
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayers_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayers_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgDPGetNumberOfCurrentPlayers.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.appid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgDPGetNumberOfCurrentPlayers)) {
                return super.equals(obj);
            }
            CMsgDPGetNumberOfCurrentPlayers cMsgDPGetNumberOfCurrentPlayers = (CMsgDPGetNumberOfCurrentPlayers) obj;
            if (hasAppid() != cMsgDPGetNumberOfCurrentPlayers.hasAppid()) {
                return false;
            }
            return (!hasAppid() || getAppid() == cMsgDPGetNumberOfCurrentPlayers.getAppid()) && getUnknownFields().equals(cMsgDPGetNumberOfCurrentPlayers.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getAppid();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(InputStream inputStream) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayers) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayers) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayers) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayers) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayers) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgDPGetNumberOfCurrentPlayers parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayers) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgDPGetNumberOfCurrentPlayers cMsgDPGetNumberOfCurrentPlayers) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgDPGetNumberOfCurrentPlayers);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgDPGetNumberOfCurrentPlayersOrBuilder {
            private int appid_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayers_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayers_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgDPGetNumberOfCurrentPlayers.class, Builder.class);
            }

            private Builder() {
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayers_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgDPGetNumberOfCurrentPlayers getDefaultInstanceForType() {
                return CMsgDPGetNumberOfCurrentPlayers.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgDPGetNumberOfCurrentPlayers build() {
                CMsgDPGetNumberOfCurrentPlayers cMsgDPGetNumberOfCurrentPlayersBuildPartial = buildPartial();
                if (cMsgDPGetNumberOfCurrentPlayersBuildPartial.isInitialized()) {
                    return cMsgDPGetNumberOfCurrentPlayersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgDPGetNumberOfCurrentPlayersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgDPGetNumberOfCurrentPlayers buildPartial() {
                CMsgDPGetNumberOfCurrentPlayers cMsgDPGetNumberOfCurrentPlayers = new CMsgDPGetNumberOfCurrentPlayers(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgDPGetNumberOfCurrentPlayers);
                }
                onBuilt();
                return cMsgDPGetNumberOfCurrentPlayers;
            }

            private void buildPartial0(CMsgDPGetNumberOfCurrentPlayers cMsgDPGetNumberOfCurrentPlayers) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgDPGetNumberOfCurrentPlayers.appid_ = this.appid_;
                } else {
                    i = 0;
                }
                cMsgDPGetNumberOfCurrentPlayers.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgDPGetNumberOfCurrentPlayers) {
                    return mergeFrom((CMsgDPGetNumberOfCurrentPlayers) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgDPGetNumberOfCurrentPlayers cMsgDPGetNumberOfCurrentPlayers) {
                if (cMsgDPGetNumberOfCurrentPlayers == CMsgDPGetNumberOfCurrentPlayers.getDefaultInstance()) {
                    return this;
                }
                if (cMsgDPGetNumberOfCurrentPlayers.hasAppid()) {
                    setAppid(cMsgDPGetNumberOfCurrentPlayers.getAppid());
                }
                mergeUnknownFields(cMsgDPGetNumberOfCurrentPlayers.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgDPGetNumberOfCurrentPlayers getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgDPGetNumberOfCurrentPlayers> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgDPGetNumberOfCurrentPlayers> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgDPGetNumberOfCurrentPlayers getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgDPGetNumberOfCurrentPlayersResponse extends GeneratedMessage implements CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder {
        private static final CMsgDPGetNumberOfCurrentPlayersResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgDPGetNumberOfCurrentPlayersResponse> PARSER;
        public static final int PLAYER_COUNT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private int playerCount_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgDPGetNumberOfCurrentPlayersResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgDPGetNumberOfCurrentPlayersResponse();
            PARSER = new AbstractParser<CMsgDPGetNumberOfCurrentPlayersResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgDPGetNumberOfCurrentPlayersResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgDPGetNumberOfCurrentPlayersResponse.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgDPGetNumberOfCurrentPlayersResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.playerCount_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgDPGetNumberOfCurrentPlayersResponse() {
            this.playerCount_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgDPGetNumberOfCurrentPlayersResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
        public boolean hasPlayerCount() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
        public int getPlayerCount() {
            return this.playerCount_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.playerCount_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.eresult_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.playerCount_);
            }
            int serializedSize = iComputeInt32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgDPGetNumberOfCurrentPlayersResponse)) {
                return super.equals(obj);
            }
            CMsgDPGetNumberOfCurrentPlayersResponse cMsgDPGetNumberOfCurrentPlayersResponse = (CMsgDPGetNumberOfCurrentPlayersResponse) obj;
            if (hasEresult() != cMsgDPGetNumberOfCurrentPlayersResponse.hasEresult()) {
                return false;
            }
            if ((!hasEresult() || getEresult() == cMsgDPGetNumberOfCurrentPlayersResponse.getEresult()) && hasPlayerCount() == cMsgDPGetNumberOfCurrentPlayersResponse.hasPlayerCount()) {
                return (!hasPlayerCount() || getPlayerCount() == cMsgDPGetNumberOfCurrentPlayersResponse.getPlayerCount()) && getUnknownFields().equals(cMsgDPGetNumberOfCurrentPlayersResponse.getUnknownFields());
            }
            return false;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEresult();
            }
            if (hasPlayerCount()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPlayerCount();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayersResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayersResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayersResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayersResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayersResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgDPGetNumberOfCurrentPlayersResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgDPGetNumberOfCurrentPlayersResponse cMsgDPGetNumberOfCurrentPlayersResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgDPGetNumberOfCurrentPlayersResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private int playerCount_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgDPGetNumberOfCurrentPlayersResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.playerCount_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgDPGetNumberOfCurrentPlayersResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgDPGetNumberOfCurrentPlayersResponse getDefaultInstanceForType() {
                return CMsgDPGetNumberOfCurrentPlayersResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgDPGetNumberOfCurrentPlayersResponse build() {
                CMsgDPGetNumberOfCurrentPlayersResponse cMsgDPGetNumberOfCurrentPlayersResponseBuildPartial = buildPartial();
                if (cMsgDPGetNumberOfCurrentPlayersResponseBuildPartial.isInitialized()) {
                    return cMsgDPGetNumberOfCurrentPlayersResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgDPGetNumberOfCurrentPlayersResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgDPGetNumberOfCurrentPlayersResponse buildPartial() {
                CMsgDPGetNumberOfCurrentPlayersResponse cMsgDPGetNumberOfCurrentPlayersResponse = new CMsgDPGetNumberOfCurrentPlayersResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgDPGetNumberOfCurrentPlayersResponse);
                }
                onBuilt();
                return cMsgDPGetNumberOfCurrentPlayersResponse;
            }

            private void buildPartial0(CMsgDPGetNumberOfCurrentPlayersResponse cMsgDPGetNumberOfCurrentPlayersResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgDPGetNumberOfCurrentPlayersResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgDPGetNumberOfCurrentPlayersResponse.playerCount_ = this.playerCount_;
                    i |= 2;
                }
                cMsgDPGetNumberOfCurrentPlayersResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgDPGetNumberOfCurrentPlayersResponse) {
                    return mergeFrom((CMsgDPGetNumberOfCurrentPlayersResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgDPGetNumberOfCurrentPlayersResponse cMsgDPGetNumberOfCurrentPlayersResponse) {
                if (cMsgDPGetNumberOfCurrentPlayersResponse == CMsgDPGetNumberOfCurrentPlayersResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgDPGetNumberOfCurrentPlayersResponse.hasEresult()) {
                    setEresult(cMsgDPGetNumberOfCurrentPlayersResponse.getEresult());
                }
                if (cMsgDPGetNumberOfCurrentPlayersResponse.hasPlayerCount()) {
                    setPlayerCount(cMsgDPGetNumberOfCurrentPlayersResponse.getPlayerCount());
                }
                mergeUnknownFields(cMsgDPGetNumberOfCurrentPlayersResponse.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.playerCount_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -2;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
            public boolean hasPlayerCount() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponseOrBuilder
            public int getPlayerCount() {
                return this.playerCount_;
            }

            public Builder setPlayerCount(int i) {
                this.playerCount_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPlayerCount() {
                this.bitField0_ &= -3;
                this.playerCount_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgDPGetNumberOfCurrentPlayersResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgDPGetNumberOfCurrentPlayersResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgDPGetNumberOfCurrentPlayersResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgDPGetNumberOfCurrentPlayersResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientVanityURLChangedNotification extends GeneratedMessage implements CMsgClientVanityURLChangedNotificationOrBuilder {
        private static final CMsgClientVanityURLChangedNotification DEFAULT_INSTANCE;
        private static final Parser<CMsgClientVanityURLChangedNotification> PARSER;
        public static final int VANITY_URL_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object vanityUrl_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientVanityURLChangedNotification.class.getName());
            DEFAULT_INSTANCE = new CMsgClientVanityURLChangedNotification();
            PARSER = new AbstractParser<CMsgClientVanityURLChangedNotification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientVanityURLChangedNotification.1
                @Override // com.google.protobuf.Parser
                public CMsgClientVanityURLChangedNotification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientVanityURLChangedNotification.newBuilder();
                    try {
                        builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                        return builderNewBuilder.buildPartial();
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (UninitializedMessageException e2) {
                        throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(builderNewBuilder.buildPartial());
                    }
                }
            };
        }

        private CMsgClientVanityURLChangedNotification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.vanityUrl_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientVanityURLChangedNotification() {
            this.vanityUrl_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.vanityUrl_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserver2.internal_static_CMsgClientVanityURLChangedNotification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserver2.internal_static_CMsgClientVanityURLChangedNotification_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientVanityURLChangedNotification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientVanityURLChangedNotificationOrBuilder
        public boolean hasVanityUrl() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientVanityURLChangedNotificationOrBuilder
        public String getVanityUrl() {
            Object obj = this.vanityUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.vanityUrl_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientVanityURLChangedNotificationOrBuilder
        public ByteString getVanityUrlBytes() {
            Object obj = this.vanityUrl_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vanityUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 1, this.vanityUrl_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.vanityUrl_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientVanityURLChangedNotification)) {
                return super.equals(obj);
            }
            CMsgClientVanityURLChangedNotification cMsgClientVanityURLChangedNotification = (CMsgClientVanityURLChangedNotification) obj;
            if (hasVanityUrl() != cMsgClientVanityURLChangedNotification.hasVanityUrl()) {
                return false;
            }
            return (!hasVanityUrl() || getVanityUrl().equals(cMsgClientVanityURLChangedNotification.getVanityUrl())) && getUnknownFields().equals(cMsgClientVanityURLChangedNotification.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasVanityUrl()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getVanityUrl().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientVanityURLChangedNotification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientVanityURLChangedNotification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientVanityURLChangedNotification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientVanityURLChangedNotification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientVanityURLChangedNotification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientVanityURLChangedNotification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientVanityURLChangedNotification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientVanityURLChangedNotification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientVanityURLChangedNotification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientVanityURLChangedNotification cMsgClientVanityURLChangedNotification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientVanityURLChangedNotification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientVanityURLChangedNotificationOrBuilder {
            private int bitField0_;
            private Object vanityUrl_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserver2.internal_static_CMsgClientVanityURLChangedNotification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserver2.internal_static_CMsgClientVanityURLChangedNotification_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientVanityURLChangedNotification.class, Builder.class);
            }

            private Builder() {
                this.vanityUrl_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.vanityUrl_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.vanityUrl_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserver2.internal_static_CMsgClientVanityURLChangedNotification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientVanityURLChangedNotification getDefaultInstanceForType() {
                return CMsgClientVanityURLChangedNotification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientVanityURLChangedNotification build() {
                CMsgClientVanityURLChangedNotification cMsgClientVanityURLChangedNotificationBuildPartial = buildPartial();
                if (cMsgClientVanityURLChangedNotificationBuildPartial.isInitialized()) {
                    return cMsgClientVanityURLChangedNotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientVanityURLChangedNotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientVanityURLChangedNotification buildPartial() {
                CMsgClientVanityURLChangedNotification cMsgClientVanityURLChangedNotification = new CMsgClientVanityURLChangedNotification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientVanityURLChangedNotification);
                }
                onBuilt();
                return cMsgClientVanityURLChangedNotification;
            }

            private void buildPartial0(CMsgClientVanityURLChangedNotification cMsgClientVanityURLChangedNotification) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientVanityURLChangedNotification.vanityUrl_ = this.vanityUrl_;
                } else {
                    i = 0;
                }
                cMsgClientVanityURLChangedNotification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientVanityURLChangedNotification) {
                    return mergeFrom((CMsgClientVanityURLChangedNotification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientVanityURLChangedNotification cMsgClientVanityURLChangedNotification) {
                if (cMsgClientVanityURLChangedNotification == CMsgClientVanityURLChangedNotification.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientVanityURLChangedNotification.hasVanityUrl()) {
                    this.vanityUrl_ = cMsgClientVanityURLChangedNotification.vanityUrl_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientVanityURLChangedNotification.getUnknownFields());
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                extensionRegistryLite.getClass();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    this.vanityUrl_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.unwrapIOException();
                        }
                    } catch (Throwable th) {
                        onChanged();
                        throw th;
                    }
                }
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientVanityURLChangedNotificationOrBuilder
            public boolean hasVanityUrl() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientVanityURLChangedNotificationOrBuilder
            public String getVanityUrl() {
                Object obj = this.vanityUrl_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.vanityUrl_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2.CMsgClientVanityURLChangedNotificationOrBuilder
            public ByteString getVanityUrlBytes() {
                Object obj = this.vanityUrl_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.vanityUrl_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setVanityUrl(String str) {
                str.getClass();
                this.vanityUrl_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearVanityUrl() {
                this.vanityUrl_ = CMsgClientVanityURLChangedNotification.getDefaultInstance().getVanityUrl();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setVanityUrlBytes(ByteString byteString) {
                byteString.getClass();
                this.vanityUrl_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CMsgClientVanityURLChangedNotification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientVanityURLChangedNotification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientVanityURLChangedNotification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientVanityURLChangedNotification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }
}
