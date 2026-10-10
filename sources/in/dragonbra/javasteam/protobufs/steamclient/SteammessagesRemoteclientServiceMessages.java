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
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesRemoteclientServiceMessages {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CCMRemoteClient_ClientMessage_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CCMRemoteClient_ClientMessage_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CCMRemoteClient_ServerMessage_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CCMRemoteClient_ServerMessage_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_AddClientTask_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_AddClientTask_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_AddClientTask_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_AddClientTask_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_AllocateRelayServer_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_AllocateRelayServer_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_AllocateRelayServer_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_AllocateRelayServer_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_AllocateSDR_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_AllocateSDR_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_AllocateSDR_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_AllocateSDR_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_CancelPairing_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_CancelPairing_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_CancelPairing_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_CancelPairing_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_ClientDetails_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_ClientDetails_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_ClientLogin_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_ClientLogin_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_CreateSession_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_CreateSession_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_CreateSession_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_CreateSession_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_DeleteSession_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_DeleteSession_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_DeviceDetails_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_DeviceDetails_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_GetPairingInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_GetPairingInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_GetPairingInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_GetPairingInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_GetRecentClients_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_GetRecentClients_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_GetRecentClients_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_GetRecentClients_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_GetReplies_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_GetReplies_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_GetReplies_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_GetReplies_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_MarkTaskComplete_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_MarkTaskComplete_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_MarkTaskComplete_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_MarkTaskComplete_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_Online_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_Online_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_RegisterStatusUpdate_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_RegisterStatusUpdate_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_RemotePacket_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_RemotePacket_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_ReplyPacket_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_ReplyPacket_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_SetPairingInfo_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_SetPairingInfo_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_SetPairingInfo_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_SetPairingInfo_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_StartPairing_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_StartPairing_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_StartPairing_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_StartPairing_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_SteamBroadcast_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_SteamBroadcast_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_SteamToSteam_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_SteamToSteam_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_TaskList_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_TaskList_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_Task_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_Task_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlayTogether_Notification_ControllerSlot_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlayTogether_Notification_ControllerSlot_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlayTogether_Notification_GroupUpdated_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlayTogether_Notification_GroupUpdated_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlayTogether_Notification_Player_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlayTogether_Notification_Player_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlayTogether_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlayTogether_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlay_SessionStarted_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlay_SessionStarted_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlay_SessionStarted_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlay_SessionStarted_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CRemotePlay_SessionStopped_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemotePlay_SessionStopped_Notification_fieldAccessorTable;

    public interface CRemoteClient_AllocateRelayServer_RequestOrBuilder extends MessageOrBuilder {
        int getCellid();

        String getCredentials();

        ByteString getCredentialsBytes();

        boolean hasCellid();

        boolean hasCredentials();
    }

    public interface CRemoteClient_AllocateRelayServer_ResponseOrBuilder extends MessageOrBuilder {
        String getRelayServer();

        ByteString getRelayServerBytes();

        boolean hasRelayServer();
    }

    public interface CRemoteClient_AllocateSDR_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean hasAppid();
    }

    public interface CRemoteClient_ClientDetailsOrBuilder extends MessageOrBuilder {
        String getCity();

        ByteString getCityBytes();

        String getCountry();

        ByteString getCountryBytes();

        CRemoteClient_DeviceDetails getDeviceDetails();

        CRemoteClient_DeviceDetailsOrBuilder getDeviceDetailsOrBuilder();

        boolean getIsOnline();

        long getLastSeen();

        long getRemoteClientId();

        String getState();

        ByteString getStateBytes();

        boolean hasCity();

        boolean hasCountry();

        boolean hasDeviceDetails();

        boolean hasIsOnline();

        boolean hasLastSeen();

        boolean hasRemoteClientId();

        boolean hasState();
    }

    public interface CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getLaunchParameters();

        ByteString getLaunchParametersBytes();

        boolean hasAppid();

        boolean hasLaunchParameters();
    }

    public interface CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder extends MessageOrBuilder {
        String getInvitationCode();

        ByteString getInvitationCodeBytes();

        boolean hasInvitationCode();
    }

    public interface CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder extends MessageOrBuilder {
        String getInvitationCode();

        ByteString getInvitationCodeBytes();

        boolean hasInvitationCode();
    }

    public interface CRemoteClient_DeviceDetailsOrBuilder extends MessageOrBuilder {
        String getDeviceFriendlyName();

        ByteString getDeviceFriendlyNameBytes();

        int getGamingDeviceType();

        int getOsType();

        boolean hasDeviceFriendlyName();

        boolean hasGamingDeviceType();

        boolean hasOsType();
    }

    public interface CRemoteClient_GetPairingInfo_RequestOrBuilder extends MessageOrBuilder {
        int getPin();

        boolean hasPin();
    }

    public interface CRemoteClient_GetPairingInfo_ResponseOrBuilder extends MessageOrBuilder {
        long getDeviceId();

        ByteString getRequest();

        long getSessionId();

        boolean hasDeviceId();

        boolean hasRequest();

        boolean hasSessionId();
    }

    public interface CRemoteClient_GetRecentClients_ResponseOrBuilder extends MessageOrBuilder {
        CRemoteClient_ClientDetails getClients(int i);

        int getClientsCount();

        List<CRemoteClient_ClientDetails> getClientsList();

        CRemoteClient_ClientDetailsOrBuilder getClientsOrBuilder(int i);

        List<? extends CRemoteClient_ClientDetailsOrBuilder> getClientsOrBuilderList();
    }

    public interface CRemoteClient_MarkTaskComplete_RequestOrBuilder extends MessageOrBuilder {
        String getContentId();

        ByteString getContentIdBytes();

        long getRemoteClientId();

        long getTaskId();

        boolean hasContentId();

        boolean hasRemoteClientId();

        boolean hasTaskId();
    }

    public interface CRemoteClient_Online_NotificationOrBuilder extends MessageOrBuilder {
        CRemoteClient_DeviceDetails getDeviceDetails();

        CRemoteClient_DeviceDetailsOrBuilder getDeviceDetailsOrBuilder();

        long getRemoteClientId();

        long getSteamid();

        boolean hasDeviceDetails();

        boolean hasRemoteClientId();

        boolean hasSteamid();
    }

    public interface CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder extends MessageOrBuilder {
        long getDeviceId();

        long getSessionId();

        long getSteamid();

        boolean hasDeviceId();

        boolean hasSessionId();

        boolean hasSteamid();
    }

    public interface CRemoteClient_RemotePacket_NotificationOrBuilder extends MessageOrBuilder {
        ByteString getPayload();

        long getSessionId();

        long getSteamid();

        boolean hasPayload();

        boolean hasSessionId();

        boolean hasSteamid();
    }

    public interface CRemoteClient_ReplyPacket_NotificationOrBuilder extends MessageOrBuilder {
        ByteString getPayload();

        long getSessionId();

        boolean hasPayload();

        boolean hasSessionId();
    }

    public interface CRemoteClient_SteamBroadcast_NotificationOrBuilder extends MessageOrBuilder {
        long getClientid();

        ByteString getPayload();

        long getSteamid();

        boolean hasClientid();

        boolean hasPayload();

        boolean hasSteamid();
    }

    public interface CRemoteClient_SteamToSteam_NotificationOrBuilder extends MessageOrBuilder {
        long getDstClientid();

        ByteString getEncryptedPayload();

        int getSecretid();

        long getSrcClientid();

        long getSteamid();

        boolean hasDstClientid();

        boolean hasEncryptedPayload();

        boolean hasSecretid();

        boolean hasSrcClientid();

        boolean hasSteamid();
    }

    public interface CRemoteClient_TaskList_NotificationOrBuilder extends MessageOrBuilder {
        long getRemoteClientId();

        CRemoteClient_Task getTasklist(int i);

        int getTasklistCount();

        List<CRemoteClient_Task> getTasklistList();

        CRemoteClient_TaskOrBuilder getTasklistOrBuilder(int i);

        List<? extends CRemoteClient_TaskOrBuilder> getTasklistOrBuilderList();

        boolean hasRemoteClientId();
    }

    public interface CRemoteClient_TaskOrBuilder extends MessageOrBuilder {
        long getFileId();

        long getTaskId();

        ECLientTaskListType getType();

        String getUrl();

        ByteString getUrlBytes();

        boolean hasFileId();

        boolean hasTaskId();

        boolean hasType();

        boolean hasUrl();
    }

    public interface CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder extends MessageOrBuilder {
        long getSessionId();

        long getSteamid();

        boolean hasSessionId();

        boolean hasSteamid();
    }

    public interface CRemotePlayTogether_NotificationOrBuilder extends MessageOrBuilder {
        CRemotePlayTogether_Notification.GroupUpdated getGroupUpdated();

        CRemotePlayTogether_Notification.GroupUpdatedOrBuilder getGroupUpdatedOrBuilder();

        CRemotePlayTogether_Notification.MessageCase getMessageCase();

        long getSteamid();

        boolean hasGroupUpdated();

        boolean hasSteamid();
    }

    public interface CRemotePlay_SessionStarted_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        int getClientAccountId();

        int getDeviceFormFactor();

        boolean getGuestSession();

        int getHostAccountId();

        boolean getRemotePlayTogether();

        boolean hasAppid();

        boolean hasClientAccountId();

        boolean hasDeviceFormFactor();

        boolean hasGuestSession();

        boolean hasHostAccountId();

        boolean hasRemotePlayTogether();
    }

    public interface CRemotePlay_SessionStarted_ResponseOrBuilder extends MessageOrBuilder {
        long getRecordId();

        boolean hasRecordId();
    }

    public interface CRemotePlay_SessionStopped_NotificationOrBuilder extends MessageOrBuilder {
        long getRecordId();

        boolean getUsedH264();

        boolean getUsedHevc();

        boolean getUsedX264();

        boolean hasRecordId();

        boolean hasUsedH264();

        boolean hasUsedHevc();

        boolean hasUsedX264();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesRemoteclientServiceMessages() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesRemoteclientServiceMessages.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n^in/dragonbra/javasteam/protobufs/steamclient/steammessages_remoteclient_service_messages.proto\"%\n#CRemoteClient_CreateSession_Request\"M\n$CRemoteClient_CreateSession_Response\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\teuniverse\u0018\u0002 \u0001(\u0005\">\n(CRemoteClient_DeleteSession_Notification\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\"8\n\"CRemoteClient_StartPairing_Request\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\"2\n#CRemoteClient_StartPairing_Response\u0012\u000b\n\u0003pin\u0018\u0001 \u0001(\r\"^\n$CRemoteClient_SetPairingInfo_Request\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tdevice_id\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007request\u0018\u0003 \u0001(\f\"'\n%CRemoteClient_SetPairingInfo_Response\"3\n$CRemoteClient_GetPairingInfo_Request\u0012\u000b\n\u0003pin\u0018\u0001 \u0001(\r\"_\n%CRemoteClient_GetPairingInfo_Response\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tdevice_id\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007request\u0018\u0003 \u0001(\f\"9\n#CRemoteClient_CancelPairing_Request\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\"&\n$CRemoteClient_CancelPairing_Response\"i\n/CRemoteClient_RegisterStatusUpdate_Notification\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0006\u0012\u0011\n\tdevice_id\u0018\u0003 \u0001(\u0006\"X\n1CRemoteClient_UnregisterStatusUpdate_Notification\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0006\"h\n\u001bCRemoteClient_DeviceDetails\u0012\u001c\n\u0014device_friendly_name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007os_type\u0018\u0002 \u0001(\u0005\u0012\u001a\n\u0012gaming_device_type\u0018\u0003 \u0001(\r\"\u0084\u0001\n!CRemoteClient_Online_Notification\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010remote_client_id\u0018\u0002 \u0001(\u0006\u00124\n\u000edevice_details\u0018\u0003 \u0001(\u000b2\u001c.CRemoteClient_DeviceDetails\"(\n&CRemoteClient_GetRecentClients_Request\"}\n\u0019CRemoteClient_ClientLogin\u0012\u0018\n\u0010remote_client_id\u0018\u0001 \u0001(\u0006\u0012\u0010\n\btoken_id\u0018\u0002 \u0001(\u0006\u00124\n\u000edevice_details\u0018\u0003 \u0001(\u000b2\u001c.CRemoteClient_DeviceDetails\"Á\u0001\n\u001bCRemoteClient_ClientDetails\u0012\u0018\n\u0010remote_client_id\u0018\u0001 \u0001(\u0006\u00124\n\u000edevice_details\u0018\u0002 \u0001(\u000b2\u001c.CRemoteClient_DeviceDetails\u0012\u0011\n\tlast_seen\u0018\u0004 \u0001(\u0004\u0012\f\n\u0004city\u0018\u0005 \u0001(\t\u0012\r\n\u0005state\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007country\u0018\u0007 \u0001(\t\u0012\u0011\n\tis_online\u0018\b \u0001(\b\"X\n'CRemoteClient_GetRecentClients_Response\u0012-\n\u0007clients\u0018\u0001 \u0003(\u000b2\u001c.CRemoteClient_ClientDetails\"\u0083\u0001\n\u0012CRemoteClient_Task\u0012>\n\u0004type\u0018\u0001 \u0001(\u000e2\u0014.ECLientTaskListType:\u001ak_EClientTask_DownloadClip\u0012\u000f\n\u0007task_id\u0018\u0002 \u0001(\u0006\u0012\u000b\n\u0003url\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007file_id\u0018\u0004 \u0001(\u0003\"b\n#CRemoteClient_AddClientTask_Request\u0012\u0018\n\u0010remote_client_id\u0018\u0001 \u0001(\u0006\u0012!\n\u0004task\u0018\u0002 \u0001(\u000b2\u0013.CRemoteClient_Task\"&\n$CRemoteClient_AddClientTask_Response\"f\n#CRemoteClient_TaskList_Notification\u0012\u0018\n\u0010remote_client_id\u0018\u0001 \u0001(\u0006\u0012%\n\btasklist\u0018\u0002 \u0003(\u000b2\u0013.CRemoteClient_Task\"g\n&CRemoteClient_MarkTaskComplete_Request\u0012\u0018\n\u0010remote_client_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007task_id\u0018\u0002 \u0001(\u0006\u0012\u0012\n\ncontent_id\u0018\u0003 \u0001(\t\")\n'CRemoteClient_MarkTaskComplete_Response\"_\n'CRemoteClient_RemotePacket_Notification\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007payload\u0018\u0004 \u0001(\f\"M\n&CRemoteClient_ReplyPacket_Notification\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007payload\u0018\u0002 \u0001(\f\"6\n CRemoteClient_GetReplies_Request\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\u0006\"4\n!CRemoteClient_GetReplies_Response\u0012\u000f\n\u0007payload\u0018\u0001 \u0003(\f\"P\n)CRemoteClient_AllocateRelayServer_Request\u0012\u000e\n\u0006cellid\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bcredentials\u0018\u0002 \u0001(\t\"B\n*CRemoteClient_AllocateRelayServer_Response\u0012\u0014\n\frelay_server\u0018\u0001 \u0001(\t\"2\n!CRemoteClient_AllocateSDR_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\"$\n\"CRemoteClient_AllocateSDR_Response\"_\n)CRemoteClient_SteamBroadcast_Notification\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0010\n\bclientid\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007payload\u0018\u0003 \u0001(\f\"\u0093\u0001\n'CRemoteClient_SteamToSteam_Notification\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0014\n\fsrc_clientid\u0018\u0002 \u0001(\u0006\u0012\u0014\n\fdst_clientid\u0018\u0003 \u0001(\u0006\u0012\u0010\n\bsecretid\u0018\u0004 \u0001(\r\u0012\u0019\n\u0011encrypted_payload\u0018\u0005 \u0001(\f\"¸\u0001\n\"CRemotePlay_SessionStarted_Request\u0012\u0017\n\u000fhost_account_id\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011client_account_id\u0018\u0002 \u0001(\r\u0012\r\n\u0005appid\u0018\u0003 \u0001(\r\u0012\u001a\n\u0012device_form_factor\u0018\u0004 \u0001(\u0005\u0012\u001c\n\u0014remote_play_together\u0018\u0005 \u0001(\b\u0012\u0015\n\rguest_session\u0018\u0006 \u0001(\b\"8\n#CRemotePlay_SessionStarted_Response\u0012\u0011\n\trecord_id\u0018\u0001 \u0001(\u0006\"u\n'CRemotePlay_SessionStopped_Notification\u0012\u0011\n\trecord_id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tused_x264\u0018\u0002 \u0001(\b\u0012\u0011\n\tused_h264\u0018\u0003 \u0001(\b\u0012\u0011\n\tused_hevc\u0018\u0004 \u0001(\b\"·\u0006\n CRemotePlayTogether_Notification\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012G\n\rgroup_updated\u0018\u0002 \u0001(\u000b2..CRemotePlayTogether_Notification.GroupUpdatedH\u0000\u001a\u008c\u0001\n\u0006Player\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007guestid\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bavatar_hash\u0018\u0003 \u0001(\f\u0012\u0018\n\u0010keyboard_enabled\u0018\u0004 \u0001(\b\u0012\u0015\n\rmouse_enabled\u0018\u0005 \u0001(\b\u0012\u001a\n\u0012controller_enabled\u0018\u0006 \u0001(\b\u001a:\n\u0017ControllerSlot_obsolete\u0012\u000e\n\u0006slotid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0006\u001as\n\u000eControllerSlot\u0012\u000e\n\u0006slotid\u0018\u0001 \u0001(\r\u00128\n\u0006player\u0018\u0002 \u0001(\u000b2(.CRemotePlayTogether_Notification.Player\u0012\u0017\n\u000fcontroller_type\u0018\u0003 \u0001(\u0005\u001aí\u0002\n\fGroupUpdated\u0012\u0014\n\fhost_steamid\u0018\u0001 \u0001(\u0006\u0012\u0015\n\rhost_clientid\u0018\u0002 \u0001(\u0006\u0012\u0018\n\u0010players_obsolete\u0018\u0003 \u0003(\u0006\u0012\u0013\n\u000bhost_gameid\u0018\u0004 \u0001(\u0006\u0012\\\n\u0019controller_slots_obsolete\u0018\u0005 \u0003(\u000b29.CRemotePlayTogether_Notification.ControllerSlot_obsolete\u0012\u0017\n\u000fhas_new_players\u0018\u0006 \u0001(\b\u0012>\n\fplayer_slots\u0018\u0007 \u0003(\u000b2(.CRemotePlayTogether_Notification.Player\u0012J\n\u0010controller_slots\u0018\b \u0003(\u000b20.CRemotePlayTogether_Notification.ControllerSlotB\t\n\u0007Message\"d\n8CRemoteClient_CreateRemotePlayTogetherInvitation_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011launch_parameters\u0018\u0002 \u0001(\t\"T\n9CRemoteClient_CreateRemotePlayTogetherInvitation_Response\u0012\u0017\n\u000finvitation_code\u0018\u0001 \u0001(\t\"S\n8CRemoteClient_DeleteRemotePlayTogetherInvitation_Request\u0012\u0017\n\u000finvitation_code\u0018\u0001 \u0001(\t\";\n9CRemoteClient_DeleteRemotePlayTogetherInvitation_Response\"S\n8CRemoteClient_LookupRemotePlayTogetherInvitation_Request\u0012\u0017\n\u000finvitation_code\u0018\u0001 \u0001(\t\"S\n9CRemoteClient_LookupRemotePlayTogetherInvitation_Response\u0012\u0016\n\u000einvitation_url\u0018\u0001 \u0001(\t\"º\u0004\n\u001dCCMRemoteClient_ClientMessage\u0012F\n\u0016create_session_request\u0018\u0001 \u0001(\u000b2$.CRemoteClient_CreateSession_RequestH\u0000\u0012D\n\u0015start_pairing_request\u0018\u0002 \u0001(\u000b2#.CRemoteClient_StartPairing_RequestH\u0000\u0012I\n\u0018set_pairing_info_request\u0018\u0003 \u0001(\u000b2%.CRemoteClient_SetPairingInfo_RequestH\u0000\u0012F\n\u0016cancel_pairing_request\u0018\u0004 \u0001(\u000b2$.CRemoteClient_CancelPairing_RequestH\u0000\u0012R\n\u0016register_status_update\u0018\u0005 \u0001(\u000b20.CRemoteClient_RegisterStatusUpdate_NotificationH\u0000\u0012V\n\u0018unregister_status_update\u0018\u0006 \u0001(\u000b22.CRemoteClient_UnregisterStatusUpdate_NotificationH\u0000\u0012A\n\rremote_packet\u0018\u0007 \u0001(\u000b2(.CRemoteClient_RemotePacket_NotificationH\u0000B\t\n\u0007Message\"\u009f\u0003\n\u001dCCMRemoteClient_ServerMessage\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\u0005\u0012H\n\u0017create_session_response\u0018\u0002 \u0001(\u000b2%.CRemoteClient_CreateSession_ResponseH\u0000\u0012F\n\u0016start_pairing_response\u0018\u0003 \u0001(\u000b2$.CRemoteClient_StartPairing_ResponseH\u0000\u0012K\n\u0019set_pairing_info_response\u0018\u0004 \u0001(\u000b2&.CRemoteClient_SetPairingInfo_ResponseH\u0000\u0012H\n\u0017cancel_pairing_response\u0018\u0005 \u0001(\u000b2%.CRemoteClient_CancelPairing_ResponseH\u0000\u0012:\n\freply_packet\u0018\u0006 \u0001(\u000b2\".CRemoteClient_GetReplies_ResponseH\u0000B\t\n\u0007Message*5\n\u0013ECLientTaskListType\u0012\u001e\n\u001ak_EClientTask_DownloadClip\u0010\u0001B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[0]);
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CRemoteClient_CreateSession_Request_descriptor = descriptor2;
        internal_static_CRemoteClient_CreateSession_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[0]);
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CRemoteClient_CreateSession_Response_descriptor = descriptor3;
        internal_static_CRemoteClient_CreateSession_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"SessionId", "Euniverse"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CRemoteClient_DeleteSession_Notification_descriptor = descriptor4;
        internal_static_CRemoteClient_DeleteSession_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"SessionId"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CRemoteClient_StartPairing_Request_descriptor = descriptor5;
        internal_static_CRemoteClient_StartPairing_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"SessionId"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CRemoteClient_StartPairing_Response_descriptor = descriptor6;
        internal_static_CRemoteClient_StartPairing_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Pin"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CRemoteClient_SetPairingInfo_Request_descriptor = descriptor7;
        internal_static_CRemoteClient_SetPairingInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"SessionId", "DeviceId", "Request"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CRemoteClient_SetPairingInfo_Response_descriptor = descriptor8;
        internal_static_CRemoteClient_SetPairingInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[0]);
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CRemoteClient_GetPairingInfo_Request_descriptor = descriptor9;
        internal_static_CRemoteClient_GetPairingInfo_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Pin"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_CRemoteClient_GetPairingInfo_Response_descriptor = descriptor10;
        internal_static_CRemoteClient_GetPairingInfo_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"SessionId", "DeviceId", "Request"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_CRemoteClient_CancelPairing_Request_descriptor = descriptor11;
        internal_static_CRemoteClient_CancelPairing_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"SessionId"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_CRemoteClient_CancelPairing_Response_descriptor = descriptor12;
        internal_static_CRemoteClient_CancelPairing_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[0]);
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_CRemoteClient_RegisterStatusUpdate_Notification_descriptor = descriptor13;
        internal_static_CRemoteClient_RegisterStatusUpdate_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"SessionId", "Steamid", "DeviceId"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_descriptor = descriptor14;
        internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"SessionId", "Steamid"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(13);
        internal_static_CRemoteClient_DeviceDetails_descriptor = descriptor15;
        internal_static_CRemoteClient_DeviceDetails_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"DeviceFriendlyName", "OsType", "GamingDeviceType"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(14);
        internal_static_CRemoteClient_Online_Notification_descriptor = descriptor16;
        internal_static_CRemoteClient_Online_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Steamid", "RemoteClientId", "DeviceDetails"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(15);
        internal_static_CRemoteClient_GetRecentClients_Request_descriptor = descriptor17;
        internal_static_CRemoteClient_GetRecentClients_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[0]);
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(16);
        internal_static_CRemoteClient_ClientLogin_descriptor = descriptor18;
        internal_static_CRemoteClient_ClientLogin_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"RemoteClientId", "TokenId", "DeviceDetails"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(17);
        internal_static_CRemoteClient_ClientDetails_descriptor = descriptor19;
        internal_static_CRemoteClient_ClientDetails_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"RemoteClientId", "DeviceDetails", "LastSeen", "City", "State", "Country", "IsOnline"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(18);
        internal_static_CRemoteClient_GetRecentClients_Response_descriptor = descriptor20;
        internal_static_CRemoteClient_GetRecentClients_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"Clients"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(19);
        internal_static_CRemoteClient_Task_descriptor = descriptor21;
        internal_static_CRemoteClient_Task_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Type", "TaskId", "Url", "FileId"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(20);
        internal_static_CRemoteClient_AddClientTask_Request_descriptor = descriptor22;
        internal_static_CRemoteClient_AddClientTask_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"RemoteClientId", "Task"});
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(21);
        internal_static_CRemoteClient_AddClientTask_Response_descriptor = descriptor23;
        internal_static_CRemoteClient_AddClientTask_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[0]);
        Descriptors.Descriptor descriptor24 = getDescriptor().getMessageTypes().get(22);
        internal_static_CRemoteClient_TaskList_Notification_descriptor = descriptor24;
        internal_static_CRemoteClient_TaskList_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"RemoteClientId", "Tasklist"});
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(23);
        internal_static_CRemoteClient_MarkTaskComplete_Request_descriptor = descriptor25;
        internal_static_CRemoteClient_MarkTaskComplete_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[]{"RemoteClientId", "TaskId", "ContentId"});
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(24);
        internal_static_CRemoteClient_MarkTaskComplete_Response_descriptor = descriptor26;
        internal_static_CRemoteClient_MarkTaskComplete_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[0]);
        Descriptors.Descriptor descriptor27 = getDescriptor().getMessageTypes().get(25);
        internal_static_CRemoteClient_RemotePacket_Notification_descriptor = descriptor27;
        internal_static_CRemoteClient_RemotePacket_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"SessionId", "Steamid", "Payload"});
        Descriptors.Descriptor descriptor28 = getDescriptor().getMessageTypes().get(26);
        internal_static_CRemoteClient_ReplyPacket_Notification_descriptor = descriptor28;
        internal_static_CRemoteClient_ReplyPacket_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor28, new String[]{"SessionId", "Payload"});
        Descriptors.Descriptor descriptor29 = getDescriptor().getMessageTypes().get(27);
        internal_static_CRemoteClient_GetReplies_Request_descriptor = descriptor29;
        internal_static_CRemoteClient_GetReplies_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor29, new String[]{"SessionId"});
        Descriptors.Descriptor descriptor30 = getDescriptor().getMessageTypes().get(28);
        internal_static_CRemoteClient_GetReplies_Response_descriptor = descriptor30;
        internal_static_CRemoteClient_GetReplies_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor30, new String[]{"Payload"});
        Descriptors.Descriptor descriptor31 = getDescriptor().getMessageTypes().get(29);
        internal_static_CRemoteClient_AllocateRelayServer_Request_descriptor = descriptor31;
        internal_static_CRemoteClient_AllocateRelayServer_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor31, new String[]{"Cellid", "Credentials"});
        Descriptors.Descriptor descriptor32 = getDescriptor().getMessageTypes().get(30);
        internal_static_CRemoteClient_AllocateRelayServer_Response_descriptor = descriptor32;
        internal_static_CRemoteClient_AllocateRelayServer_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor32, new String[]{"RelayServer"});
        Descriptors.Descriptor descriptor33 = getDescriptor().getMessageTypes().get(31);
        internal_static_CRemoteClient_AllocateSDR_Request_descriptor = descriptor33;
        internal_static_CRemoteClient_AllocateSDR_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor33, new String[]{"Appid"});
        Descriptors.Descriptor descriptor34 = getDescriptor().getMessageTypes().get(32);
        internal_static_CRemoteClient_AllocateSDR_Response_descriptor = descriptor34;
        internal_static_CRemoteClient_AllocateSDR_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor34, new String[0]);
        Descriptors.Descriptor descriptor35 = getDescriptor().getMessageTypes().get(33);
        internal_static_CRemoteClient_SteamBroadcast_Notification_descriptor = descriptor35;
        internal_static_CRemoteClient_SteamBroadcast_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor35, new String[]{"Steamid", "Clientid", "Payload"});
        Descriptors.Descriptor descriptor36 = getDescriptor().getMessageTypes().get(34);
        internal_static_CRemoteClient_SteamToSteam_Notification_descriptor = descriptor36;
        internal_static_CRemoteClient_SteamToSteam_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor36, new String[]{"Steamid", "SrcClientid", "DstClientid", "Secretid", "EncryptedPayload"});
        Descriptors.Descriptor descriptor37 = getDescriptor().getMessageTypes().get(35);
        internal_static_CRemotePlay_SessionStarted_Request_descriptor = descriptor37;
        internal_static_CRemotePlay_SessionStarted_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor37, new String[]{"HostAccountId", "ClientAccountId", "Appid", "DeviceFormFactor", "RemotePlayTogether", "GuestSession"});
        Descriptors.Descriptor descriptor38 = getDescriptor().getMessageTypes().get(36);
        internal_static_CRemotePlay_SessionStarted_Response_descriptor = descriptor38;
        internal_static_CRemotePlay_SessionStarted_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor38, new String[]{"RecordId"});
        Descriptors.Descriptor descriptor39 = getDescriptor().getMessageTypes().get(37);
        internal_static_CRemotePlay_SessionStopped_Notification_descriptor = descriptor39;
        internal_static_CRemotePlay_SessionStopped_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor39, new String[]{"RecordId", "UsedX264", "UsedH264", "UsedHevc"});
        Descriptors.Descriptor descriptor40 = getDescriptor().getMessageTypes().get(38);
        internal_static_CRemotePlayTogether_Notification_descriptor = descriptor40;
        internal_static_CRemotePlayTogether_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor40, new String[]{"Steamid", "GroupUpdated", "Message"});
        Descriptors.Descriptor descriptor41 = descriptor40.getNestedTypes().get(0);
        internal_static_CRemotePlayTogether_Notification_Player_descriptor = descriptor41;
        internal_static_CRemotePlayTogether_Notification_Player_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor41, new String[]{"Steamid", "Guestid", "AvatarHash", "KeyboardEnabled", "MouseEnabled", "ControllerEnabled"});
        Descriptors.Descriptor descriptor42 = descriptor40.getNestedTypes().get(1);
        internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_descriptor = descriptor42;
        internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor42, new String[]{"Slotid", "Steamid"});
        Descriptors.Descriptor descriptor43 = descriptor40.getNestedTypes().get(2);
        internal_static_CRemotePlayTogether_Notification_ControllerSlot_descriptor = descriptor43;
        internal_static_CRemotePlayTogether_Notification_ControllerSlot_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor43, new String[]{"Slotid", "Player", "ControllerType"});
        Descriptors.Descriptor descriptor44 = descriptor40.getNestedTypes().get(3);
        internal_static_CRemotePlayTogether_Notification_GroupUpdated_descriptor = descriptor44;
        internal_static_CRemotePlayTogether_Notification_GroupUpdated_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor44, new String[]{"HostSteamid", "HostClientid", "PlayersObsolete", "HostGameid", "ControllerSlotsObsolete", "HasNewPlayers", "PlayerSlots", "ControllerSlots"});
        Descriptors.Descriptor descriptor45 = getDescriptor().getMessageTypes().get(39);
        internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_descriptor = descriptor45;
        internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor45, new String[]{"Appid", "LaunchParameters"});
        Descriptors.Descriptor descriptor46 = getDescriptor().getMessageTypes().get(40);
        internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_descriptor = descriptor46;
        internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor46, new String[]{"InvitationCode"});
        Descriptors.Descriptor descriptor47 = getDescriptor().getMessageTypes().get(41);
        internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_descriptor = descriptor47;
        internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor47, new String[]{"InvitationCode"});
        Descriptors.Descriptor descriptor48 = getDescriptor().getMessageTypes().get(42);
        internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_descriptor = descriptor48;
        internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor48, new String[0]);
        Descriptors.Descriptor descriptor49 = getDescriptor().getMessageTypes().get(43);
        internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Request_descriptor = descriptor49;
        internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor49, new String[]{"InvitationCode"});
        Descriptors.Descriptor descriptor50 = getDescriptor().getMessageTypes().get(44);
        internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Response_descriptor = descriptor50;
        internal_static_CRemoteClient_LookupRemotePlayTogetherInvitation_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor50, new String[]{"InvitationUrl"});
        Descriptors.Descriptor descriptor51 = getDescriptor().getMessageTypes().get(45);
        internal_static_CCMRemoteClient_ClientMessage_descriptor = descriptor51;
        internal_static_CCMRemoteClient_ClientMessage_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor51, new String[]{"CreateSessionRequest", "StartPairingRequest", "SetPairingInfoRequest", "CancelPairingRequest", "RegisterStatusUpdate", "UnregisterStatusUpdate", "RemotePacket", "Message"});
        Descriptors.Descriptor descriptor52 = getDescriptor().getMessageTypes().get(46);
        internal_static_CCMRemoteClient_ServerMessage_descriptor = descriptor52;
        internal_static_CCMRemoteClient_ServerMessage_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor52, new String[]{"Result", "CreateSessionResponse", "StartPairingResponse", "SetPairingInfoResponse", "CancelPairingResponse", "ReplyPacket", "Message"});
        descriptor.resolveAllFeaturesImmutable();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum ECLientTaskListType implements ProtocolMessageEnum {
        k_EClientTask_DownloadClip(1);

        private static final ECLientTaskListType[] VALUES;
        private static final Internal.EnumLiteMap<ECLientTaskListType> internalValueMap;
        public static final int k_EClientTask_DownloadClip_VALUE = 1;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ECLientTaskListType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ECLientTaskListType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.ECLientTaskListType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ECLientTaskListType findValueByNumber(int i) {
                    return ECLientTaskListType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ECLientTaskListType valueOf(int i) {
            return forNumber(i);
        }

        public static ECLientTaskListType forNumber(int i) {
            if (i != 1) {
                return null;
            }
            return k_EClientTask_DownloadClip;
        }

        public static Internal.EnumLiteMap<ECLientTaskListType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static Descriptors.EnumDescriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.getDescriptor().getEnumTypes().get(0);
        }

        public static ECLientTaskListType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ECLientTaskListType(int i) {
            this.value = i;
        }
    }

    public static final class CRemoteClient_GetPairingInfo_Request extends GeneratedMessage implements CRemoteClient_GetPairingInfo_RequestOrBuilder {
        private static final CRemoteClient_GetPairingInfo_Request DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_GetPairingInfo_Request> PARSER;
        public static final int PIN_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int pin_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_GetPairingInfo_Request.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_GetPairingInfo_Request();
            PARSER = new AbstractParser<CRemoteClient_GetPairingInfo_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_Request.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_GetPairingInfo_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_GetPairingInfo_Request.newBuilder();
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

        private CRemoteClient_GetPairingInfo_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.pin_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_GetPairingInfo_Request() {
            this.pin_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetPairingInfo_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_RequestOrBuilder
        public boolean hasPin() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_RequestOrBuilder
        public int getPin() {
            return this.pin_;
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
                codedOutputStream.writeUInt32(1, this.pin_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.pin_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CRemoteClient_GetPairingInfo_Request)) {
                return super.equals(obj);
            }
            CRemoteClient_GetPairingInfo_Request cRemoteClient_GetPairingInfo_Request = (CRemoteClient_GetPairingInfo_Request) obj;
            if (hasPin() != cRemoteClient_GetPairingInfo_Request.hasPin()) {
                return false;
            }
            return (!hasPin() || getPin() == cRemoteClient_GetPairingInfo_Request.getPin()) && getUnknownFields().equals(cRemoteClient_GetPairingInfo_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasPin()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPin();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetPairingInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetPairingInfo_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetPairingInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetPairingInfo_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetPairingInfo_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_GetPairingInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_GetPairingInfo_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetPairingInfo_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_GetPairingInfo_Request cRemoteClient_GetPairingInfo_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_GetPairingInfo_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_GetPairingInfo_RequestOrBuilder {
            private int bitField0_;
            private int pin_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetPairingInfo_Request.class, Builder.class);
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
                this.pin_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_GetPairingInfo_Request getDefaultInstanceForType() {
                return CRemoteClient_GetPairingInfo_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetPairingInfo_Request build() {
                CRemoteClient_GetPairingInfo_Request cRemoteClient_GetPairingInfo_RequestBuildPartial = buildPartial();
                if (cRemoteClient_GetPairingInfo_RequestBuildPartial.isInitialized()) {
                    return cRemoteClient_GetPairingInfo_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_GetPairingInfo_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetPairingInfo_Request buildPartial() {
                CRemoteClient_GetPairingInfo_Request cRemoteClient_GetPairingInfo_Request = new CRemoteClient_GetPairingInfo_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_GetPairingInfo_Request);
                }
                onBuilt();
                return cRemoteClient_GetPairingInfo_Request;
            }

            private void buildPartial0(CRemoteClient_GetPairingInfo_Request cRemoteClient_GetPairingInfo_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemoteClient_GetPairingInfo_Request.pin_ = this.pin_;
                } else {
                    i = 0;
                }
                cRemoteClient_GetPairingInfo_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_GetPairingInfo_Request) {
                    return mergeFrom((CRemoteClient_GetPairingInfo_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_GetPairingInfo_Request cRemoteClient_GetPairingInfo_Request) {
                if (cRemoteClient_GetPairingInfo_Request == CRemoteClient_GetPairingInfo_Request.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_GetPairingInfo_Request.hasPin()) {
                    setPin(cRemoteClient_GetPairingInfo_Request.getPin());
                }
                mergeUnknownFields(cRemoteClient_GetPairingInfo_Request.getUnknownFields());
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
                                    this.pin_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_RequestOrBuilder
            public boolean hasPin() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_RequestOrBuilder
            public int getPin() {
                return this.pin_;
            }

            public Builder setPin(int i) {
                this.pin_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPin() {
                this.bitField0_ &= -2;
                this.pin_ = 0;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_GetPairingInfo_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_GetPairingInfo_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_GetPairingInfo_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_GetPairingInfo_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_GetPairingInfo_Response extends GeneratedMessage implements CRemoteClient_GetPairingInfo_ResponseOrBuilder {
        private static final CRemoteClient_GetPairingInfo_Response DEFAULT_INSTANCE;
        public static final int DEVICE_ID_FIELD_NUMBER = 2;
        private static final Parser<CRemoteClient_GetPairingInfo_Response> PARSER;
        public static final int REQUEST_FIELD_NUMBER = 3;
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long deviceId_;
        private byte memoizedIsInitialized;
        private ByteString request_;
        private long sessionId_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_GetPairingInfo_Response.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_GetPairingInfo_Response();
            PARSER = new AbstractParser<CRemoteClient_GetPairingInfo_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_Response.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_GetPairingInfo_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_GetPairingInfo_Response.newBuilder();
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

        private CRemoteClient_GetPairingInfo_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionId_ = 0L;
            this.deviceId_ = 0L;
            this.request_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_GetPairingInfo_Response() {
            this.sessionId_ = 0L;
            this.deviceId_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.request_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetPairingInfo_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
        public boolean hasSessionId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
        public long getSessionId() {
            return this.sessionId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
        public long getDeviceId() {
            return this.deviceId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
        public boolean hasRequest() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
        public ByteString getRequest() {
            return this.request_;
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
                codedOutputStream.writeFixed64(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.deviceId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(3, this.request_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.sessionId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.deviceId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(3, this.request_);
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
            if (!(obj instanceof CRemoteClient_GetPairingInfo_Response)) {
                return super.equals(obj);
            }
            CRemoteClient_GetPairingInfo_Response cRemoteClient_GetPairingInfo_Response = (CRemoteClient_GetPairingInfo_Response) obj;
            if (hasSessionId() != cRemoteClient_GetPairingInfo_Response.hasSessionId()) {
                return false;
            }
            if ((hasSessionId() && getSessionId() != cRemoteClient_GetPairingInfo_Response.getSessionId()) || hasDeviceId() != cRemoteClient_GetPairingInfo_Response.hasDeviceId()) {
                return false;
            }
            if ((!hasDeviceId() || getDeviceId() == cRemoteClient_GetPairingInfo_Response.getDeviceId()) && hasRequest() == cRemoteClient_GetPairingInfo_Response.hasRequest()) {
                return (!hasRequest() || getRequest().equals(cRemoteClient_GetPairingInfo_Response.getRequest())) && getUnknownFields().equals(cRemoteClient_GetPairingInfo_Response.getUnknownFields());
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
            if (hasSessionId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionId());
            }
            if (hasDeviceId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getDeviceId());
            }
            if (hasRequest()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRequest().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetPairingInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetPairingInfo_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetPairingInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetPairingInfo_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetPairingInfo_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_GetPairingInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_GetPairingInfo_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetPairingInfo_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_GetPairingInfo_Response cRemoteClient_GetPairingInfo_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_GetPairingInfo_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_GetPairingInfo_ResponseOrBuilder {
            private int bitField0_;
            private long deviceId_;
            private ByteString request_;
            private long sessionId_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetPairingInfo_Response.class, Builder.class);
            }

            private Builder() {
                this.request_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.request_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.sessionId_ = 0L;
                this.deviceId_ = 0L;
                this.request_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetPairingInfo_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_GetPairingInfo_Response getDefaultInstanceForType() {
                return CRemoteClient_GetPairingInfo_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetPairingInfo_Response build() {
                CRemoteClient_GetPairingInfo_Response cRemoteClient_GetPairingInfo_ResponseBuildPartial = buildPartial();
                if (cRemoteClient_GetPairingInfo_ResponseBuildPartial.isInitialized()) {
                    return cRemoteClient_GetPairingInfo_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_GetPairingInfo_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetPairingInfo_Response buildPartial() {
                CRemoteClient_GetPairingInfo_Response cRemoteClient_GetPairingInfo_Response = new CRemoteClient_GetPairingInfo_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_GetPairingInfo_Response);
                }
                onBuilt();
                return cRemoteClient_GetPairingInfo_Response;
            }

            private void buildPartial0(CRemoteClient_GetPairingInfo_Response cRemoteClient_GetPairingInfo_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_GetPairingInfo_Response.sessionId_ = this.sessionId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_GetPairingInfo_Response.deviceId_ = this.deviceId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_GetPairingInfo_Response.request_ = this.request_;
                    i |= 4;
                }
                cRemoteClient_GetPairingInfo_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_GetPairingInfo_Response) {
                    return mergeFrom((CRemoteClient_GetPairingInfo_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_GetPairingInfo_Response cRemoteClient_GetPairingInfo_Response) {
                if (cRemoteClient_GetPairingInfo_Response == CRemoteClient_GetPairingInfo_Response.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_GetPairingInfo_Response.hasSessionId()) {
                    setSessionId(cRemoteClient_GetPairingInfo_Response.getSessionId());
                }
                if (cRemoteClient_GetPairingInfo_Response.hasDeviceId()) {
                    setDeviceId(cRemoteClient_GetPairingInfo_Response.getDeviceId());
                }
                if (cRemoteClient_GetPairingInfo_Response.hasRequest()) {
                    setRequest(cRemoteClient_GetPairingInfo_Response.getRequest());
                }
                mergeUnknownFields(cRemoteClient_GetPairingInfo_Response.getUnknownFields());
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
                                    this.sessionId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.deviceId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.request_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
            public boolean hasSessionId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
            public long getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(long j) {
                this.sessionId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2;
                this.sessionId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
            public long getDeviceId() {
                return this.deviceId_;
            }

            public Builder setDeviceId(long j) {
                this.deviceId_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -3;
                this.deviceId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
            public boolean hasRequest() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_ResponseOrBuilder
            public ByteString getRequest() {
                return this.request_;
            }

            public Builder setRequest(ByteString byteString) {
                byteString.getClass();
                this.request_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRequest() {
                this.bitField0_ &= -5;
                this.request_ = CRemoteClient_GetPairingInfo_Response.getDefaultInstance().getRequest();
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_GetPairingInfo_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_GetPairingInfo_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_GetPairingInfo_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_GetPairingInfo_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_RegisterStatusUpdate_Notification extends GeneratedMessage implements CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder {
        private static final CRemoteClient_RegisterStatusUpdate_Notification DEFAULT_INSTANCE;
        public static final int DEVICE_ID_FIELD_NUMBER = 3;
        private static final Parser<CRemoteClient_RegisterStatusUpdate_Notification> PARSER;
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long deviceId_;
        private byte memoizedIsInitialized;
        private long sessionId_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_RegisterStatusUpdate_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_RegisterStatusUpdate_Notification();
            PARSER = new AbstractParser<CRemoteClient_RegisterStatusUpdate_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_RegisterStatusUpdate_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_RegisterStatusUpdate_Notification.newBuilder();
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

        private CRemoteClient_RegisterStatusUpdate_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionId_ = 0L;
            this.steamid_ = 0L;
            this.deviceId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_RegisterStatusUpdate_Notification() {
            this.sessionId_ = 0L;
            this.steamid_ = 0L;
            this.deviceId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RegisterStatusUpdate_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RegisterStatusUpdate_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_RegisterStatusUpdate_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
        public boolean hasSessionId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
        public long getSessionId() {
            return this.sessionId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
        public long getDeviceId() {
            return this.deviceId_;
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
                codedOutputStream.writeFixed64(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.deviceId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.sessionId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(3, this.deviceId_);
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
            if (!(obj instanceof CRemoteClient_RegisterStatusUpdate_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_RegisterStatusUpdate_Notification cRemoteClient_RegisterStatusUpdate_Notification = (CRemoteClient_RegisterStatusUpdate_Notification) obj;
            if (hasSessionId() != cRemoteClient_RegisterStatusUpdate_Notification.hasSessionId()) {
                return false;
            }
            if ((hasSessionId() && getSessionId() != cRemoteClient_RegisterStatusUpdate_Notification.getSessionId()) || hasSteamid() != cRemoteClient_RegisterStatusUpdate_Notification.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cRemoteClient_RegisterStatusUpdate_Notification.getSteamid()) && hasDeviceId() == cRemoteClient_RegisterStatusUpdate_Notification.hasDeviceId()) {
                return (!hasDeviceId() || getDeviceId() == cRemoteClient_RegisterStatusUpdate_Notification.getDeviceId()) && getUnknownFields().equals(cRemoteClient_RegisterStatusUpdate_Notification.getUnknownFields());
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
            if (hasSessionId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionId());
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasDeviceId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getDeviceId());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_RegisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_RegisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_RegisterStatusUpdate_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_RegisterStatusUpdate_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_RegisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_RegisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_RegisterStatusUpdate_Notification cRemoteClient_RegisterStatusUpdate_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_RegisterStatusUpdate_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder {
            private int bitField0_;
            private long deviceId_;
            private long sessionId_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RegisterStatusUpdate_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RegisterStatusUpdate_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_RegisterStatusUpdate_Notification.class, Builder.class);
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
                this.sessionId_ = 0L;
                this.steamid_ = 0L;
                this.deviceId_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RegisterStatusUpdate_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_RegisterStatusUpdate_Notification getDefaultInstanceForType() {
                return CRemoteClient_RegisterStatusUpdate_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_RegisterStatusUpdate_Notification build() {
                CRemoteClient_RegisterStatusUpdate_Notification cRemoteClient_RegisterStatusUpdate_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_RegisterStatusUpdate_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_RegisterStatusUpdate_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_RegisterStatusUpdate_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_RegisterStatusUpdate_Notification buildPartial() {
                CRemoteClient_RegisterStatusUpdate_Notification cRemoteClient_RegisterStatusUpdate_Notification = new CRemoteClient_RegisterStatusUpdate_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_RegisterStatusUpdate_Notification);
                }
                onBuilt();
                return cRemoteClient_RegisterStatusUpdate_Notification;
            }

            private void buildPartial0(CRemoteClient_RegisterStatusUpdate_Notification cRemoteClient_RegisterStatusUpdate_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_RegisterStatusUpdate_Notification.sessionId_ = this.sessionId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_RegisterStatusUpdate_Notification.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_RegisterStatusUpdate_Notification.deviceId_ = this.deviceId_;
                    i |= 4;
                }
                cRemoteClient_RegisterStatusUpdate_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_RegisterStatusUpdate_Notification) {
                    return mergeFrom((CRemoteClient_RegisterStatusUpdate_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_RegisterStatusUpdate_Notification cRemoteClient_RegisterStatusUpdate_Notification) {
                if (cRemoteClient_RegisterStatusUpdate_Notification == CRemoteClient_RegisterStatusUpdate_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_RegisterStatusUpdate_Notification.hasSessionId()) {
                    setSessionId(cRemoteClient_RegisterStatusUpdate_Notification.getSessionId());
                }
                if (cRemoteClient_RegisterStatusUpdate_Notification.hasSteamid()) {
                    setSteamid(cRemoteClient_RegisterStatusUpdate_Notification.getSteamid());
                }
                if (cRemoteClient_RegisterStatusUpdate_Notification.hasDeviceId()) {
                    setDeviceId(cRemoteClient_RegisterStatusUpdate_Notification.getDeviceId());
                }
                mergeUnknownFields(cRemoteClient_RegisterStatusUpdate_Notification.getUnknownFields());
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
                                    this.sessionId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.deviceId_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
            public boolean hasSessionId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
            public long getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(long j) {
                this.sessionId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2;
                this.sessionId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -3;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_NotificationOrBuilder
            public long getDeviceId() {
                return this.deviceId_;
            }

            public Builder setDeviceId(long j) {
                this.deviceId_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -5;
                this.deviceId_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_RegisterStatusUpdate_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_RegisterStatusUpdate_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_RegisterStatusUpdate_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_RegisterStatusUpdate_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_UnregisterStatusUpdate_Notification extends GeneratedMessage implements CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder {
        private static final CRemoteClient_UnregisterStatusUpdate_Notification DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_UnregisterStatusUpdate_Notification> PARSER;
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long sessionId_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_UnregisterStatusUpdate_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_UnregisterStatusUpdate_Notification();
            PARSER = new AbstractParser<CRemoteClient_UnregisterStatusUpdate_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_UnregisterStatusUpdate_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_UnregisterStatusUpdate_Notification.newBuilder();
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

        private CRemoteClient_UnregisterStatusUpdate_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionId_ = 0L;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_UnregisterStatusUpdate_Notification() {
            this.sessionId_ = 0L;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_UnregisterStatusUpdate_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
        public boolean hasSessionId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
        public long getSessionId() {
            return this.sessionId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
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
                codedOutputStream.writeFixed64(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.sessionId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.steamid_);
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
            if (!(obj instanceof CRemoteClient_UnregisterStatusUpdate_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_UnregisterStatusUpdate_Notification cRemoteClient_UnregisterStatusUpdate_Notification = (CRemoteClient_UnregisterStatusUpdate_Notification) obj;
            if (hasSessionId() != cRemoteClient_UnregisterStatusUpdate_Notification.hasSessionId()) {
                return false;
            }
            if ((!hasSessionId() || getSessionId() == cRemoteClient_UnregisterStatusUpdate_Notification.getSessionId()) && hasSteamid() == cRemoteClient_UnregisterStatusUpdate_Notification.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cRemoteClient_UnregisterStatusUpdate_Notification.getSteamid()) && getUnknownFields().equals(cRemoteClient_UnregisterStatusUpdate_Notification.getUnknownFields());
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
            if (hasSessionId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionId());
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_UnregisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_UnregisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_UnregisterStatusUpdate_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_UnregisterStatusUpdate_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_UnregisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_UnregisterStatusUpdate_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_UnregisterStatusUpdate_Notification cRemoteClient_UnregisterStatusUpdate_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_UnregisterStatusUpdate_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder {
            private int bitField0_;
            private long sessionId_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_UnregisterStatusUpdate_Notification.class, Builder.class);
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
                this.sessionId_ = 0L;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_UnregisterStatusUpdate_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_UnregisterStatusUpdate_Notification getDefaultInstanceForType() {
                return CRemoteClient_UnregisterStatusUpdate_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_UnregisterStatusUpdate_Notification build() {
                CRemoteClient_UnregisterStatusUpdate_Notification cRemoteClient_UnregisterStatusUpdate_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_UnregisterStatusUpdate_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_UnregisterStatusUpdate_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_UnregisterStatusUpdate_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_UnregisterStatusUpdate_Notification buildPartial() {
                CRemoteClient_UnregisterStatusUpdate_Notification cRemoteClient_UnregisterStatusUpdate_Notification = new CRemoteClient_UnregisterStatusUpdate_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_UnregisterStatusUpdate_Notification);
                }
                onBuilt();
                return cRemoteClient_UnregisterStatusUpdate_Notification;
            }

            private void buildPartial0(CRemoteClient_UnregisterStatusUpdate_Notification cRemoteClient_UnregisterStatusUpdate_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_UnregisterStatusUpdate_Notification.sessionId_ = this.sessionId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_UnregisterStatusUpdate_Notification.steamid_ = this.steamid_;
                    i |= 2;
                }
                cRemoteClient_UnregisterStatusUpdate_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_UnregisterStatusUpdate_Notification) {
                    return mergeFrom((CRemoteClient_UnregisterStatusUpdate_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_UnregisterStatusUpdate_Notification cRemoteClient_UnregisterStatusUpdate_Notification) {
                if (cRemoteClient_UnregisterStatusUpdate_Notification == CRemoteClient_UnregisterStatusUpdate_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_UnregisterStatusUpdate_Notification.hasSessionId()) {
                    setSessionId(cRemoteClient_UnregisterStatusUpdate_Notification.getSessionId());
                }
                if (cRemoteClient_UnregisterStatusUpdate_Notification.hasSteamid()) {
                    setSteamid(cRemoteClient_UnregisterStatusUpdate_Notification.getSteamid());
                }
                mergeUnknownFields(cRemoteClient_UnregisterStatusUpdate_Notification.getUnknownFields());
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
                                    this.sessionId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.steamid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
            public boolean hasSessionId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
            public long getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(long j) {
                this.sessionId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2;
                this.sessionId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_NotificationOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -3;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_UnregisterStatusUpdate_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_UnregisterStatusUpdate_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_UnregisterStatusUpdate_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_UnregisterStatusUpdate_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_DeviceDetails extends GeneratedMessage implements CRemoteClient_DeviceDetailsOrBuilder {
        private static final CRemoteClient_DeviceDetails DEFAULT_INSTANCE;
        public static final int DEVICE_FRIENDLY_NAME_FIELD_NUMBER = 1;
        public static final int GAMING_DEVICE_TYPE_FIELD_NUMBER = 3;
        public static final int OS_TYPE_FIELD_NUMBER = 2;
        private static final Parser<CRemoteClient_DeviceDetails> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object deviceFriendlyName_;
        private int gamingDeviceType_;
        private byte memoizedIsInitialized;
        private int osType_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_DeviceDetails.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_DeviceDetails();
            PARSER = new AbstractParser<CRemoteClient_DeviceDetails>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetails.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_DeviceDetails parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_DeviceDetails.newBuilder();
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

        private CRemoteClient_DeviceDetails(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.deviceFriendlyName_ = "";
            this.osType_ = 0;
            this.gamingDeviceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_DeviceDetails() {
            this.deviceFriendlyName_ = "";
            this.osType_ = 0;
            this.gamingDeviceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.deviceFriendlyName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeviceDetails_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeviceDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_DeviceDetails.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
        public boolean hasDeviceFriendlyName() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
        public String getDeviceFriendlyName() {
            Object obj = this.deviceFriendlyName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceFriendlyName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
        public ByteString getDeviceFriendlyNameBytes() {
            Object obj = this.deviceFriendlyName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceFriendlyName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
        public boolean hasOsType() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
        public int getOsType() {
            return this.osType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
        public boolean hasGamingDeviceType() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
        public int getGamingDeviceType() {
            return this.gamingDeviceType_;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.deviceFriendlyName_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.osType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.gamingDeviceType_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.deviceFriendlyName_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, this.osType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(3, this.gamingDeviceType_);
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
            if (!(obj instanceof CRemoteClient_DeviceDetails)) {
                return super.equals(obj);
            }
            CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = (CRemoteClient_DeviceDetails) obj;
            if (hasDeviceFriendlyName() != cRemoteClient_DeviceDetails.hasDeviceFriendlyName()) {
                return false;
            }
            if ((hasDeviceFriendlyName() && !getDeviceFriendlyName().equals(cRemoteClient_DeviceDetails.getDeviceFriendlyName())) || hasOsType() != cRemoteClient_DeviceDetails.hasOsType()) {
                return false;
            }
            if ((!hasOsType() || getOsType() == cRemoteClient_DeviceDetails.getOsType()) && hasGamingDeviceType() == cRemoteClient_DeviceDetails.hasGamingDeviceType()) {
                return (!hasGamingDeviceType() || getGamingDeviceType() == cRemoteClient_DeviceDetails.getGamingDeviceType()) && getUnknownFields().equals(cRemoteClient_DeviceDetails.getUnknownFields());
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
            if (hasDeviceFriendlyName()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getDeviceFriendlyName().hashCode();
            }
            if (hasOsType()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getOsType();
            }
            if (hasGamingDeviceType()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getGamingDeviceType();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_DeviceDetails parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_DeviceDetails parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_DeviceDetails parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_DeviceDetails parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_DeviceDetails parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_DeviceDetails parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_DeviceDetails parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_DeviceDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_DeviceDetails parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeviceDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_DeviceDetails parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_DeviceDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_DeviceDetails parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeviceDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_DeviceDetails parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_DeviceDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_DeviceDetails parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeviceDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_DeviceDetails);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_DeviceDetailsOrBuilder {
            private int bitField0_;
            private Object deviceFriendlyName_;
            private int gamingDeviceType_;
            private int osType_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeviceDetails_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeviceDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_DeviceDetails.class, Builder.class);
            }

            private Builder() {
                this.deviceFriendlyName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.deviceFriendlyName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.deviceFriendlyName_ = "";
                this.osType_ = 0;
                this.gamingDeviceType_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeviceDetails_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_DeviceDetails getDefaultInstanceForType() {
                return CRemoteClient_DeviceDetails.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_DeviceDetails build() {
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetailsBuildPartial = buildPartial();
                if (cRemoteClient_DeviceDetailsBuildPartial.isInitialized()) {
                    return cRemoteClient_DeviceDetailsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_DeviceDetailsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_DeviceDetails buildPartial() {
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = new CRemoteClient_DeviceDetails(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_DeviceDetails);
                }
                onBuilt();
                return cRemoteClient_DeviceDetails;
            }

            private void buildPartial0(CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_DeviceDetails.deviceFriendlyName_ = this.deviceFriendlyName_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_DeviceDetails.osType_ = this.osType_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_DeviceDetails.gamingDeviceType_ = this.gamingDeviceType_;
                    i |= 4;
                }
                cRemoteClient_DeviceDetails.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_DeviceDetails) {
                    return mergeFrom((CRemoteClient_DeviceDetails) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails) {
                if (cRemoteClient_DeviceDetails == CRemoteClient_DeviceDetails.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_DeviceDetails.hasDeviceFriendlyName()) {
                    this.deviceFriendlyName_ = cRemoteClient_DeviceDetails.deviceFriendlyName_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cRemoteClient_DeviceDetails.hasOsType()) {
                    setOsType(cRemoteClient_DeviceDetails.getOsType());
                }
                if (cRemoteClient_DeviceDetails.hasGamingDeviceType()) {
                    setGamingDeviceType(cRemoteClient_DeviceDetails.getGamingDeviceType());
                }
                mergeUnknownFields(cRemoteClient_DeviceDetails.getUnknownFields());
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
                                    this.deviceFriendlyName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.osType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.gamingDeviceType_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
            public boolean hasDeviceFriendlyName() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
            public String getDeviceFriendlyName() {
                Object obj = this.deviceFriendlyName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.deviceFriendlyName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
            public ByteString getDeviceFriendlyNameBytes() {
                Object obj = this.deviceFriendlyName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.deviceFriendlyName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDeviceFriendlyName(String str) {
                str.getClass();
                this.deviceFriendlyName_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearDeviceFriendlyName() {
                this.deviceFriendlyName_ = CRemoteClient_DeviceDetails.getDefaultInstance().getDeviceFriendlyName();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setDeviceFriendlyNameBytes(ByteString byteString) {
                byteString.getClass();
                this.deviceFriendlyName_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
            public boolean hasOsType() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
            public int getOsType() {
                return this.osType_;
            }

            public Builder setOsType(int i) {
                this.osType_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearOsType() {
                this.bitField0_ &= -3;
                this.osType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
            public boolean hasGamingDeviceType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeviceDetailsOrBuilder
            public int getGamingDeviceType() {
                return this.gamingDeviceType_;
            }

            public Builder setGamingDeviceType(int i) {
                this.gamingDeviceType_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearGamingDeviceType() {
                this.bitField0_ &= -5;
                this.gamingDeviceType_ = 0;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_DeviceDetails getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_DeviceDetails> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_DeviceDetails> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_DeviceDetails getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_Online_Notification extends GeneratedMessage implements CRemoteClient_Online_NotificationOrBuilder {
        private static final CRemoteClient_Online_Notification DEFAULT_INSTANCE;
        public static final int DEVICE_DETAILS_FIELD_NUMBER = 3;
        private static final Parser<CRemoteClient_Online_Notification> PARSER;
        public static final int REMOTE_CLIENT_ID_FIELD_NUMBER = 2;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private CRemoteClient_DeviceDetails deviceDetails_;
        private byte memoizedIsInitialized;
        private long remoteClientId_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_Online_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_Online_Notification();
            PARSER = new AbstractParser<CRemoteClient_Online_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_Online_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_Online_Notification.newBuilder();
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

        private CRemoteClient_Online_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.remoteClientId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_Online_Notification() {
            this.steamid_ = 0L;
            this.remoteClientId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Online_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Online_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_Online_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
        public boolean hasRemoteClientId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
        public long getRemoteClientId() {
            return this.remoteClientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
        public boolean hasDeviceDetails() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
        public CRemoteClient_DeviceDetails getDeviceDetails() {
            CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
            return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
        public CRemoteClient_DeviceDetailsOrBuilder getDeviceDetailsOrBuilder() {
            CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
            return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
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
                codedOutputStream.writeFixed64(2, this.remoteClientId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeMessage(3, getDeviceDetails());
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
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.remoteClientId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(3, getDeviceDetails());
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
            if (!(obj instanceof CRemoteClient_Online_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_Online_Notification cRemoteClient_Online_Notification = (CRemoteClient_Online_Notification) obj;
            if (hasSteamid() != cRemoteClient_Online_Notification.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cRemoteClient_Online_Notification.getSteamid()) || hasRemoteClientId() != cRemoteClient_Online_Notification.hasRemoteClientId()) {
                return false;
            }
            if ((!hasRemoteClientId() || getRemoteClientId() == cRemoteClient_Online_Notification.getRemoteClientId()) && hasDeviceDetails() == cRemoteClient_Online_Notification.hasDeviceDetails()) {
                return (!hasDeviceDetails() || getDeviceDetails().equals(cRemoteClient_Online_Notification.getDeviceDetails())) && getUnknownFields().equals(cRemoteClient_Online_Notification.getUnknownFields());
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
            if (hasRemoteClientId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getRemoteClientId());
            }
            if (hasDeviceDetails()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDeviceDetails().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_Online_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_Online_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_Online_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_Online_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_Online_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_Online_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_Online_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_Online_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_Online_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_Online_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_Online_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_Online_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_Online_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_Online_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_Online_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_Online_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_Online_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_Online_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_Online_Notification cRemoteClient_Online_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_Online_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_Online_NotificationOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> deviceDetailsBuilder_;
            private CRemoteClient_DeviceDetails deviceDetails_;
            private long remoteClientId_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Online_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Online_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_Online_Notification.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetDeviceDetailsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.remoteClientId_ = 0L;
                this.deviceDetails_ = null;
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.deviceDetailsBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Online_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_Online_Notification getDefaultInstanceForType() {
                return CRemoteClient_Online_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_Online_Notification build() {
                CRemoteClient_Online_Notification cRemoteClient_Online_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_Online_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_Online_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_Online_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_Online_Notification buildPartial() {
                CRemoteClient_Online_Notification cRemoteClient_Online_Notification = new CRemoteClient_Online_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_Online_Notification);
                }
                onBuilt();
                return cRemoteClient_Online_Notification;
            }

            private void buildPartial0(CRemoteClient_Online_Notification cRemoteClient_Online_Notification) {
                int i;
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_Online_Notification.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_Online_Notification.remoteClientId_ = this.remoteClientId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                    if (singleFieldBuilder == null) {
                        cRemoteClient_DeviceDetails = this.deviceDetails_;
                    } else {
                        cRemoteClient_DeviceDetails = (CRemoteClient_DeviceDetails) singleFieldBuilder.build();
                    }
                    cRemoteClient_Online_Notification.deviceDetails_ = cRemoteClient_DeviceDetails;
                    i |= 4;
                }
                cRemoteClient_Online_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_Online_Notification) {
                    return mergeFrom((CRemoteClient_Online_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_Online_Notification cRemoteClient_Online_Notification) {
                if (cRemoteClient_Online_Notification == CRemoteClient_Online_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_Online_Notification.hasSteamid()) {
                    setSteamid(cRemoteClient_Online_Notification.getSteamid());
                }
                if (cRemoteClient_Online_Notification.hasRemoteClientId()) {
                    setRemoteClientId(cRemoteClient_Online_Notification.getRemoteClientId());
                }
                if (cRemoteClient_Online_Notification.hasDeviceDetails()) {
                    mergeDeviceDetails(cRemoteClient_Online_Notification.getDeviceDetails());
                }
                mergeUnknownFields(cRemoteClient_Online_Notification.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.remoteClientId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetDeviceDetailsFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
            public boolean hasRemoteClientId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
            public long getRemoteClientId() {
                return this.remoteClientId_;
            }

            public Builder setRemoteClientId(long j) {
                this.remoteClientId_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearRemoteClientId() {
                this.bitField0_ &= -3;
                this.remoteClientId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
            public boolean hasDeviceDetails() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
            public CRemoteClient_DeviceDetails getDeviceDetails() {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
                    return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
                }
                return (CRemoteClient_DeviceDetails) singleFieldBuilder.getMessage();
            }

            public Builder setDeviceDetails(CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails) {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    cRemoteClient_DeviceDetails.getClass();
                    this.deviceDetails_ = cRemoteClient_DeviceDetails;
                } else {
                    singleFieldBuilder.setMessage(cRemoteClient_DeviceDetails);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setDeviceDetails(CRemoteClient_DeviceDetails.Builder builder) {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    this.deviceDetails_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeDeviceDetails(CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails) {
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails2;
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (cRemoteClient_DeviceDetails2 = this.deviceDetails_) != null && cRemoteClient_DeviceDetails2 != CRemoteClient_DeviceDetails.getDefaultInstance()) {
                        getDeviceDetailsBuilder().mergeFrom(cRemoteClient_DeviceDetails);
                    } else {
                        this.deviceDetails_ = cRemoteClient_DeviceDetails;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cRemoteClient_DeviceDetails);
                }
                if (this.deviceDetails_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearDeviceDetails() {
                this.bitField0_ &= -5;
                this.deviceDetails_ = null;
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.deviceDetailsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CRemoteClient_DeviceDetails.Builder getDeviceDetailsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (CRemoteClient_DeviceDetails.Builder) internalGetDeviceDetailsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_NotificationOrBuilder
            public CRemoteClient_DeviceDetailsOrBuilder getDeviceDetailsOrBuilder() {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder != null) {
                    return (CRemoteClient_DeviceDetailsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
                return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
            }

            private SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> internalGetDeviceDetailsFieldBuilder() {
                if (this.deviceDetailsBuilder_ == null) {
                    this.deviceDetailsBuilder_ = new SingleFieldBuilder<>(getDeviceDetails(), getParentForChildren(), isClean());
                    this.deviceDetails_ = null;
                }
                return this.deviceDetailsBuilder_;
            }
        }

        public static CRemoteClient_Online_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_Online_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_Online_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_Online_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_GetRecentClients_Request extends GeneratedMessage implements MessageOrBuilder {
        private static final CRemoteClient_GetRecentClients_Request DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_GetRecentClients_Request> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_GetRecentClients_Request.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_GetRecentClients_Request();
            PARSER = new AbstractParser<CRemoteClient_GetRecentClients_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_Request.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_GetRecentClients_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_GetRecentClients_Request.newBuilder();
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

        private CRemoteClient_GetRecentClients_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_GetRecentClients_Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetRecentClients_Request.class, Builder.class);
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
            if (obj instanceof CRemoteClient_GetRecentClients_Request) {
                return getUnknownFields().equals(((CRemoteClient_GetRecentClients_Request) obj).getUnknownFields());
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

        public static CRemoteClient_GetRecentClients_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetRecentClients_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetRecentClients_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetRecentClients_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetRecentClients_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetRecentClients_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_GetRecentClients_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_GetRecentClients_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetRecentClients_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_GetRecentClients_Request cRemoteClient_GetRecentClients_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_GetRecentClients_Request);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetRecentClients_Request.class, Builder.class);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_GetRecentClients_Request getDefaultInstanceForType() {
                return CRemoteClient_GetRecentClients_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetRecentClients_Request build() {
                CRemoteClient_GetRecentClients_Request cRemoteClient_GetRecentClients_RequestBuildPartial = buildPartial();
                if (cRemoteClient_GetRecentClients_RequestBuildPartial.isInitialized()) {
                    return cRemoteClient_GetRecentClients_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_GetRecentClients_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetRecentClients_Request buildPartial() {
                CRemoteClient_GetRecentClients_Request cRemoteClient_GetRecentClients_Request = new CRemoteClient_GetRecentClients_Request(this);
                onBuilt();
                return cRemoteClient_GetRecentClients_Request;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_GetRecentClients_Request) {
                    return mergeFrom((CRemoteClient_GetRecentClients_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_GetRecentClients_Request cRemoteClient_GetRecentClients_Request) {
                if (cRemoteClient_GetRecentClients_Request == CRemoteClient_GetRecentClients_Request.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cRemoteClient_GetRecentClients_Request.getUnknownFields());
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

        public static CRemoteClient_GetRecentClients_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_GetRecentClients_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_GetRecentClients_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_GetRecentClients_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_ClientDetails extends GeneratedMessage implements CRemoteClient_ClientDetailsOrBuilder {
        public static final int CITY_FIELD_NUMBER = 5;
        public static final int COUNTRY_FIELD_NUMBER = 7;
        private static final CRemoteClient_ClientDetails DEFAULT_INSTANCE;
        public static final int DEVICE_DETAILS_FIELD_NUMBER = 2;
        public static final int IS_ONLINE_FIELD_NUMBER = 8;
        public static final int LAST_SEEN_FIELD_NUMBER = 4;
        private static final Parser<CRemoteClient_ClientDetails> PARSER;
        public static final int REMOTE_CLIENT_ID_FIELD_NUMBER = 1;
        public static final int STATE_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object city_;
        private volatile Object country_;
        private CRemoteClient_DeviceDetails deviceDetails_;
        private boolean isOnline_;
        private long lastSeen_;
        private byte memoizedIsInitialized;
        private long remoteClientId_;
        private volatile Object state_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_ClientDetails.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_ClientDetails();
            PARSER = new AbstractParser<CRemoteClient_ClientDetails>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetails.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_ClientDetails parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_ClientDetails.newBuilder();
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

        private CRemoteClient_ClientDetails(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.remoteClientId_ = 0L;
            this.lastSeen_ = 0L;
            this.city_ = "";
            this.state_ = "";
            this.country_ = "";
            this.isOnline_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_ClientDetails() {
            this.remoteClientId_ = 0L;
            this.lastSeen_ = 0L;
            this.city_ = "";
            this.state_ = "";
            this.country_ = "";
            this.isOnline_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.city_ = "";
            this.state_ = "";
            this.country_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ClientDetails_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ClientDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_ClientDetails.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean hasRemoteClientId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public long getRemoteClientId() {
            return this.remoteClientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean hasDeviceDetails() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public CRemoteClient_DeviceDetails getDeviceDetails() {
            CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
            return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public CRemoteClient_DeviceDetailsOrBuilder getDeviceDetailsOrBuilder() {
            CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
            return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean hasLastSeen() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public long getLastSeen() {
            return this.lastSeen_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean hasCity() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public String getCity() {
            Object obj = this.city_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.city_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public ByteString getCityBytes() {
            Object obj = this.city_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.city_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean hasState() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public String getState() {
            Object obj = this.state_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.state_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public ByteString getStateBytes() {
            Object obj = this.state_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.state_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean hasCountry() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public String getCountry() {
            Object obj = this.country_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.country_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public ByteString getCountryBytes() {
            Object obj = this.country_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.country_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean hasIsOnline() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
        public boolean getIsOnline() {
            return this.isOnline_;
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
                codedOutputStream.writeFixed64(1, this.remoteClientId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(2, getDeviceDetails());
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(4, this.lastSeen_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.city_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.state_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 7, this.country_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(8, this.isOnline_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.remoteClientId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(2, getDeviceDetails());
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt64Size(4, this.lastSeen_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(5, this.city_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(6, this.state_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(7, this.country_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(8, this.isOnline_);
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
            if (!(obj instanceof CRemoteClient_ClientDetails)) {
                return super.equals(obj);
            }
            CRemoteClient_ClientDetails cRemoteClient_ClientDetails = (CRemoteClient_ClientDetails) obj;
            if (hasRemoteClientId() != cRemoteClient_ClientDetails.hasRemoteClientId()) {
                return false;
            }
            if ((hasRemoteClientId() && getRemoteClientId() != cRemoteClient_ClientDetails.getRemoteClientId()) || hasDeviceDetails() != cRemoteClient_ClientDetails.hasDeviceDetails()) {
                return false;
            }
            if ((hasDeviceDetails() && !getDeviceDetails().equals(cRemoteClient_ClientDetails.getDeviceDetails())) || hasLastSeen() != cRemoteClient_ClientDetails.hasLastSeen()) {
                return false;
            }
            if ((hasLastSeen() && getLastSeen() != cRemoteClient_ClientDetails.getLastSeen()) || hasCity() != cRemoteClient_ClientDetails.hasCity()) {
                return false;
            }
            if ((hasCity() && !getCity().equals(cRemoteClient_ClientDetails.getCity())) || hasState() != cRemoteClient_ClientDetails.hasState()) {
                return false;
            }
            if ((hasState() && !getState().equals(cRemoteClient_ClientDetails.getState())) || hasCountry() != cRemoteClient_ClientDetails.hasCountry()) {
                return false;
            }
            if ((!hasCountry() || getCountry().equals(cRemoteClient_ClientDetails.getCountry())) && hasIsOnline() == cRemoteClient_ClientDetails.hasIsOnline()) {
                return (!hasIsOnline() || getIsOnline() == cRemoteClient_ClientDetails.getIsOnline()) && getUnknownFields().equals(cRemoteClient_ClientDetails.getUnknownFields());
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
            if (hasRemoteClientId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRemoteClientId());
            }
            if (hasDeviceDetails()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDeviceDetails().hashCode();
            }
            if (hasLastSeen()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getLastSeen());
            }
            if (hasCity()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getCity().hashCode();
            }
            if (hasState()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getState().hashCode();
            }
            if (hasCountry()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getCountry().hashCode();
            }
            if (hasIsOnline()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + Internal.hashBoolean(getIsOnline());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_ClientDetails parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_ClientDetails parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_ClientDetails parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_ClientDetails parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_ClientDetails parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_ClientDetails parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_ClientDetails parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_ClientDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_ClientDetails parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_ClientDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_ClientDetails parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_ClientDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_ClientDetails parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_ClientDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_ClientDetails parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_ClientDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_ClientDetails parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_ClientDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_ClientDetails cRemoteClient_ClientDetails) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_ClientDetails);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_ClientDetailsOrBuilder {
            private int bitField0_;
            private Object city_;
            private Object country_;
            private SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> deviceDetailsBuilder_;
            private CRemoteClient_DeviceDetails deviceDetails_;
            private boolean isOnline_;
            private long lastSeen_;
            private long remoteClientId_;
            private Object state_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ClientDetails_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ClientDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_ClientDetails.class, Builder.class);
            }

            private Builder() {
                this.city_ = "";
                this.state_ = "";
                this.country_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.city_ = "";
                this.state_ = "";
                this.country_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetDeviceDetailsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.remoteClientId_ = 0L;
                this.deviceDetails_ = null;
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.deviceDetailsBuilder_ = null;
                }
                this.lastSeen_ = 0L;
                this.city_ = "";
                this.state_ = "";
                this.country_ = "";
                this.isOnline_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ClientDetails_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_ClientDetails getDefaultInstanceForType() {
                return CRemoteClient_ClientDetails.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_ClientDetails build() {
                CRemoteClient_ClientDetails cRemoteClient_ClientDetailsBuildPartial = buildPartial();
                if (cRemoteClient_ClientDetailsBuildPartial.isInitialized()) {
                    return cRemoteClient_ClientDetailsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_ClientDetailsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_ClientDetails buildPartial() {
                CRemoteClient_ClientDetails cRemoteClient_ClientDetails = new CRemoteClient_ClientDetails(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_ClientDetails);
                }
                onBuilt();
                return cRemoteClient_ClientDetails;
            }

            private void buildPartial0(CRemoteClient_ClientDetails cRemoteClient_ClientDetails) {
                int i;
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_ClientDetails.remoteClientId_ = this.remoteClientId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                    if (singleFieldBuilder == null) {
                        cRemoteClient_DeviceDetails = this.deviceDetails_;
                    } else {
                        cRemoteClient_DeviceDetails = (CRemoteClient_DeviceDetails) singleFieldBuilder.build();
                    }
                    cRemoteClient_ClientDetails.deviceDetails_ = cRemoteClient_DeviceDetails;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_ClientDetails.lastSeen_ = this.lastSeen_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cRemoteClient_ClientDetails.city_ = this.city_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cRemoteClient_ClientDetails.state_ = this.state_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cRemoteClient_ClientDetails.country_ = this.country_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cRemoteClient_ClientDetails.isOnline_ = this.isOnline_;
                    i |= 64;
                }
                cRemoteClient_ClientDetails.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_ClientDetails) {
                    return mergeFrom((CRemoteClient_ClientDetails) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_ClientDetails cRemoteClient_ClientDetails) {
                if (cRemoteClient_ClientDetails == CRemoteClient_ClientDetails.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_ClientDetails.hasRemoteClientId()) {
                    setRemoteClientId(cRemoteClient_ClientDetails.getRemoteClientId());
                }
                if (cRemoteClient_ClientDetails.hasDeviceDetails()) {
                    mergeDeviceDetails(cRemoteClient_ClientDetails.getDeviceDetails());
                }
                if (cRemoteClient_ClientDetails.hasLastSeen()) {
                    setLastSeen(cRemoteClient_ClientDetails.getLastSeen());
                }
                if (cRemoteClient_ClientDetails.hasCity()) {
                    this.city_ = cRemoteClient_ClientDetails.city_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cRemoteClient_ClientDetails.hasState()) {
                    this.state_ = cRemoteClient_ClientDetails.state_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (cRemoteClient_ClientDetails.hasCountry()) {
                    this.country_ = cRemoteClient_ClientDetails.country_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cRemoteClient_ClientDetails.hasIsOnline()) {
                    setIsOnline(cRemoteClient_ClientDetails.getIsOnline());
                }
                mergeUnknownFields(cRemoteClient_ClientDetails.getUnknownFields());
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
                                    this.remoteClientId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    codedInputStream.readMessage(internalGetDeviceDetailsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 2;
                                } else if (tag == 32) {
                                    this.lastSeen_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 42) {
                                    this.city_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 50) {
                                    this.state_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 58) {
                                    this.country_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                } else if (tag == 64) {
                                    this.isOnline_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean hasRemoteClientId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public long getRemoteClientId() {
                return this.remoteClientId_;
            }

            public Builder setRemoteClientId(long j) {
                this.remoteClientId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRemoteClientId() {
                this.bitField0_ &= -2;
                this.remoteClientId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean hasDeviceDetails() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public CRemoteClient_DeviceDetails getDeviceDetails() {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
                    return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
                }
                return (CRemoteClient_DeviceDetails) singleFieldBuilder.getMessage();
            }

            public Builder setDeviceDetails(CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails) {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    cRemoteClient_DeviceDetails.getClass();
                    this.deviceDetails_ = cRemoteClient_DeviceDetails;
                } else {
                    singleFieldBuilder.setMessage(cRemoteClient_DeviceDetails);
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setDeviceDetails(CRemoteClient_DeviceDetails.Builder builder) {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    this.deviceDetails_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder mergeDeviceDetails(CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails) {
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails2;
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0 && (cRemoteClient_DeviceDetails2 = this.deviceDetails_) != null && cRemoteClient_DeviceDetails2 != CRemoteClient_DeviceDetails.getDefaultInstance()) {
                        getDeviceDetailsBuilder().mergeFrom(cRemoteClient_DeviceDetails);
                    } else {
                        this.deviceDetails_ = cRemoteClient_DeviceDetails;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cRemoteClient_DeviceDetails);
                }
                if (this.deviceDetails_ != null) {
                    this.bitField0_ |= 2;
                    onChanged();
                }
                return this;
            }

            public Builder clearDeviceDetails() {
                this.bitField0_ &= -3;
                this.deviceDetails_ = null;
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.deviceDetailsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CRemoteClient_DeviceDetails.Builder getDeviceDetailsBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (CRemoteClient_DeviceDetails.Builder) internalGetDeviceDetailsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public CRemoteClient_DeviceDetailsOrBuilder getDeviceDetailsOrBuilder() {
                SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> singleFieldBuilder = this.deviceDetailsBuilder_;
                if (singleFieldBuilder != null) {
                    return (CRemoteClient_DeviceDetailsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CRemoteClient_DeviceDetails cRemoteClient_DeviceDetails = this.deviceDetails_;
                return cRemoteClient_DeviceDetails == null ? CRemoteClient_DeviceDetails.getDefaultInstance() : cRemoteClient_DeviceDetails;
            }

            private SingleFieldBuilder<CRemoteClient_DeviceDetails, CRemoteClient_DeviceDetails.Builder, CRemoteClient_DeviceDetailsOrBuilder> internalGetDeviceDetailsFieldBuilder() {
                if (this.deviceDetailsBuilder_ == null) {
                    this.deviceDetailsBuilder_ = new SingleFieldBuilder<>(getDeviceDetails(), getParentForChildren(), isClean());
                    this.deviceDetails_ = null;
                }
                return this.deviceDetailsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean hasLastSeen() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public long getLastSeen() {
                return this.lastSeen_;
            }

            public Builder setLastSeen(long j) {
                this.lastSeen_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearLastSeen() {
                this.bitField0_ &= -5;
                this.lastSeen_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean hasCity() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public String getCity() {
                Object obj = this.city_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.city_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public ByteString getCityBytes() {
                Object obj = this.city_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.city_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCity(String str) {
                str.getClass();
                this.city_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearCity() {
                this.city_ = CRemoteClient_ClientDetails.getDefaultInstance().getCity();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setCityBytes(ByteString byteString) {
                byteString.getClass();
                this.city_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean hasState() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public String getState() {
                Object obj = this.state_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.state_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public ByteString getStateBytes() {
                Object obj = this.state_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.state_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setState(String str) {
                str.getClass();
                this.state_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearState() {
                this.state_ = CRemoteClient_ClientDetails.getDefaultInstance().getState();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setStateBytes(ByteString byteString) {
                byteString.getClass();
                this.state_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean hasCountry() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public String getCountry() {
                Object obj = this.country_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.country_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public ByteString getCountryBytes() {
                Object obj = this.country_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.country_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCountry(String str) {
                str.getClass();
                this.country_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearCountry() {
                this.country_ = CRemoteClient_ClientDetails.getDefaultInstance().getCountry();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setCountryBytes(ByteString byteString) {
                byteString.getClass();
                this.country_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean hasIsOnline() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ClientDetailsOrBuilder
            public boolean getIsOnline() {
                return this.isOnline_;
            }

            public Builder setIsOnline(boolean z) {
                this.isOnline_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearIsOnline() {
                this.bitField0_ &= -65;
                this.isOnline_ = false;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_ClientDetails getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_ClientDetails> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_ClientDetails> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_ClientDetails getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_GetRecentClients_Response extends GeneratedMessage implements CRemoteClient_GetRecentClients_ResponseOrBuilder {
        public static final int CLIENTS_FIELD_NUMBER = 1;
        private static final CRemoteClient_GetRecentClients_Response DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_GetRecentClients_Response> PARSER;
        private static final long serialVersionUID = 0;
        private List<CRemoteClient_ClientDetails> clients_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_GetRecentClients_Response.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_GetRecentClients_Response();
            PARSER = new AbstractParser<CRemoteClient_GetRecentClients_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_Response.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_GetRecentClients_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_GetRecentClients_Response.newBuilder();
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

        private CRemoteClient_GetRecentClients_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_GetRecentClients_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.clients_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetRecentClients_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
        public List<CRemoteClient_ClientDetails> getClientsList() {
            return this.clients_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
        public List<? extends CRemoteClient_ClientDetailsOrBuilder> getClientsOrBuilderList() {
            return this.clients_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
        public int getClientsCount() {
            return this.clients_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
        public CRemoteClient_ClientDetails getClients(int i) {
            return this.clients_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
        public CRemoteClient_ClientDetailsOrBuilder getClientsOrBuilder(int i) {
            return this.clients_.get(i);
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
            for (int i = 0; i < this.clients_.size(); i++) {
                codedOutputStream.writeMessage(1, this.clients_.get(i));
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
            for (int i2 = 0; i2 < this.clients_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.clients_.get(i2));
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
            if (!(obj instanceof CRemoteClient_GetRecentClients_Response)) {
                return super.equals(obj);
            }
            CRemoteClient_GetRecentClients_Response cRemoteClient_GetRecentClients_Response = (CRemoteClient_GetRecentClients_Response) obj;
            return getClientsList().equals(cRemoteClient_GetRecentClients_Response.getClientsList()) && getUnknownFields().equals(cRemoteClient_GetRecentClients_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getClientsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getClientsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetRecentClients_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetRecentClients_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_GetRecentClients_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_GetRecentClients_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetRecentClients_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_GetRecentClients_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_GetRecentClients_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_GetRecentClients_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_GetRecentClients_Response cRemoteClient_GetRecentClients_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_GetRecentClients_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_GetRecentClients_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> clientsBuilder_;
            private List<CRemoteClient_ClientDetails> clients_;

            private void buildPartial0(CRemoteClient_GetRecentClients_Response cRemoteClient_GetRecentClients_Response) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_GetRecentClients_Response.class, Builder.class);
            }

            private Builder() {
                this.clients_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.clients_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.clients_ = Collections.emptyList();
                } else {
                    this.clients_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_GetRecentClients_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_GetRecentClients_Response getDefaultInstanceForType() {
                return CRemoteClient_GetRecentClients_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetRecentClients_Response build() {
                CRemoteClient_GetRecentClients_Response cRemoteClient_GetRecentClients_ResponseBuildPartial = buildPartial();
                if (cRemoteClient_GetRecentClients_ResponseBuildPartial.isInitialized()) {
                    return cRemoteClient_GetRecentClients_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_GetRecentClients_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_GetRecentClients_Response buildPartial() {
                CRemoteClient_GetRecentClients_Response cRemoteClient_GetRecentClients_Response = new CRemoteClient_GetRecentClients_Response(this);
                buildPartialRepeatedFields(cRemoteClient_GetRecentClients_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_GetRecentClients_Response);
                }
                onBuilt();
                return cRemoteClient_GetRecentClients_Response;
            }

            private void buildPartialRepeatedFields(CRemoteClient_GetRecentClients_Response cRemoteClient_GetRecentClients_Response) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.clients_ = Collections.unmodifiableList(this.clients_);
                        this.bitField0_ &= -2;
                    }
                    cRemoteClient_GetRecentClients_Response.clients_ = this.clients_;
                    return;
                }
                cRemoteClient_GetRecentClients_Response.clients_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_GetRecentClients_Response) {
                    return mergeFrom((CRemoteClient_GetRecentClients_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_GetRecentClients_Response cRemoteClient_GetRecentClients_Response) {
                if (cRemoteClient_GetRecentClients_Response == CRemoteClient_GetRecentClients_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.clientsBuilder_ == null) {
                    if (!cRemoteClient_GetRecentClients_Response.clients_.isEmpty()) {
                        if (this.clients_.isEmpty()) {
                            this.clients_ = cRemoteClient_GetRecentClients_Response.clients_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureClientsIsMutable();
                            this.clients_.addAll(cRemoteClient_GetRecentClients_Response.clients_);
                        }
                        onChanged();
                    }
                } else if (!cRemoteClient_GetRecentClients_Response.clients_.isEmpty()) {
                    if (this.clientsBuilder_.isEmpty()) {
                        this.clientsBuilder_.dispose();
                        this.clientsBuilder_ = null;
                        this.clients_ = cRemoteClient_GetRecentClients_Response.clients_;
                        this.bitField0_ &= -2;
                        this.clientsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetClientsFieldBuilder() : null;
                    } else {
                        this.clientsBuilder_.addAllMessages(cRemoteClient_GetRecentClients_Response.clients_);
                    }
                }
                mergeUnknownFields(cRemoteClient_GetRecentClients_Response.getUnknownFields());
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
                                    CRemoteClient_ClientDetails cRemoteClient_ClientDetails = (CRemoteClient_ClientDetails) codedInputStream.readMessage(CRemoteClient_ClientDetails.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureClientsIsMutable();
                                        this.clients_.add(cRemoteClient_ClientDetails);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cRemoteClient_ClientDetails);
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

            private void ensureClientsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.clients_ = new ArrayList(this.clients_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
            public List<CRemoteClient_ClientDetails> getClientsList() {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.clients_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
            public int getClientsCount() {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.clients_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
            public CRemoteClient_ClientDetails getClients(int i) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.clients_.get(i);
                }
                return (CRemoteClient_ClientDetails) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setClients(int i, CRemoteClient_ClientDetails cRemoteClient_ClientDetails) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cRemoteClient_ClientDetails.getClass();
                    ensureClientsIsMutable();
                    this.clients_.set(i, cRemoteClient_ClientDetails);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cRemoteClient_ClientDetails);
                }
                return this;
            }

            public Builder setClients(int i, CRemoteClient_ClientDetails.Builder builder) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureClientsIsMutable();
                    this.clients_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addClients(CRemoteClient_ClientDetails cRemoteClient_ClientDetails) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cRemoteClient_ClientDetails.getClass();
                    ensureClientsIsMutable();
                    this.clients_.add(cRemoteClient_ClientDetails);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cRemoteClient_ClientDetails);
                }
                return this;
            }

            public Builder addClients(int i, CRemoteClient_ClientDetails cRemoteClient_ClientDetails) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cRemoteClient_ClientDetails.getClass();
                    ensureClientsIsMutable();
                    this.clients_.add(i, cRemoteClient_ClientDetails);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cRemoteClient_ClientDetails);
                }
                return this;
            }

            public Builder addClients(CRemoteClient_ClientDetails.Builder builder) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureClientsIsMutable();
                    this.clients_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addClients(int i, CRemoteClient_ClientDetails.Builder builder) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureClientsIsMutable();
                    this.clients_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllClients(Iterable<? extends CRemoteClient_ClientDetails> iterable) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureClientsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.clients_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearClients() {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.clients_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeClients(int i) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureClientsIsMutable();
                    this.clients_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CRemoteClient_ClientDetails.Builder getClientsBuilder(int i) {
                return (CRemoteClient_ClientDetails.Builder) internalGetClientsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
            public CRemoteClient_ClientDetailsOrBuilder getClientsOrBuilder(int i) {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.clients_.get(i);
                }
                return (CRemoteClient_ClientDetailsOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_ResponseOrBuilder
            public List<? extends CRemoteClient_ClientDetailsOrBuilder> getClientsOrBuilderList() {
                RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> repeatedFieldBuilder = this.clientsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.clients_);
            }

            public CRemoteClient_ClientDetails.Builder addClientsBuilder() {
                return (CRemoteClient_ClientDetails.Builder) internalGetClientsFieldBuilder().addBuilder(CRemoteClient_ClientDetails.getDefaultInstance());
            }

            public CRemoteClient_ClientDetails.Builder addClientsBuilder(int i) {
                return (CRemoteClient_ClientDetails.Builder) internalGetClientsFieldBuilder().addBuilder(i, CRemoteClient_ClientDetails.getDefaultInstance());
            }

            public List<CRemoteClient_ClientDetails.Builder> getClientsBuilderList() {
                return internalGetClientsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CRemoteClient_ClientDetails, CRemoteClient_ClientDetails.Builder, CRemoteClient_ClientDetailsOrBuilder> internalGetClientsFieldBuilder() {
                if (this.clientsBuilder_ == null) {
                    this.clientsBuilder_ = new RepeatedFieldBuilder<>(this.clients_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.clients_ = null;
                }
                return this.clientsBuilder_;
            }
        }

        public static CRemoteClient_GetRecentClients_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_GetRecentClients_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_GetRecentClients_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_GetRecentClients_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_Task extends GeneratedMessage implements CRemoteClient_TaskOrBuilder {
        private static final CRemoteClient_Task DEFAULT_INSTANCE;
        public static final int FILE_ID_FIELD_NUMBER = 4;
        private static final Parser<CRemoteClient_Task> PARSER;
        public static final int TASK_ID_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int URL_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long fileId_;
        private byte memoizedIsInitialized;
        private long taskId_;
        private int type_;
        private volatile Object url_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_Task.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_Task();
            PARSER = new AbstractParser<CRemoteClient_Task>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_Task.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_Task parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_Task.newBuilder();
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

        private CRemoteClient_Task(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.type_ = 1;
            this.taskId_ = 0L;
            this.url_ = "";
            this.fileId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_Task() {
            this.type_ = 1;
            this.taskId_ = 0L;
            this.url_ = "";
            this.fileId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.type_ = 1;
            this.url_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Task_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Task_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_Task.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public boolean hasType() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public ECLientTaskListType getType() {
            ECLientTaskListType eCLientTaskListTypeForNumber = ECLientTaskListType.forNumber(this.type_);
            return eCLientTaskListTypeForNumber == null ? ECLientTaskListType.k_EClientTask_DownloadClip : eCLientTaskListTypeForNumber;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public boolean hasTaskId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public long getTaskId() {
            return this.taskId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public boolean hasUrl() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public String getUrl() {
            Object obj = this.url_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.url_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public ByteString getUrlBytes() {
            Object obj = this.url_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.url_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public boolean hasFileId() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
        public long getFileId() {
            return this.fileId_;
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
                codedOutputStream.writeEnum(1, this.type_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.taskId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.url_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt64(4, this.fileId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeEnumSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeEnumSize(1, this.type_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeEnumSize += CodedOutputStream.computeFixed64Size(2, this.taskId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeEnumSize += GeneratedMessage.computeStringSize(3, this.url_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeEnumSize += CodedOutputStream.computeInt64Size(4, this.fileId_);
            }
            int serializedSize = iComputeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CRemoteClient_Task)) {
                return super.equals(obj);
            }
            CRemoteClient_Task cRemoteClient_Task = (CRemoteClient_Task) obj;
            if (hasType() != cRemoteClient_Task.hasType()) {
                return false;
            }
            if ((hasType() && this.type_ != cRemoteClient_Task.type_) || hasTaskId() != cRemoteClient_Task.hasTaskId()) {
                return false;
            }
            if ((hasTaskId() && getTaskId() != cRemoteClient_Task.getTaskId()) || hasUrl() != cRemoteClient_Task.hasUrl()) {
                return false;
            }
            if ((!hasUrl() || getUrl().equals(cRemoteClient_Task.getUrl())) && hasFileId() == cRemoteClient_Task.hasFileId()) {
                return (!hasFileId() || getFileId() == cRemoteClient_Task.getFileId()) && getUnknownFields().equals(cRemoteClient_Task.getUnknownFields());
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
            if (hasType()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + this.type_;
            }
            if (hasTaskId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getTaskId());
            }
            if (hasUrl()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getUrl().hashCode();
            }
            if (hasFileId()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getFileId());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_Task parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_Task parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_Task parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_Task parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_Task parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_Task parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_Task parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_Task) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_Task parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_Task) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_Task parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_Task) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_Task parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_Task) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_Task parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_Task) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_Task parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_Task) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_Task cRemoteClient_Task) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_Task);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_TaskOrBuilder {
            private int bitField0_;
            private long fileId_;
            private long taskId_;
            private int type_;
            private Object url_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Task_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Task_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_Task.class, Builder.class);
            }

            private Builder() {
                this.type_ = 1;
                this.url_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.type_ = 1;
                this.url_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.type_ = 1;
                this.taskId_ = 0L;
                this.url_ = "";
                this.fileId_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_Task_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_Task getDefaultInstanceForType() {
                return CRemoteClient_Task.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_Task build() {
                CRemoteClient_Task cRemoteClient_TaskBuildPartial = buildPartial();
                if (cRemoteClient_TaskBuildPartial.isInitialized()) {
                    return cRemoteClient_TaskBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_TaskBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_Task buildPartial() {
                CRemoteClient_Task cRemoteClient_Task = new CRemoteClient_Task(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_Task);
                }
                onBuilt();
                return cRemoteClient_Task;
            }

            private void buildPartial0(CRemoteClient_Task cRemoteClient_Task) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_Task.type_ = this.type_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_Task.taskId_ = this.taskId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_Task.url_ = this.url_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cRemoteClient_Task.fileId_ = this.fileId_;
                    i |= 8;
                }
                cRemoteClient_Task.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_Task) {
                    return mergeFrom((CRemoteClient_Task) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_Task cRemoteClient_Task) {
                if (cRemoteClient_Task == CRemoteClient_Task.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_Task.hasType()) {
                    setType(cRemoteClient_Task.getType());
                }
                if (cRemoteClient_Task.hasTaskId()) {
                    setTaskId(cRemoteClient_Task.getTaskId());
                }
                if (cRemoteClient_Task.hasUrl()) {
                    this.url_ = cRemoteClient_Task.url_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cRemoteClient_Task.hasFileId()) {
                    setFileId(cRemoteClient_Task.getFileId());
                }
                mergeUnknownFields(cRemoteClient_Task.getUnknownFields());
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
                                    int i = codedInputStream.readEnum();
                                    if (ECLientTaskListType.forNumber(i) == null) {
                                        mergeUnknownVarintField(1, i);
                                    } else {
                                        this.type_ = i;
                                        this.bitField0_ |= 1;
                                    }
                                } else if (tag == 17) {
                                    this.taskId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.url_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.fileId_ = codedInputStream.readInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public boolean hasType() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public ECLientTaskListType getType() {
                ECLientTaskListType eCLientTaskListTypeForNumber = ECLientTaskListType.forNumber(this.type_);
                return eCLientTaskListTypeForNumber == null ? ECLientTaskListType.k_EClientTask_DownloadClip : eCLientTaskListTypeForNumber;
            }

            public Builder setType(ECLientTaskListType eCLientTaskListType) {
                eCLientTaskListType.getClass();
                this.bitField0_ |= 1;
                this.type_ = eCLientTaskListType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -2;
                this.type_ = 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public boolean hasTaskId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public long getTaskId() {
                return this.taskId_;
            }

            public Builder setTaskId(long j) {
                this.taskId_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -3;
                this.taskId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public boolean hasUrl() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public String getUrl() {
                Object obj = this.url_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.url_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public ByteString getUrlBytes() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.url_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUrl(String str) {
                str.getClass();
                this.url_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearUrl() {
                this.url_ = CRemoteClient_Task.getDefaultInstance().getUrl();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setUrlBytes(ByteString byteString) {
                byteString.getClass();
                this.url_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public boolean hasFileId() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskOrBuilder
            public long getFileId() {
                return this.fileId_;
            }

            public Builder setFileId(long j) {
                this.fileId_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearFileId() {
                this.bitField0_ &= -9;
                this.fileId_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_Task getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_Task> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_Task> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_Task getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_TaskList_Notification extends GeneratedMessage implements CRemoteClient_TaskList_NotificationOrBuilder {
        private static final CRemoteClient_TaskList_Notification DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_TaskList_Notification> PARSER;
        public static final int REMOTE_CLIENT_ID_FIELD_NUMBER = 1;
        public static final int TASKLIST_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long remoteClientId_;
        private List<CRemoteClient_Task> tasklist_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_TaskList_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_TaskList_Notification();
            PARSER = new AbstractParser<CRemoteClient_TaskList_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_TaskList_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_TaskList_Notification.newBuilder();
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

        private CRemoteClient_TaskList_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.remoteClientId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_TaskList_Notification() {
            this.remoteClientId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.tasklist_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_TaskList_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_TaskList_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_TaskList_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
        public boolean hasRemoteClientId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
        public long getRemoteClientId() {
            return this.remoteClientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
        public List<CRemoteClient_Task> getTasklistList() {
            return this.tasklist_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
        public List<? extends CRemoteClient_TaskOrBuilder> getTasklistOrBuilderList() {
            return this.tasklist_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
        public int getTasklistCount() {
            return this.tasklist_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
        public CRemoteClient_Task getTasklist(int i) {
            return this.tasklist_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
        public CRemoteClient_TaskOrBuilder getTasklistOrBuilder(int i) {
            return this.tasklist_.get(i);
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
                codedOutputStream.writeFixed64(1, this.remoteClientId_);
            }
            for (int i = 0; i < this.tasklist_.size(); i++) {
                codedOutputStream.writeMessage(2, this.tasklist_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.remoteClientId_) : 0;
            for (int i2 = 0; i2 < this.tasklist_.size(); i2++) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(2, this.tasklist_.get(i2));
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
            if (!(obj instanceof CRemoteClient_TaskList_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_TaskList_Notification cRemoteClient_TaskList_Notification = (CRemoteClient_TaskList_Notification) obj;
            if (hasRemoteClientId() != cRemoteClient_TaskList_Notification.hasRemoteClientId()) {
                return false;
            }
            return (!hasRemoteClientId() || getRemoteClientId() == cRemoteClient_TaskList_Notification.getRemoteClientId()) && getTasklistList().equals(cRemoteClient_TaskList_Notification.getTasklistList()) && getUnknownFields().equals(cRemoteClient_TaskList_Notification.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasRemoteClientId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRemoteClientId());
            }
            if (getTasklistCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getTasklistList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_TaskList_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_TaskList_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_TaskList_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_TaskList_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_TaskList_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_TaskList_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_TaskList_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_TaskList_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_TaskList_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_TaskList_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_TaskList_Notification cRemoteClient_TaskList_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_TaskList_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_TaskList_NotificationOrBuilder {
            private int bitField0_;
            private long remoteClientId_;
            private RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> tasklistBuilder_;
            private List<CRemoteClient_Task> tasklist_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_TaskList_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_TaskList_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_TaskList_Notification.class, Builder.class);
            }

            private Builder() {
                this.tasklist_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.tasklist_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.remoteClientId_ = 0L;
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.tasklist_ = Collections.emptyList();
                } else {
                    this.tasklist_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_TaskList_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_TaskList_Notification getDefaultInstanceForType() {
                return CRemoteClient_TaskList_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_TaskList_Notification build() {
                CRemoteClient_TaskList_Notification cRemoteClient_TaskList_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_TaskList_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_TaskList_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_TaskList_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_TaskList_Notification buildPartial() {
                CRemoteClient_TaskList_Notification cRemoteClient_TaskList_Notification = new CRemoteClient_TaskList_Notification(this);
                buildPartialRepeatedFields(cRemoteClient_TaskList_Notification);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_TaskList_Notification);
                }
                onBuilt();
                return cRemoteClient_TaskList_Notification;
            }

            private void buildPartialRepeatedFields(CRemoteClient_TaskList_Notification cRemoteClient_TaskList_Notification) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.tasklist_ = Collections.unmodifiableList(this.tasklist_);
                        this.bitField0_ &= -3;
                    }
                    cRemoteClient_TaskList_Notification.tasklist_ = this.tasklist_;
                    return;
                }
                cRemoteClient_TaskList_Notification.tasklist_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CRemoteClient_TaskList_Notification cRemoteClient_TaskList_Notification) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemoteClient_TaskList_Notification.remoteClientId_ = this.remoteClientId_;
                } else {
                    i = 0;
                }
                cRemoteClient_TaskList_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_TaskList_Notification) {
                    return mergeFrom((CRemoteClient_TaskList_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_TaskList_Notification cRemoteClient_TaskList_Notification) {
                if (cRemoteClient_TaskList_Notification == CRemoteClient_TaskList_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_TaskList_Notification.hasRemoteClientId()) {
                    setRemoteClientId(cRemoteClient_TaskList_Notification.getRemoteClientId());
                }
                if (this.tasklistBuilder_ == null) {
                    if (!cRemoteClient_TaskList_Notification.tasklist_.isEmpty()) {
                        if (this.tasklist_.isEmpty()) {
                            this.tasklist_ = cRemoteClient_TaskList_Notification.tasklist_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureTasklistIsMutable();
                            this.tasklist_.addAll(cRemoteClient_TaskList_Notification.tasklist_);
                        }
                        onChanged();
                    }
                } else if (!cRemoteClient_TaskList_Notification.tasklist_.isEmpty()) {
                    if (this.tasklistBuilder_.isEmpty()) {
                        this.tasklistBuilder_.dispose();
                        this.tasklistBuilder_ = null;
                        this.tasklist_ = cRemoteClient_TaskList_Notification.tasklist_;
                        this.bitField0_ &= -3;
                        this.tasklistBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetTasklistFieldBuilder() : null;
                    } else {
                        this.tasklistBuilder_.addAllMessages(cRemoteClient_TaskList_Notification.tasklist_);
                    }
                }
                mergeUnknownFields(cRemoteClient_TaskList_Notification.getUnknownFields());
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
                                    this.remoteClientId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    CRemoteClient_Task cRemoteClient_Task = (CRemoteClient_Task) codedInputStream.readMessage(CRemoteClient_Task.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureTasklistIsMutable();
                                        this.tasklist_.add(cRemoteClient_Task);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cRemoteClient_Task);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
            public boolean hasRemoteClientId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
            public long getRemoteClientId() {
                return this.remoteClientId_;
            }

            public Builder setRemoteClientId(long j) {
                this.remoteClientId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRemoteClientId() {
                this.bitField0_ &= -2;
                this.remoteClientId_ = 0L;
                onChanged();
                return this;
            }

            private void ensureTasklistIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.tasklist_ = new ArrayList(this.tasklist_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
            public List<CRemoteClient_Task> getTasklistList() {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.tasklist_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
            public int getTasklistCount() {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tasklist_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
            public CRemoteClient_Task getTasklist(int i) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tasklist_.get(i);
                }
                return (CRemoteClient_Task) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setTasklist(int i, CRemoteClient_Task cRemoteClient_Task) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    cRemoteClient_Task.getClass();
                    ensureTasklistIsMutable();
                    this.tasklist_.set(i, cRemoteClient_Task);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cRemoteClient_Task);
                }
                return this;
            }

            public Builder setTasklist(int i, CRemoteClient_Task.Builder builder) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTasklistIsMutable();
                    this.tasklist_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addTasklist(CRemoteClient_Task cRemoteClient_Task) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    cRemoteClient_Task.getClass();
                    ensureTasklistIsMutable();
                    this.tasklist_.add(cRemoteClient_Task);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cRemoteClient_Task);
                }
                return this;
            }

            public Builder addTasklist(int i, CRemoteClient_Task cRemoteClient_Task) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    cRemoteClient_Task.getClass();
                    ensureTasklistIsMutable();
                    this.tasklist_.add(i, cRemoteClient_Task);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cRemoteClient_Task);
                }
                return this;
            }

            public Builder addTasklist(CRemoteClient_Task.Builder builder) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTasklistIsMutable();
                    this.tasklist_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addTasklist(int i, CRemoteClient_Task.Builder builder) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTasklistIsMutable();
                    this.tasklist_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllTasklist(Iterable<? extends CRemoteClient_Task> iterable) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTasklistIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.tasklist_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearTasklist() {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.tasklist_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeTasklist(int i) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTasklistIsMutable();
                    this.tasklist_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CRemoteClient_Task.Builder getTasklistBuilder(int i) {
                return (CRemoteClient_Task.Builder) internalGetTasklistFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
            public CRemoteClient_TaskOrBuilder getTasklistOrBuilder(int i) {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tasklist_.get(i);
                }
                return (CRemoteClient_TaskOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_NotificationOrBuilder
            public List<? extends CRemoteClient_TaskOrBuilder> getTasklistOrBuilderList() {
                RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> repeatedFieldBuilder = this.tasklistBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.tasklist_);
            }

            public CRemoteClient_Task.Builder addTasklistBuilder() {
                return (CRemoteClient_Task.Builder) internalGetTasklistFieldBuilder().addBuilder(CRemoteClient_Task.getDefaultInstance());
            }

            public CRemoteClient_Task.Builder addTasklistBuilder(int i) {
                return (CRemoteClient_Task.Builder) internalGetTasklistFieldBuilder().addBuilder(i, CRemoteClient_Task.getDefaultInstance());
            }

            public List<CRemoteClient_Task.Builder> getTasklistBuilderList() {
                return internalGetTasklistFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CRemoteClient_Task, CRemoteClient_Task.Builder, CRemoteClient_TaskOrBuilder> internalGetTasklistFieldBuilder() {
                if (this.tasklistBuilder_ == null) {
                    this.tasklistBuilder_ = new RepeatedFieldBuilder<>(this.tasklist_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.tasklist_ = null;
                }
                return this.tasklistBuilder_;
            }
        }

        public static CRemoteClient_TaskList_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_TaskList_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_TaskList_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_TaskList_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_MarkTaskComplete_Request extends GeneratedMessage implements CRemoteClient_MarkTaskComplete_RequestOrBuilder {
        public static final int CONTENT_ID_FIELD_NUMBER = 3;
        private static final CRemoteClient_MarkTaskComplete_Request DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_MarkTaskComplete_Request> PARSER;
        public static final int REMOTE_CLIENT_ID_FIELD_NUMBER = 1;
        public static final int TASK_ID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object contentId_;
        private byte memoizedIsInitialized;
        private long remoteClientId_;
        private long taskId_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_MarkTaskComplete_Request.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_MarkTaskComplete_Request();
            PARSER = new AbstractParser<CRemoteClient_MarkTaskComplete_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_Request.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_MarkTaskComplete_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_MarkTaskComplete_Request.newBuilder();
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

        private CRemoteClient_MarkTaskComplete_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.remoteClientId_ = 0L;
            this.taskId_ = 0L;
            this.contentId_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_MarkTaskComplete_Request() {
            this.remoteClientId_ = 0L;
            this.taskId_ = 0L;
            this.contentId_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.contentId_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_MarkTaskComplete_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
        public boolean hasRemoteClientId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
        public long getRemoteClientId() {
            return this.remoteClientId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
        public boolean hasTaskId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
        public long getTaskId() {
            return this.taskId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
        public boolean hasContentId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
        public String getContentId() {
            Object obj = this.contentId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.contentId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
        public ByteString getContentIdBytes() {
            Object obj = this.contentId_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.contentId_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeFixed64(1, this.remoteClientId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.taskId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.contentId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.remoteClientId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.taskId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(3, this.contentId_);
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
            if (!(obj instanceof CRemoteClient_MarkTaskComplete_Request)) {
                return super.equals(obj);
            }
            CRemoteClient_MarkTaskComplete_Request cRemoteClient_MarkTaskComplete_Request = (CRemoteClient_MarkTaskComplete_Request) obj;
            if (hasRemoteClientId() != cRemoteClient_MarkTaskComplete_Request.hasRemoteClientId()) {
                return false;
            }
            if ((hasRemoteClientId() && getRemoteClientId() != cRemoteClient_MarkTaskComplete_Request.getRemoteClientId()) || hasTaskId() != cRemoteClient_MarkTaskComplete_Request.hasTaskId()) {
                return false;
            }
            if ((!hasTaskId() || getTaskId() == cRemoteClient_MarkTaskComplete_Request.getTaskId()) && hasContentId() == cRemoteClient_MarkTaskComplete_Request.hasContentId()) {
                return (!hasContentId() || getContentId().equals(cRemoteClient_MarkTaskComplete_Request.getContentId())) && getUnknownFields().equals(cRemoteClient_MarkTaskComplete_Request.getUnknownFields());
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
            if (hasRemoteClientId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRemoteClientId());
            }
            if (hasTaskId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getTaskId());
            }
            if (hasContentId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getContentId().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_MarkTaskComplete_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_MarkTaskComplete_Request cRemoteClient_MarkTaskComplete_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_MarkTaskComplete_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_MarkTaskComplete_RequestOrBuilder {
            private int bitField0_;
            private Object contentId_;
            private long remoteClientId_;
            private long taskId_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_MarkTaskComplete_Request.class, Builder.class);
            }

            private Builder() {
                this.contentId_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.contentId_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.remoteClientId_ = 0L;
                this.taskId_ = 0L;
                this.contentId_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_MarkTaskComplete_Request getDefaultInstanceForType() {
                return CRemoteClient_MarkTaskComplete_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_MarkTaskComplete_Request build() {
                CRemoteClient_MarkTaskComplete_Request cRemoteClient_MarkTaskComplete_RequestBuildPartial = buildPartial();
                if (cRemoteClient_MarkTaskComplete_RequestBuildPartial.isInitialized()) {
                    return cRemoteClient_MarkTaskComplete_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_MarkTaskComplete_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_MarkTaskComplete_Request buildPartial() {
                CRemoteClient_MarkTaskComplete_Request cRemoteClient_MarkTaskComplete_Request = new CRemoteClient_MarkTaskComplete_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_MarkTaskComplete_Request);
                }
                onBuilt();
                return cRemoteClient_MarkTaskComplete_Request;
            }

            private void buildPartial0(CRemoteClient_MarkTaskComplete_Request cRemoteClient_MarkTaskComplete_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_MarkTaskComplete_Request.remoteClientId_ = this.remoteClientId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_MarkTaskComplete_Request.taskId_ = this.taskId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_MarkTaskComplete_Request.contentId_ = this.contentId_;
                    i |= 4;
                }
                cRemoteClient_MarkTaskComplete_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_MarkTaskComplete_Request) {
                    return mergeFrom((CRemoteClient_MarkTaskComplete_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_MarkTaskComplete_Request cRemoteClient_MarkTaskComplete_Request) {
                if (cRemoteClient_MarkTaskComplete_Request == CRemoteClient_MarkTaskComplete_Request.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_MarkTaskComplete_Request.hasRemoteClientId()) {
                    setRemoteClientId(cRemoteClient_MarkTaskComplete_Request.getRemoteClientId());
                }
                if (cRemoteClient_MarkTaskComplete_Request.hasTaskId()) {
                    setTaskId(cRemoteClient_MarkTaskComplete_Request.getTaskId());
                }
                if (cRemoteClient_MarkTaskComplete_Request.hasContentId()) {
                    this.contentId_ = cRemoteClient_MarkTaskComplete_Request.contentId_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cRemoteClient_MarkTaskComplete_Request.getUnknownFields());
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
                                    this.remoteClientId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.taskId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.contentId_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
            public boolean hasRemoteClientId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
            public long getRemoteClientId() {
                return this.remoteClientId_;
            }

            public Builder setRemoteClientId(long j) {
                this.remoteClientId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRemoteClientId() {
                this.bitField0_ &= -2;
                this.remoteClientId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
            public boolean hasTaskId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
            public long getTaskId() {
                return this.taskId_;
            }

            public Builder setTaskId(long j) {
                this.taskId_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -3;
                this.taskId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
            public boolean hasContentId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
            public String getContentId() {
                Object obj = this.contentId_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.contentId_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_RequestOrBuilder
            public ByteString getContentIdBytes() {
                Object obj = this.contentId_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.contentId_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setContentId(String str) {
                str.getClass();
                this.contentId_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearContentId() {
                this.contentId_ = CRemoteClient_MarkTaskComplete_Request.getDefaultInstance().getContentId();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setContentIdBytes(ByteString byteString) {
                byteString.getClass();
                this.contentId_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_MarkTaskComplete_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_MarkTaskComplete_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_MarkTaskComplete_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_MarkTaskComplete_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_MarkTaskComplete_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CRemoteClient_MarkTaskComplete_Response DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_MarkTaskComplete_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_MarkTaskComplete_Response.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_MarkTaskComplete_Response();
            PARSER = new AbstractParser<CRemoteClient_MarkTaskComplete_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_Response.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_MarkTaskComplete_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_MarkTaskComplete_Response.newBuilder();
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

        private CRemoteClient_MarkTaskComplete_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_MarkTaskComplete_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_MarkTaskComplete_Response.class, Builder.class);
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
            if (obj instanceof CRemoteClient_MarkTaskComplete_Response) {
                return getUnknownFields().equals(((CRemoteClient_MarkTaskComplete_Response) obj).getUnknownFields());
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

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_MarkTaskComplete_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_MarkTaskComplete_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_MarkTaskComplete_Response cRemoteClient_MarkTaskComplete_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_MarkTaskComplete_Response);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_MarkTaskComplete_Response.class, Builder.class);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_MarkTaskComplete_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_MarkTaskComplete_Response getDefaultInstanceForType() {
                return CRemoteClient_MarkTaskComplete_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_MarkTaskComplete_Response build() {
                CRemoteClient_MarkTaskComplete_Response cRemoteClient_MarkTaskComplete_ResponseBuildPartial = buildPartial();
                if (cRemoteClient_MarkTaskComplete_ResponseBuildPartial.isInitialized()) {
                    return cRemoteClient_MarkTaskComplete_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_MarkTaskComplete_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_MarkTaskComplete_Response buildPartial() {
                CRemoteClient_MarkTaskComplete_Response cRemoteClient_MarkTaskComplete_Response = new CRemoteClient_MarkTaskComplete_Response(this);
                onBuilt();
                return cRemoteClient_MarkTaskComplete_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_MarkTaskComplete_Response) {
                    return mergeFrom((CRemoteClient_MarkTaskComplete_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_MarkTaskComplete_Response cRemoteClient_MarkTaskComplete_Response) {
                if (cRemoteClient_MarkTaskComplete_Response == CRemoteClient_MarkTaskComplete_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cRemoteClient_MarkTaskComplete_Response.getUnknownFields());
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

        public static CRemoteClient_MarkTaskComplete_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_MarkTaskComplete_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_MarkTaskComplete_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_MarkTaskComplete_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_RemotePacket_Notification extends GeneratedMessage implements CRemoteClient_RemotePacket_NotificationOrBuilder {
        private static final CRemoteClient_RemotePacket_Notification DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_RemotePacket_Notification> PARSER;
        public static final int PAYLOAD_FIELD_NUMBER = 4;
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ByteString payload_;
        private long sessionId_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_RemotePacket_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_RemotePacket_Notification();
            PARSER = new AbstractParser<CRemoteClient_RemotePacket_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_RemotePacket_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_RemotePacket_Notification.newBuilder();
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

        private CRemoteClient_RemotePacket_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionId_ = 0L;
            this.steamid_ = 0L;
            this.payload_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_RemotePacket_Notification() {
            this.sessionId_ = 0L;
            this.steamid_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.payload_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RemotePacket_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RemotePacket_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_RemotePacket_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
        public boolean hasSessionId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
        public long getSessionId() {
            return this.sessionId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
        public boolean hasPayload() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
        public ByteString getPayload() {
            return this.payload_;
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
                codedOutputStream.writeFixed64(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(4, this.payload_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.sessionId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(4, this.payload_);
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
            if (!(obj instanceof CRemoteClient_RemotePacket_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_RemotePacket_Notification cRemoteClient_RemotePacket_Notification = (CRemoteClient_RemotePacket_Notification) obj;
            if (hasSessionId() != cRemoteClient_RemotePacket_Notification.hasSessionId()) {
                return false;
            }
            if ((hasSessionId() && getSessionId() != cRemoteClient_RemotePacket_Notification.getSessionId()) || hasSteamid() != cRemoteClient_RemotePacket_Notification.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cRemoteClient_RemotePacket_Notification.getSteamid()) && hasPayload() == cRemoteClient_RemotePacket_Notification.hasPayload()) {
                return (!hasPayload() || getPayload().equals(cRemoteClient_RemotePacket_Notification.getPayload())) && getUnknownFields().equals(cRemoteClient_RemotePacket_Notification.getUnknownFields());
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
            if (hasSessionId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionId());
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasPayload()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getPayload().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_RemotePacket_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_RemotePacket_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_RemotePacket_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_RemotePacket_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_RemotePacket_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_RemotePacket_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_RemotePacket_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_RemotePacket_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_RemotePacket_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_RemotePacket_Notification cRemoteClient_RemotePacket_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_RemotePacket_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_RemotePacket_NotificationOrBuilder {
            private int bitField0_;
            private ByteString payload_;
            private long sessionId_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RemotePacket_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RemotePacket_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_RemotePacket_Notification.class, Builder.class);
            }

            private Builder() {
                this.payload_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.payload_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.sessionId_ = 0L;
                this.steamid_ = 0L;
                this.payload_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_RemotePacket_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_RemotePacket_Notification getDefaultInstanceForType() {
                return CRemoteClient_RemotePacket_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_RemotePacket_Notification build() {
                CRemoteClient_RemotePacket_Notification cRemoteClient_RemotePacket_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_RemotePacket_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_RemotePacket_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_RemotePacket_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_RemotePacket_Notification buildPartial() {
                CRemoteClient_RemotePacket_Notification cRemoteClient_RemotePacket_Notification = new CRemoteClient_RemotePacket_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_RemotePacket_Notification);
                }
                onBuilt();
                return cRemoteClient_RemotePacket_Notification;
            }

            private void buildPartial0(CRemoteClient_RemotePacket_Notification cRemoteClient_RemotePacket_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_RemotePacket_Notification.sessionId_ = this.sessionId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_RemotePacket_Notification.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_RemotePacket_Notification.payload_ = this.payload_;
                    i |= 4;
                }
                cRemoteClient_RemotePacket_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_RemotePacket_Notification) {
                    return mergeFrom((CRemoteClient_RemotePacket_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_RemotePacket_Notification cRemoteClient_RemotePacket_Notification) {
                if (cRemoteClient_RemotePacket_Notification == CRemoteClient_RemotePacket_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_RemotePacket_Notification.hasSessionId()) {
                    setSessionId(cRemoteClient_RemotePacket_Notification.getSessionId());
                }
                if (cRemoteClient_RemotePacket_Notification.hasSteamid()) {
                    setSteamid(cRemoteClient_RemotePacket_Notification.getSteamid());
                }
                if (cRemoteClient_RemotePacket_Notification.hasPayload()) {
                    setPayload(cRemoteClient_RemotePacket_Notification.getPayload());
                }
                mergeUnknownFields(cRemoteClient_RemotePacket_Notification.getUnknownFields());
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
                                    this.sessionId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 34) {
                                    this.payload_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
            public boolean hasSessionId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
            public long getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(long j) {
                this.sessionId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2;
                this.sessionId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -3;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
            public boolean hasPayload() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_NotificationOrBuilder
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
                this.payload_ = CRemoteClient_RemotePacket_Notification.getDefaultInstance().getPayload();
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_RemotePacket_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_RemotePacket_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_RemotePacket_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_RemotePacket_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_ReplyPacket_Notification extends GeneratedMessage implements CRemoteClient_ReplyPacket_NotificationOrBuilder {
        private static final CRemoteClient_ReplyPacket_Notification DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_ReplyPacket_Notification> PARSER;
        public static final int PAYLOAD_FIELD_NUMBER = 2;
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ByteString payload_;
        private long sessionId_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_ReplyPacket_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_ReplyPacket_Notification();
            PARSER = new AbstractParser<CRemoteClient_ReplyPacket_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_ReplyPacket_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_ReplyPacket_Notification.newBuilder();
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

        private CRemoteClient_ReplyPacket_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionId_ = 0L;
            this.payload_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_ReplyPacket_Notification() {
            this.sessionId_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.payload_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ReplyPacket_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ReplyPacket_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_ReplyPacket_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
        public boolean hasSessionId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
        public long getSessionId() {
            return this.sessionId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
        public boolean hasPayload() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
        public ByteString getPayload() {
            return this.payload_;
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
                codedOutputStream.writeFixed64(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBytes(2, this.payload_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.sessionId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(2, this.payload_);
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
            if (!(obj instanceof CRemoteClient_ReplyPacket_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_ReplyPacket_Notification cRemoteClient_ReplyPacket_Notification = (CRemoteClient_ReplyPacket_Notification) obj;
            if (hasSessionId() != cRemoteClient_ReplyPacket_Notification.hasSessionId()) {
                return false;
            }
            if ((!hasSessionId() || getSessionId() == cRemoteClient_ReplyPacket_Notification.getSessionId()) && hasPayload() == cRemoteClient_ReplyPacket_Notification.hasPayload()) {
                return (!hasPayload() || getPayload().equals(cRemoteClient_ReplyPacket_Notification.getPayload())) && getUnknownFields().equals(cRemoteClient_ReplyPacket_Notification.getUnknownFields());
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
            if (hasSessionId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionId());
            }
            if (hasPayload()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPayload().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_ReplyPacket_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_ReplyPacket_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_ReplyPacket_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_ReplyPacket_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_ReplyPacket_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_ReplyPacket_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_ReplyPacket_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_ReplyPacket_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_ReplyPacket_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_ReplyPacket_Notification cRemoteClient_ReplyPacket_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_ReplyPacket_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_ReplyPacket_NotificationOrBuilder {
            private int bitField0_;
            private ByteString payload_;
            private long sessionId_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ReplyPacket_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ReplyPacket_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_ReplyPacket_Notification.class, Builder.class);
            }

            private Builder() {
                this.payload_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.payload_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.sessionId_ = 0L;
                this.payload_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_ReplyPacket_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_ReplyPacket_Notification getDefaultInstanceForType() {
                return CRemoteClient_ReplyPacket_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_ReplyPacket_Notification build() {
                CRemoteClient_ReplyPacket_Notification cRemoteClient_ReplyPacket_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_ReplyPacket_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_ReplyPacket_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_ReplyPacket_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_ReplyPacket_Notification buildPartial() {
                CRemoteClient_ReplyPacket_Notification cRemoteClient_ReplyPacket_Notification = new CRemoteClient_ReplyPacket_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_ReplyPacket_Notification);
                }
                onBuilt();
                return cRemoteClient_ReplyPacket_Notification;
            }

            private void buildPartial0(CRemoteClient_ReplyPacket_Notification cRemoteClient_ReplyPacket_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_ReplyPacket_Notification.sessionId_ = this.sessionId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_ReplyPacket_Notification.payload_ = this.payload_;
                    i |= 2;
                }
                cRemoteClient_ReplyPacket_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_ReplyPacket_Notification) {
                    return mergeFrom((CRemoteClient_ReplyPacket_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_ReplyPacket_Notification cRemoteClient_ReplyPacket_Notification) {
                if (cRemoteClient_ReplyPacket_Notification == CRemoteClient_ReplyPacket_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_ReplyPacket_Notification.hasSessionId()) {
                    setSessionId(cRemoteClient_ReplyPacket_Notification.getSessionId());
                }
                if (cRemoteClient_ReplyPacket_Notification.hasPayload()) {
                    setPayload(cRemoteClient_ReplyPacket_Notification.getPayload());
                }
                mergeUnknownFields(cRemoteClient_ReplyPacket_Notification.getUnknownFields());
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
                                    this.sessionId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.payload_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
            public boolean hasSessionId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
            public long getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(long j) {
                this.sessionId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2;
                this.sessionId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
            public boolean hasPayload() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_NotificationOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            public Builder setPayload(ByteString byteString) {
                byteString.getClass();
                this.payload_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPayload() {
                this.bitField0_ &= -3;
                this.payload_ = CRemoteClient_ReplyPacket_Notification.getDefaultInstance().getPayload();
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_ReplyPacket_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_ReplyPacket_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_ReplyPacket_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_ReplyPacket_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_AllocateRelayServer_Request extends GeneratedMessage implements CRemoteClient_AllocateRelayServer_RequestOrBuilder {
        public static final int CELLID_FIELD_NUMBER = 1;
        public static final int CREDENTIALS_FIELD_NUMBER = 2;
        private static final CRemoteClient_AllocateRelayServer_Request DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_AllocateRelayServer_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int cellid_;
        private volatile Object credentials_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_AllocateRelayServer_Request.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_AllocateRelayServer_Request();
            PARSER = new AbstractParser<CRemoteClient_AllocateRelayServer_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_Request.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_AllocateRelayServer_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_AllocateRelayServer_Request.newBuilder();
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

        private CRemoteClient_AllocateRelayServer_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.cellid_ = 0;
            this.credentials_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_AllocateRelayServer_Request() {
            this.cellid_ = 0;
            this.credentials_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.credentials_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateRelayServer_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
        public boolean hasCellid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
        public int getCellid() {
            return this.cellid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
        public boolean hasCredentials() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
        public String getCredentials() {
            Object obj = this.credentials_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.credentials_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
        public ByteString getCredentialsBytes() {
            Object obj = this.credentials_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.credentials_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.cellid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.credentials_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.cellid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.credentials_);
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
            if (!(obj instanceof CRemoteClient_AllocateRelayServer_Request)) {
                return super.equals(obj);
            }
            CRemoteClient_AllocateRelayServer_Request cRemoteClient_AllocateRelayServer_Request = (CRemoteClient_AllocateRelayServer_Request) obj;
            if (hasCellid() != cRemoteClient_AllocateRelayServer_Request.hasCellid()) {
                return false;
            }
            if ((!hasCellid() || getCellid() == cRemoteClient_AllocateRelayServer_Request.getCellid()) && hasCredentials() == cRemoteClient_AllocateRelayServer_Request.hasCredentials()) {
                return (!hasCredentials() || getCredentials().equals(cRemoteClient_AllocateRelayServer_Request.getCredentials())) && getUnknownFields().equals(cRemoteClient_AllocateRelayServer_Request.getUnknownFields());
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
            if (hasCellid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCellid();
            }
            if (hasCredentials()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getCredentials().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_AllocateRelayServer_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_AllocateRelayServer_Request cRemoteClient_AllocateRelayServer_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_AllocateRelayServer_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_AllocateRelayServer_RequestOrBuilder {
            private int bitField0_;
            private int cellid_;
            private Object credentials_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateRelayServer_Request.class, Builder.class);
            }

            private Builder() {
                this.credentials_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.credentials_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.cellid_ = 0;
                this.credentials_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_AllocateRelayServer_Request getDefaultInstanceForType() {
                return CRemoteClient_AllocateRelayServer_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateRelayServer_Request build() {
                CRemoteClient_AllocateRelayServer_Request cRemoteClient_AllocateRelayServer_RequestBuildPartial = buildPartial();
                if (cRemoteClient_AllocateRelayServer_RequestBuildPartial.isInitialized()) {
                    return cRemoteClient_AllocateRelayServer_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_AllocateRelayServer_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateRelayServer_Request buildPartial() {
                CRemoteClient_AllocateRelayServer_Request cRemoteClient_AllocateRelayServer_Request = new CRemoteClient_AllocateRelayServer_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_AllocateRelayServer_Request);
                }
                onBuilt();
                return cRemoteClient_AllocateRelayServer_Request;
            }

            private void buildPartial0(CRemoteClient_AllocateRelayServer_Request cRemoteClient_AllocateRelayServer_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_AllocateRelayServer_Request.cellid_ = this.cellid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_AllocateRelayServer_Request.credentials_ = this.credentials_;
                    i |= 2;
                }
                cRemoteClient_AllocateRelayServer_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_AllocateRelayServer_Request) {
                    return mergeFrom((CRemoteClient_AllocateRelayServer_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_AllocateRelayServer_Request cRemoteClient_AllocateRelayServer_Request) {
                if (cRemoteClient_AllocateRelayServer_Request == CRemoteClient_AllocateRelayServer_Request.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_AllocateRelayServer_Request.hasCellid()) {
                    setCellid(cRemoteClient_AllocateRelayServer_Request.getCellid());
                }
                if (cRemoteClient_AllocateRelayServer_Request.hasCredentials()) {
                    this.credentials_ = cRemoteClient_AllocateRelayServer_Request.credentials_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cRemoteClient_AllocateRelayServer_Request.getUnknownFields());
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
                                    this.cellid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.credentials_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
            public boolean hasCellid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
            public int getCellid() {
                return this.cellid_;
            }

            public Builder setCellid(int i) {
                this.cellid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCellid() {
                this.bitField0_ &= -2;
                this.cellid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
            public boolean hasCredentials() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
            public String getCredentials() {
                Object obj = this.credentials_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.credentials_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_RequestOrBuilder
            public ByteString getCredentialsBytes() {
                Object obj = this.credentials_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.credentials_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCredentials(String str) {
                str.getClass();
                this.credentials_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearCredentials() {
                this.credentials_ = CRemoteClient_AllocateRelayServer_Request.getDefaultInstance().getCredentials();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setCredentialsBytes(ByteString byteString) {
                byteString.getClass();
                this.credentials_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_AllocateRelayServer_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_AllocateRelayServer_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_AllocateRelayServer_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_AllocateRelayServer_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_AllocateRelayServer_Response extends GeneratedMessage implements CRemoteClient_AllocateRelayServer_ResponseOrBuilder {
        private static final CRemoteClient_AllocateRelayServer_Response DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_AllocateRelayServer_Response> PARSER;
        public static final int RELAY_SERVER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object relayServer_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_AllocateRelayServer_Response.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_AllocateRelayServer_Response();
            PARSER = new AbstractParser<CRemoteClient_AllocateRelayServer_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_Response.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_AllocateRelayServer_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_AllocateRelayServer_Response.newBuilder();
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

        private CRemoteClient_AllocateRelayServer_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.relayServer_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_AllocateRelayServer_Response() {
            this.relayServer_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.relayServer_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateRelayServer_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_ResponseOrBuilder
        public boolean hasRelayServer() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_ResponseOrBuilder
        public String getRelayServer() {
            Object obj = this.relayServer_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.relayServer_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_ResponseOrBuilder
        public ByteString getRelayServerBytes() {
            Object obj = this.relayServer_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.relayServer_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.relayServer_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.relayServer_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CRemoteClient_AllocateRelayServer_Response)) {
                return super.equals(obj);
            }
            CRemoteClient_AllocateRelayServer_Response cRemoteClient_AllocateRelayServer_Response = (CRemoteClient_AllocateRelayServer_Response) obj;
            if (hasRelayServer() != cRemoteClient_AllocateRelayServer_Response.hasRelayServer()) {
                return false;
            }
            return (!hasRelayServer() || getRelayServer().equals(cRemoteClient_AllocateRelayServer_Response.getRelayServer())) && getUnknownFields().equals(cRemoteClient_AllocateRelayServer_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasRelayServer()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getRelayServer().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_AllocateRelayServer_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateRelayServer_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_AllocateRelayServer_Response cRemoteClient_AllocateRelayServer_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_AllocateRelayServer_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_AllocateRelayServer_ResponseOrBuilder {
            private int bitField0_;
            private Object relayServer_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateRelayServer_Response.class, Builder.class);
            }

            private Builder() {
                this.relayServer_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.relayServer_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.relayServer_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateRelayServer_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_AllocateRelayServer_Response getDefaultInstanceForType() {
                return CRemoteClient_AllocateRelayServer_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateRelayServer_Response build() {
                CRemoteClient_AllocateRelayServer_Response cRemoteClient_AllocateRelayServer_ResponseBuildPartial = buildPartial();
                if (cRemoteClient_AllocateRelayServer_ResponseBuildPartial.isInitialized()) {
                    return cRemoteClient_AllocateRelayServer_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_AllocateRelayServer_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateRelayServer_Response buildPartial() {
                CRemoteClient_AllocateRelayServer_Response cRemoteClient_AllocateRelayServer_Response = new CRemoteClient_AllocateRelayServer_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_AllocateRelayServer_Response);
                }
                onBuilt();
                return cRemoteClient_AllocateRelayServer_Response;
            }

            private void buildPartial0(CRemoteClient_AllocateRelayServer_Response cRemoteClient_AllocateRelayServer_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemoteClient_AllocateRelayServer_Response.relayServer_ = this.relayServer_;
                } else {
                    i = 0;
                }
                cRemoteClient_AllocateRelayServer_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_AllocateRelayServer_Response) {
                    return mergeFrom((CRemoteClient_AllocateRelayServer_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_AllocateRelayServer_Response cRemoteClient_AllocateRelayServer_Response) {
                if (cRemoteClient_AllocateRelayServer_Response == CRemoteClient_AllocateRelayServer_Response.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_AllocateRelayServer_Response.hasRelayServer()) {
                    this.relayServer_ = cRemoteClient_AllocateRelayServer_Response.relayServer_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cRemoteClient_AllocateRelayServer_Response.getUnknownFields());
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
                                    this.relayServer_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_ResponseOrBuilder
            public boolean hasRelayServer() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_ResponseOrBuilder
            public String getRelayServer() {
                Object obj = this.relayServer_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.relayServer_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_ResponseOrBuilder
            public ByteString getRelayServerBytes() {
                Object obj = this.relayServer_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.relayServer_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRelayServer(String str) {
                str.getClass();
                this.relayServer_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRelayServer() {
                this.relayServer_ = CRemoteClient_AllocateRelayServer_Response.getDefaultInstance().getRelayServer();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setRelayServerBytes(ByteString byteString) {
                byteString.getClass();
                this.relayServer_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_AllocateRelayServer_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_AllocateRelayServer_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_AllocateRelayServer_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_AllocateRelayServer_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_AllocateSDR_Request extends GeneratedMessage implements CRemoteClient_AllocateSDR_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CRemoteClient_AllocateSDR_Request DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_AllocateSDR_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_AllocateSDR_Request.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_AllocateSDR_Request();
            PARSER = new AbstractParser<CRemoteClient_AllocateSDR_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_Request.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_AllocateSDR_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_AllocateSDR_Request.newBuilder();
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

        private CRemoteClient_AllocateSDR_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_AllocateSDR_Request() {
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateSDR_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_RequestOrBuilder
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
            if (!(obj instanceof CRemoteClient_AllocateSDR_Request)) {
                return super.equals(obj);
            }
            CRemoteClient_AllocateSDR_Request cRemoteClient_AllocateSDR_Request = (CRemoteClient_AllocateSDR_Request) obj;
            if (hasAppid() != cRemoteClient_AllocateSDR_Request.hasAppid()) {
                return false;
            }
            return (!hasAppid() || getAppid() == cRemoteClient_AllocateSDR_Request.getAppid()) && getUnknownFields().equals(cRemoteClient_AllocateSDR_Request.getUnknownFields());
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

        public static CRemoteClient_AllocateSDR_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateSDR_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateSDR_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateSDR_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateSDR_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateSDR_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_AllocateSDR_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_AllocateSDR_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateSDR_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_AllocateSDR_Request cRemoteClient_AllocateSDR_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_AllocateSDR_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_AllocateSDR_RequestOrBuilder {
            private int appid_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateSDR_Request.class, Builder.class);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_AllocateSDR_Request getDefaultInstanceForType() {
                return CRemoteClient_AllocateSDR_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateSDR_Request build() {
                CRemoteClient_AllocateSDR_Request cRemoteClient_AllocateSDR_RequestBuildPartial = buildPartial();
                if (cRemoteClient_AllocateSDR_RequestBuildPartial.isInitialized()) {
                    return cRemoteClient_AllocateSDR_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_AllocateSDR_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateSDR_Request buildPartial() {
                CRemoteClient_AllocateSDR_Request cRemoteClient_AllocateSDR_Request = new CRemoteClient_AllocateSDR_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_AllocateSDR_Request);
                }
                onBuilt();
                return cRemoteClient_AllocateSDR_Request;
            }

            private void buildPartial0(CRemoteClient_AllocateSDR_Request cRemoteClient_AllocateSDR_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemoteClient_AllocateSDR_Request.appid_ = this.appid_;
                } else {
                    i = 0;
                }
                cRemoteClient_AllocateSDR_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_AllocateSDR_Request) {
                    return mergeFrom((CRemoteClient_AllocateSDR_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_AllocateSDR_Request cRemoteClient_AllocateSDR_Request) {
                if (cRemoteClient_AllocateSDR_Request == CRemoteClient_AllocateSDR_Request.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_AllocateSDR_Request.hasAppid()) {
                    setAppid(cRemoteClient_AllocateSDR_Request.getAppid());
                }
                mergeUnknownFields(cRemoteClient_AllocateSDR_Request.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_RequestOrBuilder
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

        public static CRemoteClient_AllocateSDR_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_AllocateSDR_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_AllocateSDR_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_AllocateSDR_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_AllocateSDR_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CRemoteClient_AllocateSDR_Response DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_AllocateSDR_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_AllocateSDR_Response.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_AllocateSDR_Response();
            PARSER = new AbstractParser<CRemoteClient_AllocateSDR_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_Response.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_AllocateSDR_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_AllocateSDR_Response.newBuilder();
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

        private CRemoteClient_AllocateSDR_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_AllocateSDR_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateSDR_Response.class, Builder.class);
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
            if (obj instanceof CRemoteClient_AllocateSDR_Response) {
                return getUnknownFields().equals(((CRemoteClient_AllocateSDR_Response) obj).getUnknownFields());
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

        public static CRemoteClient_AllocateSDR_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateSDR_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateSDR_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_AllocateSDR_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_AllocateSDR_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateSDR_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_AllocateSDR_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_AllocateSDR_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_AllocateSDR_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_AllocateSDR_Response cRemoteClient_AllocateSDR_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_AllocateSDR_Response);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_AllocateSDR_Response.class, Builder.class);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_AllocateSDR_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_AllocateSDR_Response getDefaultInstanceForType() {
                return CRemoteClient_AllocateSDR_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateSDR_Response build() {
                CRemoteClient_AllocateSDR_Response cRemoteClient_AllocateSDR_ResponseBuildPartial = buildPartial();
                if (cRemoteClient_AllocateSDR_ResponseBuildPartial.isInitialized()) {
                    return cRemoteClient_AllocateSDR_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_AllocateSDR_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_AllocateSDR_Response buildPartial() {
                CRemoteClient_AllocateSDR_Response cRemoteClient_AllocateSDR_Response = new CRemoteClient_AllocateSDR_Response(this);
                onBuilt();
                return cRemoteClient_AllocateSDR_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_AllocateSDR_Response) {
                    return mergeFrom((CRemoteClient_AllocateSDR_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_AllocateSDR_Response cRemoteClient_AllocateSDR_Response) {
                if (cRemoteClient_AllocateSDR_Response == CRemoteClient_AllocateSDR_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cRemoteClient_AllocateSDR_Response.getUnknownFields());
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

        public static CRemoteClient_AllocateSDR_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_AllocateSDR_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_AllocateSDR_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_AllocateSDR_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_SteamBroadcast_Notification extends GeneratedMessage implements CRemoteClient_SteamBroadcast_NotificationOrBuilder {
        public static final int CLIENTID_FIELD_NUMBER = 2;
        private static final CRemoteClient_SteamBroadcast_Notification DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_SteamBroadcast_Notification> PARSER;
        public static final int PAYLOAD_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long clientid_;
        private byte memoizedIsInitialized;
        private ByteString payload_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_SteamBroadcast_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_SteamBroadcast_Notification();
            PARSER = new AbstractParser<CRemoteClient_SteamBroadcast_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_SteamBroadcast_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_SteamBroadcast_Notification.newBuilder();
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

        private CRemoteClient_SteamBroadcast_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.clientid_ = 0L;
            this.payload_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_SteamBroadcast_Notification() {
            this.steamid_ = 0L;
            this.clientid_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.payload_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamBroadcast_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamBroadcast_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_SteamBroadcast_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
        public boolean hasClientid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
        public long getClientid() {
            return this.clientid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
        public boolean hasPayload() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
        public ByteString getPayload() {
            return this.payload_;
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
                codedOutputStream.writeFixed64(2, this.clientid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(3, this.payload_);
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
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.clientid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(3, this.payload_);
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
            if (!(obj instanceof CRemoteClient_SteamBroadcast_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_SteamBroadcast_Notification cRemoteClient_SteamBroadcast_Notification = (CRemoteClient_SteamBroadcast_Notification) obj;
            if (hasSteamid() != cRemoteClient_SteamBroadcast_Notification.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cRemoteClient_SteamBroadcast_Notification.getSteamid()) || hasClientid() != cRemoteClient_SteamBroadcast_Notification.hasClientid()) {
                return false;
            }
            if ((!hasClientid() || getClientid() == cRemoteClient_SteamBroadcast_Notification.getClientid()) && hasPayload() == cRemoteClient_SteamBroadcast_Notification.hasPayload()) {
                return (!hasPayload() || getPayload().equals(cRemoteClient_SteamBroadcast_Notification.getPayload())) && getUnknownFields().equals(cRemoteClient_SteamBroadcast_Notification.getUnknownFields());
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
            if (hasClientid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getClientid());
            }
            if (hasPayload()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPayload().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_SteamBroadcast_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_SteamBroadcast_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_SteamBroadcast_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_SteamBroadcast_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_SteamBroadcast_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_SteamBroadcast_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_SteamBroadcast_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_SteamBroadcast_Notification cRemoteClient_SteamBroadcast_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_SteamBroadcast_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_SteamBroadcast_NotificationOrBuilder {
            private int bitField0_;
            private long clientid_;
            private ByteString payload_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamBroadcast_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamBroadcast_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_SteamBroadcast_Notification.class, Builder.class);
            }

            private Builder() {
                this.payload_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.payload_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.clientid_ = 0L;
                this.payload_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamBroadcast_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_SteamBroadcast_Notification getDefaultInstanceForType() {
                return CRemoteClient_SteamBroadcast_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_SteamBroadcast_Notification build() {
                CRemoteClient_SteamBroadcast_Notification cRemoteClient_SteamBroadcast_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_SteamBroadcast_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_SteamBroadcast_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_SteamBroadcast_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_SteamBroadcast_Notification buildPartial() {
                CRemoteClient_SteamBroadcast_Notification cRemoteClient_SteamBroadcast_Notification = new CRemoteClient_SteamBroadcast_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_SteamBroadcast_Notification);
                }
                onBuilt();
                return cRemoteClient_SteamBroadcast_Notification;
            }

            private void buildPartial0(CRemoteClient_SteamBroadcast_Notification cRemoteClient_SteamBroadcast_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_SteamBroadcast_Notification.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_SteamBroadcast_Notification.clientid_ = this.clientid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_SteamBroadcast_Notification.payload_ = this.payload_;
                    i |= 4;
                }
                cRemoteClient_SteamBroadcast_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_SteamBroadcast_Notification) {
                    return mergeFrom((CRemoteClient_SteamBroadcast_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_SteamBroadcast_Notification cRemoteClient_SteamBroadcast_Notification) {
                if (cRemoteClient_SteamBroadcast_Notification == CRemoteClient_SteamBroadcast_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_SteamBroadcast_Notification.hasSteamid()) {
                    setSteamid(cRemoteClient_SteamBroadcast_Notification.getSteamid());
                }
                if (cRemoteClient_SteamBroadcast_Notification.hasClientid()) {
                    setClientid(cRemoteClient_SteamBroadcast_Notification.getClientid());
                }
                if (cRemoteClient_SteamBroadcast_Notification.hasPayload()) {
                    setPayload(cRemoteClient_SteamBroadcast_Notification.getPayload());
                }
                mergeUnknownFields(cRemoteClient_SteamBroadcast_Notification.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.clientid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.payload_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
            public boolean hasClientid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
            public long getClientid() {
                return this.clientid_;
            }

            public Builder setClientid(long j) {
                this.clientid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearClientid() {
                this.bitField0_ &= -3;
                this.clientid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
            public boolean hasPayload() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_NotificationOrBuilder
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
                this.payload_ = CRemoteClient_SteamBroadcast_Notification.getDefaultInstance().getPayload();
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_SteamBroadcast_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_SteamBroadcast_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_SteamBroadcast_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_SteamBroadcast_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_SteamToSteam_Notification extends GeneratedMessage implements CRemoteClient_SteamToSteam_NotificationOrBuilder {
        private static final CRemoteClient_SteamToSteam_Notification DEFAULT_INSTANCE;
        public static final int DST_CLIENTID_FIELD_NUMBER = 3;
        public static final int ENCRYPTED_PAYLOAD_FIELD_NUMBER = 5;
        private static final Parser<CRemoteClient_SteamToSteam_Notification> PARSER;
        public static final int SECRETID_FIELD_NUMBER = 4;
        public static final int SRC_CLIENTID_FIELD_NUMBER = 2;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long dstClientid_;
        private ByteString encryptedPayload_;
        private byte memoizedIsInitialized;
        private int secretid_;
        private long srcClientid_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_SteamToSteam_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_SteamToSteam_Notification();
            PARSER = new AbstractParser<CRemoteClient_SteamToSteam_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_SteamToSteam_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_SteamToSteam_Notification.newBuilder();
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

        private CRemoteClient_SteamToSteam_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.srcClientid_ = 0L;
            this.dstClientid_ = 0L;
            this.secretid_ = 0;
            this.encryptedPayload_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_SteamToSteam_Notification() {
            this.steamid_ = 0L;
            this.srcClientid_ = 0L;
            this.dstClientid_ = 0L;
            this.secretid_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.encryptedPayload_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamToSteam_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamToSteam_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_SteamToSteam_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public boolean hasSrcClientid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public long getSrcClientid() {
            return this.srcClientid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public boolean hasDstClientid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public long getDstClientid() {
            return this.dstClientid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public boolean hasSecretid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public int getSecretid() {
            return this.secretid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public boolean hasEncryptedPayload() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
        public ByteString getEncryptedPayload() {
            return this.encryptedPayload_;
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
                codedOutputStream.writeFixed64(2, this.srcClientid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.dstClientid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.secretid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBytes(5, this.encryptedPayload_);
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
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.srcClientid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(3, this.dstClientid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(4, this.secretid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(5, this.encryptedPayload_);
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
            if (!(obj instanceof CRemoteClient_SteamToSteam_Notification)) {
                return super.equals(obj);
            }
            CRemoteClient_SteamToSteam_Notification cRemoteClient_SteamToSteam_Notification = (CRemoteClient_SteamToSteam_Notification) obj;
            if (hasSteamid() != cRemoteClient_SteamToSteam_Notification.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cRemoteClient_SteamToSteam_Notification.getSteamid()) || hasSrcClientid() != cRemoteClient_SteamToSteam_Notification.hasSrcClientid()) {
                return false;
            }
            if ((hasSrcClientid() && getSrcClientid() != cRemoteClient_SteamToSteam_Notification.getSrcClientid()) || hasDstClientid() != cRemoteClient_SteamToSteam_Notification.hasDstClientid()) {
                return false;
            }
            if ((hasDstClientid() && getDstClientid() != cRemoteClient_SteamToSteam_Notification.getDstClientid()) || hasSecretid() != cRemoteClient_SteamToSteam_Notification.hasSecretid()) {
                return false;
            }
            if ((!hasSecretid() || getSecretid() == cRemoteClient_SteamToSteam_Notification.getSecretid()) && hasEncryptedPayload() == cRemoteClient_SteamToSteam_Notification.hasEncryptedPayload()) {
                return (!hasEncryptedPayload() || getEncryptedPayload().equals(cRemoteClient_SteamToSteam_Notification.getEncryptedPayload())) && getUnknownFields().equals(cRemoteClient_SteamToSteam_Notification.getUnknownFields());
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
            if (hasSrcClientid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSrcClientid());
            }
            if (hasDstClientid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getDstClientid());
            }
            if (hasSecretid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getSecretid();
            }
            if (hasEncryptedPayload()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getEncryptedPayload().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_SteamToSteam_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_SteamToSteam_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_SteamToSteam_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_SteamToSteam_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_SteamToSteam_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_SteamToSteam_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_SteamToSteam_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_SteamToSteam_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_SteamToSteam_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_SteamToSteam_Notification cRemoteClient_SteamToSteam_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_SteamToSteam_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_SteamToSteam_NotificationOrBuilder {
            private int bitField0_;
            private long dstClientid_;
            private ByteString encryptedPayload_;
            private int secretid_;
            private long srcClientid_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamToSteam_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamToSteam_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_SteamToSteam_Notification.class, Builder.class);
            }

            private Builder() {
                this.encryptedPayload_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.encryptedPayload_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.srcClientid_ = 0L;
                this.dstClientid_ = 0L;
                this.secretid_ = 0;
                this.encryptedPayload_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_SteamToSteam_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_SteamToSteam_Notification getDefaultInstanceForType() {
                return CRemoteClient_SteamToSteam_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_SteamToSteam_Notification build() {
                CRemoteClient_SteamToSteam_Notification cRemoteClient_SteamToSteam_NotificationBuildPartial = buildPartial();
                if (cRemoteClient_SteamToSteam_NotificationBuildPartial.isInitialized()) {
                    return cRemoteClient_SteamToSteam_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_SteamToSteam_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_SteamToSteam_Notification buildPartial() {
                CRemoteClient_SteamToSteam_Notification cRemoteClient_SteamToSteam_Notification = new CRemoteClient_SteamToSteam_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_SteamToSteam_Notification);
                }
                onBuilt();
                return cRemoteClient_SteamToSteam_Notification;
            }

            private void buildPartial0(CRemoteClient_SteamToSteam_Notification cRemoteClient_SteamToSteam_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_SteamToSteam_Notification.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_SteamToSteam_Notification.srcClientid_ = this.srcClientid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoteClient_SteamToSteam_Notification.dstClientid_ = this.dstClientid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cRemoteClient_SteamToSteam_Notification.secretid_ = this.secretid_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cRemoteClient_SteamToSteam_Notification.encryptedPayload_ = this.encryptedPayload_;
                    i |= 16;
                }
                cRemoteClient_SteamToSteam_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_SteamToSteam_Notification) {
                    return mergeFrom((CRemoteClient_SteamToSteam_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_SteamToSteam_Notification cRemoteClient_SteamToSteam_Notification) {
                if (cRemoteClient_SteamToSteam_Notification == CRemoteClient_SteamToSteam_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_SteamToSteam_Notification.hasSteamid()) {
                    setSteamid(cRemoteClient_SteamToSteam_Notification.getSteamid());
                }
                if (cRemoteClient_SteamToSteam_Notification.hasSrcClientid()) {
                    setSrcClientid(cRemoteClient_SteamToSteam_Notification.getSrcClientid());
                }
                if (cRemoteClient_SteamToSteam_Notification.hasDstClientid()) {
                    setDstClientid(cRemoteClient_SteamToSteam_Notification.getDstClientid());
                }
                if (cRemoteClient_SteamToSteam_Notification.hasSecretid()) {
                    setSecretid(cRemoteClient_SteamToSteam_Notification.getSecretid());
                }
                if (cRemoteClient_SteamToSteam_Notification.hasEncryptedPayload()) {
                    setEncryptedPayload(cRemoteClient_SteamToSteam_Notification.getEncryptedPayload());
                }
                mergeUnknownFields(cRemoteClient_SteamToSteam_Notification.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.srcClientid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.dstClientid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.secretid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.encryptedPayload_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public boolean hasSrcClientid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public long getSrcClientid() {
                return this.srcClientid_;
            }

            public Builder setSrcClientid(long j) {
                this.srcClientid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSrcClientid() {
                this.bitField0_ &= -3;
                this.srcClientid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public boolean hasDstClientid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public long getDstClientid() {
                return this.dstClientid_;
            }

            public Builder setDstClientid(long j) {
                this.dstClientid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDstClientid() {
                this.bitField0_ &= -5;
                this.dstClientid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public boolean hasSecretid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public int getSecretid() {
                return this.secretid_;
            }

            public Builder setSecretid(int i) {
                this.secretid_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSecretid() {
                this.bitField0_ &= -9;
                this.secretid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public boolean hasEncryptedPayload() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_NotificationOrBuilder
            public ByteString getEncryptedPayload() {
                return this.encryptedPayload_;
            }

            public Builder setEncryptedPayload(ByteString byteString) {
                byteString.getClass();
                this.encryptedPayload_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearEncryptedPayload() {
                this.bitField0_ &= -17;
                this.encryptedPayload_ = CRemoteClient_SteamToSteam_Notification.getDefaultInstance().getEncryptedPayload();
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_SteamToSteam_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_SteamToSteam_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_SteamToSteam_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_SteamToSteam_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemotePlay_SessionStarted_Request extends GeneratedMessage implements CRemotePlay_SessionStarted_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 3;
        public static final int CLIENT_ACCOUNT_ID_FIELD_NUMBER = 2;
        private static final CRemotePlay_SessionStarted_Request DEFAULT_INSTANCE;
        public static final int DEVICE_FORM_FACTOR_FIELD_NUMBER = 4;
        public static final int GUEST_SESSION_FIELD_NUMBER = 6;
        public static final int HOST_ACCOUNT_ID_FIELD_NUMBER = 1;
        private static final Parser<CRemotePlay_SessionStarted_Request> PARSER;
        public static final int REMOTE_PLAY_TOGETHER_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private int clientAccountId_;
        private int deviceFormFactor_;
        private boolean guestSession_;
        private int hostAccountId_;
        private byte memoizedIsInitialized;
        private boolean remotePlayTogether_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemotePlay_SessionStarted_Request.class.getName());
            DEFAULT_INSTANCE = new CRemotePlay_SessionStarted_Request();
            PARSER = new AbstractParser<CRemotePlay_SessionStarted_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_Request.1
                @Override // com.google.protobuf.Parser
                public CRemotePlay_SessionStarted_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemotePlay_SessionStarted_Request.newBuilder();
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

        private CRemotePlay_SessionStarted_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.hostAccountId_ = 0;
            this.clientAccountId_ = 0;
            this.appid_ = 0;
            this.deviceFormFactor_ = 0;
            this.remotePlayTogether_ = false;
            this.guestSession_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemotePlay_SessionStarted_Request() {
            this.hostAccountId_ = 0;
            this.clientAccountId_ = 0;
            this.appid_ = 0;
            this.deviceFormFactor_ = 0;
            this.remotePlayTogether_ = false;
            this.guestSession_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlay_SessionStarted_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean hasHostAccountId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public int getHostAccountId() {
            return this.hostAccountId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean hasClientAccountId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public int getClientAccountId() {
            return this.clientAccountId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean hasDeviceFormFactor() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public int getDeviceFormFactor() {
            return this.deviceFormFactor_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean hasRemotePlayTogether() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean getRemotePlayTogether() {
            return this.remotePlayTogether_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean hasGuestSession() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
        public boolean getGuestSession() {
            return this.guestSession_;
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
                codedOutputStream.writeUInt32(1, this.hostAccountId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.clientAccountId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.appid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.deviceFormFactor_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.remotePlayTogether_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeBool(6, this.guestSession_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.hostAccountId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.clientAccountId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.appid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(4, this.deviceFormFactor_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(5, this.remotePlayTogether_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(6, this.guestSession_);
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
            if (!(obj instanceof CRemotePlay_SessionStarted_Request)) {
                return super.equals(obj);
            }
            CRemotePlay_SessionStarted_Request cRemotePlay_SessionStarted_Request = (CRemotePlay_SessionStarted_Request) obj;
            if (hasHostAccountId() != cRemotePlay_SessionStarted_Request.hasHostAccountId()) {
                return false;
            }
            if ((hasHostAccountId() && getHostAccountId() != cRemotePlay_SessionStarted_Request.getHostAccountId()) || hasClientAccountId() != cRemotePlay_SessionStarted_Request.hasClientAccountId()) {
                return false;
            }
            if ((hasClientAccountId() && getClientAccountId() != cRemotePlay_SessionStarted_Request.getClientAccountId()) || hasAppid() != cRemotePlay_SessionStarted_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cRemotePlay_SessionStarted_Request.getAppid()) || hasDeviceFormFactor() != cRemotePlay_SessionStarted_Request.hasDeviceFormFactor()) {
                return false;
            }
            if ((hasDeviceFormFactor() && getDeviceFormFactor() != cRemotePlay_SessionStarted_Request.getDeviceFormFactor()) || hasRemotePlayTogether() != cRemotePlay_SessionStarted_Request.hasRemotePlayTogether()) {
                return false;
            }
            if ((!hasRemotePlayTogether() || getRemotePlayTogether() == cRemotePlay_SessionStarted_Request.getRemotePlayTogether()) && hasGuestSession() == cRemotePlay_SessionStarted_Request.hasGuestSession()) {
                return (!hasGuestSession() || getGuestSession() == cRemotePlay_SessionStarted_Request.getGuestSession()) && getUnknownFields().equals(cRemotePlay_SessionStarted_Request.getUnknownFields());
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
            if (hasHostAccountId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getHostAccountId();
            }
            if (hasClientAccountId()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getClientAccountId();
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getAppid();
            }
            if (hasDeviceFormFactor()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getDeviceFormFactor();
            }
            if (hasRemotePlayTogether()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getRemotePlayTogether());
            }
            if (hasGuestSession()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getGuestSession());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemotePlay_SessionStarted_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStarted_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemotePlay_SessionStarted_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemotePlay_SessionStarted_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStarted_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemotePlay_SessionStarted_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemotePlay_SessionStarted_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStarted_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemotePlay_SessionStarted_Request cRemotePlay_SessionStarted_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemotePlay_SessionStarted_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemotePlay_SessionStarted_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int clientAccountId_;
            private int deviceFormFactor_;
            private boolean guestSession_;
            private int hostAccountId_;
            private boolean remotePlayTogether_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlay_SessionStarted_Request.class, Builder.class);
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
                this.hostAccountId_ = 0;
                this.clientAccountId_ = 0;
                this.appid_ = 0;
                this.deviceFormFactor_ = 0;
                this.remotePlayTogether_ = false;
                this.guestSession_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemotePlay_SessionStarted_Request getDefaultInstanceForType() {
                return CRemotePlay_SessionStarted_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlay_SessionStarted_Request build() {
                CRemotePlay_SessionStarted_Request cRemotePlay_SessionStarted_RequestBuildPartial = buildPartial();
                if (cRemotePlay_SessionStarted_RequestBuildPartial.isInitialized()) {
                    return cRemotePlay_SessionStarted_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemotePlay_SessionStarted_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlay_SessionStarted_Request buildPartial() {
                CRemotePlay_SessionStarted_Request cRemotePlay_SessionStarted_Request = new CRemotePlay_SessionStarted_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemotePlay_SessionStarted_Request);
                }
                onBuilt();
                return cRemotePlay_SessionStarted_Request;
            }

            private void buildPartial0(CRemotePlay_SessionStarted_Request cRemotePlay_SessionStarted_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemotePlay_SessionStarted_Request.hostAccountId_ = this.hostAccountId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemotePlay_SessionStarted_Request.clientAccountId_ = this.clientAccountId_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemotePlay_SessionStarted_Request.appid_ = this.appid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cRemotePlay_SessionStarted_Request.deviceFormFactor_ = this.deviceFormFactor_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cRemotePlay_SessionStarted_Request.remotePlayTogether_ = this.remotePlayTogether_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cRemotePlay_SessionStarted_Request.guestSession_ = this.guestSession_;
                    i |= 32;
                }
                cRemotePlay_SessionStarted_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemotePlay_SessionStarted_Request) {
                    return mergeFrom((CRemotePlay_SessionStarted_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemotePlay_SessionStarted_Request cRemotePlay_SessionStarted_Request) {
                if (cRemotePlay_SessionStarted_Request == CRemotePlay_SessionStarted_Request.getDefaultInstance()) {
                    return this;
                }
                if (cRemotePlay_SessionStarted_Request.hasHostAccountId()) {
                    setHostAccountId(cRemotePlay_SessionStarted_Request.getHostAccountId());
                }
                if (cRemotePlay_SessionStarted_Request.hasClientAccountId()) {
                    setClientAccountId(cRemotePlay_SessionStarted_Request.getClientAccountId());
                }
                if (cRemotePlay_SessionStarted_Request.hasAppid()) {
                    setAppid(cRemotePlay_SessionStarted_Request.getAppid());
                }
                if (cRemotePlay_SessionStarted_Request.hasDeviceFormFactor()) {
                    setDeviceFormFactor(cRemotePlay_SessionStarted_Request.getDeviceFormFactor());
                }
                if (cRemotePlay_SessionStarted_Request.hasRemotePlayTogether()) {
                    setRemotePlayTogether(cRemotePlay_SessionStarted_Request.getRemotePlayTogether());
                }
                if (cRemotePlay_SessionStarted_Request.hasGuestSession()) {
                    setGuestSession(cRemotePlay_SessionStarted_Request.getGuestSession());
                }
                mergeUnknownFields(cRemotePlay_SessionStarted_Request.getUnknownFields());
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
                                    this.hostAccountId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.clientAccountId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.deviceFormFactor_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.remotePlayTogether_ = codedInputStream.readBool();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.guestSession_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean hasHostAccountId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public int getHostAccountId() {
                return this.hostAccountId_;
            }

            public Builder setHostAccountId(int i) {
                this.hostAccountId_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearHostAccountId() {
                this.bitField0_ &= -2;
                this.hostAccountId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean hasClientAccountId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public int getClientAccountId() {
                return this.clientAccountId_;
            }

            public Builder setClientAccountId(int i) {
                this.clientAccountId_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearClientAccountId() {
                this.bitField0_ &= -3;
                this.clientAccountId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -5;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean hasDeviceFormFactor() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public int getDeviceFormFactor() {
                return this.deviceFormFactor_;
            }

            public Builder setDeviceFormFactor(int i) {
                this.deviceFormFactor_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearDeviceFormFactor() {
                this.bitField0_ &= -9;
                this.deviceFormFactor_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean hasRemotePlayTogether() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean getRemotePlayTogether() {
                return this.remotePlayTogether_;
            }

            public Builder setRemotePlayTogether(boolean z) {
                this.remotePlayTogether_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearRemotePlayTogether() {
                this.bitField0_ &= -17;
                this.remotePlayTogether_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean hasGuestSession() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_RequestOrBuilder
            public boolean getGuestSession() {
                return this.guestSession_;
            }

            public Builder setGuestSession(boolean z) {
                this.guestSession_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearGuestSession() {
                this.bitField0_ &= -33;
                this.guestSession_ = false;
                onChanged();
                return this;
            }
        }

        public static CRemotePlay_SessionStarted_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemotePlay_SessionStarted_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemotePlay_SessionStarted_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemotePlay_SessionStarted_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemotePlay_SessionStarted_Response extends GeneratedMessage implements CRemotePlay_SessionStarted_ResponseOrBuilder {
        private static final CRemotePlay_SessionStarted_Response DEFAULT_INSTANCE;
        private static final Parser<CRemotePlay_SessionStarted_Response> PARSER;
        public static final int RECORD_ID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long recordId_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemotePlay_SessionStarted_Response.class.getName());
            DEFAULT_INSTANCE = new CRemotePlay_SessionStarted_Response();
            PARSER = new AbstractParser<CRemotePlay_SessionStarted_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_Response.1
                @Override // com.google.protobuf.Parser
                public CRemotePlay_SessionStarted_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemotePlay_SessionStarted_Response.newBuilder();
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

        private CRemotePlay_SessionStarted_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.recordId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemotePlay_SessionStarted_Response() {
            this.recordId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlay_SessionStarted_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_ResponseOrBuilder
        public boolean hasRecordId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_ResponseOrBuilder
        public long getRecordId() {
            return this.recordId_;
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
                codedOutputStream.writeFixed64(1, this.recordId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.recordId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CRemotePlay_SessionStarted_Response)) {
                return super.equals(obj);
            }
            CRemotePlay_SessionStarted_Response cRemotePlay_SessionStarted_Response = (CRemotePlay_SessionStarted_Response) obj;
            if (hasRecordId() != cRemotePlay_SessionStarted_Response.hasRecordId()) {
                return false;
            }
            return (!hasRecordId() || getRecordId() == cRemotePlay_SessionStarted_Response.getRecordId()) && getUnknownFields().equals(cRemotePlay_SessionStarted_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasRecordId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRecordId());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemotePlay_SessionStarted_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStarted_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemotePlay_SessionStarted_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemotePlay_SessionStarted_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStarted_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemotePlay_SessionStarted_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemotePlay_SessionStarted_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStarted_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemotePlay_SessionStarted_Response cRemotePlay_SessionStarted_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemotePlay_SessionStarted_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemotePlay_SessionStarted_ResponseOrBuilder {
            private int bitField0_;
            private long recordId_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlay_SessionStarted_Response.class, Builder.class);
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
                this.recordId_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStarted_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemotePlay_SessionStarted_Response getDefaultInstanceForType() {
                return CRemotePlay_SessionStarted_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlay_SessionStarted_Response build() {
                CRemotePlay_SessionStarted_Response cRemotePlay_SessionStarted_ResponseBuildPartial = buildPartial();
                if (cRemotePlay_SessionStarted_ResponseBuildPartial.isInitialized()) {
                    return cRemotePlay_SessionStarted_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemotePlay_SessionStarted_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlay_SessionStarted_Response buildPartial() {
                CRemotePlay_SessionStarted_Response cRemotePlay_SessionStarted_Response = new CRemotePlay_SessionStarted_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemotePlay_SessionStarted_Response);
                }
                onBuilt();
                return cRemotePlay_SessionStarted_Response;
            }

            private void buildPartial0(CRemotePlay_SessionStarted_Response cRemotePlay_SessionStarted_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemotePlay_SessionStarted_Response.recordId_ = this.recordId_;
                } else {
                    i = 0;
                }
                cRemotePlay_SessionStarted_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemotePlay_SessionStarted_Response) {
                    return mergeFrom((CRemotePlay_SessionStarted_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemotePlay_SessionStarted_Response cRemotePlay_SessionStarted_Response) {
                if (cRemotePlay_SessionStarted_Response == CRemotePlay_SessionStarted_Response.getDefaultInstance()) {
                    return this;
                }
                if (cRemotePlay_SessionStarted_Response.hasRecordId()) {
                    setRecordId(cRemotePlay_SessionStarted_Response.getRecordId());
                }
                mergeUnknownFields(cRemotePlay_SessionStarted_Response.getUnknownFields());
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
                                    this.recordId_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_ResponseOrBuilder
            public boolean hasRecordId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_ResponseOrBuilder
            public long getRecordId() {
                return this.recordId_;
            }

            public Builder setRecordId(long j) {
                this.recordId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRecordId() {
                this.bitField0_ &= -2;
                this.recordId_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CRemotePlay_SessionStarted_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemotePlay_SessionStarted_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemotePlay_SessionStarted_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemotePlay_SessionStarted_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemotePlay_SessionStopped_Notification extends GeneratedMessage implements CRemotePlay_SessionStopped_NotificationOrBuilder {
        private static final CRemotePlay_SessionStopped_Notification DEFAULT_INSTANCE;
        private static final Parser<CRemotePlay_SessionStopped_Notification> PARSER;
        public static final int RECORD_ID_FIELD_NUMBER = 1;
        public static final int USED_H264_FIELD_NUMBER = 3;
        public static final int USED_HEVC_FIELD_NUMBER = 4;
        public static final int USED_X264_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long recordId_;
        private boolean usedH264_;
        private boolean usedHevc_;
        private boolean usedX264_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemotePlay_SessionStopped_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemotePlay_SessionStopped_Notification();
            PARSER = new AbstractParser<CRemotePlay_SessionStopped_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemotePlay_SessionStopped_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemotePlay_SessionStopped_Notification.newBuilder();
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

        private CRemotePlay_SessionStopped_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.recordId_ = 0L;
            this.usedX264_ = false;
            this.usedH264_ = false;
            this.usedHevc_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemotePlay_SessionStopped_Notification() {
            this.recordId_ = 0L;
            this.usedX264_ = false;
            this.usedH264_ = false;
            this.usedHevc_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStopped_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStopped_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlay_SessionStopped_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public boolean hasRecordId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public long getRecordId() {
            return this.recordId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public boolean hasUsedX264() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public boolean getUsedX264() {
            return this.usedX264_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public boolean hasUsedH264() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public boolean getUsedH264() {
            return this.usedH264_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public boolean hasUsedHevc() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
        public boolean getUsedHevc() {
            return this.usedHevc_;
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
                codedOutputStream.writeFixed64(1, this.recordId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.usedX264_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.usedH264_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.usedHevc_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.recordId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(2, this.usedX264_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(3, this.usedH264_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(4, this.usedHevc_);
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
            if (!(obj instanceof CRemotePlay_SessionStopped_Notification)) {
                return super.equals(obj);
            }
            CRemotePlay_SessionStopped_Notification cRemotePlay_SessionStopped_Notification = (CRemotePlay_SessionStopped_Notification) obj;
            if (hasRecordId() != cRemotePlay_SessionStopped_Notification.hasRecordId()) {
                return false;
            }
            if ((hasRecordId() && getRecordId() != cRemotePlay_SessionStopped_Notification.getRecordId()) || hasUsedX264() != cRemotePlay_SessionStopped_Notification.hasUsedX264()) {
                return false;
            }
            if ((hasUsedX264() && getUsedX264() != cRemotePlay_SessionStopped_Notification.getUsedX264()) || hasUsedH264() != cRemotePlay_SessionStopped_Notification.hasUsedH264()) {
                return false;
            }
            if ((!hasUsedH264() || getUsedH264() == cRemotePlay_SessionStopped_Notification.getUsedH264()) && hasUsedHevc() == cRemotePlay_SessionStopped_Notification.hasUsedHevc()) {
                return (!hasUsedHevc() || getUsedHevc() == cRemotePlay_SessionStopped_Notification.getUsedHevc()) && getUnknownFields().equals(cRemotePlay_SessionStopped_Notification.getUnknownFields());
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
            if (hasRecordId()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRecordId());
            }
            if (hasUsedX264()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getUsedX264());
            }
            if (hasUsedH264()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getUsedH264());
            }
            if (hasUsedHevc()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getUsedHevc());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemotePlay_SessionStopped_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStopped_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStopped_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemotePlay_SessionStopped_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemotePlay_SessionStopped_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStopped_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemotePlay_SessionStopped_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemotePlay_SessionStopped_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlay_SessionStopped_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemotePlay_SessionStopped_Notification cRemotePlay_SessionStopped_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemotePlay_SessionStopped_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemotePlay_SessionStopped_NotificationOrBuilder {
            private int bitField0_;
            private long recordId_;
            private boolean usedH264_;
            private boolean usedHevc_;
            private boolean usedX264_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStopped_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStopped_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlay_SessionStopped_Notification.class, Builder.class);
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
                this.recordId_ = 0L;
                this.usedX264_ = false;
                this.usedH264_ = false;
                this.usedHevc_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlay_SessionStopped_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemotePlay_SessionStopped_Notification getDefaultInstanceForType() {
                return CRemotePlay_SessionStopped_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlay_SessionStopped_Notification build() {
                CRemotePlay_SessionStopped_Notification cRemotePlay_SessionStopped_NotificationBuildPartial = buildPartial();
                if (cRemotePlay_SessionStopped_NotificationBuildPartial.isInitialized()) {
                    return cRemotePlay_SessionStopped_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemotePlay_SessionStopped_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlay_SessionStopped_Notification buildPartial() {
                CRemotePlay_SessionStopped_Notification cRemotePlay_SessionStopped_Notification = new CRemotePlay_SessionStopped_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemotePlay_SessionStopped_Notification);
                }
                onBuilt();
                return cRemotePlay_SessionStopped_Notification;
            }

            private void buildPartial0(CRemotePlay_SessionStopped_Notification cRemotePlay_SessionStopped_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemotePlay_SessionStopped_Notification.recordId_ = this.recordId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemotePlay_SessionStopped_Notification.usedX264_ = this.usedX264_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemotePlay_SessionStopped_Notification.usedH264_ = this.usedH264_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cRemotePlay_SessionStopped_Notification.usedHevc_ = this.usedHevc_;
                    i |= 8;
                }
                cRemotePlay_SessionStopped_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemotePlay_SessionStopped_Notification) {
                    return mergeFrom((CRemotePlay_SessionStopped_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemotePlay_SessionStopped_Notification cRemotePlay_SessionStopped_Notification) {
                if (cRemotePlay_SessionStopped_Notification == CRemotePlay_SessionStopped_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemotePlay_SessionStopped_Notification.hasRecordId()) {
                    setRecordId(cRemotePlay_SessionStopped_Notification.getRecordId());
                }
                if (cRemotePlay_SessionStopped_Notification.hasUsedX264()) {
                    setUsedX264(cRemotePlay_SessionStopped_Notification.getUsedX264());
                }
                if (cRemotePlay_SessionStopped_Notification.hasUsedH264()) {
                    setUsedH264(cRemotePlay_SessionStopped_Notification.getUsedH264());
                }
                if (cRemotePlay_SessionStopped_Notification.hasUsedHevc()) {
                    setUsedHevc(cRemotePlay_SessionStopped_Notification.getUsedHevc());
                }
                mergeUnknownFields(cRemotePlay_SessionStopped_Notification.getUnknownFields());
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
                                    this.recordId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.usedX264_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.usedH264_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.usedHevc_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public boolean hasRecordId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public long getRecordId() {
                return this.recordId_;
            }

            public Builder setRecordId(long j) {
                this.recordId_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRecordId() {
                this.bitField0_ &= -2;
                this.recordId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public boolean hasUsedX264() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public boolean getUsedX264() {
                return this.usedX264_;
            }

            public Builder setUsedX264(boolean z) {
                this.usedX264_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearUsedX264() {
                this.bitField0_ &= -3;
                this.usedX264_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public boolean hasUsedH264() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public boolean getUsedH264() {
                return this.usedH264_;
            }

            public Builder setUsedH264(boolean z) {
                this.usedH264_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearUsedH264() {
                this.bitField0_ &= -5;
                this.usedH264_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public boolean hasUsedHevc() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_NotificationOrBuilder
            public boolean getUsedHevc() {
                return this.usedHevc_;
            }

            public Builder setUsedHevc(boolean z) {
                this.usedHevc_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearUsedHevc() {
                this.bitField0_ &= -9;
                this.usedHevc_ = false;
                onChanged();
                return this;
            }
        }

        public static CRemotePlay_SessionStopped_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemotePlay_SessionStopped_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemotePlay_SessionStopped_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemotePlay_SessionStopped_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemotePlayTogether_Notification extends GeneratedMessage implements CRemotePlayTogether_NotificationOrBuilder {
        private static final CRemotePlayTogether_Notification DEFAULT_INSTANCE;
        public static final int GROUP_UPDATED_FIELD_NUMBER = 2;
        private static final Parser<CRemotePlayTogether_Notification> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int messageCase_;
        private Object message_;
        private long steamid_;

        public interface ControllerSlotOrBuilder extends MessageOrBuilder {
            int getControllerType();

            Player getPlayer();

            PlayerOrBuilder getPlayerOrBuilder();

            int getSlotid();

            boolean hasControllerType();

            boolean hasPlayer();

            boolean hasSlotid();
        }

        public interface ControllerSlot_obsoleteOrBuilder extends MessageOrBuilder {
            int getSlotid();

            long getSteamid();

            boolean hasSlotid();

            boolean hasSteamid();
        }

        public interface GroupUpdatedOrBuilder extends MessageOrBuilder {
            ControllerSlot getControllerSlots(int i);

            int getControllerSlotsCount();

            List<ControllerSlot> getControllerSlotsList();

            ControllerSlot_obsolete getControllerSlotsObsolete(int i);

            int getControllerSlotsObsoleteCount();

            List<ControllerSlot_obsolete> getControllerSlotsObsoleteList();

            ControllerSlot_obsoleteOrBuilder getControllerSlotsObsoleteOrBuilder(int i);

            List<? extends ControllerSlot_obsoleteOrBuilder> getControllerSlotsObsoleteOrBuilderList();

            ControllerSlotOrBuilder getControllerSlotsOrBuilder(int i);

            List<? extends ControllerSlotOrBuilder> getControllerSlotsOrBuilderList();

            boolean getHasNewPlayers();

            long getHostClientid();

            long getHostGameid();

            long getHostSteamid();

            Player getPlayerSlots(int i);

            int getPlayerSlotsCount();

            List<Player> getPlayerSlotsList();

            PlayerOrBuilder getPlayerSlotsOrBuilder(int i);

            List<? extends PlayerOrBuilder> getPlayerSlotsOrBuilderList();

            long getPlayersObsolete(int i);

            int getPlayersObsoleteCount();

            List<Long> getPlayersObsoleteList();

            boolean hasHasNewPlayers();

            boolean hasHostClientid();

            boolean hasHostGameid();

            boolean hasHostSteamid();
        }

        public interface PlayerOrBuilder extends MessageOrBuilder {
            ByteString getAvatarHash();

            boolean getControllerEnabled();

            int getGuestid();

            boolean getKeyboardEnabled();

            boolean getMouseEnabled();

            long getSteamid();

            boolean hasAvatarHash();

            boolean hasControllerEnabled();

            boolean hasGuestid();

            boolean hasKeyboardEnabled();

            boolean hasMouseEnabled();

            boolean hasSteamid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemotePlayTogether_Notification.class.getName());
            DEFAULT_INSTANCE = new CRemotePlayTogether_Notification();
            PARSER = new AbstractParser<CRemotePlayTogether_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.1
                @Override // com.google.protobuf.Parser
                public CRemotePlayTogether_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemotePlayTogether_Notification.newBuilder();
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

        private CRemotePlayTogether_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.messageCase_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemotePlayTogether_Notification() {
            this.messageCase_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlayTogether_Notification.class, Builder.class);
        }

        public static final class Player extends GeneratedMessage implements PlayerOrBuilder {
            public static final int AVATAR_HASH_FIELD_NUMBER = 3;
            public static final int CONTROLLER_ENABLED_FIELD_NUMBER = 6;
            private static final Player DEFAULT_INSTANCE;
            public static final int GUESTID_FIELD_NUMBER = 2;
            public static final int KEYBOARD_ENABLED_FIELD_NUMBER = 4;
            public static final int MOUSE_ENABLED_FIELD_NUMBER = 5;
            private static final Parser<Player> PARSER;
            public static final int STEAMID_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private ByteString avatarHash_;
            private int bitField0_;
            private boolean controllerEnabled_;
            private int guestid_;
            private boolean keyboardEnabled_;
            private byte memoizedIsInitialized;
            private boolean mouseEnabled_;
            private long steamid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Player.class.getName());
                DEFAULT_INSTANCE = new Player();
                PARSER = new AbstractParser<Player>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.Player.1
                    @Override // com.google.protobuf.Parser
                    public Player parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Player.newBuilder();
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

            private Player(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.steamid_ = 0L;
                this.guestid_ = 0;
                this.avatarHash_ = ByteString.EMPTY;
                this.keyboardEnabled_ = false;
                this.mouseEnabled_ = false;
                this.controllerEnabled_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Player() {
                this.steamid_ = 0L;
                this.guestid_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.keyboardEnabled_ = false;
                this.mouseEnabled_ = false;
                this.controllerEnabled_ = false;
                this.memoizedIsInitialized = (byte) -1;
                this.avatarHash_ = byteString;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_Player_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_Player_fieldAccessorTable.ensureFieldAccessorsInitialized(Player.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean hasGuestid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public int getGuestid() {
                return this.guestid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean hasAvatarHash() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public ByteString getAvatarHash() {
                return this.avatarHash_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean hasKeyboardEnabled() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean getKeyboardEnabled() {
                return this.keyboardEnabled_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean hasMouseEnabled() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean getMouseEnabled() {
                return this.mouseEnabled_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean hasControllerEnabled() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
            public boolean getControllerEnabled() {
                return this.controllerEnabled_;
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
                    codedOutputStream.writeUInt32(2, this.guestid_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBytes(3, this.avatarHash_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBool(4, this.keyboardEnabled_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeBool(5, this.mouseEnabled_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeBool(6, this.controllerEnabled_);
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
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.guestid_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBytesSize(3, this.avatarHash_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(4, this.keyboardEnabled_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(5, this.mouseEnabled_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(6, this.controllerEnabled_);
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
                if (!(obj instanceof Player)) {
                    return super.equals(obj);
                }
                Player player = (Player) obj;
                if (hasSteamid() != player.hasSteamid()) {
                    return false;
                }
                if ((hasSteamid() && getSteamid() != player.getSteamid()) || hasGuestid() != player.hasGuestid()) {
                    return false;
                }
                if ((hasGuestid() && getGuestid() != player.getGuestid()) || hasAvatarHash() != player.hasAvatarHash()) {
                    return false;
                }
                if ((hasAvatarHash() && !getAvatarHash().equals(player.getAvatarHash())) || hasKeyboardEnabled() != player.hasKeyboardEnabled()) {
                    return false;
                }
                if ((hasKeyboardEnabled() && getKeyboardEnabled() != player.getKeyboardEnabled()) || hasMouseEnabled() != player.hasMouseEnabled()) {
                    return false;
                }
                if ((!hasMouseEnabled() || getMouseEnabled() == player.getMouseEnabled()) && hasControllerEnabled() == player.hasControllerEnabled()) {
                    return (!hasControllerEnabled() || getControllerEnabled() == player.getControllerEnabled()) && getUnknownFields().equals(player.getUnknownFields());
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
                if (hasGuestid()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getGuestid();
                }
                if (hasAvatarHash()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getAvatarHash().hashCode();
                }
                if (hasKeyboardEnabled()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getKeyboardEnabled());
                }
                if (hasMouseEnabled()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getMouseEnabled());
                }
                if (hasControllerEnabled()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getControllerEnabled());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Player parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Player parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Player parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Player parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Player parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Player parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Player parseFrom(InputStream inputStream) throws IOException {
                return (Player) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Player parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Player) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Player parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Player) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Player parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Player) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Player parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Player) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Player parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Player) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Player player) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(player);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements PlayerOrBuilder {
                private ByteString avatarHash_;
                private int bitField0_;
                private boolean controllerEnabled_;
                private int guestid_;
                private boolean keyboardEnabled_;
                private boolean mouseEnabled_;
                private long steamid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_Player_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_Player_fieldAccessorTable.ensureFieldAccessorsInitialized(Player.class, Builder.class);
                }

                private Builder() {
                    this.avatarHash_ = ByteString.EMPTY;
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.avatarHash_ = ByteString.EMPTY;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.steamid_ = 0L;
                    this.guestid_ = 0;
                    this.avatarHash_ = ByteString.EMPTY;
                    this.keyboardEnabled_ = false;
                    this.mouseEnabled_ = false;
                    this.controllerEnabled_ = false;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_Player_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Player getDefaultInstanceForType() {
                    return Player.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Player build() {
                    Player playerBuildPartial = buildPartial();
                    if (playerBuildPartial.isInitialized()) {
                        return playerBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) playerBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Player buildPartial() {
                    Player player = new Player(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(player);
                    }
                    onBuilt();
                    return player;
                }

                private void buildPartial0(Player player) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        player.steamid_ = this.steamid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        player.guestid_ = this.guestid_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        player.avatarHash_ = this.avatarHash_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        player.keyboardEnabled_ = this.keyboardEnabled_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        player.mouseEnabled_ = this.mouseEnabled_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        player.controllerEnabled_ = this.controllerEnabled_;
                        i |= 32;
                    }
                    player.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Player) {
                        return mergeFrom((Player) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Player player) {
                    if (player == Player.getDefaultInstance()) {
                        return this;
                    }
                    if (player.hasSteamid()) {
                        setSteamid(player.getSteamid());
                    }
                    if (player.hasGuestid()) {
                        setGuestid(player.getGuestid());
                    }
                    if (player.hasAvatarHash()) {
                        setAvatarHash(player.getAvatarHash());
                    }
                    if (player.hasKeyboardEnabled()) {
                        setKeyboardEnabled(player.getKeyboardEnabled());
                    }
                    if (player.hasMouseEnabled()) {
                        setMouseEnabled(player.getMouseEnabled());
                    }
                    if (player.hasControllerEnabled()) {
                        setControllerEnabled(player.getControllerEnabled());
                    }
                    mergeUnknownFields(player.getUnknownFields());
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
                                        this.guestid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 26) {
                                        this.avatarHash_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 32) {
                                        this.keyboardEnabled_ = codedInputStream.readBool();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 40) {
                                        this.mouseEnabled_ = codedInputStream.readBool();
                                        this.bitField0_ |= 16;
                                    } else if (tag == 48) {
                                        this.controllerEnabled_ = codedInputStream.readBool();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean hasSteamid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean hasGuestid() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public int getGuestid() {
                    return this.guestid_;
                }

                public Builder setGuestid(int i) {
                    this.guestid_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearGuestid() {
                    this.bitField0_ &= -3;
                    this.guestid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean hasAvatarHash() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public ByteString getAvatarHash() {
                    return this.avatarHash_;
                }

                public Builder setAvatarHash(ByteString byteString) {
                    byteString.getClass();
                    this.avatarHash_ = byteString;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearAvatarHash() {
                    this.bitField0_ &= -5;
                    this.avatarHash_ = Player.getDefaultInstance().getAvatarHash();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean hasKeyboardEnabled() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean getKeyboardEnabled() {
                    return this.keyboardEnabled_;
                }

                public Builder setKeyboardEnabled(boolean z) {
                    this.keyboardEnabled_ = z;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearKeyboardEnabled() {
                    this.bitField0_ &= -9;
                    this.keyboardEnabled_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean hasMouseEnabled() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean getMouseEnabled() {
                    return this.mouseEnabled_;
                }

                public Builder setMouseEnabled(boolean z) {
                    this.mouseEnabled_ = z;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearMouseEnabled() {
                    this.bitField0_ &= -17;
                    this.mouseEnabled_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean hasControllerEnabled() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.PlayerOrBuilder
                public boolean getControllerEnabled() {
                    return this.controllerEnabled_;
                }

                public Builder setControllerEnabled(boolean z) {
                    this.controllerEnabled_ = z;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearControllerEnabled() {
                    this.bitField0_ &= -33;
                    this.controllerEnabled_ = false;
                    onChanged();
                    return this;
                }
            }

            public static Player getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Player> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Player> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Player getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class ControllerSlot_obsolete extends GeneratedMessage implements ControllerSlot_obsoleteOrBuilder {
            private static final ControllerSlot_obsolete DEFAULT_INSTANCE;
            private static final Parser<ControllerSlot_obsolete> PARSER;
            public static final int SLOTID_FIELD_NUMBER = 1;
            public static final int STEAMID_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private int slotid_;
            private long steamid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ControllerSlot_obsolete.class.getName());
                DEFAULT_INSTANCE = new ControllerSlot_obsolete();
                PARSER = new AbstractParser<ControllerSlot_obsolete>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsolete.1
                    @Override // com.google.protobuf.Parser
                    public ControllerSlot_obsolete parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = ControllerSlot_obsolete.newBuilder();
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

            private ControllerSlot_obsolete(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.slotid_ = 0;
                this.steamid_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            private ControllerSlot_obsolete() {
                this.slotid_ = 0;
                this.steamid_ = 0L;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_fieldAccessorTable.ensureFieldAccessorsInitialized(ControllerSlot_obsolete.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
            public boolean hasSlotid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
            public int getSlotid() {
                return this.slotid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
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
                    codedOutputStream.writeUInt32(1, this.slotid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeFixed64(2, this.steamid_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.slotid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamid_);
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
                if (!(obj instanceof ControllerSlot_obsolete)) {
                    return super.equals(obj);
                }
                ControllerSlot_obsolete controllerSlot_obsolete = (ControllerSlot_obsolete) obj;
                if (hasSlotid() != controllerSlot_obsolete.hasSlotid()) {
                    return false;
                }
                if ((!hasSlotid() || getSlotid() == controllerSlot_obsolete.getSlotid()) && hasSteamid() == controllerSlot_obsolete.hasSteamid()) {
                    return (!hasSteamid() || getSteamid() == controllerSlot_obsolete.getSteamid()) && getUnknownFields().equals(controllerSlot_obsolete.getUnknownFields());
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
                if (hasSlotid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getSlotid();
                }
                if (hasSteamid()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static ControllerSlot_obsolete parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static ControllerSlot_obsolete parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static ControllerSlot_obsolete parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static ControllerSlot_obsolete parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static ControllerSlot_obsolete parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static ControllerSlot_obsolete parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ControllerSlot_obsolete parseFrom(InputStream inputStream) throws IOException {
                return (ControllerSlot_obsolete) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static ControllerSlot_obsolete parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ControllerSlot_obsolete) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ControllerSlot_obsolete parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ControllerSlot_obsolete) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ControllerSlot_obsolete parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ControllerSlot_obsolete) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ControllerSlot_obsolete parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ControllerSlot_obsolete) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static ControllerSlot_obsolete parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ControllerSlot_obsolete) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(ControllerSlot_obsolete controllerSlot_obsolete) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(controllerSlot_obsolete);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements ControllerSlot_obsoleteOrBuilder {
                private int bitField0_;
                private int slotid_;
                private long steamid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_fieldAccessorTable.ensureFieldAccessorsInitialized(ControllerSlot_obsolete.class, Builder.class);
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
                    this.slotid_ = 0;
                    this.steamid_ = 0L;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_obsolete_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ControllerSlot_obsolete getDefaultInstanceForType() {
                    return ControllerSlot_obsolete.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ControllerSlot_obsolete build() {
                    ControllerSlot_obsolete controllerSlot_obsoleteBuildPartial = buildPartial();
                    if (controllerSlot_obsoleteBuildPartial.isInitialized()) {
                        return controllerSlot_obsoleteBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) controllerSlot_obsoleteBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ControllerSlot_obsolete buildPartial() {
                    ControllerSlot_obsolete controllerSlot_obsolete = new ControllerSlot_obsolete(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(controllerSlot_obsolete);
                    }
                    onBuilt();
                    return controllerSlot_obsolete;
                }

                private void buildPartial0(ControllerSlot_obsolete controllerSlot_obsolete) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        controllerSlot_obsolete.slotid_ = this.slotid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        controllerSlot_obsolete.steamid_ = this.steamid_;
                        i |= 2;
                    }
                    controllerSlot_obsolete.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof ControllerSlot_obsolete) {
                        return mergeFrom((ControllerSlot_obsolete) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(ControllerSlot_obsolete controllerSlot_obsolete) {
                    if (controllerSlot_obsolete == ControllerSlot_obsolete.getDefaultInstance()) {
                        return this;
                    }
                    if (controllerSlot_obsolete.hasSlotid()) {
                        setSlotid(controllerSlot_obsolete.getSlotid());
                    }
                    if (controllerSlot_obsolete.hasSteamid()) {
                        setSteamid(controllerSlot_obsolete.getSteamid());
                    }
                    mergeUnknownFields(controllerSlot_obsolete.getUnknownFields());
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
                                        this.slotid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 17) {
                                        this.steamid_ = codedInputStream.readFixed64();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
                public boolean hasSlotid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
                public int getSlotid() {
                    return this.slotid_;
                }

                public Builder setSlotid(int i) {
                    this.slotid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearSlotid() {
                    this.bitField0_ &= -2;
                    this.slotid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
                public boolean hasSteamid() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot_obsoleteOrBuilder
                public long getSteamid() {
                    return this.steamid_;
                }

                public Builder setSteamid(long j) {
                    this.steamid_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearSteamid() {
                    this.bitField0_ &= -3;
                    this.steamid_ = 0L;
                    onChanged();
                    return this;
                }
            }

            public static ControllerSlot_obsolete getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ControllerSlot_obsolete> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<ControllerSlot_obsolete> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ControllerSlot_obsolete getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class ControllerSlot extends GeneratedMessage implements ControllerSlotOrBuilder {
            public static final int CONTROLLER_TYPE_FIELD_NUMBER = 3;
            private static final ControllerSlot DEFAULT_INSTANCE;
            private static final Parser<ControllerSlot> PARSER;
            public static final int PLAYER_FIELD_NUMBER = 2;
            public static final int SLOTID_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private int controllerType_;
            private byte memoizedIsInitialized;
            private Player player_;
            private int slotid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ControllerSlot.class.getName());
                DEFAULT_INSTANCE = new ControllerSlot();
                PARSER = new AbstractParser<ControllerSlot>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlot.1
                    @Override // com.google.protobuf.Parser
                    public ControllerSlot parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = ControllerSlot.newBuilder();
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

            private ControllerSlot(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.slotid_ = 0;
                this.controllerType_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private ControllerSlot() {
                this.slotid_ = 0;
                this.controllerType_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_fieldAccessorTable.ensureFieldAccessorsInitialized(ControllerSlot.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
            public boolean hasSlotid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
            public int getSlotid() {
                return this.slotid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
            public boolean hasPlayer() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
            public Player getPlayer() {
                Player player = this.player_;
                return player == null ? Player.getDefaultInstance() : player;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
            public PlayerOrBuilder getPlayerOrBuilder() {
                Player player = this.player_;
                return player == null ? Player.getDefaultInstance() : player;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
            public boolean hasControllerType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
            public int getControllerType() {
                return this.controllerType_;
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
                    codedOutputStream.writeUInt32(1, this.slotid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeMessage(2, getPlayer());
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeInt32(3, this.controllerType_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.slotid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeMessageSize(2, getPlayer());
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.controllerType_);
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
                if (!(obj instanceof ControllerSlot)) {
                    return super.equals(obj);
                }
                ControllerSlot controllerSlot = (ControllerSlot) obj;
                if (hasSlotid() != controllerSlot.hasSlotid()) {
                    return false;
                }
                if ((hasSlotid() && getSlotid() != controllerSlot.getSlotid()) || hasPlayer() != controllerSlot.hasPlayer()) {
                    return false;
                }
                if ((!hasPlayer() || getPlayer().equals(controllerSlot.getPlayer())) && hasControllerType() == controllerSlot.hasControllerType()) {
                    return (!hasControllerType() || getControllerType() == controllerSlot.getControllerType()) && getUnknownFields().equals(controllerSlot.getUnknownFields());
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
                if (hasSlotid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getSlotid();
                }
                if (hasPlayer()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getPlayer().hashCode();
                }
                if (hasControllerType()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getControllerType();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static ControllerSlot parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static ControllerSlot parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static ControllerSlot parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static ControllerSlot parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static ControllerSlot parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static ControllerSlot parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ControllerSlot parseFrom(InputStream inputStream) throws IOException {
                return (ControllerSlot) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static ControllerSlot parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ControllerSlot) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ControllerSlot parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ControllerSlot) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ControllerSlot parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ControllerSlot) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ControllerSlot parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ControllerSlot) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static ControllerSlot parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ControllerSlot) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(ControllerSlot controllerSlot) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(controllerSlot);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements ControllerSlotOrBuilder {
                private int bitField0_;
                private int controllerType_;
                private SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> playerBuilder_;
                private Player player_;
                private int slotid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_fieldAccessorTable.ensureFieldAccessorsInitialized(ControllerSlot.class, Builder.class);
                }

                private Builder() {
                    maybeForceBuilderInitialization();
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessage.alwaysUseFieldBuilders) {
                        internalGetPlayerFieldBuilder();
                    }
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.slotid_ = 0;
                    this.player_ = null;
                    SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                    if (singleFieldBuilder != null) {
                        singleFieldBuilder.dispose();
                        this.playerBuilder_ = null;
                    }
                    this.controllerType_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_ControllerSlot_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ControllerSlot getDefaultInstanceForType() {
                    return ControllerSlot.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ControllerSlot build() {
                    ControllerSlot controllerSlotBuildPartial = buildPartial();
                    if (controllerSlotBuildPartial.isInitialized()) {
                        return controllerSlotBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) controllerSlotBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ControllerSlot buildPartial() {
                    ControllerSlot controllerSlot = new ControllerSlot(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(controllerSlot);
                    }
                    onBuilt();
                    return controllerSlot;
                }

                private void buildPartial0(ControllerSlot controllerSlot) {
                    int i;
                    Player player;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        controllerSlot.slotid_ = this.slotid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                        if (singleFieldBuilder == null) {
                            player = this.player_;
                        } else {
                            player = (Player) singleFieldBuilder.build();
                        }
                        controllerSlot.player_ = player;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        controllerSlot.controllerType_ = this.controllerType_;
                        i |= 4;
                    }
                    controllerSlot.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof ControllerSlot) {
                        return mergeFrom((ControllerSlot) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(ControllerSlot controllerSlot) {
                    if (controllerSlot == ControllerSlot.getDefaultInstance()) {
                        return this;
                    }
                    if (controllerSlot.hasSlotid()) {
                        setSlotid(controllerSlot.getSlotid());
                    }
                    if (controllerSlot.hasPlayer()) {
                        mergePlayer(controllerSlot.getPlayer());
                    }
                    if (controllerSlot.hasControllerType()) {
                        setControllerType(controllerSlot.getControllerType());
                    }
                    mergeUnknownFields(controllerSlot.getUnknownFields());
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
                                        this.slotid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 18) {
                                        codedInputStream.readMessage(internalGetPlayerFieldBuilder().getBuilder(), extensionRegistryLite);
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.controllerType_ = codedInputStream.readInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
                public boolean hasSlotid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
                public int getSlotid() {
                    return this.slotid_;
                }

                public Builder setSlotid(int i) {
                    this.slotid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearSlotid() {
                    this.bitField0_ &= -2;
                    this.slotid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
                public boolean hasPlayer() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
                public Player getPlayer() {
                    SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                    if (singleFieldBuilder == null) {
                        Player player = this.player_;
                        return player == null ? Player.getDefaultInstance() : player;
                    }
                    return (Player) singleFieldBuilder.getMessage();
                }

                public Builder setPlayer(Player player) {
                    SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                    if (singleFieldBuilder == null) {
                        player.getClass();
                        this.player_ = player;
                    } else {
                        singleFieldBuilder.setMessage(player);
                    }
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder setPlayer(Player.Builder builder) {
                    SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                    if (singleFieldBuilder == null) {
                        this.player_ = builder.build();
                    } else {
                        singleFieldBuilder.setMessage(builder.build());
                    }
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder mergePlayer(Player player) {
                    Player player2;
                    SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                    if (singleFieldBuilder == null) {
                        if ((this.bitField0_ & 2) != 0 && (player2 = this.player_) != null && player2 != Player.getDefaultInstance()) {
                            getPlayerBuilder().mergeFrom(player);
                        } else {
                            this.player_ = player;
                        }
                    } else {
                        singleFieldBuilder.mergeFrom(player);
                    }
                    if (this.player_ != null) {
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    return this;
                }

                public Builder clearPlayer() {
                    this.bitField0_ &= -3;
                    this.player_ = null;
                    SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                    if (singleFieldBuilder != null) {
                        singleFieldBuilder.dispose();
                        this.playerBuilder_ = null;
                    }
                    onChanged();
                    return this;
                }

                public Player.Builder getPlayerBuilder() {
                    this.bitField0_ |= 2;
                    onChanged();
                    return (Player.Builder) internalGetPlayerFieldBuilder().getBuilder();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
                public PlayerOrBuilder getPlayerOrBuilder() {
                    SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> singleFieldBuilder = this.playerBuilder_;
                    if (singleFieldBuilder != null) {
                        return (PlayerOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                    }
                    Player player = this.player_;
                    return player == null ? Player.getDefaultInstance() : player;
                }

                private SingleFieldBuilder<Player, Player.Builder, PlayerOrBuilder> internalGetPlayerFieldBuilder() {
                    if (this.playerBuilder_ == null) {
                        this.playerBuilder_ = new SingleFieldBuilder<>(getPlayer(), getParentForChildren(), isClean());
                        this.player_ = null;
                    }
                    return this.playerBuilder_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
                public boolean hasControllerType() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.ControllerSlotOrBuilder
                public int getControllerType() {
                    return this.controllerType_;
                }

                public Builder setControllerType(int i) {
                    this.controllerType_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearControllerType() {
                    this.bitField0_ &= -5;
                    this.controllerType_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static ControllerSlot getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ControllerSlot> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<ControllerSlot> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ControllerSlot getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class GroupUpdated extends GeneratedMessage implements GroupUpdatedOrBuilder {
            public static final int CONTROLLER_SLOTS_FIELD_NUMBER = 8;
            public static final int CONTROLLER_SLOTS_OBSOLETE_FIELD_NUMBER = 5;
            private static final GroupUpdated DEFAULT_INSTANCE;
            public static final int HAS_NEW_PLAYERS_FIELD_NUMBER = 6;
            public static final int HOST_CLIENTID_FIELD_NUMBER = 2;
            public static final int HOST_GAMEID_FIELD_NUMBER = 4;
            public static final int HOST_STEAMID_FIELD_NUMBER = 1;
            private static final Parser<GroupUpdated> PARSER;
            public static final int PLAYERS_OBSOLETE_FIELD_NUMBER = 3;
            public static final int PLAYER_SLOTS_FIELD_NUMBER = 7;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private List<ControllerSlot_obsolete> controllerSlotsObsolete_;
            private List<ControllerSlot> controllerSlots_;
            private boolean hasNewPlayers_;
            private long hostClientid_;
            private long hostGameid_;
            private long hostSteamid_;
            private byte memoizedIsInitialized;
            private List<Player> playerSlots_;
            private Internal.LongList playersObsolete_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", GroupUpdated.class.getName());
                DEFAULT_INSTANCE = new GroupUpdated();
                PARSER = new AbstractParser<GroupUpdated>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdated.1
                    @Override // com.google.protobuf.Parser
                    public GroupUpdated parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = GroupUpdated.newBuilder();
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

            private GroupUpdated(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.hostSteamid_ = 0L;
                this.hostClientid_ = 0L;
                this.playersObsolete_ = GeneratedMessage.emptyLongList();
                this.hostGameid_ = 0L;
                this.hasNewPlayers_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            private GroupUpdated() {
                this.hostSteamid_ = 0L;
                this.hostClientid_ = 0L;
                this.playersObsolete_ = GeneratedMessage.emptyLongList();
                this.hostGameid_ = 0L;
                this.hasNewPlayers_ = false;
                this.memoizedIsInitialized = (byte) -1;
                this.playersObsolete_ = GeneratedMessage.emptyLongList();
                this.controllerSlotsObsolete_ = Collections.emptyList();
                this.playerSlots_ = Collections.emptyList();
                this.controllerSlots_ = Collections.emptyList();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_GroupUpdated_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_GroupUpdated_fieldAccessorTable.ensureFieldAccessorsInitialized(GroupUpdated.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public boolean hasHostSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public long getHostSteamid() {
                return this.hostSteamid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public boolean hasHostClientid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public long getHostClientid() {
                return this.hostClientid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public List<Long> getPlayersObsoleteList() {
                return this.playersObsolete_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public int getPlayersObsoleteCount() {
                return this.playersObsolete_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public long getPlayersObsolete(int i) {
                return this.playersObsolete_.getLong(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public boolean hasHostGameid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public long getHostGameid() {
                return this.hostGameid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public List<ControllerSlot_obsolete> getControllerSlotsObsoleteList() {
                return this.controllerSlotsObsolete_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public List<? extends ControllerSlot_obsoleteOrBuilder> getControllerSlotsObsoleteOrBuilderList() {
                return this.controllerSlotsObsolete_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public int getControllerSlotsObsoleteCount() {
                return this.controllerSlotsObsolete_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public ControllerSlot_obsolete getControllerSlotsObsolete(int i) {
                return this.controllerSlotsObsolete_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public ControllerSlot_obsoleteOrBuilder getControllerSlotsObsoleteOrBuilder(int i) {
                return this.controllerSlotsObsolete_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public boolean hasHasNewPlayers() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public boolean getHasNewPlayers() {
                return this.hasNewPlayers_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public List<Player> getPlayerSlotsList() {
                return this.playerSlots_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public List<? extends PlayerOrBuilder> getPlayerSlotsOrBuilderList() {
                return this.playerSlots_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public int getPlayerSlotsCount() {
                return this.playerSlots_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public Player getPlayerSlots(int i) {
                return this.playerSlots_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public PlayerOrBuilder getPlayerSlotsOrBuilder(int i) {
                return this.playerSlots_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public List<ControllerSlot> getControllerSlotsList() {
                return this.controllerSlots_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public List<? extends ControllerSlotOrBuilder> getControllerSlotsOrBuilderList() {
                return this.controllerSlots_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public int getControllerSlotsCount() {
                return this.controllerSlots_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public ControllerSlot getControllerSlots(int i) {
                return this.controllerSlots_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
            public ControllerSlotOrBuilder getControllerSlotsOrBuilder(int i) {
                return this.controllerSlots_.get(i);
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
                    codedOutputStream.writeFixed64(1, this.hostSteamid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeFixed64(2, this.hostClientid_);
                }
                for (int i = 0; i < this.playersObsolete_.size(); i++) {
                    codedOutputStream.writeFixed64(3, this.playersObsolete_.getLong(i));
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeFixed64(4, this.hostGameid_);
                }
                for (int i2 = 0; i2 < this.controllerSlotsObsolete_.size(); i2++) {
                    codedOutputStream.writeMessage(5, this.controllerSlotsObsolete_.get(i2));
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeBool(6, this.hasNewPlayers_);
                }
                for (int i3 = 0; i3 < this.playerSlots_.size(); i3++) {
                    codedOutputStream.writeMessage(7, this.playerSlots_.get(i3));
                }
                for (int i4 = 0; i4 < this.controllerSlots_.size(); i4++) {
                    codedOutputStream.writeMessage(8, this.controllerSlots_.get(i4));
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.hostSteamid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.hostClientid_);
                }
                int size = iComputeFixed64Size + (getPlayersObsoleteList().size() * 8) + getPlayersObsoleteList().size();
                if ((this.bitField0_ & 4) != 0) {
                    size += CodedOutputStream.computeFixed64Size(4, this.hostGameid_);
                }
                for (int i2 = 0; i2 < this.controllerSlotsObsolete_.size(); i2++) {
                    size += CodedOutputStream.computeMessageSize(5, this.controllerSlotsObsolete_.get(i2));
                }
                if ((this.bitField0_ & 8) != 0) {
                    size += CodedOutputStream.computeBoolSize(6, this.hasNewPlayers_);
                }
                for (int i3 = 0; i3 < this.playerSlots_.size(); i3++) {
                    size += CodedOutputStream.computeMessageSize(7, this.playerSlots_.get(i3));
                }
                for (int i4 = 0; i4 < this.controllerSlots_.size(); i4++) {
                    size += CodedOutputStream.computeMessageSize(8, this.controllerSlots_.get(i4));
                }
                int serializedSize = size + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof GroupUpdated)) {
                    return super.equals(obj);
                }
                GroupUpdated groupUpdated = (GroupUpdated) obj;
                if (hasHostSteamid() != groupUpdated.hasHostSteamid()) {
                    return false;
                }
                if ((hasHostSteamid() && getHostSteamid() != groupUpdated.getHostSteamid()) || hasHostClientid() != groupUpdated.hasHostClientid()) {
                    return false;
                }
                if ((hasHostClientid() && getHostClientid() != groupUpdated.getHostClientid()) || !getPlayersObsoleteList().equals(groupUpdated.getPlayersObsoleteList()) || hasHostGameid() != groupUpdated.hasHostGameid()) {
                    return false;
                }
                if ((!hasHostGameid() || getHostGameid() == groupUpdated.getHostGameid()) && getControllerSlotsObsoleteList().equals(groupUpdated.getControllerSlotsObsoleteList()) && hasHasNewPlayers() == groupUpdated.hasHasNewPlayers()) {
                    return (!hasHasNewPlayers() || getHasNewPlayers() == groupUpdated.getHasNewPlayers()) && getPlayerSlotsList().equals(groupUpdated.getPlayerSlotsList()) && getControllerSlotsList().equals(groupUpdated.getControllerSlotsList()) && getUnknownFields().equals(groupUpdated.getUnknownFields());
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
                if (hasHostSteamid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getHostSteamid());
                }
                if (hasHostClientid()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getHostClientid());
                }
                if (getPlayersObsoleteCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getPlayersObsoleteList().hashCode();
                }
                if (hasHostGameid()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getHostGameid());
                }
                if (getControllerSlotsObsoleteCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getControllerSlotsObsoleteList().hashCode();
                }
                if (hasHasNewPlayers()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getHasNewPlayers());
                }
                if (getPlayerSlotsCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + getPlayerSlotsList().hashCode();
                }
                if (getControllerSlotsCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 8) * 53) + getControllerSlotsList().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static GroupUpdated parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static GroupUpdated parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static GroupUpdated parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static GroupUpdated parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static GroupUpdated parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static GroupUpdated parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static GroupUpdated parseFrom(InputStream inputStream) throws IOException {
                return (GroupUpdated) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static GroupUpdated parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GroupUpdated) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static GroupUpdated parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (GroupUpdated) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static GroupUpdated parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GroupUpdated) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static GroupUpdated parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (GroupUpdated) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static GroupUpdated parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GroupUpdated) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(GroupUpdated groupUpdated) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(groupUpdated);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements GroupUpdatedOrBuilder {
                private int bitField0_;
                private RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> controllerSlotsBuilder_;
                private RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> controllerSlotsObsoleteBuilder_;
                private List<ControllerSlot_obsolete> controllerSlotsObsolete_;
                private List<ControllerSlot> controllerSlots_;
                private boolean hasNewPlayers_;
                private long hostClientid_;
                private long hostGameid_;
                private long hostSteamid_;
                private RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> playerSlotsBuilder_;
                private List<Player> playerSlots_;
                private Internal.LongList playersObsolete_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_GroupUpdated_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_GroupUpdated_fieldAccessorTable.ensureFieldAccessorsInitialized(GroupUpdated.class, Builder.class);
                }

                private Builder() {
                    this.playersObsolete_ = GeneratedMessage.emptyLongList();
                    this.controllerSlotsObsolete_ = Collections.emptyList();
                    this.playerSlots_ = Collections.emptyList();
                    this.controllerSlots_ = Collections.emptyList();
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.playersObsolete_ = GeneratedMessage.emptyLongList();
                    this.controllerSlotsObsolete_ = Collections.emptyList();
                    this.playerSlots_ = Collections.emptyList();
                    this.controllerSlots_ = Collections.emptyList();
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.hostSteamid_ = 0L;
                    this.hostClientid_ = 0L;
                    this.playersObsolete_ = GeneratedMessage.emptyLongList();
                    this.hostGameid_ = 0L;
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.controllerSlotsObsolete_ = Collections.emptyList();
                    } else {
                        this.controllerSlotsObsolete_ = null;
                        repeatedFieldBuilder.clear();
                    }
                    this.bitField0_ &= -17;
                    this.hasNewPlayers_ = false;
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder2 = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder2 == null) {
                        this.playerSlots_ = Collections.emptyList();
                    } else {
                        this.playerSlots_ = null;
                        repeatedFieldBuilder2.clear();
                    }
                    this.bitField0_ &= -65;
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder3 = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder3 == null) {
                        this.controllerSlots_ = Collections.emptyList();
                    } else {
                        this.controllerSlots_ = null;
                        repeatedFieldBuilder3.clear();
                    }
                    this.bitField0_ &= -129;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_GroupUpdated_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public GroupUpdated getDefaultInstanceForType() {
                    return GroupUpdated.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public GroupUpdated build() {
                    GroupUpdated groupUpdatedBuildPartial = buildPartial();
                    if (groupUpdatedBuildPartial.isInitialized()) {
                        return groupUpdatedBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) groupUpdatedBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public GroupUpdated buildPartial() {
                    GroupUpdated groupUpdated = new GroupUpdated(this);
                    buildPartialRepeatedFields(groupUpdated);
                    if (this.bitField0_ != 0) {
                        buildPartial0(groupUpdated);
                    }
                    onBuilt();
                    return groupUpdated;
                }

                private void buildPartialRepeatedFields(GroupUpdated groupUpdated) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        if ((this.bitField0_ & 16) != 0) {
                            this.controllerSlotsObsolete_ = Collections.unmodifiableList(this.controllerSlotsObsolete_);
                            this.bitField0_ &= -17;
                        }
                        groupUpdated.controllerSlotsObsolete_ = this.controllerSlotsObsolete_;
                    } else {
                        groupUpdated.controllerSlotsObsolete_ = repeatedFieldBuilder.build();
                    }
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder2 = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder2 == null) {
                        if ((this.bitField0_ & 64) != 0) {
                            this.playerSlots_ = Collections.unmodifiableList(this.playerSlots_);
                            this.bitField0_ &= -65;
                        }
                        groupUpdated.playerSlots_ = this.playerSlots_;
                    } else {
                        groupUpdated.playerSlots_ = repeatedFieldBuilder2.build();
                    }
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder3 = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder3 == null) {
                        if ((this.bitField0_ & 128) != 0) {
                            this.controllerSlots_ = Collections.unmodifiableList(this.controllerSlots_);
                            this.bitField0_ &= -129;
                        }
                        groupUpdated.controllerSlots_ = this.controllerSlots_;
                        return;
                    }
                    groupUpdated.controllerSlots_ = repeatedFieldBuilder3.build();
                }

                private void buildPartial0(GroupUpdated groupUpdated) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        groupUpdated.hostSteamid_ = this.hostSteamid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        groupUpdated.hostClientid_ = this.hostClientid_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        this.playersObsolete_.makeImmutable();
                        groupUpdated.playersObsolete_ = this.playersObsolete_;
                    }
                    if ((i2 & 8) != 0) {
                        groupUpdated.hostGameid_ = this.hostGameid_;
                        i |= 4;
                    }
                    if ((i2 & 32) != 0) {
                        groupUpdated.hasNewPlayers_ = this.hasNewPlayers_;
                        i |= 8;
                    }
                    groupUpdated.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof GroupUpdated) {
                        return mergeFrom((GroupUpdated) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(GroupUpdated groupUpdated) {
                    if (groupUpdated == GroupUpdated.getDefaultInstance()) {
                        return this;
                    }
                    if (groupUpdated.hasHostSteamid()) {
                        setHostSteamid(groupUpdated.getHostSteamid());
                    }
                    if (groupUpdated.hasHostClientid()) {
                        setHostClientid(groupUpdated.getHostClientid());
                    }
                    if (!groupUpdated.playersObsolete_.isEmpty()) {
                        if (this.playersObsolete_.isEmpty()) {
                            Internal.LongList longList = groupUpdated.playersObsolete_;
                            this.playersObsolete_ = longList;
                            longList.makeImmutable();
                            this.bitField0_ |= 4;
                        } else {
                            ensurePlayersObsoleteIsMutable();
                            this.playersObsolete_.addAll(groupUpdated.playersObsolete_);
                        }
                        onChanged();
                    }
                    if (groupUpdated.hasHostGameid()) {
                        setHostGameid(groupUpdated.getHostGameid());
                    }
                    if (this.controllerSlotsObsoleteBuilder_ == null) {
                        if (!groupUpdated.controllerSlotsObsolete_.isEmpty()) {
                            if (this.controllerSlotsObsolete_.isEmpty()) {
                                this.controllerSlotsObsolete_ = groupUpdated.controllerSlotsObsolete_;
                                this.bitField0_ &= -17;
                            } else {
                                ensureControllerSlotsObsoleteIsMutable();
                                this.controllerSlotsObsolete_.addAll(groupUpdated.controllerSlotsObsolete_);
                            }
                            onChanged();
                        }
                    } else if (!groupUpdated.controllerSlotsObsolete_.isEmpty()) {
                        if (this.controllerSlotsObsoleteBuilder_.isEmpty()) {
                            this.controllerSlotsObsoleteBuilder_.dispose();
                            this.controllerSlotsObsoleteBuilder_ = null;
                            this.controllerSlotsObsolete_ = groupUpdated.controllerSlotsObsolete_;
                            this.bitField0_ &= -17;
                            this.controllerSlotsObsoleteBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetControllerSlotsObsoleteFieldBuilder() : null;
                        } else {
                            this.controllerSlotsObsoleteBuilder_.addAllMessages(groupUpdated.controllerSlotsObsolete_);
                        }
                    }
                    if (groupUpdated.hasHasNewPlayers()) {
                        setHasNewPlayers(groupUpdated.getHasNewPlayers());
                    }
                    if (this.playerSlotsBuilder_ == null) {
                        if (!groupUpdated.playerSlots_.isEmpty()) {
                            if (this.playerSlots_.isEmpty()) {
                                this.playerSlots_ = groupUpdated.playerSlots_;
                                this.bitField0_ &= -65;
                            } else {
                                ensurePlayerSlotsIsMutable();
                                this.playerSlots_.addAll(groupUpdated.playerSlots_);
                            }
                            onChanged();
                        }
                    } else if (!groupUpdated.playerSlots_.isEmpty()) {
                        if (this.playerSlotsBuilder_.isEmpty()) {
                            this.playerSlotsBuilder_.dispose();
                            this.playerSlotsBuilder_ = null;
                            this.playerSlots_ = groupUpdated.playerSlots_;
                            this.bitField0_ &= -65;
                            this.playerSlotsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPlayerSlotsFieldBuilder() : null;
                        } else {
                            this.playerSlotsBuilder_.addAllMessages(groupUpdated.playerSlots_);
                        }
                    }
                    if (this.controllerSlotsBuilder_ == null) {
                        if (!groupUpdated.controllerSlots_.isEmpty()) {
                            if (this.controllerSlots_.isEmpty()) {
                                this.controllerSlots_ = groupUpdated.controllerSlots_;
                                this.bitField0_ &= -129;
                            } else {
                                ensureControllerSlotsIsMutable();
                                this.controllerSlots_.addAll(groupUpdated.controllerSlots_);
                            }
                            onChanged();
                        }
                    } else if (!groupUpdated.controllerSlots_.isEmpty()) {
                        if (this.controllerSlotsBuilder_.isEmpty()) {
                            this.controllerSlotsBuilder_.dispose();
                            this.controllerSlotsBuilder_ = null;
                            this.controllerSlots_ = groupUpdated.controllerSlots_;
                            this.bitField0_ &= -129;
                            this.controllerSlotsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetControllerSlotsFieldBuilder() : null;
                        } else {
                            this.controllerSlotsBuilder_.addAllMessages(groupUpdated.controllerSlots_);
                        }
                    }
                    mergeUnknownFields(groupUpdated.getUnknownFields());
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
                                        this.hostSteamid_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 17) {
                                        this.hostClientid_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 33) {
                                        this.hostGameid_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 42) {
                                        ControllerSlot_obsolete controllerSlot_obsolete = (ControllerSlot_obsolete) codedInputStream.readMessage(ControllerSlot_obsolete.parser(), extensionRegistryLite);
                                        RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                                        if (repeatedFieldBuilder == null) {
                                            ensureControllerSlotsObsoleteIsMutable();
                                            this.controllerSlotsObsolete_.add(controllerSlot_obsolete);
                                        } else {
                                            repeatedFieldBuilder.addMessage(controllerSlot_obsolete);
                                        }
                                    } else if (tag == 48) {
                                        this.hasNewPlayers_ = codedInputStream.readBool();
                                        this.bitField0_ |= 32;
                                    } else if (tag == 58) {
                                        Player player = (Player) codedInputStream.readMessage(Player.parser(), extensionRegistryLite);
                                        RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder2 = this.playerSlotsBuilder_;
                                        if (repeatedFieldBuilder2 == null) {
                                            ensurePlayerSlotsIsMutable();
                                            this.playerSlots_.add(player);
                                        } else {
                                            repeatedFieldBuilder2.addMessage(player);
                                        }
                                    } else if (tag == 66) {
                                        ControllerSlot controllerSlot = (ControllerSlot) codedInputStream.readMessage(ControllerSlot.parser(), extensionRegistryLite);
                                        RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder3 = this.controllerSlotsBuilder_;
                                        if (repeatedFieldBuilder3 == null) {
                                            ensureControllerSlotsIsMutable();
                                            this.controllerSlots_.add(controllerSlot);
                                        } else {
                                            repeatedFieldBuilder3.addMessage(controllerSlot);
                                        }
                                    } else if (tag == 25) {
                                        long fixed64 = codedInputStream.readFixed64();
                                        ensurePlayersObsoleteIsMutable();
                                        this.playersObsolete_.addLong(fixed64);
                                    } else if (tag == 26) {
                                        int rawVarint32 = codedInputStream.readRawVarint32();
                                        int iPushLimit = codedInputStream.pushLimit(rawVarint32);
                                        if (rawVarint32 > 4096) {
                                            rawVarint32 = 4096;
                                        }
                                        ensurePlayersObsoleteIsMutable(rawVarint32 / 8);
                                        while (codedInputStream.getBytesUntilLimit() > 0) {
                                            this.playersObsolete_.addLong(codedInputStream.readFixed64());
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public boolean hasHostSteamid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public long getHostSteamid() {
                    return this.hostSteamid_;
                }

                public Builder setHostSteamid(long j) {
                    this.hostSteamid_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearHostSteamid() {
                    this.bitField0_ &= -2;
                    this.hostSteamid_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public boolean hasHostClientid() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public long getHostClientid() {
                    return this.hostClientid_;
                }

                public Builder setHostClientid(long j) {
                    this.hostClientid_ = j;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearHostClientid() {
                    this.bitField0_ &= -3;
                    this.hostClientid_ = 0L;
                    onChanged();
                    return this;
                }

                private void ensurePlayersObsoleteIsMutable() {
                    if (!this.playersObsolete_.isModifiable()) {
                        this.playersObsolete_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.playersObsolete_);
                    }
                    this.bitField0_ |= 4;
                }

                private void ensurePlayersObsoleteIsMutable(int i) {
                    if (!this.playersObsolete_.isModifiable()) {
                        this.playersObsolete_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.playersObsolete_, i);
                    }
                    this.bitField0_ |= 4;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public List<Long> getPlayersObsoleteList() {
                    this.playersObsolete_.makeImmutable();
                    return this.playersObsolete_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public int getPlayersObsoleteCount() {
                    return this.playersObsolete_.size();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public long getPlayersObsolete(int i) {
                    return this.playersObsolete_.getLong(i);
                }

                public Builder setPlayersObsolete(int i, long j) {
                    ensurePlayersObsoleteIsMutable();
                    this.playersObsolete_.setLong(i, j);
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder addPlayersObsolete(long j) {
                    ensurePlayersObsoleteIsMutable();
                    this.playersObsolete_.addLong(j);
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder addAllPlayersObsolete(Iterable<? extends Long> iterable) {
                    ensurePlayersObsoleteIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.playersObsolete_);
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearPlayersObsolete() {
                    this.playersObsolete_ = GeneratedMessage.emptyLongList();
                    this.bitField0_ &= -5;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public boolean hasHostGameid() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public long getHostGameid() {
                    return this.hostGameid_;
                }

                public Builder setHostGameid(long j) {
                    this.hostGameid_ = j;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearHostGameid() {
                    this.bitField0_ &= -9;
                    this.hostGameid_ = 0L;
                    onChanged();
                    return this;
                }

                private void ensureControllerSlotsObsoleteIsMutable() {
                    if ((this.bitField0_ & 16) == 0) {
                        this.controllerSlotsObsolete_ = new ArrayList(this.controllerSlotsObsolete_);
                        this.bitField0_ |= 16;
                    }
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public List<ControllerSlot_obsolete> getControllerSlotsObsoleteList() {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return Collections.unmodifiableList(this.controllerSlotsObsolete_);
                    }
                    return repeatedFieldBuilder.getMessageList();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public int getControllerSlotsObsoleteCount() {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.controllerSlotsObsolete_.size();
                    }
                    return repeatedFieldBuilder.getCount();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public ControllerSlot_obsolete getControllerSlotsObsolete(int i) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.controllerSlotsObsolete_.get(i);
                    }
                    return (ControllerSlot_obsolete) repeatedFieldBuilder.getMessage(i);
                }

                public Builder setControllerSlotsObsolete(int i, ControllerSlot_obsolete controllerSlot_obsolete) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        controllerSlot_obsolete.getClass();
                        ensureControllerSlotsObsoleteIsMutable();
                        this.controllerSlotsObsolete_.set(i, controllerSlot_obsolete);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, controllerSlot_obsolete);
                    }
                    return this;
                }

                public Builder setControllerSlotsObsolete(int i, ControllerSlot_obsolete.Builder builder) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsObsoleteIsMutable();
                        this.controllerSlotsObsolete_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addControllerSlotsObsolete(ControllerSlot_obsolete controllerSlot_obsolete) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        controllerSlot_obsolete.getClass();
                        ensureControllerSlotsObsoleteIsMutable();
                        this.controllerSlotsObsolete_.add(controllerSlot_obsolete);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(controllerSlot_obsolete);
                    }
                    return this;
                }

                public Builder addControllerSlotsObsolete(int i, ControllerSlot_obsolete controllerSlot_obsolete) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        controllerSlot_obsolete.getClass();
                        ensureControllerSlotsObsoleteIsMutable();
                        this.controllerSlotsObsolete_.add(i, controllerSlot_obsolete);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, controllerSlot_obsolete);
                    }
                    return this;
                }

                public Builder addControllerSlotsObsolete(ControllerSlot_obsolete.Builder builder) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsObsoleteIsMutable();
                        this.controllerSlotsObsolete_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addControllerSlotsObsolete(int i, ControllerSlot_obsolete.Builder builder) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsObsoleteIsMutable();
                        this.controllerSlotsObsolete_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addAllControllerSlotsObsolete(Iterable<? extends ControllerSlot_obsolete> iterable) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsObsoleteIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.controllerSlotsObsolete_);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder clearControllerSlotsObsolete() {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.controllerSlotsObsolete_ = Collections.emptyList();
                        this.bitField0_ &= -17;
                        onChanged();
                    } else {
                        repeatedFieldBuilder.clear();
                    }
                    return this;
                }

                public Builder removeControllerSlotsObsolete(int i) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsObsoleteIsMutable();
                        this.controllerSlotsObsolete_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.remove(i);
                    }
                    return this;
                }

                public ControllerSlot_obsolete.Builder getControllerSlotsObsoleteBuilder(int i) {
                    return (ControllerSlot_obsolete.Builder) internalGetControllerSlotsObsoleteFieldBuilder().getBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public ControllerSlot_obsoleteOrBuilder getControllerSlotsObsoleteOrBuilder(int i) {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.controllerSlotsObsolete_.get(i);
                    }
                    return (ControllerSlot_obsoleteOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public List<? extends ControllerSlot_obsoleteOrBuilder> getControllerSlotsObsoleteOrBuilderList() {
                    RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> repeatedFieldBuilder = this.controllerSlotsObsoleteBuilder_;
                    if (repeatedFieldBuilder != null) {
                        return repeatedFieldBuilder.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.controllerSlotsObsolete_);
                }

                public ControllerSlot_obsolete.Builder addControllerSlotsObsoleteBuilder() {
                    return (ControllerSlot_obsolete.Builder) internalGetControllerSlotsObsoleteFieldBuilder().addBuilder(ControllerSlot_obsolete.getDefaultInstance());
                }

                public ControllerSlot_obsolete.Builder addControllerSlotsObsoleteBuilder(int i) {
                    return (ControllerSlot_obsolete.Builder) internalGetControllerSlotsObsoleteFieldBuilder().addBuilder(i, ControllerSlot_obsolete.getDefaultInstance());
                }

                public List<ControllerSlot_obsolete.Builder> getControllerSlotsObsoleteBuilderList() {
                    return internalGetControllerSlotsObsoleteFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilder<ControllerSlot_obsolete, ControllerSlot_obsolete.Builder, ControllerSlot_obsoleteOrBuilder> internalGetControllerSlotsObsoleteFieldBuilder() {
                    if (this.controllerSlotsObsoleteBuilder_ == null) {
                        this.controllerSlotsObsoleteBuilder_ = new RepeatedFieldBuilder<>(this.controllerSlotsObsolete_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                        this.controllerSlotsObsolete_ = null;
                    }
                    return this.controllerSlotsObsoleteBuilder_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public boolean hasHasNewPlayers() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public boolean getHasNewPlayers() {
                    return this.hasNewPlayers_;
                }

                public Builder setHasNewPlayers(boolean z) {
                    this.hasNewPlayers_ = z;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearHasNewPlayers() {
                    this.bitField0_ &= -33;
                    this.hasNewPlayers_ = false;
                    onChanged();
                    return this;
                }

                private void ensurePlayerSlotsIsMutable() {
                    if ((this.bitField0_ & 64) == 0) {
                        this.playerSlots_ = new ArrayList(this.playerSlots_);
                        this.bitField0_ |= 64;
                    }
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public List<Player> getPlayerSlotsList() {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return Collections.unmodifiableList(this.playerSlots_);
                    }
                    return repeatedFieldBuilder.getMessageList();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public int getPlayerSlotsCount() {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.playerSlots_.size();
                    }
                    return repeatedFieldBuilder.getCount();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public Player getPlayerSlots(int i) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.playerSlots_.get(i);
                    }
                    return (Player) repeatedFieldBuilder.getMessage(i);
                }

                public Builder setPlayerSlots(int i, Player player) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        player.getClass();
                        ensurePlayerSlotsIsMutable();
                        this.playerSlots_.set(i, player);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, player);
                    }
                    return this;
                }

                public Builder setPlayerSlots(int i, Player.Builder builder) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensurePlayerSlotsIsMutable();
                        this.playerSlots_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addPlayerSlots(Player player) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        player.getClass();
                        ensurePlayerSlotsIsMutable();
                        this.playerSlots_.add(player);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(player);
                    }
                    return this;
                }

                public Builder addPlayerSlots(int i, Player player) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        player.getClass();
                        ensurePlayerSlotsIsMutable();
                        this.playerSlots_.add(i, player);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, player);
                    }
                    return this;
                }

                public Builder addPlayerSlots(Player.Builder builder) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensurePlayerSlotsIsMutable();
                        this.playerSlots_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addPlayerSlots(int i, Player.Builder builder) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensurePlayerSlotsIsMutable();
                        this.playerSlots_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addAllPlayerSlots(Iterable<? extends Player> iterable) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensurePlayerSlotsIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.playerSlots_);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder clearPlayerSlots() {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.playerSlots_ = Collections.emptyList();
                        this.bitField0_ &= -65;
                        onChanged();
                    } else {
                        repeatedFieldBuilder.clear();
                    }
                    return this;
                }

                public Builder removePlayerSlots(int i) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensurePlayerSlotsIsMutable();
                        this.playerSlots_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.remove(i);
                    }
                    return this;
                }

                public Player.Builder getPlayerSlotsBuilder(int i) {
                    return (Player.Builder) internalGetPlayerSlotsFieldBuilder().getBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public PlayerOrBuilder getPlayerSlotsOrBuilder(int i) {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.playerSlots_.get(i);
                    }
                    return (PlayerOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public List<? extends PlayerOrBuilder> getPlayerSlotsOrBuilderList() {
                    RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> repeatedFieldBuilder = this.playerSlotsBuilder_;
                    if (repeatedFieldBuilder != null) {
                        return repeatedFieldBuilder.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.playerSlots_);
                }

                public Player.Builder addPlayerSlotsBuilder() {
                    return (Player.Builder) internalGetPlayerSlotsFieldBuilder().addBuilder(Player.getDefaultInstance());
                }

                public Player.Builder addPlayerSlotsBuilder(int i) {
                    return (Player.Builder) internalGetPlayerSlotsFieldBuilder().addBuilder(i, Player.getDefaultInstance());
                }

                public List<Player.Builder> getPlayerSlotsBuilderList() {
                    return internalGetPlayerSlotsFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilder<Player, Player.Builder, PlayerOrBuilder> internalGetPlayerSlotsFieldBuilder() {
                    if (this.playerSlotsBuilder_ == null) {
                        this.playerSlotsBuilder_ = new RepeatedFieldBuilder<>(this.playerSlots_, (this.bitField0_ & 64) != 0, getParentForChildren(), isClean());
                        this.playerSlots_ = null;
                    }
                    return this.playerSlotsBuilder_;
                }

                private void ensureControllerSlotsIsMutable() {
                    if ((this.bitField0_ & 128) == 0) {
                        this.controllerSlots_ = new ArrayList(this.controllerSlots_);
                        this.bitField0_ |= 128;
                    }
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public List<ControllerSlot> getControllerSlotsList() {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return Collections.unmodifiableList(this.controllerSlots_);
                    }
                    return repeatedFieldBuilder.getMessageList();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public int getControllerSlotsCount() {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.controllerSlots_.size();
                    }
                    return repeatedFieldBuilder.getCount();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public ControllerSlot getControllerSlots(int i) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.controllerSlots_.get(i);
                    }
                    return (ControllerSlot) repeatedFieldBuilder.getMessage(i);
                }

                public Builder setControllerSlots(int i, ControllerSlot controllerSlot) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        controllerSlot.getClass();
                        ensureControllerSlotsIsMutable();
                        this.controllerSlots_.set(i, controllerSlot);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, controllerSlot);
                    }
                    return this;
                }

                public Builder setControllerSlots(int i, ControllerSlot.Builder builder) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsIsMutable();
                        this.controllerSlots_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addControllerSlots(ControllerSlot controllerSlot) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        controllerSlot.getClass();
                        ensureControllerSlotsIsMutable();
                        this.controllerSlots_.add(controllerSlot);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(controllerSlot);
                    }
                    return this;
                }

                public Builder addControllerSlots(int i, ControllerSlot controllerSlot) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        controllerSlot.getClass();
                        ensureControllerSlotsIsMutable();
                        this.controllerSlots_.add(i, controllerSlot);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, controllerSlot);
                    }
                    return this;
                }

                public Builder addControllerSlots(ControllerSlot.Builder builder) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsIsMutable();
                        this.controllerSlots_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addControllerSlots(int i, ControllerSlot.Builder builder) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsIsMutable();
                        this.controllerSlots_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addAllControllerSlots(Iterable<? extends ControllerSlot> iterable) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.controllerSlots_);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder clearControllerSlots() {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.controllerSlots_ = Collections.emptyList();
                        this.bitField0_ &= -129;
                        onChanged();
                    } else {
                        repeatedFieldBuilder.clear();
                    }
                    return this;
                }

                public Builder removeControllerSlots(int i) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureControllerSlotsIsMutable();
                        this.controllerSlots_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.remove(i);
                    }
                    return this;
                }

                public ControllerSlot.Builder getControllerSlotsBuilder(int i) {
                    return (ControllerSlot.Builder) internalGetControllerSlotsFieldBuilder().getBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public ControllerSlotOrBuilder getControllerSlotsOrBuilder(int i) {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.controllerSlots_.get(i);
                    }
                    return (ControllerSlotOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.GroupUpdatedOrBuilder
                public List<? extends ControllerSlotOrBuilder> getControllerSlotsOrBuilderList() {
                    RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> repeatedFieldBuilder = this.controllerSlotsBuilder_;
                    if (repeatedFieldBuilder != null) {
                        return repeatedFieldBuilder.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.controllerSlots_);
                }

                public ControllerSlot.Builder addControllerSlotsBuilder() {
                    return (ControllerSlot.Builder) internalGetControllerSlotsFieldBuilder().addBuilder(ControllerSlot.getDefaultInstance());
                }

                public ControllerSlot.Builder addControllerSlotsBuilder(int i) {
                    return (ControllerSlot.Builder) internalGetControllerSlotsFieldBuilder().addBuilder(i, ControllerSlot.getDefaultInstance());
                }

                public List<ControllerSlot.Builder> getControllerSlotsBuilderList() {
                    return internalGetControllerSlotsFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilder<ControllerSlot, ControllerSlot.Builder, ControllerSlotOrBuilder> internalGetControllerSlotsFieldBuilder() {
                    if (this.controllerSlotsBuilder_ == null) {
                        this.controllerSlotsBuilder_ = new RepeatedFieldBuilder<>(this.controllerSlots_, (this.bitField0_ & 128) != 0, getParentForChildren(), isClean());
                        this.controllerSlots_ = null;
                    }
                    return this.controllerSlotsBuilder_;
                }
            }

            public static GroupUpdated getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<GroupUpdated> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<GroupUpdated> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public GroupUpdated getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public enum MessageCase implements Internal.EnumLite, AbstractMessageLite.InternalOneOfEnum {
            GROUP_UPDATED(2),
            MESSAGE_NOT_SET(0);

            private final int value;

            MessageCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static MessageCase valueOf(int i) {
                return forNumber(i);
            }

            public static MessageCase forNumber(int i) {
                if (i == 0) {
                    return MESSAGE_NOT_SET;
                }
                if (i != 2) {
                    return null;
                }
                return GROUP_UPDATED;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public int getNumber() {
                return this.value;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
        public MessageCase getMessageCase() {
            return MessageCase.forNumber(this.messageCase_);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
        public boolean hasGroupUpdated() {
            return this.messageCase_ == 2;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
        public GroupUpdated getGroupUpdated() {
            if (this.messageCase_ == 2) {
                return (GroupUpdated) this.message_;
            }
            return GroupUpdated.getDefaultInstance();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
        public GroupUpdatedOrBuilder getGroupUpdatedOrBuilder() {
            if (this.messageCase_ == 2) {
                return (GroupUpdated) this.message_;
            }
            return GroupUpdated.getDefaultInstance();
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
            if (this.messageCase_ == 2) {
                codedOutputStream.writeMessage(2, (GroupUpdated) this.message_);
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
            if (this.messageCase_ == 2) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(2, (GroupUpdated) this.message_);
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
            if (!(obj instanceof CRemotePlayTogether_Notification)) {
                return super.equals(obj);
            }
            CRemotePlayTogether_Notification cRemotePlayTogether_Notification = (CRemotePlayTogether_Notification) obj;
            if (hasSteamid() != cRemotePlayTogether_Notification.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cRemotePlayTogether_Notification.getSteamid()) && getMessageCase().equals(cRemotePlayTogether_Notification.getMessageCase())) {
                return (this.messageCase_ != 2 || getGroupUpdated().equals(cRemotePlayTogether_Notification.getGroupUpdated())) && getUnknownFields().equals(cRemotePlayTogether_Notification.getUnknownFields());
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
            if (this.messageCase_ == 2) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getGroupUpdated().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemotePlayTogether_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemotePlayTogether_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemotePlayTogether_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemotePlayTogether_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemotePlayTogether_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemotePlayTogether_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemotePlayTogether_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CRemotePlayTogether_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemotePlayTogether_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlayTogether_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlayTogether_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemotePlayTogether_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemotePlayTogether_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlayTogether_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemotePlayTogether_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemotePlayTogether_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemotePlayTogether_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemotePlayTogether_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemotePlayTogether_Notification cRemotePlayTogether_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemotePlayTogether_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemotePlayTogether_NotificationOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> groupUpdatedBuilder_;
            private int messageCase_;
            private Object message_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemotePlayTogether_Notification.class, Builder.class);
            }

            private Builder() {
                this.messageCase_ = 0;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.messageCase_ = 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder = this.groupUpdatedBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.clear();
                }
                this.messageCase_ = 0;
                this.message_ = null;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemotePlayTogether_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemotePlayTogether_Notification getDefaultInstanceForType() {
                return CRemotePlayTogether_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlayTogether_Notification build() {
                CRemotePlayTogether_Notification cRemotePlayTogether_NotificationBuildPartial = buildPartial();
                if (cRemotePlayTogether_NotificationBuildPartial.isInitialized()) {
                    return cRemotePlayTogether_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemotePlayTogether_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemotePlayTogether_Notification buildPartial() {
                CRemotePlayTogether_Notification cRemotePlayTogether_Notification = new CRemotePlayTogether_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemotePlayTogether_Notification);
                }
                buildPartialOneofs(cRemotePlayTogether_Notification);
                onBuilt();
                return cRemotePlayTogether_Notification;
            }

            private void buildPartial0(CRemotePlayTogether_Notification cRemotePlayTogether_Notification) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemotePlayTogether_Notification.steamid_ = this.steamid_;
                } else {
                    i = 0;
                }
                cRemotePlayTogether_Notification.bitField0_ |= i;
            }

            private void buildPartialOneofs(CRemotePlayTogether_Notification cRemotePlayTogether_Notification) {
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder;
                cRemotePlayTogether_Notification.messageCase_ = this.messageCase_;
                cRemotePlayTogether_Notification.message_ = this.message_;
                if (this.messageCase_ != 2 || (singleFieldBuilder = this.groupUpdatedBuilder_) == null) {
                    return;
                }
                cRemotePlayTogether_Notification.message_ = singleFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemotePlayTogether_Notification) {
                    return mergeFrom((CRemotePlayTogether_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemotePlayTogether_Notification cRemotePlayTogether_Notification) {
                if (cRemotePlayTogether_Notification == CRemotePlayTogether_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cRemotePlayTogether_Notification.hasSteamid()) {
                    setSteamid(cRemotePlayTogether_Notification.getSteamid());
                }
                if (cRemotePlayTogether_Notification.getMessageCase().ordinal() == 0) {
                    mergeGroupUpdated(cRemotePlayTogether_Notification.getGroupUpdated());
                }
                mergeUnknownFields(cRemotePlayTogether_Notification.getUnknownFields());
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
                                } else if (tag == 18) {
                                    codedInputStream.readMessage(internalGetGroupUpdatedFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.messageCase_ = 2;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
            public MessageCase getMessageCase() {
                return MessageCase.forNumber(this.messageCase_);
            }

            public Builder clearMessage() {
                this.messageCase_ = 0;
                this.message_ = null;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
            public boolean hasGroupUpdated() {
                return this.messageCase_ == 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
            public GroupUpdated getGroupUpdated() {
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder = this.groupUpdatedBuilder_;
                if (singleFieldBuilder == null) {
                    if (this.messageCase_ == 2) {
                        return (GroupUpdated) this.message_;
                    }
                    return GroupUpdated.getDefaultInstance();
                }
                if (this.messageCase_ == 2) {
                    return (GroupUpdated) singleFieldBuilder.getMessage();
                }
                return GroupUpdated.getDefaultInstance();
            }

            public Builder setGroupUpdated(GroupUpdated groupUpdated) {
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder = this.groupUpdatedBuilder_;
                if (singleFieldBuilder == null) {
                    groupUpdated.getClass();
                    this.message_ = groupUpdated;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(groupUpdated);
                }
                this.messageCase_ = 2;
                return this;
            }

            public Builder setGroupUpdated(GroupUpdated.Builder builder) {
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder = this.groupUpdatedBuilder_;
                if (singleFieldBuilder == null) {
                    this.message_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.messageCase_ = 2;
                return this;
            }

            public Builder mergeGroupUpdated(GroupUpdated groupUpdated) {
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder = this.groupUpdatedBuilder_;
                if (singleFieldBuilder == null) {
                    if (this.messageCase_ == 2 && this.message_ != GroupUpdated.getDefaultInstance()) {
                        this.message_ = GroupUpdated.newBuilder((GroupUpdated) this.message_).mergeFrom(groupUpdated).buildPartial();
                    } else {
                        this.message_ = groupUpdated;
                    }
                    onChanged();
                } else if (this.messageCase_ == 2) {
                    singleFieldBuilder.mergeFrom(groupUpdated);
                } else {
                    singleFieldBuilder.setMessage(groupUpdated);
                }
                this.messageCase_ = 2;
                return this;
            }

            public Builder clearGroupUpdated() {
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder = this.groupUpdatedBuilder_;
                if (singleFieldBuilder == null) {
                    if (this.messageCase_ == 2) {
                        this.messageCase_ = 0;
                        this.message_ = null;
                        onChanged();
                    }
                } else {
                    if (this.messageCase_ == 2) {
                        this.messageCase_ = 0;
                        this.message_ = null;
                    }
                    singleFieldBuilder.clear();
                }
                return this;
            }

            public GroupUpdated.Builder getGroupUpdatedBuilder() {
                return (GroupUpdated.Builder) internalGetGroupUpdatedFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_NotificationOrBuilder
            public GroupUpdatedOrBuilder getGroupUpdatedOrBuilder() {
                SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> singleFieldBuilder;
                int i = this.messageCase_;
                if (i == 2 && (singleFieldBuilder = this.groupUpdatedBuilder_) != null) {
                    return (GroupUpdatedOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                if (i == 2) {
                    return (GroupUpdated) this.message_;
                }
                return GroupUpdated.getDefaultInstance();
            }

            private SingleFieldBuilder<GroupUpdated, GroupUpdated.Builder, GroupUpdatedOrBuilder> internalGetGroupUpdatedFieldBuilder() {
                if (this.groupUpdatedBuilder_ == null) {
                    if (this.messageCase_ != 2) {
                        this.message_ = GroupUpdated.getDefaultInstance();
                    }
                    this.groupUpdatedBuilder_ = new SingleFieldBuilder<>((GroupUpdated) this.message_, getParentForChildren(), isClean());
                    this.message_ = null;
                }
                this.messageCase_ = 2;
                onChanged();
                return this.groupUpdatedBuilder_;
            }
        }

        public static CRemotePlayTogether_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemotePlayTogether_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemotePlayTogether_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemotePlayTogether_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_CreateRemotePlayTogetherInvitation_Request extends GeneratedMessage implements CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CRemoteClient_CreateRemotePlayTogetherInvitation_Request DEFAULT_INSTANCE;
        public static final int LAUNCH_PARAMETERS_FIELD_NUMBER = 2;
        private static final Parser<CRemoteClient_CreateRemotePlayTogetherInvitation_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private volatile Object launchParameters_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_CreateRemotePlayTogetherInvitation_Request.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_CreateRemotePlayTogetherInvitation_Request();
            PARSER = new AbstractParser<CRemoteClient_CreateRemotePlayTogetherInvitation_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_Request.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_CreateRemotePlayTogetherInvitation_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_CreateRemotePlayTogetherInvitation_Request.newBuilder();
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

        private CRemoteClient_CreateRemotePlayTogetherInvitation_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.launchParameters_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_CreateRemotePlayTogetherInvitation_Request() {
            this.appid_ = 0;
            this.launchParameters_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.launchParameters_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_CreateRemotePlayTogetherInvitation_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
        public boolean hasLaunchParameters() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
        public String getLaunchParameters() {
            Object obj = this.launchParameters_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.launchParameters_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
        public ByteString getLaunchParametersBytes() {
            Object obj = this.launchParameters_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.launchParameters_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.launchParameters_);
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
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.launchParameters_);
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
            if (!(obj instanceof CRemoteClient_CreateRemotePlayTogetherInvitation_Request)) {
                return super.equals(obj);
            }
            CRemoteClient_CreateRemotePlayTogetherInvitation_Request cRemoteClient_CreateRemotePlayTogetherInvitation_Request = (CRemoteClient_CreateRemotePlayTogetherInvitation_Request) obj;
            if (hasAppid() != cRemoteClient_CreateRemotePlayTogetherInvitation_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cRemoteClient_CreateRemotePlayTogetherInvitation_Request.getAppid()) && hasLaunchParameters() == cRemoteClient_CreateRemotePlayTogetherInvitation_Request.hasLaunchParameters()) {
                return (!hasLaunchParameters() || getLaunchParameters().equals(cRemoteClient_CreateRemotePlayTogetherInvitation_Request.getLaunchParameters())) && getUnknownFields().equals(cRemoteClient_CreateRemotePlayTogetherInvitation_Request.getUnknownFields());
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
            if (hasLaunchParameters()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLaunchParameters().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_CreateRemotePlayTogetherInvitation_Request cRemoteClient_CreateRemotePlayTogetherInvitation_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_CreateRemotePlayTogetherInvitation_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object launchParameters_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_CreateRemotePlayTogetherInvitation_Request.class, Builder.class);
            }

            private Builder() {
                this.launchParameters_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.launchParameters_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.launchParameters_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_CreateRemotePlayTogetherInvitation_Request getDefaultInstanceForType() {
                return CRemoteClient_CreateRemotePlayTogetherInvitation_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_CreateRemotePlayTogetherInvitation_Request build() {
                CRemoteClient_CreateRemotePlayTogetherInvitation_Request cRemoteClient_CreateRemotePlayTogetherInvitation_RequestBuildPartial = buildPartial();
                if (cRemoteClient_CreateRemotePlayTogetherInvitation_RequestBuildPartial.isInitialized()) {
                    return cRemoteClient_CreateRemotePlayTogetherInvitation_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_CreateRemotePlayTogetherInvitation_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_CreateRemotePlayTogetherInvitation_Request buildPartial() {
                CRemoteClient_CreateRemotePlayTogetherInvitation_Request cRemoteClient_CreateRemotePlayTogetherInvitation_Request = new CRemoteClient_CreateRemotePlayTogetherInvitation_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_CreateRemotePlayTogetherInvitation_Request);
                }
                onBuilt();
                return cRemoteClient_CreateRemotePlayTogetherInvitation_Request;
            }

            private void buildPartial0(CRemoteClient_CreateRemotePlayTogetherInvitation_Request cRemoteClient_CreateRemotePlayTogetherInvitation_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoteClient_CreateRemotePlayTogetherInvitation_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoteClient_CreateRemotePlayTogetherInvitation_Request.launchParameters_ = this.launchParameters_;
                    i |= 2;
                }
                cRemoteClient_CreateRemotePlayTogetherInvitation_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_CreateRemotePlayTogetherInvitation_Request) {
                    return mergeFrom((CRemoteClient_CreateRemotePlayTogetherInvitation_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_CreateRemotePlayTogetherInvitation_Request cRemoteClient_CreateRemotePlayTogetherInvitation_Request) {
                if (cRemoteClient_CreateRemotePlayTogetherInvitation_Request == CRemoteClient_CreateRemotePlayTogetherInvitation_Request.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_CreateRemotePlayTogetherInvitation_Request.hasAppid()) {
                    setAppid(cRemoteClient_CreateRemotePlayTogetherInvitation_Request.getAppid());
                }
                if (cRemoteClient_CreateRemotePlayTogetherInvitation_Request.hasLaunchParameters()) {
                    this.launchParameters_ = cRemoteClient_CreateRemotePlayTogetherInvitation_Request.launchParameters_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cRemoteClient_CreateRemotePlayTogetherInvitation_Request.getUnknownFields());
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
                                } else if (tag == 18) {
                                    this.launchParameters_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
            public boolean hasLaunchParameters() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
            public String getLaunchParameters() {
                Object obj = this.launchParameters_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.launchParameters_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_RequestOrBuilder
            public ByteString getLaunchParametersBytes() {
                Object obj = this.launchParameters_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.launchParameters_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setLaunchParameters(String str) {
                str.getClass();
                this.launchParameters_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLaunchParameters() {
                this.launchParameters_ = CRemoteClient_CreateRemotePlayTogetherInvitation_Request.getDefaultInstance().getLaunchParameters();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setLaunchParametersBytes(ByteString byteString) {
                byteString.getClass();
                this.launchParameters_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_CreateRemotePlayTogetherInvitation_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_CreateRemotePlayTogetherInvitation_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_CreateRemotePlayTogetherInvitation_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_CreateRemotePlayTogetherInvitation_Response extends GeneratedMessage implements CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder {
        private static final CRemoteClient_CreateRemotePlayTogetherInvitation_Response DEFAULT_INSTANCE;
        public static final int INVITATION_CODE_FIELD_NUMBER = 1;
        private static final Parser<CRemoteClient_CreateRemotePlayTogetherInvitation_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object invitationCode_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_CreateRemotePlayTogetherInvitation_Response.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_CreateRemotePlayTogetherInvitation_Response();
            PARSER = new AbstractParser<CRemoteClient_CreateRemotePlayTogetherInvitation_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_Response.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_CreateRemotePlayTogetherInvitation_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_CreateRemotePlayTogetherInvitation_Response.newBuilder();
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

        private CRemoteClient_CreateRemotePlayTogetherInvitation_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.invitationCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_CreateRemotePlayTogetherInvitation_Response() {
            this.invitationCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.invitationCode_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_CreateRemotePlayTogetherInvitation_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder
        public boolean hasInvitationCode() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder
        public String getInvitationCode() {
            Object obj = this.invitationCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.invitationCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder
        public ByteString getInvitationCodeBytes() {
            Object obj = this.invitationCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.invitationCode_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.invitationCode_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.invitationCode_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CRemoteClient_CreateRemotePlayTogetherInvitation_Response)) {
                return super.equals(obj);
            }
            CRemoteClient_CreateRemotePlayTogetherInvitation_Response cRemoteClient_CreateRemotePlayTogetherInvitation_Response = (CRemoteClient_CreateRemotePlayTogetherInvitation_Response) obj;
            if (hasInvitationCode() != cRemoteClient_CreateRemotePlayTogetherInvitation_Response.hasInvitationCode()) {
                return false;
            }
            return (!hasInvitationCode() || getInvitationCode().equals(cRemoteClient_CreateRemotePlayTogetherInvitation_Response.getInvitationCode())) && getUnknownFields().equals(cRemoteClient_CreateRemotePlayTogetherInvitation_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasInvitationCode()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getInvitationCode().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_CreateRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_CreateRemotePlayTogetherInvitation_Response cRemoteClient_CreateRemotePlayTogetherInvitation_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_CreateRemotePlayTogetherInvitation_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder {
            private int bitField0_;
            private Object invitationCode_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_CreateRemotePlayTogetherInvitation_Response.class, Builder.class);
            }

            private Builder() {
                this.invitationCode_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.invitationCode_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.invitationCode_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_CreateRemotePlayTogetherInvitation_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_CreateRemotePlayTogetherInvitation_Response getDefaultInstanceForType() {
                return CRemoteClient_CreateRemotePlayTogetherInvitation_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_CreateRemotePlayTogetherInvitation_Response build() {
                CRemoteClient_CreateRemotePlayTogetherInvitation_Response cRemoteClient_CreateRemotePlayTogetherInvitation_ResponseBuildPartial = buildPartial();
                if (cRemoteClient_CreateRemotePlayTogetherInvitation_ResponseBuildPartial.isInitialized()) {
                    return cRemoteClient_CreateRemotePlayTogetherInvitation_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_CreateRemotePlayTogetherInvitation_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_CreateRemotePlayTogetherInvitation_Response buildPartial() {
                CRemoteClient_CreateRemotePlayTogetherInvitation_Response cRemoteClient_CreateRemotePlayTogetherInvitation_Response = new CRemoteClient_CreateRemotePlayTogetherInvitation_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_CreateRemotePlayTogetherInvitation_Response);
                }
                onBuilt();
                return cRemoteClient_CreateRemotePlayTogetherInvitation_Response;
            }

            private void buildPartial0(CRemoteClient_CreateRemotePlayTogetherInvitation_Response cRemoteClient_CreateRemotePlayTogetherInvitation_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemoteClient_CreateRemotePlayTogetherInvitation_Response.invitationCode_ = this.invitationCode_;
                } else {
                    i = 0;
                }
                cRemoteClient_CreateRemotePlayTogetherInvitation_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_CreateRemotePlayTogetherInvitation_Response) {
                    return mergeFrom((CRemoteClient_CreateRemotePlayTogetherInvitation_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_CreateRemotePlayTogetherInvitation_Response cRemoteClient_CreateRemotePlayTogetherInvitation_Response) {
                if (cRemoteClient_CreateRemotePlayTogetherInvitation_Response == CRemoteClient_CreateRemotePlayTogetherInvitation_Response.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_CreateRemotePlayTogetherInvitation_Response.hasInvitationCode()) {
                    this.invitationCode_ = cRemoteClient_CreateRemotePlayTogetherInvitation_Response.invitationCode_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cRemoteClient_CreateRemotePlayTogetherInvitation_Response.getUnknownFields());
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
                                    this.invitationCode_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder
            public boolean hasInvitationCode() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder
            public String getInvitationCode() {
                Object obj = this.invitationCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.invitationCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_ResponseOrBuilder
            public ByteString getInvitationCodeBytes() {
                Object obj = this.invitationCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.invitationCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setInvitationCode(String str) {
                str.getClass();
                this.invitationCode_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearInvitationCode() {
                this.invitationCode_ = CRemoteClient_CreateRemotePlayTogetherInvitation_Response.getDefaultInstance().getInvitationCode();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setInvitationCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.invitationCode_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_CreateRemotePlayTogetherInvitation_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_CreateRemotePlayTogetherInvitation_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_CreateRemotePlayTogetherInvitation_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_CreateRemotePlayTogetherInvitation_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_DeleteRemotePlayTogetherInvitation_Request extends GeneratedMessage implements CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder {
        private static final CRemoteClient_DeleteRemotePlayTogetherInvitation_Request DEFAULT_INSTANCE;
        public static final int INVITATION_CODE_FIELD_NUMBER = 1;
        private static final Parser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object invitationCode_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_DeleteRemotePlayTogetherInvitation_Request();
            PARSER = new AbstractParser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.newBuilder();
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

        private CRemoteClient_DeleteRemotePlayTogetherInvitation_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.invitationCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_DeleteRemotePlayTogetherInvitation_Request() {
            this.invitationCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.invitationCode_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder
        public boolean hasInvitationCode() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder
        public String getInvitationCode() {
            Object obj = this.invitationCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.invitationCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder
        public ByteString getInvitationCodeBytes() {
            Object obj = this.invitationCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.invitationCode_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.invitationCode_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.invitationCode_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CRemoteClient_DeleteRemotePlayTogetherInvitation_Request)) {
                return super.equals(obj);
            }
            CRemoteClient_DeleteRemotePlayTogetherInvitation_Request cRemoteClient_DeleteRemotePlayTogetherInvitation_Request = (CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) obj;
            if (hasInvitationCode() != cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.hasInvitationCode()) {
                return false;
            }
            return (!hasInvitationCode() || getInvitationCode().equals(cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.getInvitationCode())) && getUnknownFields().equals(cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasInvitationCode()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getInvitationCode().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_DeleteRemotePlayTogetherInvitation_Request cRemoteClient_DeleteRemotePlayTogetherInvitation_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_DeleteRemotePlayTogetherInvitation_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder {
            private int bitField0_;
            private Object invitationCode_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.class, Builder.class);
            }

            private Builder() {
                this.invitationCode_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.invitationCode_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.invitationCode_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_DeleteRemotePlayTogetherInvitation_Request getDefaultInstanceForType() {
                return CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_DeleteRemotePlayTogetherInvitation_Request build() {
                CRemoteClient_DeleteRemotePlayTogetherInvitation_Request cRemoteClient_DeleteRemotePlayTogetherInvitation_RequestBuildPartial = buildPartial();
                if (cRemoteClient_DeleteRemotePlayTogetherInvitation_RequestBuildPartial.isInitialized()) {
                    return cRemoteClient_DeleteRemotePlayTogetherInvitation_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_DeleteRemotePlayTogetherInvitation_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_DeleteRemotePlayTogetherInvitation_Request buildPartial() {
                CRemoteClient_DeleteRemotePlayTogetherInvitation_Request cRemoteClient_DeleteRemotePlayTogetherInvitation_Request = new CRemoteClient_DeleteRemotePlayTogetherInvitation_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoteClient_DeleteRemotePlayTogetherInvitation_Request);
                }
                onBuilt();
                return cRemoteClient_DeleteRemotePlayTogetherInvitation_Request;
            }

            private void buildPartial0(CRemoteClient_DeleteRemotePlayTogetherInvitation_Request cRemoteClient_DeleteRemotePlayTogetherInvitation_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.invitationCode_ = this.invitationCode_;
                } else {
                    i = 0;
                }
                cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) {
                    return mergeFrom((CRemoteClient_DeleteRemotePlayTogetherInvitation_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_DeleteRemotePlayTogetherInvitation_Request cRemoteClient_DeleteRemotePlayTogetherInvitation_Request) {
                if (cRemoteClient_DeleteRemotePlayTogetherInvitation_Request == CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.getDefaultInstance()) {
                    return this;
                }
                if (cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.hasInvitationCode()) {
                    this.invitationCode_ = cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.invitationCode_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cRemoteClient_DeleteRemotePlayTogetherInvitation_Request.getUnknownFields());
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
                                    this.invitationCode_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder
            public boolean hasInvitationCode() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder
            public String getInvitationCode() {
                Object obj = this.invitationCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.invitationCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_RequestOrBuilder
            public ByteString getInvitationCodeBytes() {
                Object obj = this.invitationCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.invitationCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setInvitationCode(String str) {
                str.getClass();
                this.invitationCode_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearInvitationCode() {
                this.invitationCode_ = CRemoteClient_DeleteRemotePlayTogetherInvitation_Request.getDefaultInstance().getInvitationCode();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setInvitationCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.invitationCode_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_DeleteRemotePlayTogetherInvitation_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoteClient_DeleteRemotePlayTogetherInvitation_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CRemoteClient_DeleteRemotePlayTogetherInvitation_Response DEFAULT_INSTANCE;
        private static final Parser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.class.getName());
            DEFAULT_INSTANCE = new CRemoteClient_DeleteRemotePlayTogetherInvitation_Response();
            PARSER = new AbstractParser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.1
                @Override // com.google.protobuf.Parser
                public CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.newBuilder();
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

        private CRemoteClient_DeleteRemotePlayTogetherInvitation_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoteClient_DeleteRemotePlayTogetherInvitation_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.class, Builder.class);
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
            if (obj instanceof CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) {
                return getUnknownFields().equals(((CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) obj).getUnknownFields());
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

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoteClient_DeleteRemotePlayTogetherInvitation_Response cRemoteClient_DeleteRemotePlayTogetherInvitation_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoteClient_DeleteRemotePlayTogetherInvitation_Response);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.class, Builder.class);
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
                return SteammessagesRemoteclientServiceMessages.internal_static_CRemoteClient_DeleteRemotePlayTogetherInvitation_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoteClient_DeleteRemotePlayTogetherInvitation_Response getDefaultInstanceForType() {
                return CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_DeleteRemotePlayTogetherInvitation_Response build() {
                CRemoteClient_DeleteRemotePlayTogetherInvitation_Response cRemoteClient_DeleteRemotePlayTogetherInvitation_ResponseBuildPartial = buildPartial();
                if (cRemoteClient_DeleteRemotePlayTogetherInvitation_ResponseBuildPartial.isInitialized()) {
                    return cRemoteClient_DeleteRemotePlayTogetherInvitation_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoteClient_DeleteRemotePlayTogetherInvitation_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoteClient_DeleteRemotePlayTogetherInvitation_Response buildPartial() {
                CRemoteClient_DeleteRemotePlayTogetherInvitation_Response cRemoteClient_DeleteRemotePlayTogetherInvitation_Response = new CRemoteClient_DeleteRemotePlayTogetherInvitation_Response(this);
                onBuilt();
                return cRemoteClient_DeleteRemotePlayTogetherInvitation_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) {
                    return mergeFrom((CRemoteClient_DeleteRemotePlayTogetherInvitation_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoteClient_DeleteRemotePlayTogetherInvitation_Response cRemoteClient_DeleteRemotePlayTogetherInvitation_Response) {
                if (cRemoteClient_DeleteRemotePlayTogetherInvitation_Response == CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cRemoteClient_DeleteRemotePlayTogetherInvitation_Response.getUnknownFields());
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

        public static CRemoteClient_DeleteRemotePlayTogetherInvitation_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoteClient_DeleteRemotePlayTogetherInvitation_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoteClient_DeleteRemotePlayTogetherInvitation_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
