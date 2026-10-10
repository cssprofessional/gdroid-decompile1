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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SteammessagesClientserverMms {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSCreateLobbyResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSCreateLobbyResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSCreateLobby_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSCreateLobby_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSGetLobbyData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSGetLobbyData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSGetLobbyListResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSGetLobbyListResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSGetLobbyList_Filter_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSGetLobbyList_Filter_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSGetLobbyList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSGetLobbyList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSGetLobbyStatusResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSGetLobbyStatusResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSGetLobbyStatus_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSGetLobbyStatus_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSInviteToLobby_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSInviteToLobby_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSJoinLobbyResponse_Member_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSJoinLobbyResponse_Member_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSJoinLobbyResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSJoinLobbyResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSJoinLobby_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSJoinLobby_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSLeaveLobbyResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSLeaveLobbyResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSLeaveLobby_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSLeaveLobby_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSLobbyChatMsg_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSLobbyChatMsg_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSLobbyData_Member_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSLobbyData_Member_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSLobbyData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSLobbyData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSLobbyGameServerSet_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSLobbyGameServerSet_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSendLobbyChatMsg_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSendLobbyChatMsg_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSetLobbyDataResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSetLobbyDataResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSetLobbyData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSetLobbyData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSetLobbyGameServer_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSetLobbyGameServer_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSetLobbyLinked_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSetLobbyLinked_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSetLobbyOwnerResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSetLobbyOwnerResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSetLobbyOwner_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSetLobbyOwner_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSSetRatelimitPolicyOnClient_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSSetRatelimitPolicyOnClient_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSUserJoinedLobby_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSUserJoinedLobby_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientMMSUserLeftLobby_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientMMSUserLeftLobby_fieldAccessorTable;

    public interface CMsgClientMMSCreateLobbyOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getCellId();

        int getDeprecatedPublicIp();

        int getLobbyFlags();

        int getLobbyType();

        int getMaxMembers();

        ByteString getMetadata();

        String getNetworkPingLocation();

        ByteString getNetworkPingLocationBytes();

        String getPersonaNameOwner();

        ByteString getPersonaNameOwnerBytes();

        SteammessagesBase.CMsgIPAddress getPublicIp();

        SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder();

        boolean hasAppId();

        boolean hasCellId();

        boolean hasDeprecatedPublicIp();

        boolean hasLobbyFlags();

        boolean hasLobbyType();

        boolean hasMaxMembers();

        boolean hasMetadata();

        boolean hasNetworkPingLocation();

        boolean hasPersonaNameOwner();

        boolean hasPublicIp();
    }

    public interface CMsgClientMMSCreateLobbyResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getEresult();

        long getSteamIdLobby();

        boolean hasAppId();

        boolean hasEresult();

        boolean hasSteamIdLobby();
    }

    public interface CMsgClientMMSGetLobbyDataOrBuilder extends MessageOrBuilder {
        int getAppId();

        long getSteamIdLobby();

        boolean hasAppId();

        boolean hasSteamIdLobby();
    }

    public interface CMsgClientMMSGetLobbyListOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getCellId();

        int getDeprecatedPublicIp();

        CMsgClientMMSGetLobbyList.Filter getFilters(int i);

        int getFiltersCount();

        List<CMsgClientMMSGetLobbyList.Filter> getFiltersList();

        CMsgClientMMSGetLobbyList.FilterOrBuilder getFiltersOrBuilder(int i);

        List<? extends CMsgClientMMSGetLobbyList.FilterOrBuilder> getFiltersOrBuilderList();

        String getNetworkPingLocation();

        ByteString getNetworkPingLocationBytes();

        int getNumLobbiesRequested();

        SteammessagesBase.CMsgIPAddress getPublicIp();

        SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder();

        boolean hasAppId();

        boolean hasCellId();

        boolean hasDeprecatedPublicIp();

        boolean hasNetworkPingLocation();

        boolean hasNumLobbiesRequested();

        boolean hasPublicIp();
    }

    public interface CMsgClientMMSGetLobbyListResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getEresult();

        CMsgClientMMSGetLobbyListResponse.Lobby getLobbies(int i);

        int getLobbiesCount();

        List<CMsgClientMMSGetLobbyListResponse.Lobby> getLobbiesList();

        CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder getLobbiesOrBuilder(int i);

        List<? extends CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder> getLobbiesOrBuilderList();

        boolean hasAppId();

        boolean hasEresult();
    }

    public interface CMsgClientMMSInviteToLobbyOrBuilder extends MessageOrBuilder {
        int getAppId();

        long getSteamIdLobby();

        long getSteamIdUserInvited();

        boolean hasAppId();

        boolean hasSteamIdLobby();

        boolean hasSteamIdUserInvited();
    }

    public interface CMsgClientMMSJoinLobbyOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getCellId();

        String getNetworkPingLocation();

        ByteString getNetworkPingLocationBytes();

        String getPersonaName();

        ByteString getPersonaNameBytes();

        long getSteamIdLobby();

        boolean hasAppId();

        boolean hasCellId();

        boolean hasNetworkPingLocation();

        boolean hasPersonaName();

        boolean hasSteamIdLobby();
    }

    public interface CMsgClientMMSJoinLobbyResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getChatRoomEnterResponse();

        int getLobbyFlags();

        int getLobbyType();

        int getMaxMembers();

        CMsgClientMMSJoinLobbyResponse.Member getMembers(int i);

        int getMembersCount();

        List<CMsgClientMMSJoinLobbyResponse.Member> getMembersList();

        CMsgClientMMSJoinLobbyResponse.MemberOrBuilder getMembersOrBuilder(int i);

        List<? extends CMsgClientMMSJoinLobbyResponse.MemberOrBuilder> getMembersOrBuilderList();

        ByteString getMetadata();

        long getSteamIdLobby();

        long getSteamIdOwner();

        boolean hasAppId();

        boolean hasChatRoomEnterResponse();

        boolean hasLobbyFlags();

        boolean hasLobbyType();

        boolean hasMaxMembers();

        boolean hasMetadata();

        boolean hasSteamIdLobby();

        boolean hasSteamIdOwner();
    }

    public interface CMsgClientMMSLeaveLobbyOrBuilder extends MessageOrBuilder {
        int getAppId();

        long getSteamIdLobby();

        boolean hasAppId();

        boolean hasSteamIdLobby();
    }

    public interface CMsgClientMMSLeaveLobbyResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getEresult();

        long getSteamIdLobby();

        boolean hasAppId();

        boolean hasEresult();

        boolean hasSteamIdLobby();
    }

    public interface CMsgClientMMSLobbyDataOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getLobbyCellid();

        int getLobbyFlags();

        int getLobbyType();

        int getMaxMembers();

        CMsgClientMMSLobbyData.Member getMembers(int i);

        int getMembersCount();

        List<CMsgClientMMSLobbyData.Member> getMembersList();

        CMsgClientMMSLobbyData.MemberOrBuilder getMembersOrBuilder(int i);

        List<? extends CMsgClientMMSLobbyData.MemberOrBuilder> getMembersOrBuilderList();

        ByteString getMetadata();

        int getNumMembers();

        boolean getOwnerShouldAcceptChanges();

        long getSteamIdLobby();

        long getSteamIdOwner();

        boolean hasAppId();

        boolean hasLobbyCellid();

        boolean hasLobbyFlags();

        boolean hasLobbyType();

        boolean hasMaxMembers();

        boolean hasMetadata();

        boolean hasNumMembers();

        boolean hasOwnerShouldAcceptChanges();

        boolean hasSteamIdLobby();

        boolean hasSteamIdOwner();
    }

    public interface CMsgClientMMSSetLobbyDataOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getLobbyFlags();

        int getLobbyType();

        int getMaxMembers();

        ByteString getMetadata();

        String getNetworkPingLocation();

        ByteString getNetworkPingLocationBytes();

        long getSteamIdLobby();

        long getSteamIdMember();

        boolean hasAppId();

        boolean hasLobbyFlags();

        boolean hasLobbyType();

        boolean hasMaxMembers();

        boolean hasMetadata();

        boolean hasNetworkPingLocation();

        boolean hasSteamIdLobby();

        boolean hasSteamIdMember();
    }

    public interface CMsgClientMMSSetLobbyDataResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getEresult();

        long getSteamIdLobby();

        boolean hasAppId();

        boolean hasEresult();

        boolean hasSteamIdLobby();
    }

    public interface CMsgClientMMSSetLobbyOwnerOrBuilder extends MessageOrBuilder {
        int getAppId();

        long getSteamIdLobby();

        long getSteamIdNewOwner();

        boolean hasAppId();

        boolean hasSteamIdLobby();

        boolean hasSteamIdNewOwner();
    }

    public interface CMsgClientMMSSetLobbyOwnerResponseOrBuilder extends MessageOrBuilder {
        int getAppId();

        int getEresult();

        long getSteamIdLobby();

        boolean hasAppId();

        boolean hasEresult();

        boolean hasSteamIdLobby();
    }

    public interface CMsgClientMMSUserJoinedLobbyOrBuilder extends MessageOrBuilder {
        int getAppId();

        String getPersonaName();

        ByteString getPersonaNameBytes();

        long getSteamIdLobby();

        long getSteamIdUser();

        boolean hasAppId();

        boolean hasPersonaName();

        boolean hasSteamIdLobby();

        boolean hasSteamIdUser();
    }

    public interface CMsgClientMMSUserLeftLobbyOrBuilder extends MessageOrBuilder {
        int getAppId();

        String getPersonaName();

        ByteString getPersonaNameBytes();

        long getSteamIdLobby();

        long getSteamIdUser();

        boolean hasAppId();

        boolean hasPersonaName();

        boolean hasSteamIdLobby();

        boolean hasSteamIdUser();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverMms() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverMms.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nQin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_mms.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"\u0098\u0001\n'CMsgClientMMSSetRatelimitPolicyOnClient\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u001a\n\u0012enable_rate_limits\u0018\u0002 \u0001(\b\u0012\u001b\n\u0013seconds_per_message\u0018\u0003 \u0001(\u0005\u0012$\n\u001cmilliseconds_per_data_update\u0018\u0004 \u0001(\u0005\"\u0087\u0002\n\u0018CMsgClientMMSCreateLobby\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bmax_members\u0018\u0002 \u0001(\u0005\u0012\u0012\n\nlobby_type\u0018\u0003 \u0001(\u0005\u0012\u0013\n\u000blobby_flags\u0018\u0004 \u0001(\u0005\u0012\u000f\n\u0007cell_id\u0018\u0005 \u0001(\r\u0012\u001c\n\u0014deprecated_public_ip\u0018\u0006 \u0001(\r\u0012\u0010\n\bmetadata\u0018\u0007 \u0001(\f\u0012\u001a\n\u0012persona_name_owner\u0018\b \u0001(\t\u0012!\n\tpublic_ip\u0018\t \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u001d\n\u0015network_ping_location\u0018\n \u0001(\t\"^\n CMsgClientMMSCreateLobbyResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0003 \u0001(\u0005:\u00012\"\u0086\u0001\n\u0016CMsgClientMMSJoinLobby\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0014\n\fpersona_name\u0018\u0003 \u0001(\t\u0012\u001d\n\u0015network_ping_location\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007cell_id\u0018\u0005 \u0001(\r\"Ï\u0002\n\u001eCMsgClientMMSJoinLobbyResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012 \n\u0018chat_room_enter_response\u0018\u0003 \u0001(\u0005\u0012\u0013\n\u000bmax_members\u0018\u0004 \u0001(\u0005\u0012\u0012\n\nlobby_type\u0018\u0005 \u0001(\u0005\u0012\u0013\n\u000blobby_flags\u0018\u0006 \u0001(\u0005\u0012\u0016\n\u000esteam_id_owner\u0018\u0007 \u0001(\u0006\u0012\u0010\n\bmetadata\u0018\b \u0001(\f\u00127\n\u0007members\u0018\t \u0003(\u000b2&.CMsgClientMMSJoinLobbyResponse.Member\u001aB\n\u0006Member\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\u0012\u0014\n\fpersona_name\u0018\u0002 \u0001(\t\u0012\u0010\n\bmetadata\u0018\u0003 \u0001(\f\"A\n\u0017CMsgClientMMSLeaveLobby\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\"]\n\u001fCMsgClientMMSLeaveLobbyResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0003 \u0001(\u0005:\u00012\"¿\u0002\n\u0019CMsgClientMMSGetLobbyList\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u001d\n\u0015num_lobbies_requested\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007cell_id\u0018\u0004 \u0001(\r\u0012\u001c\n\u0014deprecated_public_ip\u0018\u0005 \u0001(\r\u00122\n\u0007filters\u0018\u0006 \u0003(\u000b2!.CMsgClientMMSGetLobbyList.Filter\u0012!\n\tpublic_ip\u0018\u0007 \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u001d\n\u0015network_ping_location\u0018\b \u0001(\t\u001aN\n\u0006Filter\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bcomparision\u0018\u0003 \u0001(\u0005\u0012\u0013\n\u000bfilter_type\u0018\u0004 \u0001(\u0005\"É\u0002\n!CMsgClientMMSGetLobbyListResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0012\n\u0007eresult\u0018\u0003 \u0001(\u0005:\u00012\u00129\n\u0007lobbies\u0018\u0004 \u0003(\u000b2(.CMsgClientMMSGetLobbyListResponse.Lobby\u001aÄ\u0001\n\u0005Lobby\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\u0012\u0013\n\u000bmax_members\u0018\u0002 \u0001(\u0005\u0012\u0012\n\nlobby_type\u0018\u0003 \u0001(\u0005\u0012\u0013\n\u000blobby_flags\u0018\u0004 \u0001(\u0005\u0012\u0010\n\bmetadata\u0018\u0005 \u0001(\f\u0012\u0013\n\u000bnum_members\u0018\u0006 \u0001(\u0005\u0012\u0010\n\bdistance\u0018\u0007 \u0001(\u0002\u0012\u000e\n\u0006weight\u0018\b \u0001(\u0003\u0012\f\n\u0004ping\u0018\t \u0001(\u0005\u0012\u0014\n\fmissing_ping\u0018\n \u0001(\u0005\"Ë\u0001\n\u0019CMsgClientMMSSetLobbyData\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0017\n\u000fsteam_id_member\u0018\u0003 \u0001(\u0006\u0012\u0013\n\u000bmax_members\u0018\u0004 \u0001(\u0005\u0012\u0012\n\nlobby_type\u0018\u0005 \u0001(\u0005\u0012\u0013\n\u000blobby_flags\u0018\u0006 \u0001(\u0005\u0012\u0010\n\bmetadata\u0018\u0007 \u0001(\f\u0012\u001d\n\u0015network_ping_location\u0018\b \u0001(\t\"_\n!CMsgClientMMSSetLobbyDataResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0003 \u0001(\u0005:\u00012\"C\n\u0019CMsgClientMMSGetLobbyData\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\"\u0080\u0003\n\u0016CMsgClientMMSLobbyData\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0013\n\u000bnum_members\u0018\u0003 \u0001(\u0005\u0012\u0013\n\u000bmax_members\u0018\u0004 \u0001(\u0005\u0012\u0012\n\nlobby_type\u0018\u0005 \u0001(\u0005\u0012\u0013\n\u000blobby_flags\u0018\u0006 \u0001(\u0005\u0012\u0016\n\u000esteam_id_owner\u0018\u0007 \u0001(\u0006\u0012\u0010\n\bmetadata\u0018\b \u0001(\f\u0012/\n\u0007members\u0018\t \u0003(\u000b2\u001e.CMsgClientMMSLobbyData.Member\u0012\u0014\n\flobby_cellid\u0018\n \u0001(\r\u0012#\n\u001bowner_should_accept_changes\u0018\u000b \u0001(\b\u001aU\n\u0006Member\u0012\u0010\n\bsteam_id\u0018\u0001 \u0001(\u0006\u0012\u0014\n\fpersona_name\u0018\u0002 \u0001(\t\u0012\u0010\n\bmetadata\u0018\u0003 \u0001(\f\u0012\u0011\n\tping_data\u0018\u0004 \u0001(\t\"w\n\u001dCMsgClientMMSSendLobbyChatMsg\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0017\n\u000fsteam_id_target\u0018\u0003 \u0001(\u0006\u0012\u0015\n\rlobby_message\u0018\u0004 \u0001(\f\"s\n\u0019CMsgClientMMSLobbyChatMsg\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0017\n\u000fsteam_id_sender\u0018\u0003 \u0001(\u0006\u0012\u0015\n\rlobby_message\u0018\u0004 \u0001(\f\"`\n\u001aCMsgClientMMSSetLobbyOwner\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u001a\n\u0012steam_id_new_owner\u0018\u0003 \u0001(\u0006\"`\n\"CMsgClientMMSSetLobbyOwnerResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0012\n\u0007eresult\u0018\u0003 \u0001(\u0005:\u00012\"^\n\u001bCMsgClientMMSSetLobbyLinked\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0017\n\u000fsteam_id_lobby2\u0018\u0003 \u0001(\u0006\"ë\u0001\n\u001fCMsgClientMMSSetLobbyGameServer\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012!\n\u0019deprecated_game_server_ip\u0018\u0003 \u0001(\r\u0012\u0018\n\u0010game_server_port\u0018\u0004 \u0001(\r\u0012\u001c\n\u0014game_server_steam_id\u0018\u0005 \u0001(\u0006\u0012&\n\u000egame_server_ip\u0018\u0006 \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u001d\n\u0015network_ping_location\u0018\u0007 \u0001(\t\"Ì\u0001\n\u001fCMsgClientMMSLobbyGameServerSet\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012!\n\u0019deprecated_game_server_ip\u0018\u0003 \u0001(\r\u0012\u0018\n\u0010game_server_port\u0018\u0004 \u0001(\r\u0012\u001c\n\u0014game_server_steam_id\u0018\u0005 \u0001(\u0006\u0012&\n\u000egame_server_ip\u0018\u0006 \u0001(\u000b2\u000e.CMsgIPAddress\"s\n\u001cCMsgClientMMSUserJoinedLobby\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0015\n\rsteam_id_user\u0018\u0003 \u0001(\u0006\u0012\u0014\n\fpersona_name\u0018\u0004 \u0001(\t\"q\n\u001aCMsgClientMMSUserLeftLobby\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0015\n\rsteam_id_user\u0018\u0003 \u0001(\u0006\u0012\u0014\n\fpersona_name\u0018\u0004 \u0001(\t\"c\n\u001aCMsgClientMMSInviteToLobby\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u001d\n\u0015steam_id_user_invited\u0018\u0003 \u0001(\u0006\"x\n\u001bCMsgClientMMSGetLobbyStatus\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012\u0018\n\u0010claim_membership\u0018\u0003 \u0001(\b\u0012\u0017\n\u000fclaim_ownership\u0018\u0004 \u0001(\b\"\u008f\u0001\n#CMsgClientMMSGetLobbyStatusResponse\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\r\u0012\u0016\n\u000esteam_id_lobby\u0018\u0002 \u0001(\u0006\u0012@\n\flobby_status\u0018\u0003 \u0001(\u000e2\u0010.EMMSLobbyStatus:\u0018k_EMMSLobbyStatusInvalid*\u0090\u0001\n\u000fEMMSLobbyStatus\u0012\u001c\n\u0018k_EMMSLobbyStatusInvalid\u0010\u0000\u0012\u001b\n\u0017k_EMMSLobbyStatusExists\u0010\u0001\u0012!\n\u001dk_EMMSLobbyStatusDoesNotExist\u0010\u0002\u0012\u001f\n\u001bk_EMMSLobbyStatusNotAMember\u0010\u0003B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientMMSSetRatelimitPolicyOnClient_descriptor = descriptor2;
        internal_static_CMsgClientMMSSetRatelimitPolicyOnClient_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"AppId", "EnableRateLimits", "SecondsPerMessage", "MillisecondsPerDataUpdate"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientMMSCreateLobby_descriptor = descriptor3;
        internal_static_CMsgClientMMSCreateLobby_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"AppId", "MaxMembers", "LobbyType", "LobbyFlags", "CellId", "DeprecatedPublicIp", "Metadata", "PersonaNameOwner", "PublicIp", "NetworkPingLocation"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientMMSCreateLobbyResponse_descriptor = descriptor4;
        internal_static_CMsgClientMMSCreateLobbyResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"AppId", "SteamIdLobby", "Eresult"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientMMSJoinLobby_descriptor = descriptor5;
        internal_static_CMsgClientMMSJoinLobby_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"AppId", "SteamIdLobby", "PersonaName", "NetworkPingLocation", "CellId"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientMMSJoinLobbyResponse_descriptor = descriptor6;
        internal_static_CMsgClientMMSJoinLobbyResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"AppId", "SteamIdLobby", "ChatRoomEnterResponse", "MaxMembers", "LobbyType", "LobbyFlags", "SteamIdOwner", "Metadata", "Members"});
        Descriptors.Descriptor descriptor7 = descriptor6.getNestedTypes().get(0);
        internal_static_CMsgClientMMSJoinLobbyResponse_Member_descriptor = descriptor7;
        internal_static_CMsgClientMMSJoinLobbyResponse_Member_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"SteamId", "PersonaName", "Metadata"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientMMSLeaveLobby_descriptor = descriptor8;
        internal_static_CMsgClientMMSLeaveLobby_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"AppId", "SteamIdLobby"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgClientMMSLeaveLobbyResponse_descriptor = descriptor9;
        internal_static_CMsgClientMMSLeaveLobbyResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"AppId", "SteamIdLobby", "Eresult"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientMMSGetLobbyList_descriptor = descriptor10;
        internal_static_CMsgClientMMSGetLobbyList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"AppId", "NumLobbiesRequested", "CellId", "DeprecatedPublicIp", "Filters", "PublicIp", "NetworkPingLocation"});
        Descriptors.Descriptor descriptor11 = descriptor10.getNestedTypes().get(0);
        internal_static_CMsgClientMMSGetLobbyList_Filter_descriptor = descriptor11;
        internal_static_CMsgClientMMSGetLobbyList_Filter_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Key", "Value", "Comparision", "FilterType"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(8);
        internal_static_CMsgClientMMSGetLobbyListResponse_descriptor = descriptor12;
        internal_static_CMsgClientMMSGetLobbyListResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"AppId", "Eresult", "Lobbies"});
        Descriptors.Descriptor descriptor13 = descriptor12.getNestedTypes().get(0);
        internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_descriptor = descriptor13;
        internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"SteamId", "MaxMembers", "LobbyType", "LobbyFlags", "Metadata", "NumMembers", "Distance", "Weight", "Ping", "MissingPing"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgClientMMSSetLobbyData_descriptor = descriptor14;
        internal_static_CMsgClientMMSSetLobbyData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"AppId", "SteamIdLobby", "SteamIdMember", "MaxMembers", "LobbyType", "LobbyFlags", "Metadata", "NetworkPingLocation"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgClientMMSSetLobbyDataResponse_descriptor = descriptor15;
        internal_static_CMsgClientMMSSetLobbyDataResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"AppId", "SteamIdLobby", "Eresult"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(11);
        internal_static_CMsgClientMMSGetLobbyData_descriptor = descriptor16;
        internal_static_CMsgClientMMSGetLobbyData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"AppId", "SteamIdLobby"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(12);
        internal_static_CMsgClientMMSLobbyData_descriptor = descriptor17;
        internal_static_CMsgClientMMSLobbyData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"AppId", "SteamIdLobby", "NumMembers", "MaxMembers", "LobbyType", "LobbyFlags", "SteamIdOwner", "Metadata", "Members", "LobbyCellid", "OwnerShouldAcceptChanges"});
        Descriptors.Descriptor descriptor18 = descriptor17.getNestedTypes().get(0);
        internal_static_CMsgClientMMSLobbyData_Member_descriptor = descriptor18;
        internal_static_CMsgClientMMSLobbyData_Member_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"SteamId", "PersonaName", "Metadata", "PingData"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(13);
        internal_static_CMsgClientMMSSendLobbyChatMsg_descriptor = descriptor19;
        internal_static_CMsgClientMMSSendLobbyChatMsg_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"AppId", "SteamIdLobby", "SteamIdTarget", "LobbyMessage"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(14);
        internal_static_CMsgClientMMSLobbyChatMsg_descriptor = descriptor20;
        internal_static_CMsgClientMMSLobbyChatMsg_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"AppId", "SteamIdLobby", "SteamIdSender", "LobbyMessage"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(15);
        internal_static_CMsgClientMMSSetLobbyOwner_descriptor = descriptor21;
        internal_static_CMsgClientMMSSetLobbyOwner_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"AppId", "SteamIdLobby", "SteamIdNewOwner"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(16);
        internal_static_CMsgClientMMSSetLobbyOwnerResponse_descriptor = descriptor22;
        internal_static_CMsgClientMMSSetLobbyOwnerResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"AppId", "SteamIdLobby", "Eresult"});
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(17);
        internal_static_CMsgClientMMSSetLobbyLinked_descriptor = descriptor23;
        internal_static_CMsgClientMMSSetLobbyLinked_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"AppId", "SteamIdLobby", "SteamIdLobby2"});
        Descriptors.Descriptor descriptor24 = getDescriptor().getMessageTypes().get(18);
        internal_static_CMsgClientMMSSetLobbyGameServer_descriptor = descriptor24;
        internal_static_CMsgClientMMSSetLobbyGameServer_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"AppId", "SteamIdLobby", "DeprecatedGameServerIp", "GameServerPort", "GameServerSteamId", "GameServerIp", "NetworkPingLocation"});
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(19);
        internal_static_CMsgClientMMSLobbyGameServerSet_descriptor = descriptor25;
        internal_static_CMsgClientMMSLobbyGameServerSet_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[]{"AppId", "SteamIdLobby", "DeprecatedGameServerIp", "GameServerPort", "GameServerSteamId", "GameServerIp"});
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(20);
        internal_static_CMsgClientMMSUserJoinedLobby_descriptor = descriptor26;
        internal_static_CMsgClientMMSUserJoinedLobby_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[]{"AppId", "SteamIdLobby", "SteamIdUser", "PersonaName"});
        Descriptors.Descriptor descriptor27 = getDescriptor().getMessageTypes().get(21);
        internal_static_CMsgClientMMSUserLeftLobby_descriptor = descriptor27;
        internal_static_CMsgClientMMSUserLeftLobby_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"AppId", "SteamIdLobby", "SteamIdUser", "PersonaName"});
        Descriptors.Descriptor descriptor28 = getDescriptor().getMessageTypes().get(22);
        internal_static_CMsgClientMMSInviteToLobby_descriptor = descriptor28;
        internal_static_CMsgClientMMSInviteToLobby_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor28, new String[]{"AppId", "SteamIdLobby", "SteamIdUserInvited"});
        Descriptors.Descriptor descriptor29 = getDescriptor().getMessageTypes().get(23);
        internal_static_CMsgClientMMSGetLobbyStatus_descriptor = descriptor29;
        internal_static_CMsgClientMMSGetLobbyStatus_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor29, new String[]{"AppId", "SteamIdLobby", "ClaimMembership", "ClaimOwnership"});
        Descriptors.Descriptor descriptor30 = getDescriptor().getMessageTypes().get(24);
        internal_static_CMsgClientMMSGetLobbyStatusResponse_descriptor = descriptor30;
        internal_static_CMsgClientMMSGetLobbyStatusResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor30, new String[]{"AppId", "SteamIdLobby", "LobbyStatus"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientMMSCreateLobby extends GeneratedMessage implements CMsgClientMMSCreateLobbyOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        public static final int CELL_ID_FIELD_NUMBER = 5;
        private static final CMsgClientMMSCreateLobby DEFAULT_INSTANCE;
        public static final int DEPRECATED_PUBLIC_IP_FIELD_NUMBER = 6;
        public static final int LOBBY_FLAGS_FIELD_NUMBER = 4;
        public static final int LOBBY_TYPE_FIELD_NUMBER = 3;
        public static final int MAX_MEMBERS_FIELD_NUMBER = 2;
        public static final int METADATA_FIELD_NUMBER = 7;
        public static final int NETWORK_PING_LOCATION_FIELD_NUMBER = 10;
        private static final Parser<CMsgClientMMSCreateLobby> PARSER;
        public static final int PERSONA_NAME_OWNER_FIELD_NUMBER = 8;
        public static final int PUBLIC_IP_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int cellId_;
        private int deprecatedPublicIp_;
        private int lobbyFlags_;
        private int lobbyType_;
        private int maxMembers_;
        private byte memoizedIsInitialized;
        private ByteString metadata_;
        private volatile Object networkPingLocation_;
        private volatile Object personaNameOwner_;
        private SteammessagesBase.CMsgIPAddress publicIp_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSCreateLobby.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSCreateLobby();
            PARSER = new AbstractParser<CMsgClientMMSCreateLobby>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobby.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSCreateLobby parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSCreateLobby.newBuilder();
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

        private CMsgClientMMSCreateLobby(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            this.cellId_ = 0;
            this.deprecatedPublicIp_ = 0;
            this.metadata_ = ByteString.EMPTY;
            this.personaNameOwner_ = "";
            this.networkPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSCreateLobby() {
            this.appId_ = 0;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            this.cellId_ = 0;
            this.deprecatedPublicIp_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.metadata_ = byteString;
            this.personaNameOwner_ = "";
            this.networkPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.metadata_ = byteString;
            this.personaNameOwner_ = "";
            this.networkPingLocation_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobby_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSCreateLobby.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasMaxMembers() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public int getMaxMembers() {
            return this.maxMembers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasLobbyType() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public int getLobbyType() {
            return this.lobbyType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasLobbyFlags() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public int getLobbyFlags() {
            return this.lobbyFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasCellId() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public int getCellId() {
            return this.cellId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasDeprecatedPublicIp() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public int getDeprecatedPublicIp() {
            return this.deprecatedPublicIp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasMetadata() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public ByteString getMetadata() {
            return this.metadata_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasPersonaNameOwner() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public String getPersonaNameOwner() {
            Object obj = this.personaNameOwner_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.personaNameOwner_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public ByteString getPersonaNameOwnerBytes() {
            Object obj = this.personaNameOwner_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.personaNameOwner_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasPublicIp() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public SteammessagesBase.CMsgIPAddress getPublicIp() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public boolean hasNetworkPingLocation() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public String getNetworkPingLocation() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.networkPingLocation_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
        public ByteString getNetworkPingLocationBytes() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.networkPingLocation_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.appId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.maxMembers_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.lobbyType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.cellId_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.deprecatedPublicIp_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBytes(7, this.metadata_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.personaNameOwner_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeMessage(9, getPublicIp());
            }
            if ((this.bitField0_ & 512) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 10, this.networkPingLocation_);
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
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(2, this.maxMembers_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.lobbyType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(4, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.cellId_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.deprecatedPublicIp_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(7, this.metadata_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(8, this.personaNameOwner_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(9, getPublicIp());
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(10, this.networkPingLocation_);
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
            if (!(obj instanceof CMsgClientMMSCreateLobby)) {
                return super.equals(obj);
            }
            CMsgClientMMSCreateLobby cMsgClientMMSCreateLobby = (CMsgClientMMSCreateLobby) obj;
            if (hasAppId() != cMsgClientMMSCreateLobby.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSCreateLobby.getAppId()) || hasMaxMembers() != cMsgClientMMSCreateLobby.hasMaxMembers()) {
                return false;
            }
            if ((hasMaxMembers() && getMaxMembers() != cMsgClientMMSCreateLobby.getMaxMembers()) || hasLobbyType() != cMsgClientMMSCreateLobby.hasLobbyType()) {
                return false;
            }
            if ((hasLobbyType() && getLobbyType() != cMsgClientMMSCreateLobby.getLobbyType()) || hasLobbyFlags() != cMsgClientMMSCreateLobby.hasLobbyFlags()) {
                return false;
            }
            if ((hasLobbyFlags() && getLobbyFlags() != cMsgClientMMSCreateLobby.getLobbyFlags()) || hasCellId() != cMsgClientMMSCreateLobby.hasCellId()) {
                return false;
            }
            if ((hasCellId() && getCellId() != cMsgClientMMSCreateLobby.getCellId()) || hasDeprecatedPublicIp() != cMsgClientMMSCreateLobby.hasDeprecatedPublicIp()) {
                return false;
            }
            if ((hasDeprecatedPublicIp() && getDeprecatedPublicIp() != cMsgClientMMSCreateLobby.getDeprecatedPublicIp()) || hasMetadata() != cMsgClientMMSCreateLobby.hasMetadata()) {
                return false;
            }
            if ((hasMetadata() && !getMetadata().equals(cMsgClientMMSCreateLobby.getMetadata())) || hasPersonaNameOwner() != cMsgClientMMSCreateLobby.hasPersonaNameOwner()) {
                return false;
            }
            if ((hasPersonaNameOwner() && !getPersonaNameOwner().equals(cMsgClientMMSCreateLobby.getPersonaNameOwner())) || hasPublicIp() != cMsgClientMMSCreateLobby.hasPublicIp()) {
                return false;
            }
            if ((!hasPublicIp() || getPublicIp().equals(cMsgClientMMSCreateLobby.getPublicIp())) && hasNetworkPingLocation() == cMsgClientMMSCreateLobby.hasNetworkPingLocation()) {
                return (!hasNetworkPingLocation() || getNetworkPingLocation().equals(cMsgClientMMSCreateLobby.getNetworkPingLocation())) && getUnknownFields().equals(cMsgClientMMSCreateLobby.getUnknownFields());
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
            if (hasMaxMembers()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMaxMembers();
            }
            if (hasLobbyType()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getLobbyType();
            }
            if (hasLobbyFlags()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getLobbyFlags();
            }
            if (hasCellId()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getCellId();
            }
            if (hasDeprecatedPublicIp()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getDeprecatedPublicIp();
            }
            if (hasMetadata()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getMetadata().hashCode();
            }
            if (hasPersonaNameOwner()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getPersonaNameOwner().hashCode();
            }
            if (hasPublicIp()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getPublicIp().hashCode();
            }
            if (hasNetworkPingLocation()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getNetworkPingLocation().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSCreateLobby parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSCreateLobby parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobby parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSCreateLobby parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobby parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSCreateLobby parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobby parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSCreateLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSCreateLobby parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSCreateLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobby parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSCreateLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSCreateLobby parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSCreateLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobby parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSCreateLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSCreateLobby parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSCreateLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSCreateLobby cMsgClientMMSCreateLobby) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSCreateLobby);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSCreateLobbyOrBuilder {
            private int appId_;
            private int bitField0_;
            private int cellId_;
            private int deprecatedPublicIp_;
            private int lobbyFlags_;
            private int lobbyType_;
            private int maxMembers_;
            private ByteString metadata_;
            private Object networkPingLocation_;
            private Object personaNameOwner_;
            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> publicIpBuilder_;
            private SteammessagesBase.CMsgIPAddress publicIp_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobby_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSCreateLobby.class, Builder.class);
            }

            private Builder() {
                this.metadata_ = ByteString.EMPTY;
                this.personaNameOwner_ = "";
                this.networkPingLocation_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.metadata_ = ByteString.EMPTY;
                this.personaNameOwner_ = "";
                this.networkPingLocation_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetPublicIpFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.maxMembers_ = 0;
                this.lobbyType_ = 0;
                this.lobbyFlags_ = 0;
                this.cellId_ = 0;
                this.deprecatedPublicIp_ = 0;
                this.metadata_ = ByteString.EMPTY;
                this.personaNameOwner_ = "";
                this.publicIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.publicIpBuilder_ = null;
                }
                this.networkPingLocation_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobby_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSCreateLobby getDefaultInstanceForType() {
                return CMsgClientMMSCreateLobby.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSCreateLobby build() {
                CMsgClientMMSCreateLobby cMsgClientMMSCreateLobbyBuildPartial = buildPartial();
                if (cMsgClientMMSCreateLobbyBuildPartial.isInitialized()) {
                    return cMsgClientMMSCreateLobbyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSCreateLobbyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSCreateLobby buildPartial() {
                CMsgClientMMSCreateLobby cMsgClientMMSCreateLobby = new CMsgClientMMSCreateLobby(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSCreateLobby);
                }
                onBuilt();
                return cMsgClientMMSCreateLobby;
            }

            private void buildPartial0(CMsgClientMMSCreateLobby cMsgClientMMSCreateLobby) {
                int i;
                SteammessagesBase.CMsgIPAddress cMsgIPAddress;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSCreateLobby.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSCreateLobby.maxMembers_ = this.maxMembers_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSCreateLobby.lobbyType_ = this.lobbyType_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSCreateLobby.lobbyFlags_ = this.lobbyFlags_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientMMSCreateLobby.cellId_ = this.cellId_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientMMSCreateLobby.deprecatedPublicIp_ = this.deprecatedPublicIp_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientMMSCreateLobby.metadata_ = this.metadata_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientMMSCreateLobby.personaNameOwner_ = this.personaNameOwner_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                    if (singleFieldBuilder == null) {
                        cMsgIPAddress = this.publicIp_;
                    } else {
                        cMsgIPAddress = (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.build();
                    }
                    cMsgClientMMSCreateLobby.publicIp_ = cMsgIPAddress;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgClientMMSCreateLobby.networkPingLocation_ = this.networkPingLocation_;
                    i |= 512;
                }
                cMsgClientMMSCreateLobby.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSCreateLobby) {
                    return mergeFrom((CMsgClientMMSCreateLobby) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSCreateLobby cMsgClientMMSCreateLobby) {
                if (cMsgClientMMSCreateLobby == CMsgClientMMSCreateLobby.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSCreateLobby.hasAppId()) {
                    setAppId(cMsgClientMMSCreateLobby.getAppId());
                }
                if (cMsgClientMMSCreateLobby.hasMaxMembers()) {
                    setMaxMembers(cMsgClientMMSCreateLobby.getMaxMembers());
                }
                if (cMsgClientMMSCreateLobby.hasLobbyType()) {
                    setLobbyType(cMsgClientMMSCreateLobby.getLobbyType());
                }
                if (cMsgClientMMSCreateLobby.hasLobbyFlags()) {
                    setLobbyFlags(cMsgClientMMSCreateLobby.getLobbyFlags());
                }
                if (cMsgClientMMSCreateLobby.hasCellId()) {
                    setCellId(cMsgClientMMSCreateLobby.getCellId());
                }
                if (cMsgClientMMSCreateLobby.hasDeprecatedPublicIp()) {
                    setDeprecatedPublicIp(cMsgClientMMSCreateLobby.getDeprecatedPublicIp());
                }
                if (cMsgClientMMSCreateLobby.hasMetadata()) {
                    setMetadata(cMsgClientMMSCreateLobby.getMetadata());
                }
                if (cMsgClientMMSCreateLobby.hasPersonaNameOwner()) {
                    this.personaNameOwner_ = cMsgClientMMSCreateLobby.personaNameOwner_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                if (cMsgClientMMSCreateLobby.hasPublicIp()) {
                    mergePublicIp(cMsgClientMMSCreateLobby.getPublicIp());
                }
                if (cMsgClientMMSCreateLobby.hasNetworkPingLocation()) {
                    this.networkPingLocation_ = cMsgClientMMSCreateLobby.networkPingLocation_;
                    this.bitField0_ |= 512;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientMMSCreateLobby.getUnknownFields());
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
                            switch (tag) {
                                case 0:
                                    z = true;
                                    break;
                                case 8:
                                    this.appId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.maxMembers_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.lobbyType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 32:
                                    this.lobbyFlags_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.cellId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.deprecatedPublicIp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER /* 58 */:
                                    this.metadata_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.personaNameOwner_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 74:
                                    codedInputStream.readMessage(internalGetPublicIpFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 256;
                                    break;
                                case 82:
                                    this.networkPingLocation_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 512;
                                    break;
                                default:
                                    if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                        z = true;
                                    }
                                    break;
                            }
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasMaxMembers() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public int getMaxMembers() {
                return this.maxMembers_;
            }

            public Builder setMaxMembers(int i) {
                this.maxMembers_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMaxMembers() {
                this.bitField0_ &= -3;
                this.maxMembers_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasLobbyType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public int getLobbyType() {
                return this.lobbyType_;
            }

            public Builder setLobbyType(int i) {
                this.lobbyType_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearLobbyType() {
                this.bitField0_ &= -5;
                this.lobbyType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasLobbyFlags() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public int getLobbyFlags() {
                return this.lobbyFlags_;
            }

            public Builder setLobbyFlags(int i) {
                this.lobbyFlags_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearLobbyFlags() {
                this.bitField0_ &= -9;
                this.lobbyFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasCellId() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public int getCellId() {
                return this.cellId_;
            }

            public Builder setCellId(int i) {
                this.cellId_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearCellId() {
                this.bitField0_ &= -17;
                this.cellId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasDeprecatedPublicIp() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public int getDeprecatedPublicIp() {
                return this.deprecatedPublicIp_;
            }

            public Builder setDeprecatedPublicIp(int i) {
                this.deprecatedPublicIp_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearDeprecatedPublicIp() {
                this.bitField0_ &= -33;
                this.deprecatedPublicIp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasMetadata() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public ByteString getMetadata() {
                return this.metadata_;
            }

            public Builder setMetadata(ByteString byteString) {
                byteString.getClass();
                this.metadata_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearMetadata() {
                this.bitField0_ &= -65;
                this.metadata_ = CMsgClientMMSCreateLobby.getDefaultInstance().getMetadata();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasPersonaNameOwner() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public String getPersonaNameOwner() {
                Object obj = this.personaNameOwner_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.personaNameOwner_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public ByteString getPersonaNameOwnerBytes() {
                Object obj = this.personaNameOwner_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.personaNameOwner_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPersonaNameOwner(String str) {
                str.getClass();
                this.personaNameOwner_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearPersonaNameOwner() {
                this.personaNameOwner_ = CMsgClientMMSCreateLobby.getDefaultInstance().getPersonaNameOwner();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setPersonaNameOwnerBytes(ByteString byteString) {
                byteString.getClass();
                this.personaNameOwner_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasPublicIp() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public SteammessagesBase.CMsgIPAddress getPublicIp() {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
                    return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
                }
                return (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.getMessage();
            }

            public Builder setPublicIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    cMsgIPAddress.getClass();
                    this.publicIp_ = cMsgIPAddress;
                } else {
                    singleFieldBuilder.setMessage(cMsgIPAddress);
                }
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder setPublicIp(SteammessagesBase.CMsgIPAddress.Builder builder) {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    this.publicIp_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder mergePublicIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SteammessagesBase.CMsgIPAddress cMsgIPAddress2;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 256) != 0 && (cMsgIPAddress2 = this.publicIp_) != null && cMsgIPAddress2 != SteammessagesBase.CMsgIPAddress.getDefaultInstance()) {
                        getPublicIpBuilder().mergeFrom(cMsgIPAddress);
                    } else {
                        this.publicIp_ = cMsgIPAddress;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cMsgIPAddress);
                }
                if (this.publicIp_ != null) {
                    this.bitField0_ |= 256;
                    onChanged();
                }
                return this;
            }

            public Builder clearPublicIp() {
                this.bitField0_ &= -257;
                this.publicIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.publicIpBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesBase.CMsgIPAddress.Builder getPublicIpBuilder() {
                this.bitField0_ |= 256;
                onChanged();
                return (SteammessagesBase.CMsgIPAddress.Builder) internalGetPublicIpFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder() {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesBase.CMsgIPAddressOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
                return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
            }

            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> internalGetPublicIpFieldBuilder() {
                if (this.publicIpBuilder_ == null) {
                    this.publicIpBuilder_ = new SingleFieldBuilder<>(getPublicIp(), getParentForChildren(), isClean());
                    this.publicIp_ = null;
                }
                return this.publicIpBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public boolean hasNetworkPingLocation() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public String getNetworkPingLocation() {
                Object obj = this.networkPingLocation_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.networkPingLocation_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyOrBuilder
            public ByteString getNetworkPingLocationBytes() {
                Object obj = this.networkPingLocation_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.networkPingLocation_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setNetworkPingLocation(String str) {
                str.getClass();
                this.networkPingLocation_ = str;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearNetworkPingLocation() {
                this.networkPingLocation_ = CMsgClientMMSCreateLobby.getDefaultInstance().getNetworkPingLocation();
                this.bitField0_ &= -513;
                onChanged();
                return this;
            }

            public Builder setNetworkPingLocationBytes(ByteString byteString) {
                byteString.getClass();
                this.networkPingLocation_ = byteString;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSCreateLobby getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSCreateLobby> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSCreateLobby> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSCreateLobby getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSCreateLobbyResponse extends GeneratedMessage implements CMsgClientMMSCreateLobbyResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSCreateLobbyResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientMMSCreateLobbyResponse> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSCreateLobbyResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSCreateLobbyResponse();
            PARSER = new AbstractParser<CMsgClientMMSCreateLobbyResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSCreateLobbyResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSCreateLobbyResponse.newBuilder();
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

        private CMsgClientMMSCreateLobbyResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.eresult_ = 2;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSCreateLobbyResponse() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobbyResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobbyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSCreateLobbyResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.eresult_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.eresult_);
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
            if (!(obj instanceof CMsgClientMMSCreateLobbyResponse)) {
                return super.equals(obj);
            }
            CMsgClientMMSCreateLobbyResponse cMsgClientMMSCreateLobbyResponse = (CMsgClientMMSCreateLobbyResponse) obj;
            if (hasAppId() != cMsgClientMMSCreateLobbyResponse.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSCreateLobbyResponse.getAppId()) || hasSteamIdLobby() != cMsgClientMMSCreateLobbyResponse.hasSteamIdLobby()) {
                return false;
            }
            if ((!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSCreateLobbyResponse.getSteamIdLobby()) && hasEresult() == cMsgClientMMSCreateLobbyResponse.hasEresult()) {
                return (!hasEresult() || getEresult() == cMsgClientMMSCreateLobbyResponse.getEresult()) && getUnknownFields().equals(cMsgClientMMSCreateLobbyResponse.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getEresult();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSCreateLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSCreateLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobbyResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSCreateLobbyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSCreateLobbyResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSCreateLobbyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSCreateLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSCreateLobbyResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSCreateLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSCreateLobbyResponse cMsgClientMMSCreateLobbyResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSCreateLobbyResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSCreateLobbyResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int eresult_;
            private long steamIdLobby_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobbyResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobbyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSCreateLobbyResponse.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.eresult_ = 2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSCreateLobbyResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSCreateLobbyResponse getDefaultInstanceForType() {
                return CMsgClientMMSCreateLobbyResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSCreateLobbyResponse build() {
                CMsgClientMMSCreateLobbyResponse cMsgClientMMSCreateLobbyResponseBuildPartial = buildPartial();
                if (cMsgClientMMSCreateLobbyResponseBuildPartial.isInitialized()) {
                    return cMsgClientMMSCreateLobbyResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSCreateLobbyResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSCreateLobbyResponse buildPartial() {
                CMsgClientMMSCreateLobbyResponse cMsgClientMMSCreateLobbyResponse = new CMsgClientMMSCreateLobbyResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSCreateLobbyResponse);
                }
                onBuilt();
                return cMsgClientMMSCreateLobbyResponse;
            }

            private void buildPartial0(CMsgClientMMSCreateLobbyResponse cMsgClientMMSCreateLobbyResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSCreateLobbyResponse.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSCreateLobbyResponse.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSCreateLobbyResponse.eresult_ = this.eresult_;
                    i |= 4;
                }
                cMsgClientMMSCreateLobbyResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSCreateLobbyResponse) {
                    return mergeFrom((CMsgClientMMSCreateLobbyResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSCreateLobbyResponse cMsgClientMMSCreateLobbyResponse) {
                if (cMsgClientMMSCreateLobbyResponse == CMsgClientMMSCreateLobbyResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSCreateLobbyResponse.hasAppId()) {
                    setAppId(cMsgClientMMSCreateLobbyResponse.getAppId());
                }
                if (cMsgClientMMSCreateLobbyResponse.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSCreateLobbyResponse.getSteamIdLobby());
                }
                if (cMsgClientMMSCreateLobbyResponse.hasEresult()) {
                    setEresult(cMsgClientMMSCreateLobbyResponse.getEresult());
                }
                mergeUnknownFields(cMsgClientMMSCreateLobbyResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.eresult_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSCreateLobbyResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -5;
                this.eresult_ = 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSCreateLobbyResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSCreateLobbyResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSCreateLobbyResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSCreateLobbyResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSJoinLobby extends GeneratedMessage implements CMsgClientMMSJoinLobbyOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        public static final int CELL_ID_FIELD_NUMBER = 5;
        private static final CMsgClientMMSJoinLobby DEFAULT_INSTANCE;
        public static final int NETWORK_PING_LOCATION_FIELD_NUMBER = 4;
        private static final Parser<CMsgClientMMSJoinLobby> PARSER;
        public static final int PERSONA_NAME_FIELD_NUMBER = 3;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int cellId_;
        private byte memoizedIsInitialized;
        private volatile Object networkPingLocation_;
        private volatile Object personaName_;
        private long steamIdLobby_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSJoinLobby.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSJoinLobby();
            PARSER = new AbstractParser<CMsgClientMMSJoinLobby>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobby.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSJoinLobby parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSJoinLobby.newBuilder();
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

        private CMsgClientMMSJoinLobby(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.personaName_ = "";
            this.networkPingLocation_ = "";
            this.cellId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSJoinLobby() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.personaName_ = "";
            this.networkPingLocation_ = "";
            this.cellId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.personaName_ = "";
            this.networkPingLocation_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobby_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSJoinLobby.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public boolean hasPersonaName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public String getPersonaName() {
            Object obj = this.personaName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.personaName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public ByteString getPersonaNameBytes() {
            Object obj = this.personaName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.personaName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public boolean hasNetworkPingLocation() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public String getNetworkPingLocation() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.networkPingLocation_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public ByteString getNetworkPingLocationBytes() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.networkPingLocation_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public boolean hasCellId() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
        public int getCellId() {
            return this.cellId_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.personaName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.networkPingLocation_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.cellId_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.personaName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.networkPingLocation_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.cellId_);
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
            if (!(obj instanceof CMsgClientMMSJoinLobby)) {
                return super.equals(obj);
            }
            CMsgClientMMSJoinLobby cMsgClientMMSJoinLobby = (CMsgClientMMSJoinLobby) obj;
            if (hasAppId() != cMsgClientMMSJoinLobby.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSJoinLobby.getAppId()) || hasSteamIdLobby() != cMsgClientMMSJoinLobby.hasSteamIdLobby()) {
                return false;
            }
            if ((hasSteamIdLobby() && getSteamIdLobby() != cMsgClientMMSJoinLobby.getSteamIdLobby()) || hasPersonaName() != cMsgClientMMSJoinLobby.hasPersonaName()) {
                return false;
            }
            if ((hasPersonaName() && !getPersonaName().equals(cMsgClientMMSJoinLobby.getPersonaName())) || hasNetworkPingLocation() != cMsgClientMMSJoinLobby.hasNetworkPingLocation()) {
                return false;
            }
            if ((!hasNetworkPingLocation() || getNetworkPingLocation().equals(cMsgClientMMSJoinLobby.getNetworkPingLocation())) && hasCellId() == cMsgClientMMSJoinLobby.hasCellId()) {
                return (!hasCellId() || getCellId() == cMsgClientMMSJoinLobby.getCellId()) && getUnknownFields().equals(cMsgClientMMSJoinLobby.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasPersonaName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPersonaName().hashCode();
            }
            if (hasNetworkPingLocation()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getNetworkPingLocation().hashCode();
            }
            if (hasCellId()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getCellId();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSJoinLobby parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSJoinLobby parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobby parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSJoinLobby parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobby parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSJoinLobby parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobby parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSJoinLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSJoinLobby parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSJoinLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobby parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSJoinLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSJoinLobby parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSJoinLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobby parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSJoinLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSJoinLobby parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSJoinLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSJoinLobby cMsgClientMMSJoinLobby) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSJoinLobby);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSJoinLobbyOrBuilder {
            private int appId_;
            private int bitField0_;
            private int cellId_;
            private Object networkPingLocation_;
            private Object personaName_;
            private long steamIdLobby_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobby_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSJoinLobby.class, Builder.class);
            }

            private Builder() {
                this.personaName_ = "";
                this.networkPingLocation_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.personaName_ = "";
                this.networkPingLocation_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.personaName_ = "";
                this.networkPingLocation_ = "";
                this.cellId_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobby_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSJoinLobby getDefaultInstanceForType() {
                return CMsgClientMMSJoinLobby.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSJoinLobby build() {
                CMsgClientMMSJoinLobby cMsgClientMMSJoinLobbyBuildPartial = buildPartial();
                if (cMsgClientMMSJoinLobbyBuildPartial.isInitialized()) {
                    return cMsgClientMMSJoinLobbyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSJoinLobbyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSJoinLobby buildPartial() {
                CMsgClientMMSJoinLobby cMsgClientMMSJoinLobby = new CMsgClientMMSJoinLobby(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSJoinLobby);
                }
                onBuilt();
                return cMsgClientMMSJoinLobby;
            }

            private void buildPartial0(CMsgClientMMSJoinLobby cMsgClientMMSJoinLobby) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSJoinLobby.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSJoinLobby.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSJoinLobby.personaName_ = this.personaName_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSJoinLobby.networkPingLocation_ = this.networkPingLocation_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientMMSJoinLobby.cellId_ = this.cellId_;
                    i |= 16;
                }
                cMsgClientMMSJoinLobby.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSJoinLobby) {
                    return mergeFrom((CMsgClientMMSJoinLobby) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSJoinLobby cMsgClientMMSJoinLobby) {
                if (cMsgClientMMSJoinLobby == CMsgClientMMSJoinLobby.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSJoinLobby.hasAppId()) {
                    setAppId(cMsgClientMMSJoinLobby.getAppId());
                }
                if (cMsgClientMMSJoinLobby.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSJoinLobby.getSteamIdLobby());
                }
                if (cMsgClientMMSJoinLobby.hasPersonaName()) {
                    this.personaName_ = cMsgClientMMSJoinLobby.personaName_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cMsgClientMMSJoinLobby.hasNetworkPingLocation()) {
                    this.networkPingLocation_ = cMsgClientMMSJoinLobby.networkPingLocation_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cMsgClientMMSJoinLobby.hasCellId()) {
                    setCellId(cMsgClientMMSJoinLobby.getCellId());
                }
                mergeUnknownFields(cMsgClientMMSJoinLobby.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.personaName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.networkPingLocation_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.cellId_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public boolean hasPersonaName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public String getPersonaName() {
                Object obj = this.personaName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.personaName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public ByteString getPersonaNameBytes() {
                Object obj = this.personaName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.personaName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPersonaName(String str) {
                str.getClass();
                this.personaName_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPersonaName() {
                this.personaName_ = CMsgClientMMSJoinLobby.getDefaultInstance().getPersonaName();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setPersonaNameBytes(ByteString byteString) {
                byteString.getClass();
                this.personaName_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public boolean hasNetworkPingLocation() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public String getNetworkPingLocation() {
                Object obj = this.networkPingLocation_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.networkPingLocation_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public ByteString getNetworkPingLocationBytes() {
                Object obj = this.networkPingLocation_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.networkPingLocation_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setNetworkPingLocation(String str) {
                str.getClass();
                this.networkPingLocation_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearNetworkPingLocation() {
                this.networkPingLocation_ = CMsgClientMMSJoinLobby.getDefaultInstance().getNetworkPingLocation();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setNetworkPingLocationBytes(ByteString byteString) {
                byteString.getClass();
                this.networkPingLocation_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public boolean hasCellId() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyOrBuilder
            public int getCellId() {
                return this.cellId_;
            }

            public Builder setCellId(int i) {
                this.cellId_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearCellId() {
                this.bitField0_ &= -17;
                this.cellId_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSJoinLobby getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSJoinLobby> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSJoinLobby> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSJoinLobby getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSJoinLobbyResponse extends GeneratedMessage implements CMsgClientMMSJoinLobbyResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        public static final int CHAT_ROOM_ENTER_RESPONSE_FIELD_NUMBER = 3;
        private static final CMsgClientMMSJoinLobbyResponse DEFAULT_INSTANCE;
        public static final int LOBBY_FLAGS_FIELD_NUMBER = 6;
        public static final int LOBBY_TYPE_FIELD_NUMBER = 5;
        public static final int MAX_MEMBERS_FIELD_NUMBER = 4;
        public static final int MEMBERS_FIELD_NUMBER = 9;
        public static final int METADATA_FIELD_NUMBER = 8;
        private static final Parser<CMsgClientMMSJoinLobbyResponse> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        public static final int STEAM_ID_OWNER_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int chatRoomEnterResponse_;
        private int lobbyFlags_;
        private int lobbyType_;
        private int maxMembers_;
        private List<Member> members_;
        private byte memoizedIsInitialized;
        private ByteString metadata_;
        private long steamIdLobby_;
        private long steamIdOwner_;

        public interface MemberOrBuilder extends MessageOrBuilder {
            ByteString getMetadata();

            String getPersonaName();

            ByteString getPersonaNameBytes();

            long getSteamId();

            boolean hasMetadata();

            boolean hasPersonaName();

            boolean hasSteamId();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSJoinLobbyResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSJoinLobbyResponse();
            PARSER = new AbstractParser<CMsgClientMMSJoinLobbyResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSJoinLobbyResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSJoinLobbyResponse.newBuilder();
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

        private CMsgClientMMSJoinLobbyResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.chatRoomEnterResponse_ = 0;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            this.steamIdOwner_ = 0L;
            this.metadata_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSJoinLobbyResponse() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.chatRoomEnterResponse_ = 0;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            this.steamIdOwner_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.metadata_ = byteString;
            this.members_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSJoinLobbyResponse.class, Builder.class);
        }

        public static final class Member extends GeneratedMessage implements MemberOrBuilder {
            private static final Member DEFAULT_INSTANCE;
            public static final int METADATA_FIELD_NUMBER = 3;
            private static final Parser<Member> PARSER;
            public static final int PERSONA_NAME_FIELD_NUMBER = 2;
            public static final int STEAM_ID_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private ByteString metadata_;
            private volatile Object personaName_;
            private long steamId_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Member.class.getName());
                DEFAULT_INSTANCE = new Member();
                PARSER = new AbstractParser<Member>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.Member.1
                    @Override // com.google.protobuf.Parser
                    public Member parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Member.newBuilder();
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

            private Member(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.steamId_ = 0L;
                this.personaName_ = "";
                this.metadata_ = ByteString.EMPTY;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Member() {
                this.steamId_ = 0L;
                this.personaName_ = "";
                ByteString byteString = ByteString.EMPTY;
                this.metadata_ = byteString;
                this.memoizedIsInitialized = (byte) -1;
                this.personaName_ = "";
                this.metadata_ = byteString;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_Member_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_Member_fieldAccessorTable.ensureFieldAccessorsInitialized(Member.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
            public boolean hasSteamId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
            public long getSteamId() {
                return this.steamId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
            public boolean hasPersonaName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
            public String getPersonaName() {
                Object obj = this.personaName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.personaName_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
            public ByteString getPersonaNameBytes() {
                Object obj = this.personaName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.personaName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
            public boolean hasMetadata() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
            public ByteString getMetadata() {
                return this.metadata_;
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
                    codedOutputStream.writeFixed64(1, this.steamId_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 2, this.personaName_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBytes(3, this.metadata_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamId_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.personaName_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBytesSize(3, this.metadata_);
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
                if (!(obj instanceof Member)) {
                    return super.equals(obj);
                }
                Member member = (Member) obj;
                if (hasSteamId() != member.hasSteamId()) {
                    return false;
                }
                if ((hasSteamId() && getSteamId() != member.getSteamId()) || hasPersonaName() != member.hasPersonaName()) {
                    return false;
                }
                if ((!hasPersonaName() || getPersonaName().equals(member.getPersonaName())) && hasMetadata() == member.hasMetadata()) {
                    return (!hasMetadata() || getMetadata().equals(member.getMetadata())) && getUnknownFields().equals(member.getUnknownFields());
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
                if (hasSteamId()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamId());
                }
                if (hasPersonaName()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getPersonaName().hashCode();
                }
                if (hasMetadata()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getMetadata().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Member parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Member parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Member parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Member parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Member parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Member parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Member parseFrom(InputStream inputStream) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Member parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Member parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Member) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Member parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Member) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Member parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Member parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Member member) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(member);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements MemberOrBuilder {
                private int bitField0_;
                private ByteString metadata_;
                private Object personaName_;
                private long steamId_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_Member_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_Member_fieldAccessorTable.ensureFieldAccessorsInitialized(Member.class, Builder.class);
                }

                private Builder() {
                    this.personaName_ = "";
                    this.metadata_ = ByteString.EMPTY;
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.personaName_ = "";
                    this.metadata_ = ByteString.EMPTY;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.steamId_ = 0L;
                    this.personaName_ = "";
                    this.metadata_ = ByteString.EMPTY;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_Member_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Member getDefaultInstanceForType() {
                    return Member.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Member build() {
                    Member memberBuildPartial = buildPartial();
                    if (memberBuildPartial.isInitialized()) {
                        return memberBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) memberBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Member buildPartial() {
                    Member member = new Member(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(member);
                    }
                    onBuilt();
                    return member;
                }

                private void buildPartial0(Member member) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        member.steamId_ = this.steamId_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        member.personaName_ = this.personaName_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        member.metadata_ = this.metadata_;
                        i |= 4;
                    }
                    member.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Member) {
                        return mergeFrom((Member) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Member member) {
                    if (member == Member.getDefaultInstance()) {
                        return this;
                    }
                    if (member.hasSteamId()) {
                        setSteamId(member.getSteamId());
                    }
                    if (member.hasPersonaName()) {
                        this.personaName_ = member.personaName_;
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    if (member.hasMetadata()) {
                        setMetadata(member.getMetadata());
                    }
                    mergeUnknownFields(member.getUnknownFields());
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
                                        this.steamId_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 18) {
                                        this.personaName_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 26) {
                                        this.metadata_ = codedInputStream.readBytes();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
                public boolean hasSteamId() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
                public long getSteamId() {
                    return this.steamId_;
                }

                public Builder setSteamId(long j) {
                    this.steamId_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearSteamId() {
                    this.bitField0_ &= -2;
                    this.steamId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
                public boolean hasPersonaName() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
                public String getPersonaName() {
                    Object obj = this.personaName_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.personaName_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
                public ByteString getPersonaNameBytes() {
                    Object obj = this.personaName_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.personaName_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setPersonaName(String str) {
                    str.getClass();
                    this.personaName_ = str;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearPersonaName() {
                    this.personaName_ = Member.getDefaultInstance().getPersonaName();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder setPersonaNameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.personaName_ = byteString;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
                public boolean hasMetadata() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponse.MemberOrBuilder
                public ByteString getMetadata() {
                    return this.metadata_;
                }

                public Builder setMetadata(ByteString byteString) {
                    byteString.getClass();
                    this.metadata_ = byteString;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearMetadata() {
                    this.bitField0_ &= -5;
                    this.metadata_ = Member.getDefaultInstance().getMetadata();
                    onChanged();
                    return this;
                }
            }

            public static Member getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Member> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Member> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Member getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasChatRoomEnterResponse() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public int getChatRoomEnterResponse() {
            return this.chatRoomEnterResponse_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasMaxMembers() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public int getMaxMembers() {
            return this.maxMembers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasLobbyType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public int getLobbyType() {
            return this.lobbyType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasLobbyFlags() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public int getLobbyFlags() {
            return this.lobbyFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasSteamIdOwner() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public long getSteamIdOwner() {
            return this.steamIdOwner_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public boolean hasMetadata() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public ByteString getMetadata() {
            return this.metadata_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public List<Member> getMembersList() {
            return this.members_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public List<? extends MemberOrBuilder> getMembersOrBuilderList() {
            return this.members_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public int getMembersCount() {
            return this.members_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public Member getMembers(int i) {
            return this.members_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
        public MemberOrBuilder getMembersOrBuilder(int i) {
            return this.members_.get(i);
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.chatRoomEnterResponse_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.maxMembers_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt32(5, this.lobbyType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeInt32(6, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeFixed64(7, this.steamIdOwner_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBytes(8, this.metadata_);
            }
            for (int i = 0; i < this.members_.size(); i++) {
                codedOutputStream.writeMessage(9, this.members_.get(i));
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.chatRoomEnterResponse_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(4, this.maxMembers_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(5, this.lobbyType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(6, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(7, this.steamIdOwner_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(8, this.metadata_);
            }
            for (int i2 = 0; i2 < this.members_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(9, this.members_.get(i2));
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
            if (!(obj instanceof CMsgClientMMSJoinLobbyResponse)) {
                return super.equals(obj);
            }
            CMsgClientMMSJoinLobbyResponse cMsgClientMMSJoinLobbyResponse = (CMsgClientMMSJoinLobbyResponse) obj;
            if (hasAppId() != cMsgClientMMSJoinLobbyResponse.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSJoinLobbyResponse.getAppId()) || hasSteamIdLobby() != cMsgClientMMSJoinLobbyResponse.hasSteamIdLobby()) {
                return false;
            }
            if ((hasSteamIdLobby() && getSteamIdLobby() != cMsgClientMMSJoinLobbyResponse.getSteamIdLobby()) || hasChatRoomEnterResponse() != cMsgClientMMSJoinLobbyResponse.hasChatRoomEnterResponse()) {
                return false;
            }
            if ((hasChatRoomEnterResponse() && getChatRoomEnterResponse() != cMsgClientMMSJoinLobbyResponse.getChatRoomEnterResponse()) || hasMaxMembers() != cMsgClientMMSJoinLobbyResponse.hasMaxMembers()) {
                return false;
            }
            if ((hasMaxMembers() && getMaxMembers() != cMsgClientMMSJoinLobbyResponse.getMaxMembers()) || hasLobbyType() != cMsgClientMMSJoinLobbyResponse.hasLobbyType()) {
                return false;
            }
            if ((hasLobbyType() && getLobbyType() != cMsgClientMMSJoinLobbyResponse.getLobbyType()) || hasLobbyFlags() != cMsgClientMMSJoinLobbyResponse.hasLobbyFlags()) {
                return false;
            }
            if ((hasLobbyFlags() && getLobbyFlags() != cMsgClientMMSJoinLobbyResponse.getLobbyFlags()) || hasSteamIdOwner() != cMsgClientMMSJoinLobbyResponse.hasSteamIdOwner()) {
                return false;
            }
            if ((!hasSteamIdOwner() || getSteamIdOwner() == cMsgClientMMSJoinLobbyResponse.getSteamIdOwner()) && hasMetadata() == cMsgClientMMSJoinLobbyResponse.hasMetadata()) {
                return (!hasMetadata() || getMetadata().equals(cMsgClientMMSJoinLobbyResponse.getMetadata())) && getMembersList().equals(cMsgClientMMSJoinLobbyResponse.getMembersList()) && getUnknownFields().equals(cMsgClientMMSJoinLobbyResponse.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasChatRoomEnterResponse()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getChatRoomEnterResponse();
            }
            if (hasMaxMembers()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMaxMembers();
            }
            if (hasLobbyType()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLobbyType();
            }
            if (hasLobbyFlags()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getLobbyFlags();
            }
            if (hasSteamIdOwner()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashLong(getSteamIdOwner());
            }
            if (hasMetadata()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getMetadata().hashCode();
            }
            if (getMembersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getMembersList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSJoinLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSJoinLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobbyResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSJoinLobbyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSJoinLobbyResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSJoinLobbyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSJoinLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSJoinLobbyResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSJoinLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSJoinLobbyResponse cMsgClientMMSJoinLobbyResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSJoinLobbyResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSJoinLobbyResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int chatRoomEnterResponse_;
            private int lobbyFlags_;
            private int lobbyType_;
            private int maxMembers_;
            private RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> membersBuilder_;
            private List<Member> members_;
            private ByteString metadata_;
            private long steamIdLobby_;
            private long steamIdOwner_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSJoinLobbyResponse.class, Builder.class);
            }

            private Builder() {
                this.metadata_ = ByteString.EMPTY;
                this.members_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.metadata_ = ByteString.EMPTY;
                this.members_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.chatRoomEnterResponse_ = 0;
                this.maxMembers_ = 0;
                this.lobbyType_ = 0;
                this.lobbyFlags_ = 0;
                this.steamIdOwner_ = 0L;
                this.metadata_ = ByteString.EMPTY;
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.members_ = Collections.emptyList();
                } else {
                    this.members_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -257;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSJoinLobbyResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSJoinLobbyResponse getDefaultInstanceForType() {
                return CMsgClientMMSJoinLobbyResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSJoinLobbyResponse build() {
                CMsgClientMMSJoinLobbyResponse cMsgClientMMSJoinLobbyResponseBuildPartial = buildPartial();
                if (cMsgClientMMSJoinLobbyResponseBuildPartial.isInitialized()) {
                    return cMsgClientMMSJoinLobbyResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSJoinLobbyResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSJoinLobbyResponse buildPartial() {
                CMsgClientMMSJoinLobbyResponse cMsgClientMMSJoinLobbyResponse = new CMsgClientMMSJoinLobbyResponse(this);
                buildPartialRepeatedFields(cMsgClientMMSJoinLobbyResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSJoinLobbyResponse);
                }
                onBuilt();
                return cMsgClientMMSJoinLobbyResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientMMSJoinLobbyResponse cMsgClientMMSJoinLobbyResponse) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 256) != 0) {
                        this.members_ = Collections.unmodifiableList(this.members_);
                        this.bitField0_ &= -257;
                    }
                    cMsgClientMMSJoinLobbyResponse.members_ = this.members_;
                    return;
                }
                cMsgClientMMSJoinLobbyResponse.members_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientMMSJoinLobbyResponse cMsgClientMMSJoinLobbyResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSJoinLobbyResponse.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSJoinLobbyResponse.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSJoinLobbyResponse.chatRoomEnterResponse_ = this.chatRoomEnterResponse_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSJoinLobbyResponse.maxMembers_ = this.maxMembers_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientMMSJoinLobbyResponse.lobbyType_ = this.lobbyType_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientMMSJoinLobbyResponse.lobbyFlags_ = this.lobbyFlags_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientMMSJoinLobbyResponse.steamIdOwner_ = this.steamIdOwner_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientMMSJoinLobbyResponse.metadata_ = this.metadata_;
                    i |= 128;
                }
                cMsgClientMMSJoinLobbyResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSJoinLobbyResponse) {
                    return mergeFrom((CMsgClientMMSJoinLobbyResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSJoinLobbyResponse cMsgClientMMSJoinLobbyResponse) {
                if (cMsgClientMMSJoinLobbyResponse == CMsgClientMMSJoinLobbyResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSJoinLobbyResponse.hasAppId()) {
                    setAppId(cMsgClientMMSJoinLobbyResponse.getAppId());
                }
                if (cMsgClientMMSJoinLobbyResponse.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSJoinLobbyResponse.getSteamIdLobby());
                }
                if (cMsgClientMMSJoinLobbyResponse.hasChatRoomEnterResponse()) {
                    setChatRoomEnterResponse(cMsgClientMMSJoinLobbyResponse.getChatRoomEnterResponse());
                }
                if (cMsgClientMMSJoinLobbyResponse.hasMaxMembers()) {
                    setMaxMembers(cMsgClientMMSJoinLobbyResponse.getMaxMembers());
                }
                if (cMsgClientMMSJoinLobbyResponse.hasLobbyType()) {
                    setLobbyType(cMsgClientMMSJoinLobbyResponse.getLobbyType());
                }
                if (cMsgClientMMSJoinLobbyResponse.hasLobbyFlags()) {
                    setLobbyFlags(cMsgClientMMSJoinLobbyResponse.getLobbyFlags());
                }
                if (cMsgClientMMSJoinLobbyResponse.hasSteamIdOwner()) {
                    setSteamIdOwner(cMsgClientMMSJoinLobbyResponse.getSteamIdOwner());
                }
                if (cMsgClientMMSJoinLobbyResponse.hasMetadata()) {
                    setMetadata(cMsgClientMMSJoinLobbyResponse.getMetadata());
                }
                if (this.membersBuilder_ == null) {
                    if (!cMsgClientMMSJoinLobbyResponse.members_.isEmpty()) {
                        if (this.members_.isEmpty()) {
                            this.members_ = cMsgClientMMSJoinLobbyResponse.members_;
                            this.bitField0_ &= -257;
                        } else {
                            ensureMembersIsMutable();
                            this.members_.addAll(cMsgClientMMSJoinLobbyResponse.members_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientMMSJoinLobbyResponse.members_.isEmpty()) {
                    if (this.membersBuilder_.isEmpty()) {
                        this.membersBuilder_.dispose();
                        this.membersBuilder_ = null;
                        this.members_ = cMsgClientMMSJoinLobbyResponse.members_;
                        this.bitField0_ &= -257;
                        this.membersBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetMembersFieldBuilder() : null;
                    } else {
                        this.membersBuilder_.addAllMessages(cMsgClientMMSJoinLobbyResponse.members_);
                    }
                }
                mergeUnknownFields(cMsgClientMMSJoinLobbyResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.chatRoomEnterResponse_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.maxMembers_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.lobbyType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.lobbyFlags_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 57) {
                                    this.steamIdOwner_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 64;
                                } else if (tag == 66) {
                                    this.metadata_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                } else if (tag == 74) {
                                    Member member = (Member) codedInputStream.readMessage(Member.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureMembersIsMutable();
                                        this.members_.add(member);
                                    } else {
                                        repeatedFieldBuilder.addMessage(member);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasChatRoomEnterResponse() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public int getChatRoomEnterResponse() {
                return this.chatRoomEnterResponse_;
            }

            public Builder setChatRoomEnterResponse(int i) {
                this.chatRoomEnterResponse_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearChatRoomEnterResponse() {
                this.bitField0_ &= -5;
                this.chatRoomEnterResponse_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasMaxMembers() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public int getMaxMembers() {
                return this.maxMembers_;
            }

            public Builder setMaxMembers(int i) {
                this.maxMembers_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMaxMembers() {
                this.bitField0_ &= -9;
                this.maxMembers_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasLobbyType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public int getLobbyType() {
                return this.lobbyType_;
            }

            public Builder setLobbyType(int i) {
                this.lobbyType_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearLobbyType() {
                this.bitField0_ &= -17;
                this.lobbyType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasLobbyFlags() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public int getLobbyFlags() {
                return this.lobbyFlags_;
            }

            public Builder setLobbyFlags(int i) {
                this.lobbyFlags_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearLobbyFlags() {
                this.bitField0_ &= -33;
                this.lobbyFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasSteamIdOwner() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public long getSteamIdOwner() {
                return this.steamIdOwner_;
            }

            public Builder setSteamIdOwner(long j) {
                this.steamIdOwner_ = j;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSteamIdOwner() {
                this.bitField0_ &= -65;
                this.steamIdOwner_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public boolean hasMetadata() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public ByteString getMetadata() {
                return this.metadata_;
            }

            public Builder setMetadata(ByteString byteString) {
                byteString.getClass();
                this.metadata_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearMetadata() {
                this.bitField0_ &= -129;
                this.metadata_ = CMsgClientMMSJoinLobbyResponse.getDefaultInstance().getMetadata();
                onChanged();
                return this;
            }

            private void ensureMembersIsMutable() {
                if ((this.bitField0_ & 256) == 0) {
                    this.members_ = new ArrayList(this.members_);
                    this.bitField0_ |= 256;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public List<Member> getMembersList() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.members_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public int getMembersCount() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.members_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public Member getMembers(int i) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.members_.get(i);
                }
                return (Member) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setMembers(int i, Member member) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    member.getClass();
                    ensureMembersIsMutable();
                    this.members_.set(i, member);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, member);
                }
                return this;
            }

            public Builder setMembers(int i, Member.Builder builder) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMembers(Member member) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    member.getClass();
                    ensureMembersIsMutable();
                    this.members_.add(member);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(member);
                }
                return this;
            }

            public Builder addMembers(int i, Member member) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    member.getClass();
                    ensureMembersIsMutable();
                    this.members_.add(i, member);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, member);
                }
                return this;
            }

            public Builder addMembers(Member.Builder builder) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMembers(int i, Member.Builder builder) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMembers(Iterable<? extends Member> iterable) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.members_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMembers() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.members_ = Collections.emptyList();
                    this.bitField0_ &= -257;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeMembers(int i) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Member.Builder getMembersBuilder(int i) {
                return (Member.Builder) internalGetMembersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public MemberOrBuilder getMembersOrBuilder(int i) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.members_.get(i);
                }
                return (MemberOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSJoinLobbyResponseOrBuilder
            public List<? extends MemberOrBuilder> getMembersOrBuilderList() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.members_);
            }

            public Member.Builder addMembersBuilder() {
                return (Member.Builder) internalGetMembersFieldBuilder().addBuilder(Member.getDefaultInstance());
            }

            public Member.Builder addMembersBuilder(int i) {
                return (Member.Builder) internalGetMembersFieldBuilder().addBuilder(i, Member.getDefaultInstance());
            }

            public List<Member.Builder> getMembersBuilderList() {
                return internalGetMembersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> internalGetMembersFieldBuilder() {
                if (this.membersBuilder_ == null) {
                    this.membersBuilder_ = new RepeatedFieldBuilder<>(this.members_, (this.bitField0_ & 256) != 0, getParentForChildren(), isClean());
                    this.members_ = null;
                }
                return this.membersBuilder_;
            }
        }

        public static CMsgClientMMSJoinLobbyResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSJoinLobbyResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSJoinLobbyResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSJoinLobbyResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSLeaveLobby extends GeneratedMessage implements CMsgClientMMSLeaveLobbyOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSLeaveLobby DEFAULT_INSTANCE;
        private static final Parser<CMsgClientMMSLeaveLobby> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSLeaveLobby.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSLeaveLobby();
            PARSER = new AbstractParser<CMsgClientMMSLeaveLobby>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobby.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSLeaveLobby parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSLeaveLobby.newBuilder();
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

        private CMsgClientMMSLeaveLobby(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSLeaveLobby() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobby_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSLeaveLobby.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
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
            if (!(obj instanceof CMsgClientMMSLeaveLobby)) {
                return super.equals(obj);
            }
            CMsgClientMMSLeaveLobby cMsgClientMMSLeaveLobby = (CMsgClientMMSLeaveLobby) obj;
            if (hasAppId() != cMsgClientMMSLeaveLobby.hasAppId()) {
                return false;
            }
            if ((!hasAppId() || getAppId() == cMsgClientMMSLeaveLobby.getAppId()) && hasSteamIdLobby() == cMsgClientMMSLeaveLobby.hasSteamIdLobby()) {
                return (!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSLeaveLobby.getSteamIdLobby()) && getUnknownFields().equals(cMsgClientMMSLeaveLobby.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSLeaveLobby parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSLeaveLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLeaveLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobby parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSLeaveLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSLeaveLobby parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLeaveLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSLeaveLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSLeaveLobby parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLeaveLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSLeaveLobby cMsgClientMMSLeaveLobby) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSLeaveLobby);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSLeaveLobbyOrBuilder {
            private int appId_;
            private int bitField0_;
            private long steamIdLobby_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobby_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSLeaveLobby.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobby_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSLeaveLobby getDefaultInstanceForType() {
                return CMsgClientMMSLeaveLobby.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSLeaveLobby build() {
                CMsgClientMMSLeaveLobby cMsgClientMMSLeaveLobbyBuildPartial = buildPartial();
                if (cMsgClientMMSLeaveLobbyBuildPartial.isInitialized()) {
                    return cMsgClientMMSLeaveLobbyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSLeaveLobbyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSLeaveLobby buildPartial() {
                CMsgClientMMSLeaveLobby cMsgClientMMSLeaveLobby = new CMsgClientMMSLeaveLobby(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSLeaveLobby);
                }
                onBuilt();
                return cMsgClientMMSLeaveLobby;
            }

            private void buildPartial0(CMsgClientMMSLeaveLobby cMsgClientMMSLeaveLobby) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSLeaveLobby.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSLeaveLobby.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                cMsgClientMMSLeaveLobby.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSLeaveLobby) {
                    return mergeFrom((CMsgClientMMSLeaveLobby) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSLeaveLobby cMsgClientMMSLeaveLobby) {
                if (cMsgClientMMSLeaveLobby == CMsgClientMMSLeaveLobby.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSLeaveLobby.hasAppId()) {
                    setAppId(cMsgClientMMSLeaveLobby.getAppId());
                }
                if (cMsgClientMMSLeaveLobby.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSLeaveLobby.getSteamIdLobby());
                }
                mergeUnknownFields(cMsgClientMMSLeaveLobby.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSLeaveLobby getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSLeaveLobby> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSLeaveLobby> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSLeaveLobby getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSLeaveLobbyResponse extends GeneratedMessage implements CMsgClientMMSLeaveLobbyResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSLeaveLobbyResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientMMSLeaveLobbyResponse> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSLeaveLobbyResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSLeaveLobbyResponse();
            PARSER = new AbstractParser<CMsgClientMMSLeaveLobbyResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSLeaveLobbyResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSLeaveLobbyResponse.newBuilder();
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

        private CMsgClientMMSLeaveLobbyResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.eresult_ = 2;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSLeaveLobbyResponse() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobbyResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobbyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSLeaveLobbyResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.eresult_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.eresult_);
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
            if (!(obj instanceof CMsgClientMMSLeaveLobbyResponse)) {
                return super.equals(obj);
            }
            CMsgClientMMSLeaveLobbyResponse cMsgClientMMSLeaveLobbyResponse = (CMsgClientMMSLeaveLobbyResponse) obj;
            if (hasAppId() != cMsgClientMMSLeaveLobbyResponse.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSLeaveLobbyResponse.getAppId()) || hasSteamIdLobby() != cMsgClientMMSLeaveLobbyResponse.hasSteamIdLobby()) {
                return false;
            }
            if ((!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSLeaveLobbyResponse.getSteamIdLobby()) && hasEresult() == cMsgClientMMSLeaveLobbyResponse.hasEresult()) {
                return (!hasEresult() || getEresult() == cMsgClientMMSLeaveLobbyResponse.getEresult()) && getUnknownFields().equals(cMsgClientMMSLeaveLobbyResponse.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getEresult();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSLeaveLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLeaveLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSLeaveLobbyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLeaveLobbyResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSLeaveLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSLeaveLobbyResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLeaveLobbyResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSLeaveLobbyResponse cMsgClientMMSLeaveLobbyResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSLeaveLobbyResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSLeaveLobbyResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int eresult_;
            private long steamIdLobby_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobbyResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobbyResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSLeaveLobbyResponse.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.eresult_ = 2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLeaveLobbyResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSLeaveLobbyResponse getDefaultInstanceForType() {
                return CMsgClientMMSLeaveLobbyResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSLeaveLobbyResponse build() {
                CMsgClientMMSLeaveLobbyResponse cMsgClientMMSLeaveLobbyResponseBuildPartial = buildPartial();
                if (cMsgClientMMSLeaveLobbyResponseBuildPartial.isInitialized()) {
                    return cMsgClientMMSLeaveLobbyResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSLeaveLobbyResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSLeaveLobbyResponse buildPartial() {
                CMsgClientMMSLeaveLobbyResponse cMsgClientMMSLeaveLobbyResponse = new CMsgClientMMSLeaveLobbyResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSLeaveLobbyResponse);
                }
                onBuilt();
                return cMsgClientMMSLeaveLobbyResponse;
            }

            private void buildPartial0(CMsgClientMMSLeaveLobbyResponse cMsgClientMMSLeaveLobbyResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSLeaveLobbyResponse.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSLeaveLobbyResponse.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSLeaveLobbyResponse.eresult_ = this.eresult_;
                    i |= 4;
                }
                cMsgClientMMSLeaveLobbyResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSLeaveLobbyResponse) {
                    return mergeFrom((CMsgClientMMSLeaveLobbyResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSLeaveLobbyResponse cMsgClientMMSLeaveLobbyResponse) {
                if (cMsgClientMMSLeaveLobbyResponse == CMsgClientMMSLeaveLobbyResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSLeaveLobbyResponse.hasAppId()) {
                    setAppId(cMsgClientMMSLeaveLobbyResponse.getAppId());
                }
                if (cMsgClientMMSLeaveLobbyResponse.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSLeaveLobbyResponse.getSteamIdLobby());
                }
                if (cMsgClientMMSLeaveLobbyResponse.hasEresult()) {
                    setEresult(cMsgClientMMSLeaveLobbyResponse.getEresult());
                }
                mergeUnknownFields(cMsgClientMMSLeaveLobbyResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.eresult_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLeaveLobbyResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -5;
                this.eresult_ = 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSLeaveLobbyResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSLeaveLobbyResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSLeaveLobbyResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSLeaveLobbyResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSGetLobbyList extends GeneratedMessage implements CMsgClientMMSGetLobbyListOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        public static final int CELL_ID_FIELD_NUMBER = 4;
        private static final CMsgClientMMSGetLobbyList DEFAULT_INSTANCE;
        public static final int DEPRECATED_PUBLIC_IP_FIELD_NUMBER = 5;
        public static final int FILTERS_FIELD_NUMBER = 6;
        public static final int NETWORK_PING_LOCATION_FIELD_NUMBER = 8;
        public static final int NUM_LOBBIES_REQUESTED_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientMMSGetLobbyList> PARSER;
        public static final int PUBLIC_IP_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int cellId_;
        private int deprecatedPublicIp_;
        private List<Filter> filters_;
        private byte memoizedIsInitialized;
        private volatile Object networkPingLocation_;
        private int numLobbiesRequested_;
        private SteammessagesBase.CMsgIPAddress publicIp_;

        public interface FilterOrBuilder extends MessageOrBuilder {
            int getComparision();

            int getFilterType();

            String getKey();

            ByteString getKeyBytes();

            String getValue();

            ByteString getValueBytes();

            boolean hasComparision();

            boolean hasFilterType();

            boolean hasKey();

            boolean hasValue();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSGetLobbyList.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSGetLobbyList();
            PARSER = new AbstractParser<CMsgClientMMSGetLobbyList>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSGetLobbyList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSGetLobbyList.newBuilder();
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

        private CMsgClientMMSGetLobbyList(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.numLobbiesRequested_ = 0;
            this.cellId_ = 0;
            this.deprecatedPublicIp_ = 0;
            this.networkPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSGetLobbyList() {
            this.appId_ = 0;
            this.numLobbiesRequested_ = 0;
            this.cellId_ = 0;
            this.deprecatedPublicIp_ = 0;
            this.networkPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.filters_ = Collections.emptyList();
            this.networkPingLocation_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSGetLobbyList.class, Builder.class);
        }

        public static final class Filter extends GeneratedMessage implements FilterOrBuilder {
            public static final int COMPARISION_FIELD_NUMBER = 3;
            private static final Filter DEFAULT_INSTANCE;
            public static final int FILTER_TYPE_FIELD_NUMBER = 4;
            public static final int KEY_FIELD_NUMBER = 1;
            private static final Parser<Filter> PARSER;
            public static final int VALUE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private int comparision_;
            private int filterType_;
            private volatile Object key_;
            private byte memoizedIsInitialized;
            private volatile Object value_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Filter.class.getName());
                DEFAULT_INSTANCE = new Filter();
                PARSER = new AbstractParser<Filter>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.Filter.1
                    @Override // com.google.protobuf.Parser
                    public Filter parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Filter.newBuilder();
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

            private Filter(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.key_ = "";
                this.value_ = "";
                this.comparision_ = 0;
                this.filterType_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Filter() {
                this.key_ = "";
                this.value_ = "";
                this.comparision_ = 0;
                this.filterType_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.key_ = "";
                this.value_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_Filter_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_Filter_fieldAccessorTable.ensureFieldAccessorsInitialized(Filter.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public boolean hasKey() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public String getKey() {
                Object obj = this.key_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.key_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public ByteString getKeyBytes() {
                Object obj = this.key_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.key_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public boolean hasValue() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public String getValue() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.value_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public ByteString getValueBytes() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.value_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public boolean hasComparision() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public int getComparision() {
                return this.comparision_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public boolean hasFilterType() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
            public int getFilterType() {
                return this.filterType_;
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
                    GeneratedMessage.writeString(codedOutputStream, 1, this.key_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 2, this.value_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeInt32(3, this.comparision_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeInt32(4, this.filterType_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.key_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeStringSize += GeneratedMessage.computeStringSize(2, this.value_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeStringSize += CodedOutputStream.computeInt32Size(3, this.comparision_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeStringSize += CodedOutputStream.computeInt32Size(4, this.filterType_);
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
                if (!(obj instanceof Filter)) {
                    return super.equals(obj);
                }
                Filter filter = (Filter) obj;
                if (hasKey() != filter.hasKey()) {
                    return false;
                }
                if ((hasKey() && !getKey().equals(filter.getKey())) || hasValue() != filter.hasValue()) {
                    return false;
                }
                if ((hasValue() && !getValue().equals(filter.getValue())) || hasComparision() != filter.hasComparision()) {
                    return false;
                }
                if ((!hasComparision() || getComparision() == filter.getComparision()) && hasFilterType() == filter.hasFilterType()) {
                    return (!hasFilterType() || getFilterType() == filter.getFilterType()) && getUnknownFields().equals(filter.getUnknownFields());
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
                if (hasKey()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getKey().hashCode();
                }
                if (hasValue()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getValue().hashCode();
                }
                if (hasComparision()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getComparision();
                }
                if (hasFilterType()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getFilterType();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Filter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Filter parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Filter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Filter parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Filter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Filter parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Filter parseFrom(InputStream inputStream) throws IOException {
                return (Filter) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Filter parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Filter) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Filter parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Filter) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Filter parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Filter) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Filter parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Filter) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Filter parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Filter) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Filter filter) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(filter);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements FilterOrBuilder {
                private int bitField0_;
                private int comparision_;
                private int filterType_;
                private Object key_;
                private Object value_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_Filter_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_Filter_fieldAccessorTable.ensureFieldAccessorsInitialized(Filter.class, Builder.class);
                }

                private Builder() {
                    this.key_ = "";
                    this.value_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.key_ = "";
                    this.value_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.key_ = "";
                    this.value_ = "";
                    this.comparision_ = 0;
                    this.filterType_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_Filter_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Filter getDefaultInstanceForType() {
                    return Filter.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Filter build() {
                    Filter filterBuildPartial = buildPartial();
                    if (filterBuildPartial.isInitialized()) {
                        return filterBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) filterBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Filter buildPartial() {
                    Filter filter = new Filter(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(filter);
                    }
                    onBuilt();
                    return filter;
                }

                private void buildPartial0(Filter filter) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        filter.key_ = this.key_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        filter.value_ = this.value_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        filter.comparision_ = this.comparision_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        filter.filterType_ = this.filterType_;
                        i |= 8;
                    }
                    filter.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Filter) {
                        return mergeFrom((Filter) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Filter filter) {
                    if (filter == Filter.getDefaultInstance()) {
                        return this;
                    }
                    if (filter.hasKey()) {
                        this.key_ = filter.key_;
                        this.bitField0_ |= 1;
                        onChanged();
                    }
                    if (filter.hasValue()) {
                        this.value_ = filter.value_;
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    if (filter.hasComparision()) {
                        setComparision(filter.getComparision());
                    }
                    if (filter.hasFilterType()) {
                        setFilterType(filter.getFilterType());
                    }
                    mergeUnknownFields(filter.getUnknownFields());
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
                                        this.key_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 18) {
                                        this.value_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.comparision_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 32) {
                                        this.filterType_ = codedInputStream.readInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public boolean hasKey() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public String getKey() {
                    Object obj = this.key_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.key_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public ByteString getKeyBytes() {
                    Object obj = this.key_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.key_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setKey(String str) {
                    str.getClass();
                    this.key_ = str;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearKey() {
                    this.key_ = Filter.getDefaultInstance().getKey();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder setKeyBytes(ByteString byteString) {
                    byteString.getClass();
                    this.key_ = byteString;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public boolean hasValue() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public String getValue() {
                    Object obj = this.value_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.value_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public ByteString getValueBytes() {
                    Object obj = this.value_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.value_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setValue(String str) {
                    str.getClass();
                    this.value_ = str;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearValue() {
                    this.value_ = Filter.getDefaultInstance().getValue();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder setValueBytes(ByteString byteString) {
                    byteString.getClass();
                    this.value_ = byteString;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public boolean hasComparision() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public int getComparision() {
                    return this.comparision_;
                }

                public Builder setComparision(int i) {
                    this.comparision_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearComparision() {
                    this.bitField0_ &= -5;
                    this.comparision_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public boolean hasFilterType() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyList.FilterOrBuilder
                public int getFilterType() {
                    return this.filterType_;
                }

                public Builder setFilterType(int i) {
                    this.filterType_ = i;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearFilterType() {
                    this.bitField0_ &= -9;
                    this.filterType_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static Filter getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Filter> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Filter> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Filter getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public boolean hasNumLobbiesRequested() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public int getNumLobbiesRequested() {
            return this.numLobbiesRequested_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public boolean hasCellId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public int getCellId() {
            return this.cellId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public boolean hasDeprecatedPublicIp() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public int getDeprecatedPublicIp() {
            return this.deprecatedPublicIp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public List<Filter> getFiltersList() {
            return this.filters_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public List<? extends FilterOrBuilder> getFiltersOrBuilderList() {
            return this.filters_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public int getFiltersCount() {
            return this.filters_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public Filter getFilters(int i) {
            return this.filters_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public FilterOrBuilder getFiltersOrBuilder(int i) {
            return this.filters_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public boolean hasPublicIp() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public SteammessagesBase.CMsgIPAddress getPublicIp() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public boolean hasNetworkPingLocation() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public String getNetworkPingLocation() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.networkPingLocation_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
        public ByteString getNetworkPingLocationBytes() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.networkPingLocation_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.appId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(3, this.numLobbiesRequested_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(4, this.cellId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(5, this.deprecatedPublicIp_);
            }
            for (int i = 0; i < this.filters_.size(); i++) {
                codedOutputStream.writeMessage(6, this.filters_.get(i));
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeMessage(7, getPublicIp());
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.networkPingLocation_);
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
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.numLobbiesRequested_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.cellId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.deprecatedPublicIp_);
            }
            for (int i2 = 0; i2 < this.filters_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(6, this.filters_.get(i2));
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(7, getPublicIp());
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(8, this.networkPingLocation_);
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
            if (!(obj instanceof CMsgClientMMSGetLobbyList)) {
                return super.equals(obj);
            }
            CMsgClientMMSGetLobbyList cMsgClientMMSGetLobbyList = (CMsgClientMMSGetLobbyList) obj;
            if (hasAppId() != cMsgClientMMSGetLobbyList.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSGetLobbyList.getAppId()) || hasNumLobbiesRequested() != cMsgClientMMSGetLobbyList.hasNumLobbiesRequested()) {
                return false;
            }
            if ((hasNumLobbiesRequested() && getNumLobbiesRequested() != cMsgClientMMSGetLobbyList.getNumLobbiesRequested()) || hasCellId() != cMsgClientMMSGetLobbyList.hasCellId()) {
                return false;
            }
            if ((hasCellId() && getCellId() != cMsgClientMMSGetLobbyList.getCellId()) || hasDeprecatedPublicIp() != cMsgClientMMSGetLobbyList.hasDeprecatedPublicIp()) {
                return false;
            }
            if ((hasDeprecatedPublicIp() && getDeprecatedPublicIp() != cMsgClientMMSGetLobbyList.getDeprecatedPublicIp()) || !getFiltersList().equals(cMsgClientMMSGetLobbyList.getFiltersList()) || hasPublicIp() != cMsgClientMMSGetLobbyList.hasPublicIp()) {
                return false;
            }
            if ((!hasPublicIp() || getPublicIp().equals(cMsgClientMMSGetLobbyList.getPublicIp())) && hasNetworkPingLocation() == cMsgClientMMSGetLobbyList.hasNetworkPingLocation()) {
                return (!hasNetworkPingLocation() || getNetworkPingLocation().equals(cMsgClientMMSGetLobbyList.getNetworkPingLocation())) && getUnknownFields().equals(cMsgClientMMSGetLobbyList.getUnknownFields());
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
            if (hasNumLobbiesRequested()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getNumLobbiesRequested();
            }
            if (hasCellId()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getCellId();
            }
            if (hasDeprecatedPublicIp()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getDeprecatedPublicIp();
            }
            if (getFiltersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getFiltersList().hashCode();
            }
            if (hasPublicIp()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getPublicIp().hashCode();
            }
            if (hasNetworkPingLocation()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getNetworkPingLocation().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSGetLobbyList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSGetLobbyList) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyList) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSGetLobbyList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSGetLobbyList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSGetLobbyList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSGetLobbyList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSGetLobbyList cMsgClientMMSGetLobbyList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSGetLobbyList);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSGetLobbyListOrBuilder {
            private int appId_;
            private int bitField0_;
            private int cellId_;
            private int deprecatedPublicIp_;
            private RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> filtersBuilder_;
            private List<Filter> filters_;
            private Object networkPingLocation_;
            private int numLobbiesRequested_;
            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> publicIpBuilder_;
            private SteammessagesBase.CMsgIPAddress publicIp_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSGetLobbyList.class, Builder.class);
            }

            private Builder() {
                this.filters_ = Collections.emptyList();
                this.networkPingLocation_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.filters_ = Collections.emptyList();
                this.networkPingLocation_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetFiltersFieldBuilder();
                    internalGetPublicIpFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.numLobbiesRequested_ = 0;
                this.cellId_ = 0;
                this.deprecatedPublicIp_ = 0;
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.filters_ = Collections.emptyList();
                } else {
                    this.filters_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -17;
                this.publicIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.publicIpBuilder_ = null;
                }
                this.networkPingLocation_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyList_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSGetLobbyList getDefaultInstanceForType() {
                return CMsgClientMMSGetLobbyList.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSGetLobbyList build() {
                CMsgClientMMSGetLobbyList cMsgClientMMSGetLobbyListBuildPartial = buildPartial();
                if (cMsgClientMMSGetLobbyListBuildPartial.isInitialized()) {
                    return cMsgClientMMSGetLobbyListBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSGetLobbyListBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSGetLobbyList buildPartial() {
                CMsgClientMMSGetLobbyList cMsgClientMMSGetLobbyList = new CMsgClientMMSGetLobbyList(this);
                buildPartialRepeatedFields(cMsgClientMMSGetLobbyList);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSGetLobbyList);
                }
                onBuilt();
                return cMsgClientMMSGetLobbyList;
            }

            private void buildPartialRepeatedFields(CMsgClientMMSGetLobbyList cMsgClientMMSGetLobbyList) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.filters_ = Collections.unmodifiableList(this.filters_);
                        this.bitField0_ &= -17;
                    }
                    cMsgClientMMSGetLobbyList.filters_ = this.filters_;
                    return;
                }
                cMsgClientMMSGetLobbyList.filters_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientMMSGetLobbyList cMsgClientMMSGetLobbyList) {
                int i;
                SteammessagesBase.CMsgIPAddress cMsgIPAddress;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSGetLobbyList.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSGetLobbyList.numLobbiesRequested_ = this.numLobbiesRequested_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSGetLobbyList.cellId_ = this.cellId_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSGetLobbyList.deprecatedPublicIp_ = this.deprecatedPublicIp_;
                    i |= 8;
                }
                if ((i2 & 32) != 0) {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                    if (singleFieldBuilder == null) {
                        cMsgIPAddress = this.publicIp_;
                    } else {
                        cMsgIPAddress = (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.build();
                    }
                    cMsgClientMMSGetLobbyList.publicIp_ = cMsgIPAddress;
                    i |= 16;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientMMSGetLobbyList.networkPingLocation_ = this.networkPingLocation_;
                    i |= 32;
                }
                cMsgClientMMSGetLobbyList.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSGetLobbyList) {
                    return mergeFrom((CMsgClientMMSGetLobbyList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSGetLobbyList cMsgClientMMSGetLobbyList) {
                if (cMsgClientMMSGetLobbyList == CMsgClientMMSGetLobbyList.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSGetLobbyList.hasAppId()) {
                    setAppId(cMsgClientMMSGetLobbyList.getAppId());
                }
                if (cMsgClientMMSGetLobbyList.hasNumLobbiesRequested()) {
                    setNumLobbiesRequested(cMsgClientMMSGetLobbyList.getNumLobbiesRequested());
                }
                if (cMsgClientMMSGetLobbyList.hasCellId()) {
                    setCellId(cMsgClientMMSGetLobbyList.getCellId());
                }
                if (cMsgClientMMSGetLobbyList.hasDeprecatedPublicIp()) {
                    setDeprecatedPublicIp(cMsgClientMMSGetLobbyList.getDeprecatedPublicIp());
                }
                if (this.filtersBuilder_ == null) {
                    if (!cMsgClientMMSGetLobbyList.filters_.isEmpty()) {
                        if (this.filters_.isEmpty()) {
                            this.filters_ = cMsgClientMMSGetLobbyList.filters_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureFiltersIsMutable();
                            this.filters_.addAll(cMsgClientMMSGetLobbyList.filters_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientMMSGetLobbyList.filters_.isEmpty()) {
                    if (this.filtersBuilder_.isEmpty()) {
                        this.filtersBuilder_.dispose();
                        this.filtersBuilder_ = null;
                        this.filters_ = cMsgClientMMSGetLobbyList.filters_;
                        this.bitField0_ &= -17;
                        this.filtersBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetFiltersFieldBuilder() : null;
                    } else {
                        this.filtersBuilder_.addAllMessages(cMsgClientMMSGetLobbyList.filters_);
                    }
                }
                if (cMsgClientMMSGetLobbyList.hasPublicIp()) {
                    mergePublicIp(cMsgClientMMSGetLobbyList.getPublicIp());
                }
                if (cMsgClientMMSGetLobbyList.hasNetworkPingLocation()) {
                    this.networkPingLocation_ = cMsgClientMMSGetLobbyList.networkPingLocation_;
                    this.bitField0_ |= 64;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientMMSGetLobbyList.getUnknownFields());
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
                                } else if (tag == 24) {
                                    this.numLobbiesRequested_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 32) {
                                    this.cellId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 40) {
                                    this.deprecatedPublicIp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 50) {
                                    Filter filter = (Filter) codedInputStream.readMessage(Filter.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureFiltersIsMutable();
                                        this.filters_.add(filter);
                                    } else {
                                        repeatedFieldBuilder.addMessage(filter);
                                    }
                                } else if (tag == 58) {
                                    codedInputStream.readMessage(internalGetPublicIpFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 32;
                                } else if (tag == 66) {
                                    this.networkPingLocation_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public boolean hasNumLobbiesRequested() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public int getNumLobbiesRequested() {
                return this.numLobbiesRequested_;
            }

            public Builder setNumLobbiesRequested(int i) {
                this.numLobbiesRequested_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearNumLobbiesRequested() {
                this.bitField0_ &= -3;
                this.numLobbiesRequested_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public boolean hasCellId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public int getCellId() {
                return this.cellId_;
            }

            public Builder setCellId(int i) {
                this.cellId_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCellId() {
                this.bitField0_ &= -5;
                this.cellId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public boolean hasDeprecatedPublicIp() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public int getDeprecatedPublicIp() {
                return this.deprecatedPublicIp_;
            }

            public Builder setDeprecatedPublicIp(int i) {
                this.deprecatedPublicIp_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearDeprecatedPublicIp() {
                this.bitField0_ &= -9;
                this.deprecatedPublicIp_ = 0;
                onChanged();
                return this;
            }

            private void ensureFiltersIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.filters_ = new ArrayList(this.filters_);
                    this.bitField0_ |= 16;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public List<Filter> getFiltersList() {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.filters_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public int getFiltersCount() {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.filters_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public Filter getFilters(int i) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.filters_.get(i);
                }
                return (Filter) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setFilters(int i, Filter filter) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    filter.getClass();
                    ensureFiltersIsMutable();
                    this.filters_.set(i, filter);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, filter);
                }
                return this;
            }

            public Builder setFilters(int i, Filter.Builder builder) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFiltersIsMutable();
                    this.filters_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addFilters(Filter filter) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    filter.getClass();
                    ensureFiltersIsMutable();
                    this.filters_.add(filter);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(filter);
                }
                return this;
            }

            public Builder addFilters(int i, Filter filter) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    filter.getClass();
                    ensureFiltersIsMutable();
                    this.filters_.add(i, filter);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, filter);
                }
                return this;
            }

            public Builder addFilters(Filter.Builder builder) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFiltersIsMutable();
                    this.filters_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addFilters(int i, Filter.Builder builder) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFiltersIsMutable();
                    this.filters_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllFilters(Iterable<? extends Filter> iterable) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFiltersIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.filters_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearFilters() {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.filters_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeFilters(int i) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFiltersIsMutable();
                    this.filters_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Filter.Builder getFiltersBuilder(int i) {
                return (Filter.Builder) internalGetFiltersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public FilterOrBuilder getFiltersOrBuilder(int i) {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.filters_.get(i);
                }
                return (FilterOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public List<? extends FilterOrBuilder> getFiltersOrBuilderList() {
                RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> repeatedFieldBuilder = this.filtersBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.filters_);
            }

            public Filter.Builder addFiltersBuilder() {
                return (Filter.Builder) internalGetFiltersFieldBuilder().addBuilder(Filter.getDefaultInstance());
            }

            public Filter.Builder addFiltersBuilder(int i) {
                return (Filter.Builder) internalGetFiltersFieldBuilder().addBuilder(i, Filter.getDefaultInstance());
            }

            public List<Filter.Builder> getFiltersBuilderList() {
                return internalGetFiltersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Filter, Filter.Builder, FilterOrBuilder> internalGetFiltersFieldBuilder() {
                if (this.filtersBuilder_ == null) {
                    this.filtersBuilder_ = new RepeatedFieldBuilder<>(this.filters_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                    this.filters_ = null;
                }
                return this.filtersBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public boolean hasPublicIp() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public SteammessagesBase.CMsgIPAddress getPublicIp() {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
                    return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
                }
                return (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.getMessage();
            }

            public Builder setPublicIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    cMsgIPAddress.getClass();
                    this.publicIp_ = cMsgIPAddress;
                } else {
                    singleFieldBuilder.setMessage(cMsgIPAddress);
                }
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder setPublicIp(SteammessagesBase.CMsgIPAddress.Builder builder) {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    this.publicIp_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder mergePublicIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SteammessagesBase.CMsgIPAddress cMsgIPAddress2;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 32) != 0 && (cMsgIPAddress2 = this.publicIp_) != null && cMsgIPAddress2 != SteammessagesBase.CMsgIPAddress.getDefaultInstance()) {
                        getPublicIpBuilder().mergeFrom(cMsgIPAddress);
                    } else {
                        this.publicIp_ = cMsgIPAddress;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cMsgIPAddress);
                }
                if (this.publicIp_ != null) {
                    this.bitField0_ |= 32;
                    onChanged();
                }
                return this;
            }

            public Builder clearPublicIp() {
                this.bitField0_ &= -33;
                this.publicIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.publicIpBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesBase.CMsgIPAddress.Builder getPublicIpBuilder() {
                this.bitField0_ |= 32;
                onChanged();
                return (SteammessagesBase.CMsgIPAddress.Builder) internalGetPublicIpFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder() {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesBase.CMsgIPAddressOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
                return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
            }

            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> internalGetPublicIpFieldBuilder() {
                if (this.publicIpBuilder_ == null) {
                    this.publicIpBuilder_ = new SingleFieldBuilder<>(getPublicIp(), getParentForChildren(), isClean());
                    this.publicIp_ = null;
                }
                return this.publicIpBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public boolean hasNetworkPingLocation() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public String getNetworkPingLocation() {
                Object obj = this.networkPingLocation_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.networkPingLocation_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListOrBuilder
            public ByteString getNetworkPingLocationBytes() {
                Object obj = this.networkPingLocation_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.networkPingLocation_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setNetworkPingLocation(String str) {
                str.getClass();
                this.networkPingLocation_ = str;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearNetworkPingLocation() {
                this.networkPingLocation_ = CMsgClientMMSGetLobbyList.getDefaultInstance().getNetworkPingLocation();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public Builder setNetworkPingLocationBytes(ByteString byteString) {
                byteString.getClass();
                this.networkPingLocation_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSGetLobbyList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSGetLobbyList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSGetLobbyList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSGetLobbyList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSGetLobbyListResponse extends GeneratedMessage implements CMsgClientMMSGetLobbyListResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSGetLobbyListResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 3;
        public static final int LOBBIES_FIELD_NUMBER = 4;
        private static final Parser<CMsgClientMMSGetLobbyListResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int eresult_;
        private List<Lobby> lobbies_;
        private byte memoizedIsInitialized;

        public interface LobbyOrBuilder extends MessageOrBuilder {
            float getDistance();

            int getLobbyFlags();

            int getLobbyType();

            int getMaxMembers();

            ByteString getMetadata();

            int getMissingPing();

            int getNumMembers();

            int getPing();

            long getSteamId();

            long getWeight();

            boolean hasDistance();

            boolean hasLobbyFlags();

            boolean hasLobbyType();

            boolean hasMaxMembers();

            boolean hasMetadata();

            boolean hasMissingPing();

            boolean hasNumMembers();

            boolean hasPing();

            boolean hasSteamId();

            boolean hasWeight();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSGetLobbyListResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSGetLobbyListResponse();
            PARSER = new AbstractParser<CMsgClientMMSGetLobbyListResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSGetLobbyListResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSGetLobbyListResponse.newBuilder();
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

        private CMsgClientMMSGetLobbyListResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.eresult_ = 2;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSGetLobbyListResponse() {
            this.appId_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.lobbies_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSGetLobbyListResponse.class, Builder.class);
        }

        public static final class Lobby extends GeneratedMessage implements LobbyOrBuilder {
            private static final Lobby DEFAULT_INSTANCE;
            public static final int DISTANCE_FIELD_NUMBER = 7;
            public static final int LOBBY_FLAGS_FIELD_NUMBER = 4;
            public static final int LOBBY_TYPE_FIELD_NUMBER = 3;
            public static final int MAX_MEMBERS_FIELD_NUMBER = 2;
            public static final int METADATA_FIELD_NUMBER = 5;
            public static final int MISSING_PING_FIELD_NUMBER = 10;
            public static final int NUM_MEMBERS_FIELD_NUMBER = 6;
            private static final Parser<Lobby> PARSER;
            public static final int PING_FIELD_NUMBER = 9;
            public static final int STEAM_ID_FIELD_NUMBER = 1;
            public static final int WEIGHT_FIELD_NUMBER = 8;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private float distance_;
            private int lobbyFlags_;
            private int lobbyType_;
            private int maxMembers_;
            private byte memoizedIsInitialized;
            private ByteString metadata_;
            private int missingPing_;
            private int numMembers_;
            private int ping_;
            private long steamId_;
            private long weight_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Lobby.class.getName());
                DEFAULT_INSTANCE = new Lobby();
                PARSER = new AbstractParser<Lobby>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.Lobby.1
                    @Override // com.google.protobuf.Parser
                    public Lobby parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Lobby.newBuilder();
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

            private Lobby(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.steamId_ = 0L;
                this.maxMembers_ = 0;
                this.lobbyType_ = 0;
                this.lobbyFlags_ = 0;
                this.metadata_ = ByteString.EMPTY;
                this.numMembers_ = 0;
                this.distance_ = 0.0f;
                this.weight_ = 0L;
                this.ping_ = 0;
                this.missingPing_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Lobby() {
                this.steamId_ = 0L;
                this.maxMembers_ = 0;
                this.lobbyType_ = 0;
                this.lobbyFlags_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.numMembers_ = 0;
                this.distance_ = 0.0f;
                this.weight_ = 0L;
                this.ping_ = 0;
                this.missingPing_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.metadata_ = byteString;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_fieldAccessorTable.ensureFieldAccessorsInitialized(Lobby.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasSteamId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public long getSteamId() {
                return this.steamId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasMaxMembers() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public int getMaxMembers() {
                return this.maxMembers_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasLobbyType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public int getLobbyType() {
                return this.lobbyType_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasLobbyFlags() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public int getLobbyFlags() {
                return this.lobbyFlags_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasMetadata() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public ByteString getMetadata() {
                return this.metadata_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasNumMembers() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public int getNumMembers() {
                return this.numMembers_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasDistance() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public float getDistance() {
                return this.distance_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasWeight() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public long getWeight() {
                return this.weight_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasPing() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public int getPing() {
                return this.ping_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public boolean hasMissingPing() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
            public int getMissingPing() {
                return this.missingPing_;
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
                    codedOutputStream.writeFixed64(1, this.steamId_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeInt32(2, this.maxMembers_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeInt32(3, this.lobbyType_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeInt32(4, this.lobbyFlags_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeBytes(5, this.metadata_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeInt32(6, this.numMembers_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    codedOutputStream.writeFloat(7, this.distance_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    codedOutputStream.writeInt64(8, this.weight_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    codedOutputStream.writeInt32(9, this.ping_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    codedOutputStream.writeInt32(10, this.missingPing_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamId_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(2, this.maxMembers_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(3, this.lobbyType_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(4, this.lobbyFlags_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBytesSize(5, this.metadata_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(6, this.numMembers_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFloatSize(7, this.distance_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt64Size(8, this.weight_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(9, this.ping_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeInt32Size(10, this.missingPing_);
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
                if (!(obj instanceof Lobby)) {
                    return super.equals(obj);
                }
                Lobby lobby = (Lobby) obj;
                if (hasSteamId() != lobby.hasSteamId()) {
                    return false;
                }
                if ((hasSteamId() && getSteamId() != lobby.getSteamId()) || hasMaxMembers() != lobby.hasMaxMembers()) {
                    return false;
                }
                if ((hasMaxMembers() && getMaxMembers() != lobby.getMaxMembers()) || hasLobbyType() != lobby.hasLobbyType()) {
                    return false;
                }
                if ((hasLobbyType() && getLobbyType() != lobby.getLobbyType()) || hasLobbyFlags() != lobby.hasLobbyFlags()) {
                    return false;
                }
                if ((hasLobbyFlags() && getLobbyFlags() != lobby.getLobbyFlags()) || hasMetadata() != lobby.hasMetadata()) {
                    return false;
                }
                if ((hasMetadata() && !getMetadata().equals(lobby.getMetadata())) || hasNumMembers() != lobby.hasNumMembers()) {
                    return false;
                }
                if ((hasNumMembers() && getNumMembers() != lobby.getNumMembers()) || hasDistance() != lobby.hasDistance()) {
                    return false;
                }
                if ((hasDistance() && Float.floatToIntBits(getDistance()) != Float.floatToIntBits(lobby.getDistance())) || hasWeight() != lobby.hasWeight()) {
                    return false;
                }
                if ((hasWeight() && getWeight() != lobby.getWeight()) || hasPing() != lobby.hasPing()) {
                    return false;
                }
                if ((!hasPing() || getPing() == lobby.getPing()) && hasMissingPing() == lobby.hasMissingPing()) {
                    return (!hasMissingPing() || getMissingPing() == lobby.getMissingPing()) && getUnknownFields().equals(lobby.getUnknownFields());
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
                if (hasSteamId()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamId());
                }
                if (hasMaxMembers()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getMaxMembers();
                }
                if (hasLobbyType()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getLobbyType();
                }
                if (hasLobbyFlags()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getLobbyFlags();
                }
                if (hasMetadata()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getMetadata().hashCode();
                }
                if (hasNumMembers()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + getNumMembers();
                }
                if (hasDistance()) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + Float.floatToIntBits(getDistance());
                }
                if (hasWeight()) {
                    iHashCode = (((iHashCode * 37) + 8) * 53) + Internal.hashLong(getWeight());
                }
                if (hasPing()) {
                    iHashCode = (((iHashCode * 37) + 9) * 53) + getPing();
                }
                if (hasMissingPing()) {
                    iHashCode = (((iHashCode * 37) + 10) * 53) + getMissingPing();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Lobby parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Lobby parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Lobby parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Lobby parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Lobby parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Lobby parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Lobby parseFrom(InputStream inputStream) throws IOException {
                return (Lobby) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Lobby parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Lobby) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Lobby parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Lobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Lobby parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Lobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Lobby parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Lobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Lobby parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Lobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Lobby lobby) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(lobby);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements LobbyOrBuilder {
                private int bitField0_;
                private float distance_;
                private int lobbyFlags_;
                private int lobbyType_;
                private int maxMembers_;
                private ByteString metadata_;
                private int missingPing_;
                private int numMembers_;
                private int ping_;
                private long steamId_;
                private long weight_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_fieldAccessorTable.ensureFieldAccessorsInitialized(Lobby.class, Builder.class);
                }

                private Builder() {
                    this.metadata_ = ByteString.EMPTY;
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.metadata_ = ByteString.EMPTY;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.steamId_ = 0L;
                    this.maxMembers_ = 0;
                    this.lobbyType_ = 0;
                    this.lobbyFlags_ = 0;
                    this.metadata_ = ByteString.EMPTY;
                    this.numMembers_ = 0;
                    this.distance_ = 0.0f;
                    this.weight_ = 0L;
                    this.ping_ = 0;
                    this.missingPing_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_Lobby_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Lobby getDefaultInstanceForType() {
                    return Lobby.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Lobby build() {
                    Lobby lobbyBuildPartial = buildPartial();
                    if (lobbyBuildPartial.isInitialized()) {
                        return lobbyBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) lobbyBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Lobby buildPartial() {
                    Lobby lobby = new Lobby(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(lobby);
                    }
                    onBuilt();
                    return lobby;
                }

                private void buildPartial0(Lobby lobby) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        lobby.steamId_ = this.steamId_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        lobby.maxMembers_ = this.maxMembers_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        lobby.lobbyType_ = this.lobbyType_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        lobby.lobbyFlags_ = this.lobbyFlags_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        lobby.metadata_ = this.metadata_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        lobby.numMembers_ = this.numMembers_;
                        i |= 32;
                    }
                    if ((i2 & 64) != 0) {
                        lobby.distance_ = this.distance_;
                        i |= 64;
                    }
                    if ((i2 & 128) != 0) {
                        lobby.weight_ = this.weight_;
                        i |= 128;
                    }
                    if ((i2 & 256) != 0) {
                        lobby.ping_ = this.ping_;
                        i |= 256;
                    }
                    if ((i2 & 512) != 0) {
                        lobby.missingPing_ = this.missingPing_;
                        i |= 512;
                    }
                    lobby.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Lobby) {
                        return mergeFrom((Lobby) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Lobby lobby) {
                    if (lobby == Lobby.getDefaultInstance()) {
                        return this;
                    }
                    if (lobby.hasSteamId()) {
                        setSteamId(lobby.getSteamId());
                    }
                    if (lobby.hasMaxMembers()) {
                        setMaxMembers(lobby.getMaxMembers());
                    }
                    if (lobby.hasLobbyType()) {
                        setLobbyType(lobby.getLobbyType());
                    }
                    if (lobby.hasLobbyFlags()) {
                        setLobbyFlags(lobby.getLobbyFlags());
                    }
                    if (lobby.hasMetadata()) {
                        setMetadata(lobby.getMetadata());
                    }
                    if (lobby.hasNumMembers()) {
                        setNumMembers(lobby.getNumMembers());
                    }
                    if (lobby.hasDistance()) {
                        setDistance(lobby.getDistance());
                    }
                    if (lobby.hasWeight()) {
                        setWeight(lobby.getWeight());
                    }
                    if (lobby.hasPing()) {
                        setPing(lobby.getPing());
                    }
                    if (lobby.hasMissingPing()) {
                        setMissingPing(lobby.getMissingPing());
                    }
                    mergeUnknownFields(lobby.getUnknownFields());
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
                                switch (tag) {
                                    case 0:
                                        z = true;
                                        break;
                                    case 9:
                                        this.steamId_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                        break;
                                    case 16:
                                        this.maxMembers_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 2;
                                        break;
                                    case 24:
                                        this.lobbyType_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 4;
                                        break;
                                    case 32:
                                        this.lobbyFlags_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 8;
                                        break;
                                    case 42:
                                        this.metadata_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 16;
                                        break;
                                    case 48:
                                        this.numMembers_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 32;
                                        break;
                                    case SteammessagesPublishedfileSteamclient.PublishedFileDetails.LANGUAGE_FIELD_NUMBER /* 61 */:
                                        this.distance_ = codedInputStream.readFloat();
                                        this.bitField0_ |= 64;
                                        break;
                                    case 64:
                                        this.weight_ = codedInputStream.readInt64();
                                        this.bitField0_ |= 128;
                                        break;
                                    case 72:
                                        this.ping_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 256;
                                        break;
                                    case 80:
                                        this.missingPing_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 512;
                                        break;
                                    default:
                                        if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                            z = true;
                                        }
                                        break;
                                }
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasSteamId() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public long getSteamId() {
                    return this.steamId_;
                }

                public Builder setSteamId(long j) {
                    this.steamId_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearSteamId() {
                    this.bitField0_ &= -2;
                    this.steamId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasMaxMembers() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public int getMaxMembers() {
                    return this.maxMembers_;
                }

                public Builder setMaxMembers(int i) {
                    this.maxMembers_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearMaxMembers() {
                    this.bitField0_ &= -3;
                    this.maxMembers_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasLobbyType() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public int getLobbyType() {
                    return this.lobbyType_;
                }

                public Builder setLobbyType(int i) {
                    this.lobbyType_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearLobbyType() {
                    this.bitField0_ &= -5;
                    this.lobbyType_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasLobbyFlags() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public int getLobbyFlags() {
                    return this.lobbyFlags_;
                }

                public Builder setLobbyFlags(int i) {
                    this.lobbyFlags_ = i;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearLobbyFlags() {
                    this.bitField0_ &= -9;
                    this.lobbyFlags_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasMetadata() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public ByteString getMetadata() {
                    return this.metadata_;
                }

                public Builder setMetadata(ByteString byteString) {
                    byteString.getClass();
                    this.metadata_ = byteString;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearMetadata() {
                    this.bitField0_ &= -17;
                    this.metadata_ = Lobby.getDefaultInstance().getMetadata();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasNumMembers() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public int getNumMembers() {
                    return this.numMembers_;
                }

                public Builder setNumMembers(int i) {
                    this.numMembers_ = i;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearNumMembers() {
                    this.bitField0_ &= -33;
                    this.numMembers_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasDistance() {
                    return (this.bitField0_ & 64) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public float getDistance() {
                    return this.distance_;
                }

                public Builder setDistance(float f) {
                    this.distance_ = f;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }

                public Builder clearDistance() {
                    this.bitField0_ &= -65;
                    this.distance_ = 0.0f;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasWeight() {
                    return (this.bitField0_ & 128) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public long getWeight() {
                    return this.weight_;
                }

                public Builder setWeight(long j) {
                    this.weight_ = j;
                    this.bitField0_ |= 128;
                    onChanged();
                    return this;
                }

                public Builder clearWeight() {
                    this.bitField0_ &= -129;
                    this.weight_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasPing() {
                    return (this.bitField0_ & 256) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public int getPing() {
                    return this.ping_;
                }

                public Builder setPing(int i) {
                    this.ping_ = i;
                    this.bitField0_ |= 256;
                    onChanged();
                    return this;
                }

                public Builder clearPing() {
                    this.bitField0_ &= -257;
                    this.ping_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public boolean hasMissingPing() {
                    return (this.bitField0_ & 512) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponse.LobbyOrBuilder
                public int getMissingPing() {
                    return this.missingPing_;
                }

                public Builder setMissingPing(int i) {
                    this.missingPing_ = i;
                    this.bitField0_ |= 512;
                    onChanged();
                    return this;
                }

                public Builder clearMissingPing() {
                    this.bitField0_ &= -513;
                    this.missingPing_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static Lobby getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Lobby> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Lobby> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Lobby getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public List<Lobby> getLobbiesList() {
            return this.lobbies_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public List<? extends LobbyOrBuilder> getLobbiesOrBuilderList() {
            return this.lobbies_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public int getLobbiesCount() {
            return this.lobbies_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public Lobby getLobbies(int i) {
            return this.lobbies_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
        public LobbyOrBuilder getLobbiesOrBuilder(int i) {
            return this.lobbies_.get(i);
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
                codedOutputStream.writeInt32(3, this.eresult_);
            }
            for (int i = 0; i < this.lobbies_.size(); i++) {
                codedOutputStream.writeMessage(4, this.lobbies_.get(i));
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
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.eresult_);
            }
            for (int i2 = 0; i2 < this.lobbies_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(4, this.lobbies_.get(i2));
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
            if (!(obj instanceof CMsgClientMMSGetLobbyListResponse)) {
                return super.equals(obj);
            }
            CMsgClientMMSGetLobbyListResponse cMsgClientMMSGetLobbyListResponse = (CMsgClientMMSGetLobbyListResponse) obj;
            if (hasAppId() != cMsgClientMMSGetLobbyListResponse.hasAppId()) {
                return false;
            }
            if ((!hasAppId() || getAppId() == cMsgClientMMSGetLobbyListResponse.getAppId()) && hasEresult() == cMsgClientMMSGetLobbyListResponse.hasEresult()) {
                return (!hasEresult() || getEresult() == cMsgClientMMSGetLobbyListResponse.getEresult()) && getLobbiesList().equals(cMsgClientMMSGetLobbyListResponse.getLobbiesList()) && getUnknownFields().equals(cMsgClientMMSGetLobbyListResponse.getUnknownFields());
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
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getEresult();
            }
            if (getLobbiesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getLobbiesList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSGetLobbyListResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyListResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyListResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSGetLobbyListResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSGetLobbyListResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyListResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSGetLobbyListResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSGetLobbyListResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyListResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSGetLobbyListResponse cMsgClientMMSGetLobbyListResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSGetLobbyListResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSGetLobbyListResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int eresult_;
            private RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> lobbiesBuilder_;
            private List<Lobby> lobbies_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSGetLobbyListResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.lobbies_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.lobbies_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.eresult_ = 2;
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.lobbies_ = Collections.emptyList();
                } else {
                    this.lobbies_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyListResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSGetLobbyListResponse getDefaultInstanceForType() {
                return CMsgClientMMSGetLobbyListResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSGetLobbyListResponse build() {
                CMsgClientMMSGetLobbyListResponse cMsgClientMMSGetLobbyListResponseBuildPartial = buildPartial();
                if (cMsgClientMMSGetLobbyListResponseBuildPartial.isInitialized()) {
                    return cMsgClientMMSGetLobbyListResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSGetLobbyListResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSGetLobbyListResponse buildPartial() {
                CMsgClientMMSGetLobbyListResponse cMsgClientMMSGetLobbyListResponse = new CMsgClientMMSGetLobbyListResponse(this);
                buildPartialRepeatedFields(cMsgClientMMSGetLobbyListResponse);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSGetLobbyListResponse);
                }
                onBuilt();
                return cMsgClientMMSGetLobbyListResponse;
            }

            private void buildPartialRepeatedFields(CMsgClientMMSGetLobbyListResponse cMsgClientMMSGetLobbyListResponse) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.lobbies_ = Collections.unmodifiableList(this.lobbies_);
                        this.bitField0_ &= -5;
                    }
                    cMsgClientMMSGetLobbyListResponse.lobbies_ = this.lobbies_;
                    return;
                }
                cMsgClientMMSGetLobbyListResponse.lobbies_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientMMSGetLobbyListResponse cMsgClientMMSGetLobbyListResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSGetLobbyListResponse.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSGetLobbyListResponse.eresult_ = this.eresult_;
                    i |= 2;
                }
                cMsgClientMMSGetLobbyListResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSGetLobbyListResponse) {
                    return mergeFrom((CMsgClientMMSGetLobbyListResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSGetLobbyListResponse cMsgClientMMSGetLobbyListResponse) {
                if (cMsgClientMMSGetLobbyListResponse == CMsgClientMMSGetLobbyListResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSGetLobbyListResponse.hasAppId()) {
                    setAppId(cMsgClientMMSGetLobbyListResponse.getAppId());
                }
                if (cMsgClientMMSGetLobbyListResponse.hasEresult()) {
                    setEresult(cMsgClientMMSGetLobbyListResponse.getEresult());
                }
                if (this.lobbiesBuilder_ == null) {
                    if (!cMsgClientMMSGetLobbyListResponse.lobbies_.isEmpty()) {
                        if (this.lobbies_.isEmpty()) {
                            this.lobbies_ = cMsgClientMMSGetLobbyListResponse.lobbies_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureLobbiesIsMutable();
                            this.lobbies_.addAll(cMsgClientMMSGetLobbyListResponse.lobbies_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientMMSGetLobbyListResponse.lobbies_.isEmpty()) {
                    if (this.lobbiesBuilder_.isEmpty()) {
                        this.lobbiesBuilder_.dispose();
                        this.lobbiesBuilder_ = null;
                        this.lobbies_ = cMsgClientMMSGetLobbyListResponse.lobbies_;
                        this.bitField0_ &= -5;
                        this.lobbiesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetLobbiesFieldBuilder() : null;
                    } else {
                        this.lobbiesBuilder_.addAllMessages(cMsgClientMMSGetLobbyListResponse.lobbies_);
                    }
                }
                mergeUnknownFields(cMsgClientMMSGetLobbyListResponse.getUnknownFields());
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
                                } else if (tag == 24) {
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 34) {
                                    Lobby lobby = (Lobby) codedInputStream.readMessage(Lobby.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureLobbiesIsMutable();
                                        this.lobbies_.add(lobby);
                                    } else {
                                        repeatedFieldBuilder.addMessage(lobby);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -3;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            private void ensureLobbiesIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.lobbies_ = new ArrayList(this.lobbies_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public List<Lobby> getLobbiesList() {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.lobbies_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public int getLobbiesCount() {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.lobbies_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public Lobby getLobbies(int i) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.lobbies_.get(i);
                }
                return (Lobby) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setLobbies(int i, Lobby lobby) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    lobby.getClass();
                    ensureLobbiesIsMutable();
                    this.lobbies_.set(i, lobby);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, lobby);
                }
                return this;
            }

            public Builder setLobbies(int i, Lobby.Builder builder) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLobbiesIsMutable();
                    this.lobbies_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addLobbies(Lobby lobby) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    lobby.getClass();
                    ensureLobbiesIsMutable();
                    this.lobbies_.add(lobby);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(lobby);
                }
                return this;
            }

            public Builder addLobbies(int i, Lobby lobby) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    lobby.getClass();
                    ensureLobbiesIsMutable();
                    this.lobbies_.add(i, lobby);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, lobby);
                }
                return this;
            }

            public Builder addLobbies(Lobby.Builder builder) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLobbiesIsMutable();
                    this.lobbies_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addLobbies(int i, Lobby.Builder builder) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLobbiesIsMutable();
                    this.lobbies_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllLobbies(Iterable<? extends Lobby> iterable) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLobbiesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.lobbies_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearLobbies() {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.lobbies_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeLobbies(int i) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureLobbiesIsMutable();
                    this.lobbies_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Lobby.Builder getLobbiesBuilder(int i) {
                return (Lobby.Builder) internalGetLobbiesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public LobbyOrBuilder getLobbiesOrBuilder(int i) {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.lobbies_.get(i);
                }
                return (LobbyOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyListResponseOrBuilder
            public List<? extends LobbyOrBuilder> getLobbiesOrBuilderList() {
                RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> repeatedFieldBuilder = this.lobbiesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.lobbies_);
            }

            public Lobby.Builder addLobbiesBuilder() {
                return (Lobby.Builder) internalGetLobbiesFieldBuilder().addBuilder(Lobby.getDefaultInstance());
            }

            public Lobby.Builder addLobbiesBuilder(int i) {
                return (Lobby.Builder) internalGetLobbiesFieldBuilder().addBuilder(i, Lobby.getDefaultInstance());
            }

            public List<Lobby.Builder> getLobbiesBuilderList() {
                return internalGetLobbiesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Lobby, Lobby.Builder, LobbyOrBuilder> internalGetLobbiesFieldBuilder() {
                if (this.lobbiesBuilder_ == null) {
                    this.lobbiesBuilder_ = new RepeatedFieldBuilder<>(this.lobbies_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.lobbies_ = null;
                }
                return this.lobbiesBuilder_;
            }
        }

        public static CMsgClientMMSGetLobbyListResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSGetLobbyListResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSGetLobbyListResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSGetLobbyListResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSSetLobbyData extends GeneratedMessage implements CMsgClientMMSSetLobbyDataOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSSetLobbyData DEFAULT_INSTANCE;
        public static final int LOBBY_FLAGS_FIELD_NUMBER = 6;
        public static final int LOBBY_TYPE_FIELD_NUMBER = 5;
        public static final int MAX_MEMBERS_FIELD_NUMBER = 4;
        public static final int METADATA_FIELD_NUMBER = 7;
        public static final int NETWORK_PING_LOCATION_FIELD_NUMBER = 8;
        private static final Parser<CMsgClientMMSSetLobbyData> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        public static final int STEAM_ID_MEMBER_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int lobbyFlags_;
        private int lobbyType_;
        private int maxMembers_;
        private byte memoizedIsInitialized;
        private ByteString metadata_;
        private volatile Object networkPingLocation_;
        private long steamIdLobby_;
        private long steamIdMember_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSSetLobbyData.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSSetLobbyData();
            PARSER = new AbstractParser<CMsgClientMMSSetLobbyData>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyData.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSSetLobbyData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSSetLobbyData.newBuilder();
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

        private CMsgClientMMSSetLobbyData(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdMember_ = 0L;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            this.metadata_ = ByteString.EMPTY;
            this.networkPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSSetLobbyData() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdMember_ = 0L;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.metadata_ = byteString;
            this.networkPingLocation_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.metadata_ = byteString;
            this.networkPingLocation_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyData_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyData.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasSteamIdMember() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public long getSteamIdMember() {
            return this.steamIdMember_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasMaxMembers() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public int getMaxMembers() {
            return this.maxMembers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasLobbyType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public int getLobbyType() {
            return this.lobbyType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasLobbyFlags() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public int getLobbyFlags() {
            return this.lobbyFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasMetadata() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public ByteString getMetadata() {
            return this.metadata_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public boolean hasNetworkPingLocation() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public String getNetworkPingLocation() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.networkPingLocation_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
        public ByteString getNetworkPingLocationBytes() {
            Object obj = this.networkPingLocation_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.networkPingLocation_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.appId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamIdMember_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.maxMembers_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt32(5, this.lobbyType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeInt32(6, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBytes(7, this.metadata_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.networkPingLocation_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(3, this.steamIdMember_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(4, this.maxMembers_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(5, this.lobbyType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(6, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(7, this.metadata_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(8, this.networkPingLocation_);
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
            if (!(obj instanceof CMsgClientMMSSetLobbyData)) {
                return super.equals(obj);
            }
            CMsgClientMMSSetLobbyData cMsgClientMMSSetLobbyData = (CMsgClientMMSSetLobbyData) obj;
            if (hasAppId() != cMsgClientMMSSetLobbyData.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSSetLobbyData.getAppId()) || hasSteamIdLobby() != cMsgClientMMSSetLobbyData.hasSteamIdLobby()) {
                return false;
            }
            if ((hasSteamIdLobby() && getSteamIdLobby() != cMsgClientMMSSetLobbyData.getSteamIdLobby()) || hasSteamIdMember() != cMsgClientMMSSetLobbyData.hasSteamIdMember()) {
                return false;
            }
            if ((hasSteamIdMember() && getSteamIdMember() != cMsgClientMMSSetLobbyData.getSteamIdMember()) || hasMaxMembers() != cMsgClientMMSSetLobbyData.hasMaxMembers()) {
                return false;
            }
            if ((hasMaxMembers() && getMaxMembers() != cMsgClientMMSSetLobbyData.getMaxMembers()) || hasLobbyType() != cMsgClientMMSSetLobbyData.hasLobbyType()) {
                return false;
            }
            if ((hasLobbyType() && getLobbyType() != cMsgClientMMSSetLobbyData.getLobbyType()) || hasLobbyFlags() != cMsgClientMMSSetLobbyData.hasLobbyFlags()) {
                return false;
            }
            if ((hasLobbyFlags() && getLobbyFlags() != cMsgClientMMSSetLobbyData.getLobbyFlags()) || hasMetadata() != cMsgClientMMSSetLobbyData.hasMetadata()) {
                return false;
            }
            if ((!hasMetadata() || getMetadata().equals(cMsgClientMMSSetLobbyData.getMetadata())) && hasNetworkPingLocation() == cMsgClientMMSSetLobbyData.hasNetworkPingLocation()) {
                return (!hasNetworkPingLocation() || getNetworkPingLocation().equals(cMsgClientMMSSetLobbyData.getNetworkPingLocation())) && getUnknownFields().equals(cMsgClientMMSSetLobbyData.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasSteamIdMember()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamIdMember());
            }
            if (hasMaxMembers()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMaxMembers();
            }
            if (hasLobbyType()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLobbyType();
            }
            if (hasLobbyFlags()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getLobbyFlags();
            }
            if (hasMetadata()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getMetadata().hashCode();
            }
            if (hasNetworkPingLocation()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getNetworkPingLocation().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSSetLobbyData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSSetLobbyData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSSetLobbyData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSSetLobbyData cMsgClientMMSSetLobbyData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSSetLobbyData);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSSetLobbyDataOrBuilder {
            private int appId_;
            private int bitField0_;
            private int lobbyFlags_;
            private int lobbyType_;
            private int maxMembers_;
            private ByteString metadata_;
            private Object networkPingLocation_;
            private long steamIdLobby_;
            private long steamIdMember_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyData_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyData.class, Builder.class);
            }

            private Builder() {
                this.metadata_ = ByteString.EMPTY;
                this.networkPingLocation_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.metadata_ = ByteString.EMPTY;
                this.networkPingLocation_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.steamIdMember_ = 0L;
                this.maxMembers_ = 0;
                this.lobbyType_ = 0;
                this.lobbyFlags_ = 0;
                this.metadata_ = ByteString.EMPTY;
                this.networkPingLocation_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyData_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSSetLobbyData getDefaultInstanceForType() {
                return CMsgClientMMSSetLobbyData.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyData build() {
                CMsgClientMMSSetLobbyData cMsgClientMMSSetLobbyDataBuildPartial = buildPartial();
                if (cMsgClientMMSSetLobbyDataBuildPartial.isInitialized()) {
                    return cMsgClientMMSSetLobbyDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSSetLobbyDataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyData buildPartial() {
                CMsgClientMMSSetLobbyData cMsgClientMMSSetLobbyData = new CMsgClientMMSSetLobbyData(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSSetLobbyData);
                }
                onBuilt();
                return cMsgClientMMSSetLobbyData;
            }

            private void buildPartial0(CMsgClientMMSSetLobbyData cMsgClientMMSSetLobbyData) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSSetLobbyData.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSSetLobbyData.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSSetLobbyData.steamIdMember_ = this.steamIdMember_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSSetLobbyData.maxMembers_ = this.maxMembers_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientMMSSetLobbyData.lobbyType_ = this.lobbyType_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientMMSSetLobbyData.lobbyFlags_ = this.lobbyFlags_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientMMSSetLobbyData.metadata_ = this.metadata_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientMMSSetLobbyData.networkPingLocation_ = this.networkPingLocation_;
                    i |= 128;
                }
                cMsgClientMMSSetLobbyData.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSSetLobbyData) {
                    return mergeFrom((CMsgClientMMSSetLobbyData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSSetLobbyData cMsgClientMMSSetLobbyData) {
                if (cMsgClientMMSSetLobbyData == CMsgClientMMSSetLobbyData.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSSetLobbyData.hasAppId()) {
                    setAppId(cMsgClientMMSSetLobbyData.getAppId());
                }
                if (cMsgClientMMSSetLobbyData.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSSetLobbyData.getSteamIdLobby());
                }
                if (cMsgClientMMSSetLobbyData.hasSteamIdMember()) {
                    setSteamIdMember(cMsgClientMMSSetLobbyData.getSteamIdMember());
                }
                if (cMsgClientMMSSetLobbyData.hasMaxMembers()) {
                    setMaxMembers(cMsgClientMMSSetLobbyData.getMaxMembers());
                }
                if (cMsgClientMMSSetLobbyData.hasLobbyType()) {
                    setLobbyType(cMsgClientMMSSetLobbyData.getLobbyType());
                }
                if (cMsgClientMMSSetLobbyData.hasLobbyFlags()) {
                    setLobbyFlags(cMsgClientMMSSetLobbyData.getLobbyFlags());
                }
                if (cMsgClientMMSSetLobbyData.hasMetadata()) {
                    setMetadata(cMsgClientMMSSetLobbyData.getMetadata());
                }
                if (cMsgClientMMSSetLobbyData.hasNetworkPingLocation()) {
                    this.networkPingLocation_ = cMsgClientMMSSetLobbyData.networkPingLocation_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientMMSSetLobbyData.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamIdMember_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.maxMembers_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.lobbyType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.lobbyFlags_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 58) {
                                    this.metadata_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                } else if (tag == 66) {
                                    this.networkPingLocation_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasSteamIdMember() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public long getSteamIdMember() {
                return this.steamIdMember_;
            }

            public Builder setSteamIdMember(long j) {
                this.steamIdMember_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamIdMember() {
                this.bitField0_ &= -5;
                this.steamIdMember_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasMaxMembers() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public int getMaxMembers() {
                return this.maxMembers_;
            }

            public Builder setMaxMembers(int i) {
                this.maxMembers_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMaxMembers() {
                this.bitField0_ &= -9;
                this.maxMembers_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasLobbyType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public int getLobbyType() {
                return this.lobbyType_;
            }

            public Builder setLobbyType(int i) {
                this.lobbyType_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearLobbyType() {
                this.bitField0_ &= -17;
                this.lobbyType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasLobbyFlags() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public int getLobbyFlags() {
                return this.lobbyFlags_;
            }

            public Builder setLobbyFlags(int i) {
                this.lobbyFlags_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearLobbyFlags() {
                this.bitField0_ &= -33;
                this.lobbyFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasMetadata() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public ByteString getMetadata() {
                return this.metadata_;
            }

            public Builder setMetadata(ByteString byteString) {
                byteString.getClass();
                this.metadata_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearMetadata() {
                this.bitField0_ &= -65;
                this.metadata_ = CMsgClientMMSSetLobbyData.getDefaultInstance().getMetadata();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public boolean hasNetworkPingLocation() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public String getNetworkPingLocation() {
                Object obj = this.networkPingLocation_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.networkPingLocation_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataOrBuilder
            public ByteString getNetworkPingLocationBytes() {
                Object obj = this.networkPingLocation_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.networkPingLocation_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setNetworkPingLocation(String str) {
                str.getClass();
                this.networkPingLocation_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearNetworkPingLocation() {
                this.networkPingLocation_ = CMsgClientMMSSetLobbyData.getDefaultInstance().getNetworkPingLocation();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setNetworkPingLocationBytes(ByteString byteString) {
                byteString.getClass();
                this.networkPingLocation_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSSetLobbyData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSSetLobbyData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSSetLobbyData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSSetLobbyData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSSetLobbyDataResponse extends GeneratedMessage implements CMsgClientMMSSetLobbyDataResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSSetLobbyDataResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientMMSSetLobbyDataResponse> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSSetLobbyDataResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSSetLobbyDataResponse();
            PARSER = new AbstractParser<CMsgClientMMSSetLobbyDataResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSSetLobbyDataResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSSetLobbyDataResponse.newBuilder();
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

        private CMsgClientMMSSetLobbyDataResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.eresult_ = 2;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSSetLobbyDataResponse() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyDataResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyDataResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyDataResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.eresult_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.eresult_);
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
            if (!(obj instanceof CMsgClientMMSSetLobbyDataResponse)) {
                return super.equals(obj);
            }
            CMsgClientMMSSetLobbyDataResponse cMsgClientMMSSetLobbyDataResponse = (CMsgClientMMSSetLobbyDataResponse) obj;
            if (hasAppId() != cMsgClientMMSSetLobbyDataResponse.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSSetLobbyDataResponse.getAppId()) || hasSteamIdLobby() != cMsgClientMMSSetLobbyDataResponse.hasSteamIdLobby()) {
                return false;
            }
            if ((!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSSetLobbyDataResponse.getSteamIdLobby()) && hasEresult() == cMsgClientMMSSetLobbyDataResponse.hasEresult()) {
                return (!hasEresult() || getEresult() == cMsgClientMMSSetLobbyDataResponse.getEresult()) && getUnknownFields().equals(cMsgClientMMSSetLobbyDataResponse.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getEresult();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyDataResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyDataResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyDataResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyDataResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSSetLobbyDataResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSSetLobbyDataResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyDataResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSSetLobbyDataResponse cMsgClientMMSSetLobbyDataResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSSetLobbyDataResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSSetLobbyDataResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int eresult_;
            private long steamIdLobby_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyDataResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyDataResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyDataResponse.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.eresult_ = 2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyDataResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSSetLobbyDataResponse getDefaultInstanceForType() {
                return CMsgClientMMSSetLobbyDataResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyDataResponse build() {
                CMsgClientMMSSetLobbyDataResponse cMsgClientMMSSetLobbyDataResponseBuildPartial = buildPartial();
                if (cMsgClientMMSSetLobbyDataResponseBuildPartial.isInitialized()) {
                    return cMsgClientMMSSetLobbyDataResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSSetLobbyDataResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyDataResponse buildPartial() {
                CMsgClientMMSSetLobbyDataResponse cMsgClientMMSSetLobbyDataResponse = new CMsgClientMMSSetLobbyDataResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSSetLobbyDataResponse);
                }
                onBuilt();
                return cMsgClientMMSSetLobbyDataResponse;
            }

            private void buildPartial0(CMsgClientMMSSetLobbyDataResponse cMsgClientMMSSetLobbyDataResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSSetLobbyDataResponse.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSSetLobbyDataResponse.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSSetLobbyDataResponse.eresult_ = this.eresult_;
                    i |= 4;
                }
                cMsgClientMMSSetLobbyDataResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSSetLobbyDataResponse) {
                    return mergeFrom((CMsgClientMMSSetLobbyDataResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSSetLobbyDataResponse cMsgClientMMSSetLobbyDataResponse) {
                if (cMsgClientMMSSetLobbyDataResponse == CMsgClientMMSSetLobbyDataResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSSetLobbyDataResponse.hasAppId()) {
                    setAppId(cMsgClientMMSSetLobbyDataResponse.getAppId());
                }
                if (cMsgClientMMSSetLobbyDataResponse.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSSetLobbyDataResponse.getSteamIdLobby());
                }
                if (cMsgClientMMSSetLobbyDataResponse.hasEresult()) {
                    setEresult(cMsgClientMMSSetLobbyDataResponse.getEresult());
                }
                mergeUnknownFields(cMsgClientMMSSetLobbyDataResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.eresult_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyDataResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -5;
                this.eresult_ = 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSSetLobbyDataResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSSetLobbyDataResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSSetLobbyDataResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSSetLobbyDataResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSGetLobbyData extends GeneratedMessage implements CMsgClientMMSGetLobbyDataOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSGetLobbyData DEFAULT_INSTANCE;
        private static final Parser<CMsgClientMMSGetLobbyData> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSGetLobbyData.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSGetLobbyData();
            PARSER = new AbstractParser<CMsgClientMMSGetLobbyData>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyData.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSGetLobbyData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSGetLobbyData.newBuilder();
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

        private CMsgClientMMSGetLobbyData(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSGetLobbyData() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyData_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSGetLobbyData.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
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
            if (!(obj instanceof CMsgClientMMSGetLobbyData)) {
                return super.equals(obj);
            }
            CMsgClientMMSGetLobbyData cMsgClientMMSGetLobbyData = (CMsgClientMMSGetLobbyData) obj;
            if (hasAppId() != cMsgClientMMSGetLobbyData.hasAppId()) {
                return false;
            }
            if ((!hasAppId() || getAppId() == cMsgClientMMSGetLobbyData.getAppId()) && hasSteamIdLobby() == cMsgClientMMSGetLobbyData.hasSteamIdLobby()) {
                return (!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSGetLobbyData.getSteamIdLobby()) && getUnknownFields().equals(cMsgClientMMSGetLobbyData.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSGetLobbyData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSGetLobbyData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSGetLobbyData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSGetLobbyData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSGetLobbyData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSGetLobbyData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSGetLobbyData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSGetLobbyData cMsgClientMMSGetLobbyData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSGetLobbyData);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSGetLobbyDataOrBuilder {
            private int appId_;
            private int bitField0_;
            private long steamIdLobby_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyData_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSGetLobbyData.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSGetLobbyData_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSGetLobbyData getDefaultInstanceForType() {
                return CMsgClientMMSGetLobbyData.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSGetLobbyData build() {
                CMsgClientMMSGetLobbyData cMsgClientMMSGetLobbyDataBuildPartial = buildPartial();
                if (cMsgClientMMSGetLobbyDataBuildPartial.isInitialized()) {
                    return cMsgClientMMSGetLobbyDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSGetLobbyDataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSGetLobbyData buildPartial() {
                CMsgClientMMSGetLobbyData cMsgClientMMSGetLobbyData = new CMsgClientMMSGetLobbyData(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSGetLobbyData);
                }
                onBuilt();
                return cMsgClientMMSGetLobbyData;
            }

            private void buildPartial0(CMsgClientMMSGetLobbyData cMsgClientMMSGetLobbyData) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSGetLobbyData.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSGetLobbyData.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                cMsgClientMMSGetLobbyData.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSGetLobbyData) {
                    return mergeFrom((CMsgClientMMSGetLobbyData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSGetLobbyData cMsgClientMMSGetLobbyData) {
                if (cMsgClientMMSGetLobbyData == CMsgClientMMSGetLobbyData.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSGetLobbyData.hasAppId()) {
                    setAppId(cMsgClientMMSGetLobbyData.getAppId());
                }
                if (cMsgClientMMSGetLobbyData.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSGetLobbyData.getSteamIdLobby());
                }
                mergeUnknownFields(cMsgClientMMSGetLobbyData.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSGetLobbyDataOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSGetLobbyData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSGetLobbyData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSGetLobbyData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSGetLobbyData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSLobbyData extends GeneratedMessage implements CMsgClientMMSLobbyDataOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSLobbyData DEFAULT_INSTANCE;
        public static final int LOBBY_CELLID_FIELD_NUMBER = 10;
        public static final int LOBBY_FLAGS_FIELD_NUMBER = 6;
        public static final int LOBBY_TYPE_FIELD_NUMBER = 5;
        public static final int MAX_MEMBERS_FIELD_NUMBER = 4;
        public static final int MEMBERS_FIELD_NUMBER = 9;
        public static final int METADATA_FIELD_NUMBER = 8;
        public static final int NUM_MEMBERS_FIELD_NUMBER = 3;
        public static final int OWNER_SHOULD_ACCEPT_CHANGES_FIELD_NUMBER = 11;
        private static final Parser<CMsgClientMMSLobbyData> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        public static final int STEAM_ID_OWNER_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int lobbyCellid_;
        private int lobbyFlags_;
        private int lobbyType_;
        private int maxMembers_;
        private List<Member> members_;
        private byte memoizedIsInitialized;
        private ByteString metadata_;
        private int numMembers_;
        private boolean ownerShouldAcceptChanges_;
        private long steamIdLobby_;
        private long steamIdOwner_;

        public interface MemberOrBuilder extends MessageOrBuilder {
            ByteString getMetadata();

            String getPersonaName();

            ByteString getPersonaNameBytes();

            String getPingData();

            ByteString getPingDataBytes();

            long getSteamId();

            boolean hasMetadata();

            boolean hasPersonaName();

            boolean hasPingData();

            boolean hasSteamId();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSLobbyData.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSLobbyData();
            PARSER = new AbstractParser<CMsgClientMMSLobbyData>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSLobbyData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSLobbyData.newBuilder();
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

        private CMsgClientMMSLobbyData(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.numMembers_ = 0;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            this.steamIdOwner_ = 0L;
            this.metadata_ = ByteString.EMPTY;
            this.lobbyCellid_ = 0;
            this.ownerShouldAcceptChanges_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSLobbyData() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.numMembers_ = 0;
            this.maxMembers_ = 0;
            this.lobbyType_ = 0;
            this.lobbyFlags_ = 0;
            this.steamIdOwner_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.lobbyCellid_ = 0;
            this.ownerShouldAcceptChanges_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.metadata_ = byteString;
            this.members_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSLobbyData.class, Builder.class);
        }

        public static final class Member extends GeneratedMessage implements MemberOrBuilder {
            private static final Member DEFAULT_INSTANCE;
            public static final int METADATA_FIELD_NUMBER = 3;
            private static final Parser<Member> PARSER;
            public static final int PERSONA_NAME_FIELD_NUMBER = 2;
            public static final int PING_DATA_FIELD_NUMBER = 4;
            public static final int STEAM_ID_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private ByteString metadata_;
            private volatile Object personaName_;
            private volatile Object pingData_;
            private long steamId_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Member.class.getName());
                DEFAULT_INSTANCE = new Member();
                PARSER = new AbstractParser<Member>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.Member.1
                    @Override // com.google.protobuf.Parser
                    public Member parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Member.newBuilder();
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

            private Member(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.steamId_ = 0L;
                this.personaName_ = "";
                this.metadata_ = ByteString.EMPTY;
                this.pingData_ = "";
                this.memoizedIsInitialized = (byte) -1;
            }

            private Member() {
                this.steamId_ = 0L;
                this.personaName_ = "";
                ByteString byteString = ByteString.EMPTY;
                this.metadata_ = byteString;
                this.pingData_ = "";
                this.memoizedIsInitialized = (byte) -1;
                this.personaName_ = "";
                this.metadata_ = byteString;
                this.pingData_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_Member_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_Member_fieldAccessorTable.ensureFieldAccessorsInitialized(Member.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public boolean hasSteamId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public long getSteamId() {
                return this.steamId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public boolean hasPersonaName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public String getPersonaName() {
                Object obj = this.personaName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.personaName_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public ByteString getPersonaNameBytes() {
                Object obj = this.personaName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.personaName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public boolean hasMetadata() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public ByteString getMetadata() {
                return this.metadata_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public boolean hasPingData() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public String getPingData() {
                Object obj = this.pingData_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.pingData_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
            public ByteString getPingDataBytes() {
                Object obj = this.pingData_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.pingData_ = byteStringCopyFromUtf8;
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
                    codedOutputStream.writeFixed64(1, this.steamId_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 2, this.personaName_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeBytes(3, this.metadata_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 4, this.pingData_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamId_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.personaName_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBytesSize(3, this.metadata_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(4, this.pingData_);
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
                if (!(obj instanceof Member)) {
                    return super.equals(obj);
                }
                Member member = (Member) obj;
                if (hasSteamId() != member.hasSteamId()) {
                    return false;
                }
                if ((hasSteamId() && getSteamId() != member.getSteamId()) || hasPersonaName() != member.hasPersonaName()) {
                    return false;
                }
                if ((hasPersonaName() && !getPersonaName().equals(member.getPersonaName())) || hasMetadata() != member.hasMetadata()) {
                    return false;
                }
                if ((!hasMetadata() || getMetadata().equals(member.getMetadata())) && hasPingData() == member.hasPingData()) {
                    return (!hasPingData() || getPingData().equals(member.getPingData())) && getUnknownFields().equals(member.getUnknownFields());
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
                if (hasSteamId()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamId());
                }
                if (hasPersonaName()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getPersonaName().hashCode();
                }
                if (hasMetadata()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getMetadata().hashCode();
                }
                if (hasPingData()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getPingData().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Member parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Member parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Member parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Member parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Member parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Member parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Member parseFrom(InputStream inputStream) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Member parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Member parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Member) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Member parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Member) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Member parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Member parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Member) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Member member) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(member);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements MemberOrBuilder {
                private int bitField0_;
                private ByteString metadata_;
                private Object personaName_;
                private Object pingData_;
                private long steamId_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_Member_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_Member_fieldAccessorTable.ensureFieldAccessorsInitialized(Member.class, Builder.class);
                }

                private Builder() {
                    this.personaName_ = "";
                    this.metadata_ = ByteString.EMPTY;
                    this.pingData_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.personaName_ = "";
                    this.metadata_ = ByteString.EMPTY;
                    this.pingData_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.steamId_ = 0L;
                    this.personaName_ = "";
                    this.metadata_ = ByteString.EMPTY;
                    this.pingData_ = "";
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_Member_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Member getDefaultInstanceForType() {
                    return Member.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Member build() {
                    Member memberBuildPartial = buildPartial();
                    if (memberBuildPartial.isInitialized()) {
                        return memberBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) memberBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Member buildPartial() {
                    Member member = new Member(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(member);
                    }
                    onBuilt();
                    return member;
                }

                private void buildPartial0(Member member) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        member.steamId_ = this.steamId_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        member.personaName_ = this.personaName_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        member.metadata_ = this.metadata_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        member.pingData_ = this.pingData_;
                        i |= 8;
                    }
                    member.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Member) {
                        return mergeFrom((Member) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Member member) {
                    if (member == Member.getDefaultInstance()) {
                        return this;
                    }
                    if (member.hasSteamId()) {
                        setSteamId(member.getSteamId());
                    }
                    if (member.hasPersonaName()) {
                        this.personaName_ = member.personaName_;
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    if (member.hasMetadata()) {
                        setMetadata(member.getMetadata());
                    }
                    if (member.hasPingData()) {
                        this.pingData_ = member.pingData_;
                        this.bitField0_ |= 8;
                        onChanged();
                    }
                    mergeUnknownFields(member.getUnknownFields());
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
                                        this.steamId_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 18) {
                                        this.personaName_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 26) {
                                        this.metadata_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 34) {
                                        this.pingData_ = codedInputStream.readBytes();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public boolean hasSteamId() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public long getSteamId() {
                    return this.steamId_;
                }

                public Builder setSteamId(long j) {
                    this.steamId_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearSteamId() {
                    this.bitField0_ &= -2;
                    this.steamId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public boolean hasPersonaName() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public String getPersonaName() {
                    Object obj = this.personaName_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.personaName_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public ByteString getPersonaNameBytes() {
                    Object obj = this.personaName_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.personaName_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setPersonaName(String str) {
                    str.getClass();
                    this.personaName_ = str;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearPersonaName() {
                    this.personaName_ = Member.getDefaultInstance().getPersonaName();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder setPersonaNameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.personaName_ = byteString;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public boolean hasMetadata() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public ByteString getMetadata() {
                    return this.metadata_;
                }

                public Builder setMetadata(ByteString byteString) {
                    byteString.getClass();
                    this.metadata_ = byteString;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearMetadata() {
                    this.bitField0_ &= -5;
                    this.metadata_ = Member.getDefaultInstance().getMetadata();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public boolean hasPingData() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public String getPingData() {
                    Object obj = this.pingData_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.pingData_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyData.MemberOrBuilder
                public ByteString getPingDataBytes() {
                    Object obj = this.pingData_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.pingData_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setPingData(String str) {
                    str.getClass();
                    this.pingData_ = str;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearPingData() {
                    this.pingData_ = Member.getDefaultInstance().getPingData();
                    this.bitField0_ &= -9;
                    onChanged();
                    return this;
                }

                public Builder setPingDataBytes(ByteString byteString) {
                    byteString.getClass();
                    this.pingData_ = byteString;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }
            }

            public static Member getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Member> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Member> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Member getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasNumMembers() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public int getNumMembers() {
            return this.numMembers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasMaxMembers() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public int getMaxMembers() {
            return this.maxMembers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasLobbyType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public int getLobbyType() {
            return this.lobbyType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasLobbyFlags() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public int getLobbyFlags() {
            return this.lobbyFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasSteamIdOwner() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public long getSteamIdOwner() {
            return this.steamIdOwner_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasMetadata() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public ByteString getMetadata() {
            return this.metadata_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public List<Member> getMembersList() {
            return this.members_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public List<? extends MemberOrBuilder> getMembersOrBuilderList() {
            return this.members_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public int getMembersCount() {
            return this.members_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public Member getMembers(int i) {
            return this.members_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public MemberOrBuilder getMembersOrBuilder(int i) {
            return this.members_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasLobbyCellid() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public int getLobbyCellid() {
            return this.lobbyCellid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean hasOwnerShouldAcceptChanges() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
        public boolean getOwnerShouldAcceptChanges() {
            return this.ownerShouldAcceptChanges_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.numMembers_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.maxMembers_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt32(5, this.lobbyType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeInt32(6, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeFixed64(7, this.steamIdOwner_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBytes(8, this.metadata_);
            }
            for (int i = 0; i < this.members_.size(); i++) {
                codedOutputStream.writeMessage(9, this.members_.get(i));
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(10, this.lobbyCellid_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeBool(11, this.ownerShouldAcceptChanges_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.numMembers_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(4, this.maxMembers_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(5, this.lobbyType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(6, this.lobbyFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(7, this.steamIdOwner_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(8, this.metadata_);
            }
            for (int i2 = 0; i2 < this.members_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(9, this.members_.get(i2));
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(10, this.lobbyCellid_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(11, this.ownerShouldAcceptChanges_);
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
            if (!(obj instanceof CMsgClientMMSLobbyData)) {
                return super.equals(obj);
            }
            CMsgClientMMSLobbyData cMsgClientMMSLobbyData = (CMsgClientMMSLobbyData) obj;
            if (hasAppId() != cMsgClientMMSLobbyData.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSLobbyData.getAppId()) || hasSteamIdLobby() != cMsgClientMMSLobbyData.hasSteamIdLobby()) {
                return false;
            }
            if ((hasSteamIdLobby() && getSteamIdLobby() != cMsgClientMMSLobbyData.getSteamIdLobby()) || hasNumMembers() != cMsgClientMMSLobbyData.hasNumMembers()) {
                return false;
            }
            if ((hasNumMembers() && getNumMembers() != cMsgClientMMSLobbyData.getNumMembers()) || hasMaxMembers() != cMsgClientMMSLobbyData.hasMaxMembers()) {
                return false;
            }
            if ((hasMaxMembers() && getMaxMembers() != cMsgClientMMSLobbyData.getMaxMembers()) || hasLobbyType() != cMsgClientMMSLobbyData.hasLobbyType()) {
                return false;
            }
            if ((hasLobbyType() && getLobbyType() != cMsgClientMMSLobbyData.getLobbyType()) || hasLobbyFlags() != cMsgClientMMSLobbyData.hasLobbyFlags()) {
                return false;
            }
            if ((hasLobbyFlags() && getLobbyFlags() != cMsgClientMMSLobbyData.getLobbyFlags()) || hasSteamIdOwner() != cMsgClientMMSLobbyData.hasSteamIdOwner()) {
                return false;
            }
            if ((hasSteamIdOwner() && getSteamIdOwner() != cMsgClientMMSLobbyData.getSteamIdOwner()) || hasMetadata() != cMsgClientMMSLobbyData.hasMetadata()) {
                return false;
            }
            if ((hasMetadata() && !getMetadata().equals(cMsgClientMMSLobbyData.getMetadata())) || !getMembersList().equals(cMsgClientMMSLobbyData.getMembersList()) || hasLobbyCellid() != cMsgClientMMSLobbyData.hasLobbyCellid()) {
                return false;
            }
            if ((!hasLobbyCellid() || getLobbyCellid() == cMsgClientMMSLobbyData.getLobbyCellid()) && hasOwnerShouldAcceptChanges() == cMsgClientMMSLobbyData.hasOwnerShouldAcceptChanges()) {
                return (!hasOwnerShouldAcceptChanges() || getOwnerShouldAcceptChanges() == cMsgClientMMSLobbyData.getOwnerShouldAcceptChanges()) && getUnknownFields().equals(cMsgClientMMSLobbyData.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasNumMembers()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getNumMembers();
            }
            if (hasMaxMembers()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMaxMembers();
            }
            if (hasLobbyType()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLobbyType();
            }
            if (hasLobbyFlags()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getLobbyFlags();
            }
            if (hasSteamIdOwner()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashLong(getSteamIdOwner());
            }
            if (hasMetadata()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getMetadata().hashCode();
            }
            if (getMembersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getMembersList().hashCode();
            }
            if (hasLobbyCellid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getLobbyCellid();
            }
            if (hasOwnerShouldAcceptChanges()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + Internal.hashBoolean(getOwnerShouldAcceptChanges());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSLobbyData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSLobbyData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSLobbyData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSLobbyData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSLobbyData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSLobbyData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSLobbyData parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSLobbyData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSLobbyData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLobbyData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSLobbyData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSLobbyData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSLobbyData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLobbyData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSLobbyData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSLobbyData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSLobbyData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSLobbyData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSLobbyData cMsgClientMMSLobbyData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSLobbyData);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSLobbyDataOrBuilder {
            private int appId_;
            private int bitField0_;
            private int lobbyCellid_;
            private int lobbyFlags_;
            private int lobbyType_;
            private int maxMembers_;
            private RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> membersBuilder_;
            private List<Member> members_;
            private ByteString metadata_;
            private int numMembers_;
            private boolean ownerShouldAcceptChanges_;
            private long steamIdLobby_;
            private long steamIdOwner_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSLobbyData.class, Builder.class);
            }

            private Builder() {
                this.metadata_ = ByteString.EMPTY;
                this.members_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.metadata_ = ByteString.EMPTY;
                this.members_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.numMembers_ = 0;
                this.maxMembers_ = 0;
                this.lobbyType_ = 0;
                this.lobbyFlags_ = 0;
                this.steamIdOwner_ = 0L;
                this.metadata_ = ByteString.EMPTY;
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.members_ = Collections.emptyList();
                } else {
                    this.members_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -257;
                this.lobbyCellid_ = 0;
                this.ownerShouldAcceptChanges_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSLobbyData_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSLobbyData getDefaultInstanceForType() {
                return CMsgClientMMSLobbyData.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSLobbyData build() {
                CMsgClientMMSLobbyData cMsgClientMMSLobbyDataBuildPartial = buildPartial();
                if (cMsgClientMMSLobbyDataBuildPartial.isInitialized()) {
                    return cMsgClientMMSLobbyDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSLobbyDataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSLobbyData buildPartial() {
                CMsgClientMMSLobbyData cMsgClientMMSLobbyData = new CMsgClientMMSLobbyData(this);
                buildPartialRepeatedFields(cMsgClientMMSLobbyData);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSLobbyData);
                }
                onBuilt();
                return cMsgClientMMSLobbyData;
            }

            private void buildPartialRepeatedFields(CMsgClientMMSLobbyData cMsgClientMMSLobbyData) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 256) != 0) {
                        this.members_ = Collections.unmodifiableList(this.members_);
                        this.bitField0_ &= -257;
                    }
                    cMsgClientMMSLobbyData.members_ = this.members_;
                    return;
                }
                cMsgClientMMSLobbyData.members_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientMMSLobbyData cMsgClientMMSLobbyData) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSLobbyData.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSLobbyData.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSLobbyData.numMembers_ = this.numMembers_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSLobbyData.maxMembers_ = this.maxMembers_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientMMSLobbyData.lobbyType_ = this.lobbyType_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientMMSLobbyData.lobbyFlags_ = this.lobbyFlags_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientMMSLobbyData.steamIdOwner_ = this.steamIdOwner_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientMMSLobbyData.metadata_ = this.metadata_;
                    i |= 128;
                }
                if ((i2 & 512) != 0) {
                    cMsgClientMMSLobbyData.lobbyCellid_ = this.lobbyCellid_;
                    i |= 256;
                }
                if ((i2 & 1024) != 0) {
                    cMsgClientMMSLobbyData.ownerShouldAcceptChanges_ = this.ownerShouldAcceptChanges_;
                    i |= 512;
                }
                cMsgClientMMSLobbyData.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSLobbyData) {
                    return mergeFrom((CMsgClientMMSLobbyData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSLobbyData cMsgClientMMSLobbyData) {
                if (cMsgClientMMSLobbyData == CMsgClientMMSLobbyData.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSLobbyData.hasAppId()) {
                    setAppId(cMsgClientMMSLobbyData.getAppId());
                }
                if (cMsgClientMMSLobbyData.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSLobbyData.getSteamIdLobby());
                }
                if (cMsgClientMMSLobbyData.hasNumMembers()) {
                    setNumMembers(cMsgClientMMSLobbyData.getNumMembers());
                }
                if (cMsgClientMMSLobbyData.hasMaxMembers()) {
                    setMaxMembers(cMsgClientMMSLobbyData.getMaxMembers());
                }
                if (cMsgClientMMSLobbyData.hasLobbyType()) {
                    setLobbyType(cMsgClientMMSLobbyData.getLobbyType());
                }
                if (cMsgClientMMSLobbyData.hasLobbyFlags()) {
                    setLobbyFlags(cMsgClientMMSLobbyData.getLobbyFlags());
                }
                if (cMsgClientMMSLobbyData.hasSteamIdOwner()) {
                    setSteamIdOwner(cMsgClientMMSLobbyData.getSteamIdOwner());
                }
                if (cMsgClientMMSLobbyData.hasMetadata()) {
                    setMetadata(cMsgClientMMSLobbyData.getMetadata());
                }
                if (this.membersBuilder_ == null) {
                    if (!cMsgClientMMSLobbyData.members_.isEmpty()) {
                        if (this.members_.isEmpty()) {
                            this.members_ = cMsgClientMMSLobbyData.members_;
                            this.bitField0_ &= -257;
                        } else {
                            ensureMembersIsMutable();
                            this.members_.addAll(cMsgClientMMSLobbyData.members_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientMMSLobbyData.members_.isEmpty()) {
                    if (this.membersBuilder_.isEmpty()) {
                        this.membersBuilder_.dispose();
                        this.membersBuilder_ = null;
                        this.members_ = cMsgClientMMSLobbyData.members_;
                        this.bitField0_ &= -257;
                        this.membersBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetMembersFieldBuilder() : null;
                    } else {
                        this.membersBuilder_.addAllMessages(cMsgClientMMSLobbyData.members_);
                    }
                }
                if (cMsgClientMMSLobbyData.hasLobbyCellid()) {
                    setLobbyCellid(cMsgClientMMSLobbyData.getLobbyCellid());
                }
                if (cMsgClientMMSLobbyData.hasOwnerShouldAcceptChanges()) {
                    setOwnerShouldAcceptChanges(cMsgClientMMSLobbyData.getOwnerShouldAcceptChanges());
                }
                mergeUnknownFields(cMsgClientMMSLobbyData.getUnknownFields());
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
                            switch (tag) {
                                case 0:
                                    z = true;
                                    break;
                                case 8:
                                    this.appId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 17:
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.numMembers_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 32:
                                    this.maxMembers_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.lobbyType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.lobbyFlags_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case 57:
                                    this.steamIdOwner_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.metadata_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 74:
                                    Member member = (Member) codedInputStream.readMessage(Member.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureMembersIsMutable();
                                        this.members_.add(member);
                                    } else {
                                        repeatedFieldBuilder.addMessage(member);
                                    }
                                    break;
                                case 80:
                                    this.lobbyCellid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER /* 88 */:
                                    this.ownerShouldAcceptChanges_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1024;
                                    break;
                                default:
                                    if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                        z = true;
                                    }
                                    break;
                            }
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasNumMembers() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public int getNumMembers() {
                return this.numMembers_;
            }

            public Builder setNumMembers(int i) {
                this.numMembers_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearNumMembers() {
                this.bitField0_ &= -5;
                this.numMembers_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasMaxMembers() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public int getMaxMembers() {
                return this.maxMembers_;
            }

            public Builder setMaxMembers(int i) {
                this.maxMembers_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMaxMembers() {
                this.bitField0_ &= -9;
                this.maxMembers_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasLobbyType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public int getLobbyType() {
                return this.lobbyType_;
            }

            public Builder setLobbyType(int i) {
                this.lobbyType_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearLobbyType() {
                this.bitField0_ &= -17;
                this.lobbyType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasLobbyFlags() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public int getLobbyFlags() {
                return this.lobbyFlags_;
            }

            public Builder setLobbyFlags(int i) {
                this.lobbyFlags_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearLobbyFlags() {
                this.bitField0_ &= -33;
                this.lobbyFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasSteamIdOwner() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public long getSteamIdOwner() {
                return this.steamIdOwner_;
            }

            public Builder setSteamIdOwner(long j) {
                this.steamIdOwner_ = j;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSteamIdOwner() {
                this.bitField0_ &= -65;
                this.steamIdOwner_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasMetadata() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public ByteString getMetadata() {
                return this.metadata_;
            }

            public Builder setMetadata(ByteString byteString) {
                byteString.getClass();
                this.metadata_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearMetadata() {
                this.bitField0_ &= -129;
                this.metadata_ = CMsgClientMMSLobbyData.getDefaultInstance().getMetadata();
                onChanged();
                return this;
            }

            private void ensureMembersIsMutable() {
                if ((this.bitField0_ & 256) == 0) {
                    this.members_ = new ArrayList(this.members_);
                    this.bitField0_ |= 256;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public List<Member> getMembersList() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.members_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public int getMembersCount() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.members_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public Member getMembers(int i) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.members_.get(i);
                }
                return (Member) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setMembers(int i, Member member) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    member.getClass();
                    ensureMembersIsMutable();
                    this.members_.set(i, member);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, member);
                }
                return this;
            }

            public Builder setMembers(int i, Member.Builder builder) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMembers(Member member) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    member.getClass();
                    ensureMembersIsMutable();
                    this.members_.add(member);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(member);
                }
                return this;
            }

            public Builder addMembers(int i, Member member) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    member.getClass();
                    ensureMembersIsMutable();
                    this.members_.add(i, member);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, member);
                }
                return this;
            }

            public Builder addMembers(Member.Builder builder) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMembers(int i, Member.Builder builder) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMembers(Iterable<? extends Member> iterable) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.members_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMembers() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.members_ = Collections.emptyList();
                    this.bitField0_ &= -257;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeMembers(int i) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMembersIsMutable();
                    this.members_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Member.Builder getMembersBuilder(int i) {
                return (Member.Builder) internalGetMembersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public MemberOrBuilder getMembersOrBuilder(int i) {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.members_.get(i);
                }
                return (MemberOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public List<? extends MemberOrBuilder> getMembersOrBuilderList() {
                RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> repeatedFieldBuilder = this.membersBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.members_);
            }

            public Member.Builder addMembersBuilder() {
                return (Member.Builder) internalGetMembersFieldBuilder().addBuilder(Member.getDefaultInstance());
            }

            public Member.Builder addMembersBuilder(int i) {
                return (Member.Builder) internalGetMembersFieldBuilder().addBuilder(i, Member.getDefaultInstance());
            }

            public List<Member.Builder> getMembersBuilderList() {
                return internalGetMembersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Member, Member.Builder, MemberOrBuilder> internalGetMembersFieldBuilder() {
                if (this.membersBuilder_ == null) {
                    this.membersBuilder_ = new RepeatedFieldBuilder<>(this.members_, (this.bitField0_ & 256) != 0, getParentForChildren(), isClean());
                    this.members_ = null;
                }
                return this.membersBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasLobbyCellid() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public int getLobbyCellid() {
                return this.lobbyCellid_;
            }

            public Builder setLobbyCellid(int i) {
                this.lobbyCellid_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearLobbyCellid() {
                this.bitField0_ &= -513;
                this.lobbyCellid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean hasOwnerShouldAcceptChanges() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSLobbyDataOrBuilder
            public boolean getOwnerShouldAcceptChanges() {
                return this.ownerShouldAcceptChanges_;
            }

            public Builder setOwnerShouldAcceptChanges(boolean z) {
                this.ownerShouldAcceptChanges_ = z;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearOwnerShouldAcceptChanges() {
                this.bitField0_ &= -1025;
                this.ownerShouldAcceptChanges_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSLobbyData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSLobbyData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSLobbyData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSLobbyData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSSetLobbyOwner extends GeneratedMessage implements CMsgClientMMSSetLobbyOwnerOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSSetLobbyOwner DEFAULT_INSTANCE;
        private static final Parser<CMsgClientMMSSetLobbyOwner> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        public static final int STEAM_ID_NEW_OWNER_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;
        private long steamIdNewOwner_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSSetLobbyOwner.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSSetLobbyOwner();
            PARSER = new AbstractParser<CMsgClientMMSSetLobbyOwner>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwner.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSSetLobbyOwner parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSSetLobbyOwner.newBuilder();
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

        private CMsgClientMMSSetLobbyOwner(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdNewOwner_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSSetLobbyOwner() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdNewOwner_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwner_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwner_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyOwner.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
        public boolean hasSteamIdNewOwner() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
        public long getSteamIdNewOwner() {
            return this.steamIdNewOwner_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamIdNewOwner_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(3, this.steamIdNewOwner_);
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
            if (!(obj instanceof CMsgClientMMSSetLobbyOwner)) {
                return super.equals(obj);
            }
            CMsgClientMMSSetLobbyOwner cMsgClientMMSSetLobbyOwner = (CMsgClientMMSSetLobbyOwner) obj;
            if (hasAppId() != cMsgClientMMSSetLobbyOwner.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSSetLobbyOwner.getAppId()) || hasSteamIdLobby() != cMsgClientMMSSetLobbyOwner.hasSteamIdLobby()) {
                return false;
            }
            if ((!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSSetLobbyOwner.getSteamIdLobby()) && hasSteamIdNewOwner() == cMsgClientMMSSetLobbyOwner.hasSteamIdNewOwner()) {
                return (!hasSteamIdNewOwner() || getSteamIdNewOwner() == cMsgClientMMSSetLobbyOwner.getSteamIdNewOwner()) && getUnknownFields().equals(cMsgClientMMSSetLobbyOwner.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasSteamIdNewOwner()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamIdNewOwner());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyOwner) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyOwner) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwner parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyOwner) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyOwner parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyOwner) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSSetLobbyOwner) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSSetLobbyOwner parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyOwner) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSSetLobbyOwner cMsgClientMMSSetLobbyOwner) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSSetLobbyOwner);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSSetLobbyOwnerOrBuilder {
            private int appId_;
            private int bitField0_;
            private long steamIdLobby_;
            private long steamIdNewOwner_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwner_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwner_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyOwner.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.steamIdNewOwner_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwner_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSSetLobbyOwner getDefaultInstanceForType() {
                return CMsgClientMMSSetLobbyOwner.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyOwner build() {
                CMsgClientMMSSetLobbyOwner cMsgClientMMSSetLobbyOwnerBuildPartial = buildPartial();
                if (cMsgClientMMSSetLobbyOwnerBuildPartial.isInitialized()) {
                    return cMsgClientMMSSetLobbyOwnerBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSSetLobbyOwnerBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyOwner buildPartial() {
                CMsgClientMMSSetLobbyOwner cMsgClientMMSSetLobbyOwner = new CMsgClientMMSSetLobbyOwner(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSSetLobbyOwner);
                }
                onBuilt();
                return cMsgClientMMSSetLobbyOwner;
            }

            private void buildPartial0(CMsgClientMMSSetLobbyOwner cMsgClientMMSSetLobbyOwner) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSSetLobbyOwner.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSSetLobbyOwner.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSSetLobbyOwner.steamIdNewOwner_ = this.steamIdNewOwner_;
                    i |= 4;
                }
                cMsgClientMMSSetLobbyOwner.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSSetLobbyOwner) {
                    return mergeFrom((CMsgClientMMSSetLobbyOwner) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSSetLobbyOwner cMsgClientMMSSetLobbyOwner) {
                if (cMsgClientMMSSetLobbyOwner == CMsgClientMMSSetLobbyOwner.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSSetLobbyOwner.hasAppId()) {
                    setAppId(cMsgClientMMSSetLobbyOwner.getAppId());
                }
                if (cMsgClientMMSSetLobbyOwner.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSSetLobbyOwner.getSteamIdLobby());
                }
                if (cMsgClientMMSSetLobbyOwner.hasSteamIdNewOwner()) {
                    setSteamIdNewOwner(cMsgClientMMSSetLobbyOwner.getSteamIdNewOwner());
                }
                mergeUnknownFields(cMsgClientMMSSetLobbyOwner.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamIdNewOwner_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
            public boolean hasSteamIdNewOwner() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerOrBuilder
            public long getSteamIdNewOwner() {
                return this.steamIdNewOwner_;
            }

            public Builder setSteamIdNewOwner(long j) {
                this.steamIdNewOwner_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamIdNewOwner() {
                this.bitField0_ &= -5;
                this.steamIdNewOwner_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSSetLobbyOwner getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSSetLobbyOwner> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSSetLobbyOwner> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSSetLobbyOwner getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSSetLobbyOwnerResponse extends GeneratedMessage implements CMsgClientMMSSetLobbyOwnerResponseOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSSetLobbyOwnerResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientMMSSetLobbyOwnerResponse> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSSetLobbyOwnerResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSSetLobbyOwnerResponse();
            PARSER = new AbstractParser<CMsgClientMMSSetLobbyOwnerResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSSetLobbyOwnerResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSSetLobbyOwnerResponse.newBuilder();
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

        private CMsgClientMMSSetLobbyOwnerResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.eresult_ = 2;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSSetLobbyOwnerResponse() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwnerResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwnerResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyOwnerResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.eresult_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.eresult_);
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
            if (!(obj instanceof CMsgClientMMSSetLobbyOwnerResponse)) {
                return super.equals(obj);
            }
            CMsgClientMMSSetLobbyOwnerResponse cMsgClientMMSSetLobbyOwnerResponse = (CMsgClientMMSSetLobbyOwnerResponse) obj;
            if (hasAppId() != cMsgClientMMSSetLobbyOwnerResponse.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSSetLobbyOwnerResponse.getAppId()) || hasSteamIdLobby() != cMsgClientMMSSetLobbyOwnerResponse.hasSteamIdLobby()) {
                return false;
            }
            if ((!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSSetLobbyOwnerResponse.getSteamIdLobby()) && hasEresult() == cMsgClientMMSSetLobbyOwnerResponse.hasEresult()) {
                return (!hasEresult() || getEresult() == cMsgClientMMSSetLobbyOwnerResponse.getEresult()) && getUnknownFields().equals(cMsgClientMMSSetLobbyOwnerResponse.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getEresult();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyOwnerResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyOwnerResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSSetLobbyOwnerResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyOwnerResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSSetLobbyOwnerResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSSetLobbyOwnerResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSSetLobbyOwnerResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSSetLobbyOwnerResponse cMsgClientMMSSetLobbyOwnerResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSSetLobbyOwnerResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSSetLobbyOwnerResponseOrBuilder {
            private int appId_;
            private int bitField0_;
            private int eresult_;
            private long steamIdLobby_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwnerResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwnerResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSSetLobbyOwnerResponse.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.eresult_ = 2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSSetLobbyOwnerResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSSetLobbyOwnerResponse getDefaultInstanceForType() {
                return CMsgClientMMSSetLobbyOwnerResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyOwnerResponse build() {
                CMsgClientMMSSetLobbyOwnerResponse cMsgClientMMSSetLobbyOwnerResponseBuildPartial = buildPartial();
                if (cMsgClientMMSSetLobbyOwnerResponseBuildPartial.isInitialized()) {
                    return cMsgClientMMSSetLobbyOwnerResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSSetLobbyOwnerResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSSetLobbyOwnerResponse buildPartial() {
                CMsgClientMMSSetLobbyOwnerResponse cMsgClientMMSSetLobbyOwnerResponse = new CMsgClientMMSSetLobbyOwnerResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSSetLobbyOwnerResponse);
                }
                onBuilt();
                return cMsgClientMMSSetLobbyOwnerResponse;
            }

            private void buildPartial0(CMsgClientMMSSetLobbyOwnerResponse cMsgClientMMSSetLobbyOwnerResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSSetLobbyOwnerResponse.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSSetLobbyOwnerResponse.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSSetLobbyOwnerResponse.eresult_ = this.eresult_;
                    i |= 4;
                }
                cMsgClientMMSSetLobbyOwnerResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSSetLobbyOwnerResponse) {
                    return mergeFrom((CMsgClientMMSSetLobbyOwnerResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSSetLobbyOwnerResponse cMsgClientMMSSetLobbyOwnerResponse) {
                if (cMsgClientMMSSetLobbyOwnerResponse == CMsgClientMMSSetLobbyOwnerResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSSetLobbyOwnerResponse.hasAppId()) {
                    setAppId(cMsgClientMMSSetLobbyOwnerResponse.getAppId());
                }
                if (cMsgClientMMSSetLobbyOwnerResponse.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSSetLobbyOwnerResponse.getSteamIdLobby());
                }
                if (cMsgClientMMSSetLobbyOwnerResponse.hasEresult()) {
                    setEresult(cMsgClientMMSSetLobbyOwnerResponse.getEresult());
                }
                mergeUnknownFields(cMsgClientMMSSetLobbyOwnerResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.eresult_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSSetLobbyOwnerResponseOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -5;
                this.eresult_ = 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSSetLobbyOwnerResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSSetLobbyOwnerResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSSetLobbyOwnerResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSSetLobbyOwnerResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSUserJoinedLobby extends GeneratedMessage implements CMsgClientMMSUserJoinedLobbyOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSUserJoinedLobby DEFAULT_INSTANCE;
        private static final Parser<CMsgClientMMSUserJoinedLobby> PARSER;
        public static final int PERSONA_NAME_FIELD_NUMBER = 4;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        public static final int STEAM_ID_USER_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object personaName_;
        private long steamIdLobby_;
        private long steamIdUser_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSUserJoinedLobby.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSUserJoinedLobby();
            PARSER = new AbstractParser<CMsgClientMMSUserJoinedLobby>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobby.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSUserJoinedLobby parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSUserJoinedLobby.newBuilder();
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

        private CMsgClientMMSUserJoinedLobby(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdUser_ = 0L;
            this.personaName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSUserJoinedLobby() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdUser_ = 0L;
            this.personaName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.personaName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserJoinedLobby_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserJoinedLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSUserJoinedLobby.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public boolean hasSteamIdUser() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public long getSteamIdUser() {
            return this.steamIdUser_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public boolean hasPersonaName() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public String getPersonaName() {
            Object obj = this.personaName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.personaName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
        public ByteString getPersonaNameBytes() {
            Object obj = this.personaName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.personaName_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.appId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamIdUser_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.personaName_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(3, this.steamIdUser_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.personaName_);
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
            if (!(obj instanceof CMsgClientMMSUserJoinedLobby)) {
                return super.equals(obj);
            }
            CMsgClientMMSUserJoinedLobby cMsgClientMMSUserJoinedLobby = (CMsgClientMMSUserJoinedLobby) obj;
            if (hasAppId() != cMsgClientMMSUserJoinedLobby.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSUserJoinedLobby.getAppId()) || hasSteamIdLobby() != cMsgClientMMSUserJoinedLobby.hasSteamIdLobby()) {
                return false;
            }
            if ((hasSteamIdLobby() && getSteamIdLobby() != cMsgClientMMSUserJoinedLobby.getSteamIdLobby()) || hasSteamIdUser() != cMsgClientMMSUserJoinedLobby.hasSteamIdUser()) {
                return false;
            }
            if ((!hasSteamIdUser() || getSteamIdUser() == cMsgClientMMSUserJoinedLobby.getSteamIdUser()) && hasPersonaName() == cMsgClientMMSUserJoinedLobby.hasPersonaName()) {
                return (!hasPersonaName() || getPersonaName().equals(cMsgClientMMSUserJoinedLobby.getPersonaName())) && getUnknownFields().equals(cMsgClientMMSUserJoinedLobby.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasSteamIdUser()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamIdUser());
            }
            if (hasPersonaName()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getPersonaName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSUserJoinedLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSUserJoinedLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSUserJoinedLobby parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSUserJoinedLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSUserJoinedLobby parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSUserJoinedLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSUserJoinedLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSUserJoinedLobby parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSUserJoinedLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSUserJoinedLobby cMsgClientMMSUserJoinedLobby) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSUserJoinedLobby);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSUserJoinedLobbyOrBuilder {
            private int appId_;
            private int bitField0_;
            private Object personaName_;
            private long steamIdLobby_;
            private long steamIdUser_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserJoinedLobby_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserJoinedLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSUserJoinedLobby.class, Builder.class);
            }

            private Builder() {
                this.personaName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.personaName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.steamIdUser_ = 0L;
                this.personaName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserJoinedLobby_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSUserJoinedLobby getDefaultInstanceForType() {
                return CMsgClientMMSUserJoinedLobby.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSUserJoinedLobby build() {
                CMsgClientMMSUserJoinedLobby cMsgClientMMSUserJoinedLobbyBuildPartial = buildPartial();
                if (cMsgClientMMSUserJoinedLobbyBuildPartial.isInitialized()) {
                    return cMsgClientMMSUserJoinedLobbyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSUserJoinedLobbyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSUserJoinedLobby buildPartial() {
                CMsgClientMMSUserJoinedLobby cMsgClientMMSUserJoinedLobby = new CMsgClientMMSUserJoinedLobby(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSUserJoinedLobby);
                }
                onBuilt();
                return cMsgClientMMSUserJoinedLobby;
            }

            private void buildPartial0(CMsgClientMMSUserJoinedLobby cMsgClientMMSUserJoinedLobby) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSUserJoinedLobby.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSUserJoinedLobby.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSUserJoinedLobby.steamIdUser_ = this.steamIdUser_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSUserJoinedLobby.personaName_ = this.personaName_;
                    i |= 8;
                }
                cMsgClientMMSUserJoinedLobby.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSUserJoinedLobby) {
                    return mergeFrom((CMsgClientMMSUserJoinedLobby) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSUserJoinedLobby cMsgClientMMSUserJoinedLobby) {
                if (cMsgClientMMSUserJoinedLobby == CMsgClientMMSUserJoinedLobby.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSUserJoinedLobby.hasAppId()) {
                    setAppId(cMsgClientMMSUserJoinedLobby.getAppId());
                }
                if (cMsgClientMMSUserJoinedLobby.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSUserJoinedLobby.getSteamIdLobby());
                }
                if (cMsgClientMMSUserJoinedLobby.hasSteamIdUser()) {
                    setSteamIdUser(cMsgClientMMSUserJoinedLobby.getSteamIdUser());
                }
                if (cMsgClientMMSUserJoinedLobby.hasPersonaName()) {
                    this.personaName_ = cMsgClientMMSUserJoinedLobby.personaName_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientMMSUserJoinedLobby.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamIdUser_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.personaName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public boolean hasSteamIdUser() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public long getSteamIdUser() {
                return this.steamIdUser_;
            }

            public Builder setSteamIdUser(long j) {
                this.steamIdUser_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamIdUser() {
                this.bitField0_ &= -5;
                this.steamIdUser_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public boolean hasPersonaName() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public String getPersonaName() {
                Object obj = this.personaName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.personaName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserJoinedLobbyOrBuilder
            public ByteString getPersonaNameBytes() {
                Object obj = this.personaName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.personaName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPersonaName(String str) {
                str.getClass();
                this.personaName_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearPersonaName() {
                this.personaName_ = CMsgClientMMSUserJoinedLobby.getDefaultInstance().getPersonaName();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setPersonaNameBytes(ByteString byteString) {
                byteString.getClass();
                this.personaName_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSUserJoinedLobby getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSUserJoinedLobby> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSUserJoinedLobby> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSUserJoinedLobby getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSUserLeftLobby extends GeneratedMessage implements CMsgClientMMSUserLeftLobbyOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSUserLeftLobby DEFAULT_INSTANCE;
        private static final Parser<CMsgClientMMSUserLeftLobby> PARSER;
        public static final int PERSONA_NAME_FIELD_NUMBER = 4;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        public static final int STEAM_ID_USER_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object personaName_;
        private long steamIdLobby_;
        private long steamIdUser_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSUserLeftLobby.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSUserLeftLobby();
            PARSER = new AbstractParser<CMsgClientMMSUserLeftLobby>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobby.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSUserLeftLobby parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSUserLeftLobby.newBuilder();
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

        private CMsgClientMMSUserLeftLobby(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdUser_ = 0L;
            this.personaName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSUserLeftLobby() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdUser_ = 0L;
            this.personaName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.personaName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserLeftLobby_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserLeftLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSUserLeftLobby.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public boolean hasSteamIdUser() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public long getSteamIdUser() {
            return this.steamIdUser_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public boolean hasPersonaName() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public String getPersonaName() {
            Object obj = this.personaName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.personaName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
        public ByteString getPersonaNameBytes() {
            Object obj = this.personaName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.personaName_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.appId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamIdUser_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.personaName_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(3, this.steamIdUser_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(4, this.personaName_);
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
            if (!(obj instanceof CMsgClientMMSUserLeftLobby)) {
                return super.equals(obj);
            }
            CMsgClientMMSUserLeftLobby cMsgClientMMSUserLeftLobby = (CMsgClientMMSUserLeftLobby) obj;
            if (hasAppId() != cMsgClientMMSUserLeftLobby.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSUserLeftLobby.getAppId()) || hasSteamIdLobby() != cMsgClientMMSUserLeftLobby.hasSteamIdLobby()) {
                return false;
            }
            if ((hasSteamIdLobby() && getSteamIdLobby() != cMsgClientMMSUserLeftLobby.getSteamIdLobby()) || hasSteamIdUser() != cMsgClientMMSUserLeftLobby.hasSteamIdUser()) {
                return false;
            }
            if ((!hasSteamIdUser() || getSteamIdUser() == cMsgClientMMSUserLeftLobby.getSteamIdUser()) && hasPersonaName() == cMsgClientMMSUserLeftLobby.hasPersonaName()) {
                return (!hasPersonaName() || getPersonaName().equals(cMsgClientMMSUserLeftLobby.getPersonaName())) && getUnknownFields().equals(cMsgClientMMSUserLeftLobby.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasSteamIdUser()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamIdUser());
            }
            if (hasPersonaName()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getPersonaName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSUserLeftLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSUserLeftLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSUserLeftLobby parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSUserLeftLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSUserLeftLobby parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSUserLeftLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSUserLeftLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSUserLeftLobby parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSUserLeftLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSUserLeftLobby cMsgClientMMSUserLeftLobby) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSUserLeftLobby);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSUserLeftLobbyOrBuilder {
            private int appId_;
            private int bitField0_;
            private Object personaName_;
            private long steamIdLobby_;
            private long steamIdUser_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserLeftLobby_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserLeftLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSUserLeftLobby.class, Builder.class);
            }

            private Builder() {
                this.personaName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.personaName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.steamIdUser_ = 0L;
                this.personaName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSUserLeftLobby_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSUserLeftLobby getDefaultInstanceForType() {
                return CMsgClientMMSUserLeftLobby.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSUserLeftLobby build() {
                CMsgClientMMSUserLeftLobby cMsgClientMMSUserLeftLobbyBuildPartial = buildPartial();
                if (cMsgClientMMSUserLeftLobbyBuildPartial.isInitialized()) {
                    return cMsgClientMMSUserLeftLobbyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSUserLeftLobbyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSUserLeftLobby buildPartial() {
                CMsgClientMMSUserLeftLobby cMsgClientMMSUserLeftLobby = new CMsgClientMMSUserLeftLobby(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSUserLeftLobby);
                }
                onBuilt();
                return cMsgClientMMSUserLeftLobby;
            }

            private void buildPartial0(CMsgClientMMSUserLeftLobby cMsgClientMMSUserLeftLobby) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSUserLeftLobby.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSUserLeftLobby.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSUserLeftLobby.steamIdUser_ = this.steamIdUser_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientMMSUserLeftLobby.personaName_ = this.personaName_;
                    i |= 8;
                }
                cMsgClientMMSUserLeftLobby.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSUserLeftLobby) {
                    return mergeFrom((CMsgClientMMSUserLeftLobby) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSUserLeftLobby cMsgClientMMSUserLeftLobby) {
                if (cMsgClientMMSUserLeftLobby == CMsgClientMMSUserLeftLobby.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSUserLeftLobby.hasAppId()) {
                    setAppId(cMsgClientMMSUserLeftLobby.getAppId());
                }
                if (cMsgClientMMSUserLeftLobby.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSUserLeftLobby.getSteamIdLobby());
                }
                if (cMsgClientMMSUserLeftLobby.hasSteamIdUser()) {
                    setSteamIdUser(cMsgClientMMSUserLeftLobby.getSteamIdUser());
                }
                if (cMsgClientMMSUserLeftLobby.hasPersonaName()) {
                    this.personaName_ = cMsgClientMMSUserLeftLobby.personaName_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientMMSUserLeftLobby.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamIdUser_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.personaName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public boolean hasSteamIdUser() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public long getSteamIdUser() {
                return this.steamIdUser_;
            }

            public Builder setSteamIdUser(long j) {
                this.steamIdUser_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamIdUser() {
                this.bitField0_ &= -5;
                this.steamIdUser_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public boolean hasPersonaName() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public String getPersonaName() {
                Object obj = this.personaName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.personaName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSUserLeftLobbyOrBuilder
            public ByteString getPersonaNameBytes() {
                Object obj = this.personaName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.personaName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPersonaName(String str) {
                str.getClass();
                this.personaName_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearPersonaName() {
                this.personaName_ = CMsgClientMMSUserLeftLobby.getDefaultInstance().getPersonaName();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setPersonaNameBytes(ByteString byteString) {
                byteString.getClass();
                this.personaName_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSUserLeftLobby getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSUserLeftLobby> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSUserLeftLobby> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSUserLeftLobby getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientMMSInviteToLobby extends GeneratedMessage implements CMsgClientMMSInviteToLobbyOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 1;
        private static final CMsgClientMMSInviteToLobby DEFAULT_INSTANCE;
        private static final Parser<CMsgClientMMSInviteToLobby> PARSER;
        public static final int STEAM_ID_LOBBY_FIELD_NUMBER = 2;
        public static final int STEAM_ID_USER_INVITED_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appId_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamIdLobby_;
        private long steamIdUserInvited_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientMMSInviteToLobby.class.getName());
            DEFAULT_INSTANCE = new CMsgClientMMSInviteToLobby();
            PARSER = new AbstractParser<CMsgClientMMSInviteToLobby>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobby.1
                @Override // com.google.protobuf.Parser
                public CMsgClientMMSInviteToLobby parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientMMSInviteToLobby.newBuilder();
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

        private CMsgClientMMSInviteToLobby(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdUserInvited_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientMMSInviteToLobby() {
            this.appId_ = 0;
            this.steamIdLobby_ = 0L;
            this.steamIdUserInvited_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSInviteToLobby_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverMms.internal_static_CMsgClientMMSInviteToLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSInviteToLobby.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
        public int getAppId() {
            return this.appId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
        public boolean hasSteamIdLobby() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
        public long getSteamIdLobby() {
            return this.steamIdLobby_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
        public boolean hasSteamIdUserInvited() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
        public long getSteamIdUserInvited() {
            return this.steamIdUserInvited_;
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
                codedOutputStream.writeFixed64(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamIdUserInvited_);
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
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdLobby_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(3, this.steamIdUserInvited_);
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
            if (!(obj instanceof CMsgClientMMSInviteToLobby)) {
                return super.equals(obj);
            }
            CMsgClientMMSInviteToLobby cMsgClientMMSInviteToLobby = (CMsgClientMMSInviteToLobby) obj;
            if (hasAppId() != cMsgClientMMSInviteToLobby.hasAppId()) {
                return false;
            }
            if ((hasAppId() && getAppId() != cMsgClientMMSInviteToLobby.getAppId()) || hasSteamIdLobby() != cMsgClientMMSInviteToLobby.hasSteamIdLobby()) {
                return false;
            }
            if ((!hasSteamIdLobby() || getSteamIdLobby() == cMsgClientMMSInviteToLobby.getSteamIdLobby()) && hasSteamIdUserInvited() == cMsgClientMMSInviteToLobby.hasSteamIdUserInvited()) {
                return (!hasSteamIdUserInvited() || getSteamIdUserInvited() == cMsgClientMMSInviteToLobby.getSteamIdUserInvited()) && getUnknownFields().equals(cMsgClientMMSInviteToLobby.getUnknownFields());
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
            if (hasSteamIdLobby()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdLobby());
            }
            if (hasSteamIdUserInvited()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamIdUserInvited());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientMMSInviteToLobby parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSInviteToLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSInviteToLobby) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSInviteToLobby parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientMMSInviteToLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientMMSInviteToLobby parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSInviteToLobby) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientMMSInviteToLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientMMSInviteToLobby parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientMMSInviteToLobby) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientMMSInviteToLobby cMsgClientMMSInviteToLobby) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientMMSInviteToLobby);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientMMSInviteToLobbyOrBuilder {
            private int appId_;
            private int bitField0_;
            private long steamIdLobby_;
            private long steamIdUserInvited_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSInviteToLobby_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSInviteToLobby_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientMMSInviteToLobby.class, Builder.class);
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
                this.appId_ = 0;
                this.steamIdLobby_ = 0L;
                this.steamIdUserInvited_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverMms.internal_static_CMsgClientMMSInviteToLobby_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientMMSInviteToLobby getDefaultInstanceForType() {
                return CMsgClientMMSInviteToLobby.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSInviteToLobby build() {
                CMsgClientMMSInviteToLobby cMsgClientMMSInviteToLobbyBuildPartial = buildPartial();
                if (cMsgClientMMSInviteToLobbyBuildPartial.isInitialized()) {
                    return cMsgClientMMSInviteToLobbyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientMMSInviteToLobbyBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientMMSInviteToLobby buildPartial() {
                CMsgClientMMSInviteToLobby cMsgClientMMSInviteToLobby = new CMsgClientMMSInviteToLobby(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientMMSInviteToLobby);
                }
                onBuilt();
                return cMsgClientMMSInviteToLobby;
            }

            private void buildPartial0(CMsgClientMMSInviteToLobby cMsgClientMMSInviteToLobby) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientMMSInviteToLobby.appId_ = this.appId_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientMMSInviteToLobby.steamIdLobby_ = this.steamIdLobby_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientMMSInviteToLobby.steamIdUserInvited_ = this.steamIdUserInvited_;
                    i |= 4;
                }
                cMsgClientMMSInviteToLobby.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientMMSInviteToLobby) {
                    return mergeFrom((CMsgClientMMSInviteToLobby) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientMMSInviteToLobby cMsgClientMMSInviteToLobby) {
                if (cMsgClientMMSInviteToLobby == CMsgClientMMSInviteToLobby.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientMMSInviteToLobby.hasAppId()) {
                    setAppId(cMsgClientMMSInviteToLobby.getAppId());
                }
                if (cMsgClientMMSInviteToLobby.hasSteamIdLobby()) {
                    setSteamIdLobby(cMsgClientMMSInviteToLobby.getSteamIdLobby());
                }
                if (cMsgClientMMSInviteToLobby.hasSteamIdUserInvited()) {
                    setSteamIdUserInvited(cMsgClientMMSInviteToLobby.getSteamIdUserInvited());
                }
                mergeUnknownFields(cMsgClientMMSInviteToLobby.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdLobby_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamIdUserInvited_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
            public boolean hasSteamIdLobby() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
            public long getSteamIdLobby() {
                return this.steamIdLobby_;
            }

            public Builder setSteamIdLobby(long j) {
                this.steamIdLobby_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdLobby() {
                this.bitField0_ &= -3;
                this.steamIdLobby_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
            public boolean hasSteamIdUserInvited() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverMms.CMsgClientMMSInviteToLobbyOrBuilder
            public long getSteamIdUserInvited() {
                return this.steamIdUserInvited_;
            }

            public Builder setSteamIdUserInvited(long j) {
                this.steamIdUserInvited_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamIdUserInvited() {
                this.bitField0_ &= -5;
                this.steamIdUserInvited_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientMMSInviteToLobby getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientMMSInviteToLobby> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientMMSInviteToLobby> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientMMSInviteToLobby getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
