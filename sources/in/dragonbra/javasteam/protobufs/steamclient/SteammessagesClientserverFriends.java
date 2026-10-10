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
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: loaded from: classes.dex */
public final class SteammessagesClientserverFriends {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientAddFriendResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAddFriendResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAddFriendToGroupResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAddFriendToGroupResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAddFriendToGroup_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAddFriendToGroup_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientAddFriend_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAddFriend_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientChangeStatus_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientChangeStatus_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCreateFriendsGroupResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCreateFriendsGroupResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientCreateFriendsGroup_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientCreateFriendsGroup_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDeleteFriendsGroupResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDeleteFriendsGroupResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientDeleteFriendsGroup_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientDeleteFriendsGroup_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientEmoticonList_Effect_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientEmoticonList_Effect_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientEmoticonList_Emoticon_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientEmoticonList_Emoticon_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientEmoticonList_Sticker_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientEmoticonList_Sticker_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientEmoticonList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientEmoticonList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendMsgIncoming_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendMsgIncoming_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendMsg_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendMsg_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendProfileInfoResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendProfileInfoResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendProfileInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendProfileInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendsGroupsList_FriendGroup_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendsGroupsList_FriendGroup_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendsGroupsList_FriendGroupsMembership_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendsGroupsList_FriendGroupsMembership_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendsGroupsList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendsGroupsList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendsList_Friend_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendsList_Friend_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientFriendsList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientFriendsList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientGetEmoticonList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientGetEmoticonList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientHideFriend_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientHideFriend_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientManageFriendsGroupResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientManageFriendsGroupResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientManageFriendsGroup_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientManageFriendsGroup_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPersonaState_Friend_ClanData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPersonaState_Friend_ClanData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPersonaState_Friend_KV_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPersonaState_Friend_KV_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPersonaState_Friend_OtherGameData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPersonaState_Friend_OtherGameData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPersonaState_Friend_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPersonaState_Friend_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPersonaState_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPersonaState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPlayerNicknameList_PlayerNickname_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPlayerNicknameList_PlayerNickname_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientPlayerNicknameList_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientPlayerNicknameList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRemoveFriendFromGroupResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRemoveFriendFromGroupResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRemoveFriendFromGroup_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRemoveFriendFromGroup_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRemoveFriend_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRemoveFriend_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestFriendData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestFriendData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSetPlayerNicknameResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSetPlayerNicknameResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSetPlayerNickname_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSetPlayerNickname_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgPersonaChangeResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgPersonaChangeResponse_fieldAccessorTable;

    public interface CMsgClientAddFriendOrBuilder extends MessageOrBuilder {
        String getAccountnameOrEmailToAdd();

        ByteString getAccountnameOrEmailToAddBytes();

        long getSteamidToAdd();

        boolean hasAccountnameOrEmailToAdd();

        boolean hasSteamidToAdd();
    }

    public interface CMsgClientAddFriendResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        String getPersonaNameAdded();

        ByteString getPersonaNameAddedBytes();

        long getSteamIdAdded();

        boolean hasEresult();

        boolean hasPersonaNameAdded();

        boolean hasSteamIdAdded();
    }

    public interface CMsgClientChangeStatusOrBuilder extends MessageOrBuilder {
        boolean getHighPriority();

        boolean getIsAutoGeneratedName();

        boolean getIsClientIdle();

        boolean getNeedPersonaResponse();

        boolean getPersonaSetByUser();

        int getPersonaState();

        int getPersonaStateFlags();

        String getPlayerName();

        ByteString getPlayerNameBytes();

        boolean hasHighPriority();

        boolean hasIsAutoGeneratedName();

        boolean hasIsClientIdle();

        boolean hasNeedPersonaResponse();

        boolean hasPersonaSetByUser();

        boolean hasPersonaState();

        boolean hasPersonaStateFlags();

        boolean hasPlayerName();
    }

    public interface CMsgClientFriendMsgIncomingOrBuilder extends MessageOrBuilder {
        int getChatEntryType();

        boolean getFromLimitedAccount();

        ByteString getMessage();

        int getRtime32ServerTimestamp();

        long getSteamidFrom();

        boolean hasChatEntryType();

        boolean hasFromLimitedAccount();

        boolean hasMessage();

        boolean hasRtime32ServerTimestamp();

        boolean hasSteamidFrom();
    }

    public interface CMsgClientFriendMsgOrBuilder extends MessageOrBuilder {
        int getChatEntryType();

        boolean getEchoToSender();

        ByteString getMessage();

        int getRtime32ServerTimestamp();

        long getSteamid();

        boolean hasChatEntryType();

        boolean hasEchoToSender();

        boolean hasMessage();

        boolean hasRtime32ServerTimestamp();

        boolean hasSteamid();
    }

    public interface CMsgClientFriendProfileInfoOrBuilder extends MessageOrBuilder {
        long getSteamidFriend();

        boolean hasSteamidFriend();
    }

    public interface CMsgClientFriendProfileInfoResponseOrBuilder extends MessageOrBuilder {
        String getCityName();

        ByteString getCityNameBytes();

        String getCountryName();

        ByteString getCountryNameBytes();

        int getEresult();

        String getHeadline();

        ByteString getHeadlineBytes();

        String getRealName();

        ByteString getRealNameBytes();

        String getStateName();

        ByteString getStateNameBytes();

        long getSteamidFriend();

        String getSummary();

        ByteString getSummaryBytes();

        int getTimeCreated();

        boolean hasCityName();

        boolean hasCountryName();

        boolean hasEresult();

        boolean hasHeadline();

        boolean hasRealName();

        boolean hasStateName();

        boolean hasSteamidFriend();

        boolean hasSummary();

        boolean hasTimeCreated();
    }

    public interface CMsgClientFriendsListOrBuilder extends MessageOrBuilder {
        int getActiveFriendCount();

        boolean getBincremental();

        CMsgClientFriendsList.Friend getFriends(int i);

        int getFriendsCount();

        boolean getFriendsLimitHit();

        List<CMsgClientFriendsList.Friend> getFriendsList();

        CMsgClientFriendsList.FriendOrBuilder getFriendsOrBuilder(int i);

        List<? extends CMsgClientFriendsList.FriendOrBuilder> getFriendsOrBuilderList();

        int getMaxFriendCount();

        boolean hasActiveFriendCount();

        boolean hasBincremental();

        boolean hasFriendsLimitHit();

        boolean hasMaxFriendCount();
    }

    public interface CMsgClientPersonaStateOrBuilder extends MessageOrBuilder {
        CMsgClientPersonaState.Friend getFriends(int i);

        int getFriendsCount();

        List<CMsgClientPersonaState.Friend> getFriendsList();

        CMsgClientPersonaState.FriendOrBuilder getFriendsOrBuilder(int i);

        List<? extends CMsgClientPersonaState.FriendOrBuilder> getFriendsOrBuilderList();

        int getStatusFlags();

        boolean hasStatusFlags();
    }

    public interface CMsgClientPlayerNicknameListOrBuilder extends MessageOrBuilder {
        boolean getIncremental();

        CMsgClientPlayerNicknameList.PlayerNickname getNicknames(int i);

        int getNicknamesCount();

        List<CMsgClientPlayerNicknameList.PlayerNickname> getNicknamesList();

        CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder getNicknamesOrBuilder(int i);

        List<? extends CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder> getNicknamesOrBuilderList();

        boolean getRemoval();

        boolean hasIncremental();

        boolean hasRemoval();
    }

    public interface CMsgClientRemoveFriendOrBuilder extends MessageOrBuilder {
        long getFriendid();

        boolean hasFriendid();
    }

    public interface CMsgClientRequestFriendDataOrBuilder extends MessageOrBuilder {
        long getFriends(int i);

        int getFriendsCount();

        List<Long> getFriendsList();

        int getPersonaStateRequested();

        boolean hasPersonaStateRequested();
    }

    public interface CMsgClientSetPlayerNicknameOrBuilder extends MessageOrBuilder {
        String getNickname();

        ByteString getNicknameBytes();

        long getSteamid();

        boolean hasNickname();

        boolean hasSteamid();
    }

    public interface CMsgClientSetPlayerNicknameResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        boolean hasEresult();
    }

    public interface CMsgPersonaChangeResponseOrBuilder extends MessageOrBuilder {
        String getPlayerName();

        ByteString getPlayerNameBytes();

        int getResult();

        boolean hasPlayerName();

        boolean hasResult();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverFriends() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverFriends.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nUin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_friends.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\"\u008a\u0001\n\u0013CMsgClientFriendMsg\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0017\n\u000fchat_entry_type\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007message\u0018\u0003 \u0001(\f\u0012 \n\u0018rtime32_server_timestamp\u0018\u0004 \u0001(\u0007\u0012\u0016\n\u000eecho_to_sender\u0018\u0005 \u0001(\b\"\u009d\u0001\n\u001bCMsgClientFriendMsgIncoming\u0012\u0014\n\fsteamid_from\u0018\u0001 \u0001(\u0006\u0012\u0017\n\u000fchat_entry_type\u0018\u0002 \u0001(\u0005\u0012\u001c\n\u0014from_limited_account\u0018\u0003 \u0001(\b\u0012\u000f\n\u0007message\u0018\u0004 \u0001(\f\u0012 \n\u0018rtime32_server_timestamp\u0018\u0005 \u0001(\u0007\"R\n\u0013CMsgClientAddFriend\u0012\u0016\n\u000esteamid_to_add\u0018\u0001 \u0001(\u0006\u0012#\n\u001baccountname_or_email_to_add\u0018\u0002 \u0001(\t\"e\n\u001bCMsgClientAddFriendResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0016\n\u000esteam_id_added\u0018\u0002 \u0001(\u0006\u0012\u001a\n\u0012persona_name_added\u0018\u0003 \u0001(\t\"*\n\u0016CMsgClientRemoveFriend\u0012\u0010\n\bfriendid\u0018\u0001 \u0001(\u0006\"6\n\u0014CMsgClientHideFriend\u0012\u0010\n\bfriendid\u0018\u0001 \u0001(\u0006\u0012\f\n\u0004hide\u0018\u0002 \u0001(\b\"ê\u0001\n\u0015CMsgClientFriendsList\u0012\u0014\n\fbincremental\u0018\u0001 \u0001(\b\u0012.\n\u0007friends\u0018\u0002 \u0003(\u000b2\u001d.CMsgClientFriendsList.Friend\u0012\u0018\n\u0010max_friend_count\u0018\u0003 \u0001(\r\u0012\u001b\n\u0013active_friend_count\u0018\u0004 \u0001(\r\u0012\u0019\n\u0011friends_limit_hit\u0018\u0005 \u0001(\b\u001a9\n\u0006Friend\u0012\u0012\n\nulfriendid\u0018\u0001 \u0001(\u0006\u0012\u001b\n\u0013efriendrelationship\u0018\u0002 \u0001(\r\"Å\u0002\n\u001bCMsgClientFriendsGroupsList\u0012\u0010\n\bbremoval\u0018\u0001 \u0001(\b\u0012\u0014\n\fbincremental\u0018\u0002 \u0001(\b\u0012>\n\ffriendGroups\u0018\u0003 \u0003(\u000b2(.CMsgClientFriendsGroupsList.FriendGroup\u0012H\n\u000bmemberships\u0018\u0004 \u0003(\u000b23.CMsgClientFriendsGroupsList.FriendGroupsMembership\u001a5\n\u000bFriendGroup\u0012\u0010\n\bnGroupID\u0018\u0001 \u0001(\u0005\u0012\u0014\n\fstrGroupName\u0018\u0002 \u0001(\t\u001a=\n\u0016FriendGroupsMembership\u0012\u0011\n\tulSteamID\u0018\u0001 \u0001(\u0006\u0012\u0010\n\bnGroupID\u0018\u0002 \u0001(\u0005\"º\u0001\n\u001cCMsgClientPlayerNicknameList\u0012\u000f\n\u0007removal\u0018\u0001 \u0001(\b\u0012\u0013\n\u000bincremental\u0018\u0002 \u0001(\b\u0012?\n\tnicknames\u0018\u0003 \u0003(\u000b2,.CMsgClientPlayerNicknameList.PlayerNickname\u001a3\n\u000ePlayerNickname\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0010\n\bnickname\u0018\u0003 \u0001(\t\"@\n\u001bCMsgClientSetPlayerNickname\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0010\n\bnickname\u0018\u0002 \u0001(\t\"6\n#CMsgClientSetPlayerNicknameResponse\u0012\u000f\n\u0007eresult\u0018\u0001 \u0001(\r\"O\n\u001bCMsgClientRequestFriendData\u0012\u001f\n\u0017persona_state_requested\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007friends\u0018\u0002 \u0003(\u0006\"ï\u0001\n\u0016CMsgClientChangeStatus\u0012\u0015\n\rpersona_state\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bplayer_name\u0018\u0002 \u0001(\t\u0012\u001e\n\u0016is_auto_generated_name\u0018\u0003 \u0001(\b\u0012\u0015\n\rhigh_priority\u0018\u0004 \u0001(\b\u0012\u001b\n\u0013persona_set_by_user\u0018\u0005 \u0001(\b\u0012\u001e\n\u0013persona_state_flags\u0018\u0006 \u0001(\r:\u00010\u0012\u001d\n\u0015need_persona_response\u0018\u0007 \u0001(\b\u0012\u0016\n\u000eis_client_idle\u0018\b \u0001(\b\"@\n\u0019CMsgPersonaChangeResponse\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\r\u0012\u0013\n\u000bplayer_name\u0018\u0002 \u0001(\t\"õ\t\n\u0016CMsgClientPersonaState\u0012\u0014\n\fstatus_flags\u0018\u0001 \u0001(\r\u0012/\n\u0007friends\u0018\u0002 \u0003(\u000b2\u001e.CMsgClientPersonaState.Friend\u001a\u0093\t\n\u0006Friend\u0012\u0010\n\bfriendid\u0018\u0001 \u0001(\u0006\u0012\u0015\n\rpersona_state\u0018\u0002 \u0001(\r\u0012\u001a\n\u0012game_played_app_id\u0018\u0003 \u0001(\r\u0012\u0016\n\u000egame_server_ip\u0018\u0004 \u0001(\r\u0012\u0018\n\u0010game_server_port\u0018\u0005 \u0001(\r\u0012\u001b\n\u0013persona_state_flags\u0018\u0006 \u0001(\r\u0012 \n\u0018online_session_instances\u0018\u0007 \u0001(\r\u0012\u001b\n\u0013persona_set_by_user\u0018\n \u0001(\b\u0012\u0013\n\u000bplayer_name\u0018\u000f \u0001(\t\u0012\u0012\n\nquery_port\u0018\u0014 \u0001(\r\u0012\u0016\n\u000esteamid_source\u0018\u0019 \u0001(\u0006\u0012\u0013\n\u000bavatar_hash\u0018\u001f \u0001(\f\u0012\u0013\n\u000blast_logoff\u0018- \u0001(\r\u0012\u0012\n\nlast_logon\u0018. \u0001(\r\u0012\u0018\n\u0010last_seen_online\u0018/ \u0001(\r\u0012\u0011\n\tclan_rank\u00182 \u0001(\r\u0012\u0011\n\tgame_name\u00187 \u0001(\t\u0012\u000e\n\u0006gameid\u00188 \u0001(\u0006\u0012\u0016\n\u000egame_data_blob\u0018< \u0001(\f\u0012:\n\tclan_data\u0018@ \u0001(\u000b2'.CMsgClientPersonaState.Friend.ClanData\u0012\u0010\n\bclan_tag\u0018A \u0001(\t\u00128\n\rrich_presence\u0018G \u0003(\u000b2!.CMsgClientPersonaState.Friend.KV\u0012\u0014\n\fbroadcast_id\u0018H \u0001(\u0006\u0012\u0015\n\rgame_lobby_id\u0018I \u0001(\u0006\u0012$\n\u001cwatching_broadcast_accountid\u0018J \u0001(\r\u0012 \n\u0018watching_broadcast_appid\u0018K \u0001(\r\u0012\"\n\u001awatching_broadcast_viewers\u0018L \u0001(\r\u0012 \n\u0018watching_broadcast_title\u0018M \u0001(\t\u0012\u001b\n\u0013is_community_banned\u0018N \u0001(\b\u0012\"\n\u001aplayer_name_pending_review\u0018O \u0001(\b\u0012\u001d\n\u0015avatar_pending_review\u0018P \u0001(\b\u0012\u0015\n\ron_steam_deck\u0018Q \u0001(\b\u0012E\n\u000fother_game_data\u0018R \u0003(\u000b2,.CMsgClientPersonaState.Friend.OtherGameData\u0012\u001a\n\u0012gaming_device_type\u0018S \u0001(\r\u001a5\n\bClanData\u0012\u0012\n\nogg_app_id\u0018\u0001 \u0001(\r\u0012\u0015\n\rchat_group_id\u0018\u0002 \u0001(\u0004\u001a \n\u0002KV\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u001aY\n\rOtherGameData\u0012\u000e\n\u0006gameid\u0018\u0001 \u0001(\u0004\u00128\n\rrich_presence\u0018\u0002 \u0003(\u000b2!.CMsgClientPersonaState.Friend.KV\"5\n\u001bCMsgClientFriendProfileInfo\u0012\u0016\n\u000esteamid_friend\u0018\u0001 \u0001(\u0006\"Ú\u0001\n#CMsgClientFriendProfileInfoResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012\u0016\n\u000esteamid_friend\u0018\u0002 \u0001(\u0006\u0012\u0014\n\ftime_created\u0018\u0003 \u0001(\r\u0012\u0011\n\treal_name\u0018\u0004 \u0001(\t\u0012\u0011\n\tcity_name\u0018\u0005 \u0001(\t\u0012\u0012\n\nstate_name\u0018\u0006 \u0001(\t\u0012\u0014\n\fcountry_name\u0018\u0007 \u0001(\t\u0012\u0010\n\bheadline\u0018\b \u0001(\t\u0012\u000f\n\u0007summary\u0018\t \u0001(\t\"[\n\u001cCMsgClientCreateFriendsGroup\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tgroupname\u0018\u0002 \u0001(\t\u0012\u0017\n\u000fsteamid_friends\u0018\u0003 \u0003(\u0006\"H\n$CMsgClientCreateFriendsGroupResponse\u0012\u000f\n\u0007eresult\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007groupid\u0018\u0002 \u0001(\u0005\"@\n\u001cCMsgClientDeleteFriendsGroup\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007groupid\u0018\u0002 \u0001(\u0005\"7\n$CMsgClientDeleteFriendsGroupResponse\u0012\u000f\n\u0007eresult\u0018\u0001 \u0001(\r\"\u0082\u0001\n\u001cCMsgClientManageFriendsGroup\u0012\u000f\n\u0007groupid\u0018\u0001 \u0001(\u0005\u0012\u0011\n\tgroupname\u0018\u0002 \u0001(\t\u0012\u001d\n\u0015steamid_friends_added\u0018\u0003 \u0003(\u0006\u0012\u001f\n\u0017steamid_friends_removed\u0018\u0004 \u0003(\u0006\"7\n$CMsgClientManageFriendsGroupResponse\u0012\u000f\n\u0007eresult\u0018\u0001 \u0001(\r\"B\n\u001aCMsgClientAddFriendToGroup\u0012\u000f\n\u0007groupid\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000bsteamiduser\u0018\u0002 \u0001(\u0006\"5\n\"CMsgClientAddFriendToGroupResponse\u0012\u000f\n\u0007eresult\u0018\u0001 \u0001(\r\"G\n\u001fCMsgClientRemoveFriendFromGroup\u0012\u000f\n\u0007groupid\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000bsteamiduser\u0018\u0002 \u0001(\u0006\":\n'CMsgClientRemoveFriendFromGroupResponse\u0012\u000f\n\u0007eresult\u0018\u0001 \u0001(\r\"\u001b\n\u0019CMsgClientGetEmoticonList\"\u0087\u0004\n\u0016CMsgClientEmoticonList\u00123\n\temoticons\u0018\u0001 \u0003(\u000b2 .CMsgClientEmoticonList.Emoticon\u00121\n\bstickers\u0018\u0002 \u0003(\u000b2\u001f.CMsgClientEmoticonList.Sticker\u0012/\n\u0007effects\u0018\u0003 \u0003(\u000b2\u001e.CMsgClientEmoticonList.Effect\u001ax\n\bEmoticon\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005count\u0018\u0002 \u0001(\u0005\u0012\u0016\n\u000etime_last_used\u0018\u0003 \u0001(\r\u0012\u0011\n\tuse_count\u0018\u0004 \u0001(\r\u0012\u0015\n\rtime_received\u0018\u0005 \u0001(\r\u0012\r\n\u0005appid\u0018\u0006 \u0001(\r\u001aw\n\u0007Sticker\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005count\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rtime_received\u0018\u0003 \u0001(\r\u0012\r\n\u0005appid\u0018\u0004 \u0001(\r\u0012\u0016\n\u000etime_last_used\u0018\u0005 \u0001(\r\u0012\u0011\n\tuse_count\u0018\u0006 \u0001(\r\u001aa\n\u0006Effect\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005count\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rtime_received\u0018\u0003 \u0001(\r\u0012\u0014\n\finfinite_use\u0018\u0004 \u0001(\b\u0012\r\n\u0005appid\u0018\u0005 \u0001(\rB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientFriendMsg_descriptor = descriptor2;
        internal_static_CMsgClientFriendMsg_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Steamid", "ChatEntryType", "Message", "Rtime32ServerTimestamp", "EchoToSender"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientFriendMsgIncoming_descriptor = descriptor3;
        internal_static_CMsgClientFriendMsgIncoming_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"SteamidFrom", "ChatEntryType", "FromLimitedAccount", "Message", "Rtime32ServerTimestamp"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientAddFriend_descriptor = descriptor4;
        internal_static_CMsgClientAddFriend_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"SteamidToAdd", "AccountnameOrEmailToAdd"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientAddFriendResponse_descriptor = descriptor5;
        internal_static_CMsgClientAddFriendResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Eresult", "SteamIdAdded", "PersonaNameAdded"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientRemoveFriend_descriptor = descriptor6;
        internal_static_CMsgClientRemoveFriend_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Friendid"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientHideFriend_descriptor = descriptor7;
        internal_static_CMsgClientHideFriend_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Friendid", "Hide"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgClientFriendsList_descriptor = descriptor8;
        internal_static_CMsgClientFriendsList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Bincremental", "Friends", "MaxFriendCount", "ActiveFriendCount", "FriendsLimitHit"});
        Descriptors.Descriptor descriptor9 = descriptor8.getNestedTypes().get(0);
        internal_static_CMsgClientFriendsList_Friend_descriptor = descriptor9;
        internal_static_CMsgClientFriendsList_Friend_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Ulfriendid", "Efriendrelationship"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientFriendsGroupsList_descriptor = descriptor10;
        internal_static_CMsgClientFriendsGroupsList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Bremoval", "Bincremental", "FriendGroups", "Memberships"});
        Descriptors.Descriptor descriptor11 = descriptor10.getNestedTypes().get(0);
        internal_static_CMsgClientFriendsGroupsList_FriendGroup_descriptor = descriptor11;
        internal_static_CMsgClientFriendsGroupsList_FriendGroup_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"NGroupID", "StrGroupName"});
        Descriptors.Descriptor descriptor12 = descriptor10.getNestedTypes().get(1);
        internal_static_CMsgClientFriendsGroupsList_FriendGroupsMembership_descriptor = descriptor12;
        internal_static_CMsgClientFriendsGroupsList_FriendGroupsMembership_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"UlSteamID", "NGroupID"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(8);
        internal_static_CMsgClientPlayerNicknameList_descriptor = descriptor13;
        internal_static_CMsgClientPlayerNicknameList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Removal", "Incremental", "Nicknames"});
        Descriptors.Descriptor descriptor14 = descriptor13.getNestedTypes().get(0);
        internal_static_CMsgClientPlayerNicknameList_PlayerNickname_descriptor = descriptor14;
        internal_static_CMsgClientPlayerNicknameList_PlayerNickname_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Steamid", "Nickname"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgClientSetPlayerNickname_descriptor = descriptor15;
        internal_static_CMsgClientSetPlayerNickname_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Steamid", "Nickname"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgClientSetPlayerNicknameResponse_descriptor = descriptor16;
        internal_static_CMsgClientSetPlayerNicknameResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(11);
        internal_static_CMsgClientRequestFriendData_descriptor = descriptor17;
        internal_static_CMsgClientRequestFriendData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"PersonaStateRequested", "Friends"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(12);
        internal_static_CMsgClientChangeStatus_descriptor = descriptor18;
        internal_static_CMsgClientChangeStatus_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"PersonaState", "PlayerName", "IsAutoGeneratedName", "HighPriority", "PersonaSetByUser", "PersonaStateFlags", "NeedPersonaResponse", "IsClientIdle"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(13);
        internal_static_CMsgPersonaChangeResponse_descriptor = descriptor19;
        internal_static_CMsgPersonaChangeResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"Result", "PlayerName"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(14);
        internal_static_CMsgClientPersonaState_descriptor = descriptor20;
        internal_static_CMsgClientPersonaState_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"StatusFlags", "Friends"});
        Descriptors.Descriptor descriptor21 = descriptor20.getNestedTypes().get(0);
        internal_static_CMsgClientPersonaState_Friend_descriptor = descriptor21;
        internal_static_CMsgClientPersonaState_Friend_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Friendid", "PersonaState", "GamePlayedAppId", "GameServerIp", "GameServerPort", "PersonaStateFlags", "OnlineSessionInstances", "PersonaSetByUser", "PlayerName", "QueryPort", "SteamidSource", "AvatarHash", "LastLogoff", "LastLogon", "LastSeenOnline", "ClanRank", "GameName", "Gameid", "GameDataBlob", "ClanData", "ClanTag", "RichPresence", "BroadcastId", "GameLobbyId", "WatchingBroadcastAccountid", "WatchingBroadcastAppid", "WatchingBroadcastViewers", "WatchingBroadcastTitle", "IsCommunityBanned", "PlayerNamePendingReview", "AvatarPendingReview", "OnSteamDeck", "OtherGameData", "GamingDeviceType"});
        Descriptors.Descriptor descriptor22 = descriptor21.getNestedTypes().get(0);
        internal_static_CMsgClientPersonaState_Friend_ClanData_descriptor = descriptor22;
        internal_static_CMsgClientPersonaState_Friend_ClanData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"OggAppId", "ChatGroupId"});
        Descriptors.Descriptor descriptor23 = descriptor21.getNestedTypes().get(1);
        internal_static_CMsgClientPersonaState_Friend_KV_descriptor = descriptor23;
        internal_static_CMsgClientPersonaState_Friend_KV_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor24 = descriptor21.getNestedTypes().get(2);
        internal_static_CMsgClientPersonaState_Friend_OtherGameData_descriptor = descriptor24;
        internal_static_CMsgClientPersonaState_Friend_OtherGameData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"Gameid", "RichPresence"});
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(15);
        internal_static_CMsgClientFriendProfileInfo_descriptor = descriptor25;
        internal_static_CMsgClientFriendProfileInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[]{"SteamidFriend"});
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(16);
        internal_static_CMsgClientFriendProfileInfoResponse_descriptor = descriptor26;
        internal_static_CMsgClientFriendProfileInfoResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[]{"Eresult", "SteamidFriend", "TimeCreated", "RealName", "CityName", "StateName", "CountryName", "Headline", "Summary"});
        Descriptors.Descriptor descriptor27 = getDescriptor().getMessageTypes().get(17);
        internal_static_CMsgClientCreateFriendsGroup_descriptor = descriptor27;
        internal_static_CMsgClientCreateFriendsGroup_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"Steamid", "Groupname", "SteamidFriends"});
        Descriptors.Descriptor descriptor28 = getDescriptor().getMessageTypes().get(18);
        internal_static_CMsgClientCreateFriendsGroupResponse_descriptor = descriptor28;
        internal_static_CMsgClientCreateFriendsGroupResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor28, new String[]{"Eresult", "Groupid"});
        Descriptors.Descriptor descriptor29 = getDescriptor().getMessageTypes().get(19);
        internal_static_CMsgClientDeleteFriendsGroup_descriptor = descriptor29;
        internal_static_CMsgClientDeleteFriendsGroup_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor29, new String[]{"Steamid", "Groupid"});
        Descriptors.Descriptor descriptor30 = getDescriptor().getMessageTypes().get(20);
        internal_static_CMsgClientDeleteFriendsGroupResponse_descriptor = descriptor30;
        internal_static_CMsgClientDeleteFriendsGroupResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor30, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor31 = getDescriptor().getMessageTypes().get(21);
        internal_static_CMsgClientManageFriendsGroup_descriptor = descriptor31;
        internal_static_CMsgClientManageFriendsGroup_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor31, new String[]{"Groupid", "Groupname", "SteamidFriendsAdded", "SteamidFriendsRemoved"});
        Descriptors.Descriptor descriptor32 = getDescriptor().getMessageTypes().get(22);
        internal_static_CMsgClientManageFriendsGroupResponse_descriptor = descriptor32;
        internal_static_CMsgClientManageFriendsGroupResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor32, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor33 = getDescriptor().getMessageTypes().get(23);
        internal_static_CMsgClientAddFriendToGroup_descriptor = descriptor33;
        internal_static_CMsgClientAddFriendToGroup_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor33, new String[]{"Groupid", "Steamiduser"});
        Descriptors.Descriptor descriptor34 = getDescriptor().getMessageTypes().get(24);
        internal_static_CMsgClientAddFriendToGroupResponse_descriptor = descriptor34;
        internal_static_CMsgClientAddFriendToGroupResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor34, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor35 = getDescriptor().getMessageTypes().get(25);
        internal_static_CMsgClientRemoveFriendFromGroup_descriptor = descriptor35;
        internal_static_CMsgClientRemoveFriendFromGroup_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor35, new String[]{"Groupid", "Steamiduser"});
        Descriptors.Descriptor descriptor36 = getDescriptor().getMessageTypes().get(26);
        internal_static_CMsgClientRemoveFriendFromGroupResponse_descriptor = descriptor36;
        internal_static_CMsgClientRemoveFriendFromGroupResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor36, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor37 = getDescriptor().getMessageTypes().get(27);
        internal_static_CMsgClientGetEmoticonList_descriptor = descriptor37;
        internal_static_CMsgClientGetEmoticonList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor37, new String[0]);
        Descriptors.Descriptor descriptor38 = getDescriptor().getMessageTypes().get(28);
        internal_static_CMsgClientEmoticonList_descriptor = descriptor38;
        internal_static_CMsgClientEmoticonList_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor38, new String[]{"Emoticons", "Stickers", "Effects"});
        Descriptors.Descriptor descriptor39 = descriptor38.getNestedTypes().get(0);
        internal_static_CMsgClientEmoticonList_Emoticon_descriptor = descriptor39;
        internal_static_CMsgClientEmoticonList_Emoticon_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor39, new String[]{"Name", "Count", "TimeLastUsed", "UseCount", "TimeReceived", "Appid"});
        Descriptors.Descriptor descriptor40 = descriptor38.getNestedTypes().get(1);
        internal_static_CMsgClientEmoticonList_Sticker_descriptor = descriptor40;
        internal_static_CMsgClientEmoticonList_Sticker_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor40, new String[]{"Name", "Count", "TimeReceived", "Appid", "TimeLastUsed", "UseCount"});
        Descriptors.Descriptor descriptor41 = descriptor38.getNestedTypes().get(2);
        internal_static_CMsgClientEmoticonList_Effect_descriptor = descriptor41;
        internal_static_CMsgClientEmoticonList_Effect_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor41, new String[]{"Name", "Count", "TimeReceived", "InfiniteUse", "Appid"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientFriendMsg extends GeneratedMessage implements CMsgClientFriendMsgOrBuilder {
        public static final int CHAT_ENTRY_TYPE_FIELD_NUMBER = 2;
        private static final CMsgClientFriendMsg DEFAULT_INSTANCE;
        public static final int ECHO_TO_SENDER_FIELD_NUMBER = 5;
        public static final int MESSAGE_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientFriendMsg> PARSER;
        public static final int RTIME32_SERVER_TIMESTAMP_FIELD_NUMBER = 4;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int chatEntryType_;
        private boolean echoToSender_;
        private byte memoizedIsInitialized;
        private ByteString message_;
        private int rtime32ServerTimestamp_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientFriendMsg.class.getName());
            DEFAULT_INSTANCE = new CMsgClientFriendMsg();
            PARSER = new AbstractParser<CMsgClientFriendMsg>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsg.1
                @Override // com.google.protobuf.Parser
                public CMsgClientFriendMsg parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientFriendMsg.newBuilder();
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

        private CMsgClientFriendMsg(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.chatEntryType_ = 0;
            this.message_ = ByteString.EMPTY;
            this.rtime32ServerTimestamp_ = 0;
            this.echoToSender_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientFriendMsg() {
            this.steamid_ = 0L;
            this.chatEntryType_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.rtime32ServerTimestamp_ = 0;
            this.echoToSender_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.message_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsg_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendMsg.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public boolean hasChatEntryType() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public int getChatEntryType() {
            return this.chatEntryType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public ByteString getMessage() {
            return this.message_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public boolean hasRtime32ServerTimestamp() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public int getRtime32ServerTimestamp() {
            return this.rtime32ServerTimestamp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public boolean hasEchoToSender() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
        public boolean getEchoToSender() {
            return this.echoToSender_;
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
                codedOutputStream.writeInt32(2, this.chatEntryType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(3, this.message_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed32(4, this.rtime32ServerTimestamp_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.echoToSender_);
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
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(2, this.chatEntryType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(3, this.message_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed32Size(4, this.rtime32ServerTimestamp_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(5, this.echoToSender_);
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
            if (!(obj instanceof CMsgClientFriendMsg)) {
                return super.equals(obj);
            }
            CMsgClientFriendMsg cMsgClientFriendMsg = (CMsgClientFriendMsg) obj;
            if (hasSteamid() != cMsgClientFriendMsg.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cMsgClientFriendMsg.getSteamid()) || hasChatEntryType() != cMsgClientFriendMsg.hasChatEntryType()) {
                return false;
            }
            if ((hasChatEntryType() && getChatEntryType() != cMsgClientFriendMsg.getChatEntryType()) || hasMessage() != cMsgClientFriendMsg.hasMessage()) {
                return false;
            }
            if ((hasMessage() && !getMessage().equals(cMsgClientFriendMsg.getMessage())) || hasRtime32ServerTimestamp() != cMsgClientFriendMsg.hasRtime32ServerTimestamp()) {
                return false;
            }
            if ((!hasRtime32ServerTimestamp() || getRtime32ServerTimestamp() == cMsgClientFriendMsg.getRtime32ServerTimestamp()) && hasEchoToSender() == cMsgClientFriendMsg.hasEchoToSender()) {
                return (!hasEchoToSender() || getEchoToSender() == cMsgClientFriendMsg.getEchoToSender()) && getUnknownFields().equals(cMsgClientFriendMsg.getUnknownFields());
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
            if (hasChatEntryType()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getChatEntryType();
            }
            if (hasMessage()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getMessage().hashCode();
            }
            if (hasRtime32ServerTimestamp()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getRtime32ServerTimestamp();
            }
            if (hasEchoToSender()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getEchoToSender());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientFriendMsg parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientFriendMsg parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientFriendMsg parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientFriendMsg parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientFriendMsg parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientFriendMsg parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientFriendMsg parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendMsg) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendMsg parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendMsg) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendMsg parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendMsg) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendMsg parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendMsg) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendMsg parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientFriendMsg) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientFriendMsg parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendMsg) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientFriendMsg cMsgClientFriendMsg) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientFriendMsg);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientFriendMsgOrBuilder {
            private int bitField0_;
            private int chatEntryType_;
            private boolean echoToSender_;
            private ByteString message_;
            private int rtime32ServerTimestamp_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsg_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendMsg.class, Builder.class);
            }

            private Builder() {
                this.message_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.chatEntryType_ = 0;
                this.message_ = ByteString.EMPTY;
                this.rtime32ServerTimestamp_ = 0;
                this.echoToSender_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsg_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientFriendMsg getDefaultInstanceForType() {
                return CMsgClientFriendMsg.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendMsg build() {
                CMsgClientFriendMsg cMsgClientFriendMsgBuildPartial = buildPartial();
                if (cMsgClientFriendMsgBuildPartial.isInitialized()) {
                    return cMsgClientFriendMsgBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientFriendMsgBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendMsg buildPartial() {
                CMsgClientFriendMsg cMsgClientFriendMsg = new CMsgClientFriendMsg(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientFriendMsg);
                }
                onBuilt();
                return cMsgClientFriendMsg;
            }

            private void buildPartial0(CMsgClientFriendMsg cMsgClientFriendMsg) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientFriendMsg.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientFriendMsg.chatEntryType_ = this.chatEntryType_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientFriendMsg.message_ = this.message_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientFriendMsg.rtime32ServerTimestamp_ = this.rtime32ServerTimestamp_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientFriendMsg.echoToSender_ = this.echoToSender_;
                    i |= 16;
                }
                cMsgClientFriendMsg.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientFriendMsg) {
                    return mergeFrom((CMsgClientFriendMsg) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientFriendMsg cMsgClientFriendMsg) {
                if (cMsgClientFriendMsg == CMsgClientFriendMsg.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientFriendMsg.hasSteamid()) {
                    setSteamid(cMsgClientFriendMsg.getSteamid());
                }
                if (cMsgClientFriendMsg.hasChatEntryType()) {
                    setChatEntryType(cMsgClientFriendMsg.getChatEntryType());
                }
                if (cMsgClientFriendMsg.hasMessage()) {
                    setMessage(cMsgClientFriendMsg.getMessage());
                }
                if (cMsgClientFriendMsg.hasRtime32ServerTimestamp()) {
                    setRtime32ServerTimestamp(cMsgClientFriendMsg.getRtime32ServerTimestamp());
                }
                if (cMsgClientFriendMsg.hasEchoToSender()) {
                    setEchoToSender(cMsgClientFriendMsg.getEchoToSender());
                }
                mergeUnknownFields(cMsgClientFriendMsg.getUnknownFields());
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
                                    this.chatEntryType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.message_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 37) {
                                    this.rtime32ServerTimestamp_ = codedInputStream.readFixed32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.echoToSender_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public boolean hasChatEntryType() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public int getChatEntryType() {
                return this.chatEntryType_;
            }

            public Builder setChatEntryType(int i) {
                this.chatEntryType_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearChatEntryType() {
                this.bitField0_ &= -3;
                this.chatEntryType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public ByteString getMessage() {
                return this.message_;
            }

            public Builder setMessage(ByteString byteString) {
                byteString.getClass();
                this.message_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CMsgClientFriendMsg.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public boolean hasRtime32ServerTimestamp() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public int getRtime32ServerTimestamp() {
                return this.rtime32ServerTimestamp_;
            }

            public Builder setRtime32ServerTimestamp(int i) {
                this.rtime32ServerTimestamp_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearRtime32ServerTimestamp() {
                this.bitField0_ &= -9;
                this.rtime32ServerTimestamp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public boolean hasEchoToSender() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgOrBuilder
            public boolean getEchoToSender() {
                return this.echoToSender_;
            }

            public Builder setEchoToSender(boolean z) {
                this.echoToSender_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearEchoToSender() {
                this.bitField0_ &= -17;
                this.echoToSender_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientFriendMsg getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientFriendMsg> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientFriendMsg> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientFriendMsg getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientFriendMsgIncoming extends GeneratedMessage implements CMsgClientFriendMsgIncomingOrBuilder {
        public static final int CHAT_ENTRY_TYPE_FIELD_NUMBER = 2;
        private static final CMsgClientFriendMsgIncoming DEFAULT_INSTANCE;
        public static final int FROM_LIMITED_ACCOUNT_FIELD_NUMBER = 3;
        public static final int MESSAGE_FIELD_NUMBER = 4;
        private static final Parser<CMsgClientFriendMsgIncoming> PARSER;
        public static final int RTIME32_SERVER_TIMESTAMP_FIELD_NUMBER = 5;
        public static final int STEAMID_FROM_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int chatEntryType_;
        private boolean fromLimitedAccount_;
        private byte memoizedIsInitialized;
        private ByteString message_;
        private int rtime32ServerTimestamp_;
        private long steamidFrom_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientFriendMsgIncoming.class.getName());
            DEFAULT_INSTANCE = new CMsgClientFriendMsgIncoming();
            PARSER = new AbstractParser<CMsgClientFriendMsgIncoming>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncoming.1
                @Override // com.google.protobuf.Parser
                public CMsgClientFriendMsgIncoming parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientFriendMsgIncoming.newBuilder();
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

        private CMsgClientFriendMsgIncoming(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamidFrom_ = 0L;
            this.chatEntryType_ = 0;
            this.fromLimitedAccount_ = false;
            this.message_ = ByteString.EMPTY;
            this.rtime32ServerTimestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientFriendMsgIncoming() {
            this.steamidFrom_ = 0L;
            this.chatEntryType_ = 0;
            this.fromLimitedAccount_ = false;
            ByteString byteString = ByteString.EMPTY;
            this.rtime32ServerTimestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.message_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsgIncoming_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsgIncoming_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendMsgIncoming.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public boolean hasSteamidFrom() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public long getSteamidFrom() {
            return this.steamidFrom_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public boolean hasChatEntryType() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public int getChatEntryType() {
            return this.chatEntryType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public boolean hasFromLimitedAccount() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public boolean getFromLimitedAccount() {
            return this.fromLimitedAccount_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public ByteString getMessage() {
            return this.message_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public boolean hasRtime32ServerTimestamp() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
        public int getRtime32ServerTimestamp() {
            return this.rtime32ServerTimestamp_;
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
                codedOutputStream.writeFixed64(1, this.steamidFrom_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.chatEntryType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.fromLimitedAccount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBytes(4, this.message_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed32(5, this.rtime32ServerTimestamp_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamidFrom_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(2, this.chatEntryType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(3, this.fromLimitedAccount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(4, this.message_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed32Size(5, this.rtime32ServerTimestamp_);
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
            if (!(obj instanceof CMsgClientFriendMsgIncoming)) {
                return super.equals(obj);
            }
            CMsgClientFriendMsgIncoming cMsgClientFriendMsgIncoming = (CMsgClientFriendMsgIncoming) obj;
            if (hasSteamidFrom() != cMsgClientFriendMsgIncoming.hasSteamidFrom()) {
                return false;
            }
            if ((hasSteamidFrom() && getSteamidFrom() != cMsgClientFriendMsgIncoming.getSteamidFrom()) || hasChatEntryType() != cMsgClientFriendMsgIncoming.hasChatEntryType()) {
                return false;
            }
            if ((hasChatEntryType() && getChatEntryType() != cMsgClientFriendMsgIncoming.getChatEntryType()) || hasFromLimitedAccount() != cMsgClientFriendMsgIncoming.hasFromLimitedAccount()) {
                return false;
            }
            if ((hasFromLimitedAccount() && getFromLimitedAccount() != cMsgClientFriendMsgIncoming.getFromLimitedAccount()) || hasMessage() != cMsgClientFriendMsgIncoming.hasMessage()) {
                return false;
            }
            if ((!hasMessage() || getMessage().equals(cMsgClientFriendMsgIncoming.getMessage())) && hasRtime32ServerTimestamp() == cMsgClientFriendMsgIncoming.hasRtime32ServerTimestamp()) {
                return (!hasRtime32ServerTimestamp() || getRtime32ServerTimestamp() == cMsgClientFriendMsgIncoming.getRtime32ServerTimestamp()) && getUnknownFields().equals(cMsgClientFriendMsgIncoming.getUnknownFields());
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
            if (hasSteamidFrom()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamidFrom());
            }
            if (hasChatEntryType()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getChatEntryType();
            }
            if (hasFromLimitedAccount()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getFromLimitedAccount());
            }
            if (hasMessage()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMessage().hashCode();
            }
            if (hasRtime32ServerTimestamp()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getRtime32ServerTimestamp();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientFriendMsgIncoming parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendMsgIncoming) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendMsgIncoming) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendMsgIncoming parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendMsgIncoming) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendMsgIncoming parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendMsgIncoming) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientFriendMsgIncoming) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientFriendMsgIncoming parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendMsgIncoming) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientFriendMsgIncoming cMsgClientFriendMsgIncoming) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientFriendMsgIncoming);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientFriendMsgIncomingOrBuilder {
            private int bitField0_;
            private int chatEntryType_;
            private boolean fromLimitedAccount_;
            private ByteString message_;
            private int rtime32ServerTimestamp_;
            private long steamidFrom_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsgIncoming_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsgIncoming_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendMsgIncoming.class, Builder.class);
            }

            private Builder() {
                this.message_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamidFrom_ = 0L;
                this.chatEntryType_ = 0;
                this.fromLimitedAccount_ = false;
                this.message_ = ByteString.EMPTY;
                this.rtime32ServerTimestamp_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendMsgIncoming_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientFriendMsgIncoming getDefaultInstanceForType() {
                return CMsgClientFriendMsgIncoming.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendMsgIncoming build() {
                CMsgClientFriendMsgIncoming cMsgClientFriendMsgIncomingBuildPartial = buildPartial();
                if (cMsgClientFriendMsgIncomingBuildPartial.isInitialized()) {
                    return cMsgClientFriendMsgIncomingBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientFriendMsgIncomingBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendMsgIncoming buildPartial() {
                CMsgClientFriendMsgIncoming cMsgClientFriendMsgIncoming = new CMsgClientFriendMsgIncoming(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientFriendMsgIncoming);
                }
                onBuilt();
                return cMsgClientFriendMsgIncoming;
            }

            private void buildPartial0(CMsgClientFriendMsgIncoming cMsgClientFriendMsgIncoming) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientFriendMsgIncoming.steamidFrom_ = this.steamidFrom_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientFriendMsgIncoming.chatEntryType_ = this.chatEntryType_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientFriendMsgIncoming.fromLimitedAccount_ = this.fromLimitedAccount_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientFriendMsgIncoming.message_ = this.message_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientFriendMsgIncoming.rtime32ServerTimestamp_ = this.rtime32ServerTimestamp_;
                    i |= 16;
                }
                cMsgClientFriendMsgIncoming.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientFriendMsgIncoming) {
                    return mergeFrom((CMsgClientFriendMsgIncoming) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientFriendMsgIncoming cMsgClientFriendMsgIncoming) {
                if (cMsgClientFriendMsgIncoming == CMsgClientFriendMsgIncoming.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientFriendMsgIncoming.hasSteamidFrom()) {
                    setSteamidFrom(cMsgClientFriendMsgIncoming.getSteamidFrom());
                }
                if (cMsgClientFriendMsgIncoming.hasChatEntryType()) {
                    setChatEntryType(cMsgClientFriendMsgIncoming.getChatEntryType());
                }
                if (cMsgClientFriendMsgIncoming.hasFromLimitedAccount()) {
                    setFromLimitedAccount(cMsgClientFriendMsgIncoming.getFromLimitedAccount());
                }
                if (cMsgClientFriendMsgIncoming.hasMessage()) {
                    setMessage(cMsgClientFriendMsgIncoming.getMessage());
                }
                if (cMsgClientFriendMsgIncoming.hasRtime32ServerTimestamp()) {
                    setRtime32ServerTimestamp(cMsgClientFriendMsgIncoming.getRtime32ServerTimestamp());
                }
                mergeUnknownFields(cMsgClientFriendMsgIncoming.getUnknownFields());
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
                                    this.steamidFrom_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.chatEntryType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.fromLimitedAccount_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.message_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 45) {
                                    this.rtime32ServerTimestamp_ = codedInputStream.readFixed32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public boolean hasSteamidFrom() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public long getSteamidFrom() {
                return this.steamidFrom_;
            }

            public Builder setSteamidFrom(long j) {
                this.steamidFrom_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamidFrom() {
                this.bitField0_ &= -2;
                this.steamidFrom_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public boolean hasChatEntryType() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public int getChatEntryType() {
                return this.chatEntryType_;
            }

            public Builder setChatEntryType(int i) {
                this.chatEntryType_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearChatEntryType() {
                this.bitField0_ &= -3;
                this.chatEntryType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public boolean hasFromLimitedAccount() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public boolean getFromLimitedAccount() {
                return this.fromLimitedAccount_;
            }

            public Builder setFromLimitedAccount(boolean z) {
                this.fromLimitedAccount_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearFromLimitedAccount() {
                this.bitField0_ &= -5;
                this.fromLimitedAccount_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public ByteString getMessage() {
                return this.message_;
            }

            public Builder setMessage(ByteString byteString) {
                byteString.getClass();
                this.message_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -9;
                this.message_ = CMsgClientFriendMsgIncoming.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public boolean hasRtime32ServerTimestamp() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendMsgIncomingOrBuilder
            public int getRtime32ServerTimestamp() {
                return this.rtime32ServerTimestamp_;
            }

            public Builder setRtime32ServerTimestamp(int i) {
                this.rtime32ServerTimestamp_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearRtime32ServerTimestamp() {
                this.bitField0_ &= -17;
                this.rtime32ServerTimestamp_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientFriendMsgIncoming getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientFriendMsgIncoming> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientFriendMsgIncoming> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientFriendMsgIncoming getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientAddFriend extends GeneratedMessage implements CMsgClientAddFriendOrBuilder {
        public static final int ACCOUNTNAME_OR_EMAIL_TO_ADD_FIELD_NUMBER = 2;
        private static final CMsgClientAddFriend DEFAULT_INSTANCE;
        private static final Parser<CMsgClientAddFriend> PARSER;
        public static final int STEAMID_TO_ADD_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object accountnameOrEmailToAdd_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamidToAdd_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientAddFriend.class.getName());
            DEFAULT_INSTANCE = new CMsgClientAddFriend();
            PARSER = new AbstractParser<CMsgClientAddFriend>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriend.1
                @Override // com.google.protobuf.Parser
                public CMsgClientAddFriend parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientAddFriend.newBuilder();
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

        private CMsgClientAddFriend(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamidToAdd_ = 0L;
            this.accountnameOrEmailToAdd_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientAddFriend() {
            this.steamidToAdd_ = 0L;
            this.accountnameOrEmailToAdd_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.accountnameOrEmailToAdd_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriend_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriend_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientAddFriend.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
        public boolean hasSteamidToAdd() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
        public long getSteamidToAdd() {
            return this.steamidToAdd_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
        public boolean hasAccountnameOrEmailToAdd() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
        public String getAccountnameOrEmailToAdd() {
            Object obj = this.accountnameOrEmailToAdd_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.accountnameOrEmailToAdd_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
        public ByteString getAccountnameOrEmailToAddBytes() {
            Object obj = this.accountnameOrEmailToAdd_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accountnameOrEmailToAdd_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeFixed64(1, this.steamidToAdd_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.accountnameOrEmailToAdd_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamidToAdd_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.accountnameOrEmailToAdd_);
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
            if (!(obj instanceof CMsgClientAddFriend)) {
                return super.equals(obj);
            }
            CMsgClientAddFriend cMsgClientAddFriend = (CMsgClientAddFriend) obj;
            if (hasSteamidToAdd() != cMsgClientAddFriend.hasSteamidToAdd()) {
                return false;
            }
            if ((!hasSteamidToAdd() || getSteamidToAdd() == cMsgClientAddFriend.getSteamidToAdd()) && hasAccountnameOrEmailToAdd() == cMsgClientAddFriend.hasAccountnameOrEmailToAdd()) {
                return (!hasAccountnameOrEmailToAdd() || getAccountnameOrEmailToAdd().equals(cMsgClientAddFriend.getAccountnameOrEmailToAdd())) && getUnknownFields().equals(cMsgClientAddFriend.getUnknownFields());
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
            if (hasSteamidToAdd()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamidToAdd());
            }
            if (hasAccountnameOrEmailToAdd()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAccountnameOrEmailToAdd().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientAddFriend parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientAddFriend parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientAddFriend parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientAddFriend parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientAddFriend parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientAddFriend parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientAddFriend parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientAddFriend) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientAddFriend parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAddFriend) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientAddFriend parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientAddFriend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientAddFriend parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAddFriend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientAddFriend parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientAddFriend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientAddFriend parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAddFriend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientAddFriend cMsgClientAddFriend) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientAddFriend);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientAddFriendOrBuilder {
            private Object accountnameOrEmailToAdd_;
            private int bitField0_;
            private long steamidToAdd_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriend_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriend_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientAddFriend.class, Builder.class);
            }

            private Builder() {
                this.accountnameOrEmailToAdd_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.accountnameOrEmailToAdd_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamidToAdd_ = 0L;
                this.accountnameOrEmailToAdd_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriend_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientAddFriend getDefaultInstanceForType() {
                return CMsgClientAddFriend.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientAddFriend build() {
                CMsgClientAddFriend cMsgClientAddFriendBuildPartial = buildPartial();
                if (cMsgClientAddFriendBuildPartial.isInitialized()) {
                    return cMsgClientAddFriendBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientAddFriendBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientAddFriend buildPartial() {
                CMsgClientAddFriend cMsgClientAddFriend = new CMsgClientAddFriend(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientAddFriend);
                }
                onBuilt();
                return cMsgClientAddFriend;
            }

            private void buildPartial0(CMsgClientAddFriend cMsgClientAddFriend) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientAddFriend.steamidToAdd_ = this.steamidToAdd_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientAddFriend.accountnameOrEmailToAdd_ = this.accountnameOrEmailToAdd_;
                    i |= 2;
                }
                cMsgClientAddFriend.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientAddFriend) {
                    return mergeFrom((CMsgClientAddFriend) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientAddFriend cMsgClientAddFriend) {
                if (cMsgClientAddFriend == CMsgClientAddFriend.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientAddFriend.hasSteamidToAdd()) {
                    setSteamidToAdd(cMsgClientAddFriend.getSteamidToAdd());
                }
                if (cMsgClientAddFriend.hasAccountnameOrEmailToAdd()) {
                    this.accountnameOrEmailToAdd_ = cMsgClientAddFriend.accountnameOrEmailToAdd_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientAddFriend.getUnknownFields());
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
                                    this.steamidToAdd_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.accountnameOrEmailToAdd_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
            public boolean hasSteamidToAdd() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
            public long getSteamidToAdd() {
                return this.steamidToAdd_;
            }

            public Builder setSteamidToAdd(long j) {
                this.steamidToAdd_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamidToAdd() {
                this.bitField0_ &= -2;
                this.steamidToAdd_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
            public boolean hasAccountnameOrEmailToAdd() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
            public String getAccountnameOrEmailToAdd() {
                Object obj = this.accountnameOrEmailToAdd_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.accountnameOrEmailToAdd_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendOrBuilder
            public ByteString getAccountnameOrEmailToAddBytes() {
                Object obj = this.accountnameOrEmailToAdd_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.accountnameOrEmailToAdd_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAccountnameOrEmailToAdd(String str) {
                str.getClass();
                this.accountnameOrEmailToAdd_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAccountnameOrEmailToAdd() {
                this.accountnameOrEmailToAdd_ = CMsgClientAddFriend.getDefaultInstance().getAccountnameOrEmailToAdd();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setAccountnameOrEmailToAddBytes(ByteString byteString) {
                byteString.getClass();
                this.accountnameOrEmailToAdd_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientAddFriend getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientAddFriend> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientAddFriend> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientAddFriend getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientAddFriendResponse extends GeneratedMessage implements CMsgClientAddFriendResponseOrBuilder {
        private static final CMsgClientAddFriendResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientAddFriendResponse> PARSER;
        public static final int PERSONA_NAME_ADDED_FIELD_NUMBER = 3;
        public static final int STEAM_ID_ADDED_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private volatile Object personaNameAdded_;
        private long steamIdAdded_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientAddFriendResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientAddFriendResponse();
            PARSER = new AbstractParser<CMsgClientAddFriendResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientAddFriendResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientAddFriendResponse.newBuilder();
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

        private CMsgClientAddFriendResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.steamIdAdded_ = 0L;
            this.personaNameAdded_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientAddFriendResponse() {
            this.eresult_ = 2;
            this.steamIdAdded_ = 0L;
            this.personaNameAdded_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.personaNameAdded_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriendResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriendResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientAddFriendResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
        public boolean hasSteamIdAdded() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
        public long getSteamIdAdded() {
            return this.steamIdAdded_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
        public boolean hasPersonaNameAdded() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
        public String getPersonaNameAdded() {
            Object obj = this.personaNameAdded_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.personaNameAdded_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
        public ByteString getPersonaNameAddedBytes() {
            Object obj = this.personaNameAdded_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.personaNameAdded_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamIdAdded_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.personaNameAdded_);
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
                iComputeInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamIdAdded_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(3, this.personaNameAdded_);
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
            if (!(obj instanceof CMsgClientAddFriendResponse)) {
                return super.equals(obj);
            }
            CMsgClientAddFriendResponse cMsgClientAddFriendResponse = (CMsgClientAddFriendResponse) obj;
            if (hasEresult() != cMsgClientAddFriendResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientAddFriendResponse.getEresult()) || hasSteamIdAdded() != cMsgClientAddFriendResponse.hasSteamIdAdded()) {
                return false;
            }
            if ((!hasSteamIdAdded() || getSteamIdAdded() == cMsgClientAddFriendResponse.getSteamIdAdded()) && hasPersonaNameAdded() == cMsgClientAddFriendResponse.hasPersonaNameAdded()) {
                return (!hasPersonaNameAdded() || getPersonaNameAdded().equals(cMsgClientAddFriendResponse.getPersonaNameAdded())) && getUnknownFields().equals(cMsgClientAddFriendResponse.getUnknownFields());
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
            if (hasSteamIdAdded()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamIdAdded());
            }
            if (hasPersonaNameAdded()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPersonaNameAdded().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientAddFriendResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientAddFriendResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientAddFriendResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientAddFriendResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientAddFriendResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientAddFriendResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientAddFriendResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientAddFriendResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientAddFriendResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAddFriendResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientAddFriendResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientAddFriendResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientAddFriendResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAddFriendResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientAddFriendResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientAddFriendResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientAddFriendResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAddFriendResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientAddFriendResponse cMsgClientAddFriendResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientAddFriendResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientAddFriendResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private Object personaNameAdded_;
            private long steamIdAdded_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriendResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriendResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientAddFriendResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.personaNameAdded_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.personaNameAdded_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.steamIdAdded_ = 0L;
                this.personaNameAdded_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientAddFriendResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientAddFriendResponse getDefaultInstanceForType() {
                return CMsgClientAddFriendResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientAddFriendResponse build() {
                CMsgClientAddFriendResponse cMsgClientAddFriendResponseBuildPartial = buildPartial();
                if (cMsgClientAddFriendResponseBuildPartial.isInitialized()) {
                    return cMsgClientAddFriendResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientAddFriendResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientAddFriendResponse buildPartial() {
                CMsgClientAddFriendResponse cMsgClientAddFriendResponse = new CMsgClientAddFriendResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientAddFriendResponse);
                }
                onBuilt();
                return cMsgClientAddFriendResponse;
            }

            private void buildPartial0(CMsgClientAddFriendResponse cMsgClientAddFriendResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientAddFriendResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientAddFriendResponse.steamIdAdded_ = this.steamIdAdded_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientAddFriendResponse.personaNameAdded_ = this.personaNameAdded_;
                    i |= 4;
                }
                cMsgClientAddFriendResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientAddFriendResponse) {
                    return mergeFrom((CMsgClientAddFriendResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientAddFriendResponse cMsgClientAddFriendResponse) {
                if (cMsgClientAddFriendResponse == CMsgClientAddFriendResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientAddFriendResponse.hasEresult()) {
                    setEresult(cMsgClientAddFriendResponse.getEresult());
                }
                if (cMsgClientAddFriendResponse.hasSteamIdAdded()) {
                    setSteamIdAdded(cMsgClientAddFriendResponse.getSteamIdAdded());
                }
                if (cMsgClientAddFriendResponse.hasPersonaNameAdded()) {
                    this.personaNameAdded_ = cMsgClientAddFriendResponse.personaNameAdded_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientAddFriendResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamIdAdded_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.personaNameAdded_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
            public boolean hasSteamIdAdded() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
            public long getSteamIdAdded() {
                return this.steamIdAdded_;
            }

            public Builder setSteamIdAdded(long j) {
                this.steamIdAdded_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamIdAdded() {
                this.bitField0_ &= -3;
                this.steamIdAdded_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
            public boolean hasPersonaNameAdded() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
            public String getPersonaNameAdded() {
                Object obj = this.personaNameAdded_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.personaNameAdded_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientAddFriendResponseOrBuilder
            public ByteString getPersonaNameAddedBytes() {
                Object obj = this.personaNameAdded_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.personaNameAdded_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPersonaNameAdded(String str) {
                str.getClass();
                this.personaNameAdded_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPersonaNameAdded() {
                this.personaNameAdded_ = CMsgClientAddFriendResponse.getDefaultInstance().getPersonaNameAdded();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setPersonaNameAddedBytes(ByteString byteString) {
                byteString.getClass();
                this.personaNameAdded_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CMsgClientAddFriendResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientAddFriendResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientAddFriendResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientAddFriendResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRemoveFriend extends GeneratedMessage implements CMsgClientRemoveFriendOrBuilder {
        private static final CMsgClientRemoveFriend DEFAULT_INSTANCE;
        public static final int FRIENDID_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientRemoveFriend> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long friendid_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRemoveFriend.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRemoveFriend();
            PARSER = new AbstractParser<CMsgClientRemoveFriend>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRemoveFriend.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRemoveFriend parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRemoveFriend.newBuilder();
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

        private CMsgClientRemoveFriend(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.friendid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRemoveFriend() {
            this.friendid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientRemoveFriend_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientRemoveFriend_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRemoveFriend.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRemoveFriendOrBuilder
        public boolean hasFriendid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRemoveFriendOrBuilder
        public long getFriendid() {
            return this.friendid_;
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
                codedOutputStream.writeFixed64(1, this.friendid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.friendid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientRemoveFriend)) {
                return super.equals(obj);
            }
            CMsgClientRemoveFriend cMsgClientRemoveFriend = (CMsgClientRemoveFriend) obj;
            if (hasFriendid() != cMsgClientRemoveFriend.hasFriendid()) {
                return false;
            }
            return (!hasFriendid() || getFriendid() == cMsgClientRemoveFriend.getFriendid()) && getUnknownFields().equals(cMsgClientRemoveFriend.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasFriendid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getFriendid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientRemoveFriend parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRemoveFriend parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRemoveFriend parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRemoveFriend parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRemoveFriend parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRemoveFriend parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRemoveFriend parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRemoveFriend) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRemoveFriend parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRemoveFriend) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRemoveFriend parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRemoveFriend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRemoveFriend parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRemoveFriend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRemoveFriend parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRemoveFriend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRemoveFriend parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRemoveFriend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRemoveFriend cMsgClientRemoveFriend) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRemoveFriend);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientRemoveFriendOrBuilder {
            private int bitField0_;
            private long friendid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientRemoveFriend_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientRemoveFriend_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRemoveFriend.class, Builder.class);
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
                this.friendid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientRemoveFriend_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRemoveFriend getDefaultInstanceForType() {
                return CMsgClientRemoveFriend.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRemoveFriend build() {
                CMsgClientRemoveFriend cMsgClientRemoveFriendBuildPartial = buildPartial();
                if (cMsgClientRemoveFriendBuildPartial.isInitialized()) {
                    return cMsgClientRemoveFriendBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRemoveFriendBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRemoveFriend buildPartial() {
                CMsgClientRemoveFriend cMsgClientRemoveFriend = new CMsgClientRemoveFriend(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientRemoveFriend);
                }
                onBuilt();
                return cMsgClientRemoveFriend;
            }

            private void buildPartial0(CMsgClientRemoveFriend cMsgClientRemoveFriend) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientRemoveFriend.friendid_ = this.friendid_;
                } else {
                    i = 0;
                }
                cMsgClientRemoveFriend.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRemoveFriend) {
                    return mergeFrom((CMsgClientRemoveFriend) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRemoveFriend cMsgClientRemoveFriend) {
                if (cMsgClientRemoveFriend == CMsgClientRemoveFriend.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientRemoveFriend.hasFriendid()) {
                    setFriendid(cMsgClientRemoveFriend.getFriendid());
                }
                mergeUnknownFields(cMsgClientRemoveFriend.getUnknownFields());
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
                                    this.friendid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRemoveFriendOrBuilder
            public boolean hasFriendid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRemoveFriendOrBuilder
            public long getFriendid() {
                return this.friendid_;
            }

            public Builder setFriendid(long j) {
                this.friendid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearFriendid() {
                this.bitField0_ &= -2;
                this.friendid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientRemoveFriend getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRemoveFriend> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRemoveFriend> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRemoveFriend getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientFriendsList extends GeneratedMessage implements CMsgClientFriendsListOrBuilder {
        public static final int ACTIVE_FRIEND_COUNT_FIELD_NUMBER = 4;
        public static final int BINCREMENTAL_FIELD_NUMBER = 1;
        private static final CMsgClientFriendsList DEFAULT_INSTANCE;
        public static final int FRIENDS_FIELD_NUMBER = 2;
        public static final int FRIENDS_LIMIT_HIT_FIELD_NUMBER = 5;
        public static final int MAX_FRIEND_COUNT_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientFriendsList> PARSER;
        private static final long serialVersionUID = 0;
        private int activeFriendCount_;
        private boolean bincremental_;
        private int bitField0_;
        private boolean friendsLimitHit_;
        private List<Friend> friends_;
        private int maxFriendCount_;
        private byte memoizedIsInitialized;

        public interface FriendOrBuilder extends MessageOrBuilder {
            int getEfriendrelationship();

            long getUlfriendid();

            boolean hasEfriendrelationship();

            boolean hasUlfriendid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientFriendsList.class.getName());
            DEFAULT_INSTANCE = new CMsgClientFriendsList();
            PARSER = new AbstractParser<CMsgClientFriendsList>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.1
                @Override // com.google.protobuf.Parser
                public CMsgClientFriendsList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientFriendsList.newBuilder();
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

        private CMsgClientFriendsList(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.bincremental_ = false;
            this.maxFriendCount_ = 0;
            this.activeFriendCount_ = 0;
            this.friendsLimitHit_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientFriendsList() {
            this.bincremental_ = false;
            this.maxFriendCount_ = 0;
            this.activeFriendCount_ = 0;
            this.friendsLimitHit_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.friends_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendsList.class, Builder.class);
        }

        public static final class Friend extends GeneratedMessage implements FriendOrBuilder {
            private static final Friend DEFAULT_INSTANCE;
            public static final int EFRIENDRELATIONSHIP_FIELD_NUMBER = 2;
            private static final Parser<Friend> PARSER;
            public static final int ULFRIENDID_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private int efriendrelationship_;
            private byte memoizedIsInitialized;
            private long ulfriendid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Friend.class.getName());
                DEFAULT_INSTANCE = new Friend();
                PARSER = new AbstractParser<Friend>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.Friend.1
                    @Override // com.google.protobuf.Parser
                    public Friend parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Friend.newBuilder();
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

            private Friend(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.ulfriendid_ = 0L;
                this.efriendrelationship_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Friend() {
                this.ulfriendid_ = 0L;
                this.efriendrelationship_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_Friend_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_Friend_fieldAccessorTable.ensureFieldAccessorsInitialized(Friend.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
            public boolean hasUlfriendid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
            public long getUlfriendid() {
                return this.ulfriendid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
            public boolean hasEfriendrelationship() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
            public int getEfriendrelationship() {
                return this.efriendrelationship_;
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
                    codedOutputStream.writeFixed64(1, this.ulfriendid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.efriendrelationship_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.ulfriendid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.efriendrelationship_);
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
                if (!(obj instanceof Friend)) {
                    return super.equals(obj);
                }
                Friend friend = (Friend) obj;
                if (hasUlfriendid() != friend.hasUlfriendid()) {
                    return false;
                }
                if ((!hasUlfriendid() || getUlfriendid() == friend.getUlfriendid()) && hasEfriendrelationship() == friend.hasEfriendrelationship()) {
                    return (!hasEfriendrelationship() || getEfriendrelationship() == friend.getEfriendrelationship()) && getUnknownFields().equals(friend.getUnknownFields());
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
                if (hasUlfriendid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getUlfriendid());
                }
                if (hasEfriendrelationship()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getEfriendrelationship();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Friend parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Friend parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Friend parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Friend parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Friend parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Friend parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Friend parseFrom(InputStream inputStream) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Friend parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Friend parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Friend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Friend parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Friend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Friend parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Friend parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Friend friend) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(friend);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements FriendOrBuilder {
                private int bitField0_;
                private int efriendrelationship_;
                private long ulfriendid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_Friend_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_Friend_fieldAccessorTable.ensureFieldAccessorsInitialized(Friend.class, Builder.class);
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
                    this.ulfriendid_ = 0L;
                    this.efriendrelationship_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_Friend_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Friend getDefaultInstanceForType() {
                    return Friend.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Friend build() {
                    Friend friendBuildPartial = buildPartial();
                    if (friendBuildPartial.isInitialized()) {
                        return friendBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Friend buildPartial() {
                    Friend friend = new Friend(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(friend);
                    }
                    onBuilt();
                    return friend;
                }

                private void buildPartial0(Friend friend) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        friend.ulfriendid_ = this.ulfriendid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        friend.efriendrelationship_ = this.efriendrelationship_;
                        i |= 2;
                    }
                    friend.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Friend) {
                        return mergeFrom((Friend) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Friend friend) {
                    if (friend == Friend.getDefaultInstance()) {
                        return this;
                    }
                    if (friend.hasUlfriendid()) {
                        setUlfriendid(friend.getUlfriendid());
                    }
                    if (friend.hasEfriendrelationship()) {
                        setEfriendrelationship(friend.getEfriendrelationship());
                    }
                    mergeUnknownFields(friend.getUnknownFields());
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
                                        this.ulfriendid_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.efriendrelationship_ = codedInputStream.readUInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
                public boolean hasUlfriendid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
                public long getUlfriendid() {
                    return this.ulfriendid_;
                }

                public Builder setUlfriendid(long j) {
                    this.ulfriendid_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearUlfriendid() {
                    this.bitField0_ &= -2;
                    this.ulfriendid_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
                public boolean hasEfriendrelationship() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsList.FriendOrBuilder
                public int getEfriendrelationship() {
                    return this.efriendrelationship_;
                }

                public Builder setEfriendrelationship(int i) {
                    this.efriendrelationship_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearEfriendrelationship() {
                    this.bitField0_ &= -3;
                    this.efriendrelationship_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static Friend getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Friend> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Friend> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Friend getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public boolean hasBincremental() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public boolean getBincremental() {
            return this.bincremental_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public List<Friend> getFriendsList() {
            return this.friends_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public List<? extends FriendOrBuilder> getFriendsOrBuilderList() {
            return this.friends_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public int getFriendsCount() {
            return this.friends_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public Friend getFriends(int i) {
            return this.friends_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public FriendOrBuilder getFriendsOrBuilder(int i) {
            return this.friends_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public boolean hasMaxFriendCount() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public int getMaxFriendCount() {
            return this.maxFriendCount_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public boolean hasActiveFriendCount() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public int getActiveFriendCount() {
            return this.activeFriendCount_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public boolean hasFriendsLimitHit() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
        public boolean getFriendsLimitHit() {
            return this.friendsLimitHit_;
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
                codedOutputStream.writeBool(1, this.bincremental_);
            }
            for (int i = 0; i < this.friends_.size(); i++) {
                codedOutputStream.writeMessage(2, this.friends_.get(i));
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(3, this.maxFriendCount_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(4, this.activeFriendCount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(5, this.friendsLimitHit_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.bincremental_) : 0;
            for (int i2 = 0; i2 < this.friends_.size(); i2++) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(2, this.friends_.get(i2));
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(3, this.maxFriendCount_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(4, this.activeFriendCount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(5, this.friendsLimitHit_);
            }
            int serializedSize = iComputeBoolSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientFriendsList)) {
                return super.equals(obj);
            }
            CMsgClientFriendsList cMsgClientFriendsList = (CMsgClientFriendsList) obj;
            if (hasBincremental() != cMsgClientFriendsList.hasBincremental()) {
                return false;
            }
            if ((hasBincremental() && getBincremental() != cMsgClientFriendsList.getBincremental()) || !getFriendsList().equals(cMsgClientFriendsList.getFriendsList()) || hasMaxFriendCount() != cMsgClientFriendsList.hasMaxFriendCount()) {
                return false;
            }
            if ((hasMaxFriendCount() && getMaxFriendCount() != cMsgClientFriendsList.getMaxFriendCount()) || hasActiveFriendCount() != cMsgClientFriendsList.hasActiveFriendCount()) {
                return false;
            }
            if ((!hasActiveFriendCount() || getActiveFriendCount() == cMsgClientFriendsList.getActiveFriendCount()) && hasFriendsLimitHit() == cMsgClientFriendsList.hasFriendsLimitHit()) {
                return (!hasFriendsLimitHit() || getFriendsLimitHit() == cMsgClientFriendsList.getFriendsLimitHit()) && getUnknownFields().equals(cMsgClientFriendsList.getUnknownFields());
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
            if (hasBincremental()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getBincremental());
            }
            if (getFriendsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFriendsList().hashCode();
            }
            if (hasMaxFriendCount()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getMaxFriendCount();
            }
            if (hasActiveFriendCount()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getActiveFriendCount();
            }
            if (hasFriendsLimitHit()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getFriendsLimitHit());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientFriendsList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientFriendsList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientFriendsList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientFriendsList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientFriendsList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientFriendsList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientFriendsList parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendsList) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendsList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendsList) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendsList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendsList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendsList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendsList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendsList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientFriendsList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientFriendsList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendsList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientFriendsList cMsgClientFriendsList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientFriendsList);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientFriendsListOrBuilder {
            private int activeFriendCount_;
            private boolean bincremental_;
            private int bitField0_;
            private RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> friendsBuilder_;
            private boolean friendsLimitHit_;
            private List<Friend> friends_;
            private int maxFriendCount_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendsList.class, Builder.class);
            }

            private Builder() {
                this.friends_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.friends_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.bincremental_ = false;
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.friends_ = Collections.emptyList();
                } else {
                    this.friends_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                this.maxFriendCount_ = 0;
                this.activeFriendCount_ = 0;
                this.friendsLimitHit_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendsList_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientFriendsList getDefaultInstanceForType() {
                return CMsgClientFriendsList.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendsList build() {
                CMsgClientFriendsList cMsgClientFriendsListBuildPartial = buildPartial();
                if (cMsgClientFriendsListBuildPartial.isInitialized()) {
                    return cMsgClientFriendsListBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientFriendsListBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendsList buildPartial() {
                CMsgClientFriendsList cMsgClientFriendsList = new CMsgClientFriendsList(this);
                buildPartialRepeatedFields(cMsgClientFriendsList);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientFriendsList);
                }
                onBuilt();
                return cMsgClientFriendsList;
            }

            private void buildPartialRepeatedFields(CMsgClientFriendsList cMsgClientFriendsList) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.friends_ = Collections.unmodifiableList(this.friends_);
                        this.bitField0_ &= -3;
                    }
                    cMsgClientFriendsList.friends_ = this.friends_;
                    return;
                }
                cMsgClientFriendsList.friends_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientFriendsList cMsgClientFriendsList) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientFriendsList.bincremental_ = this.bincremental_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientFriendsList.maxFriendCount_ = this.maxFriendCount_;
                    i |= 2;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientFriendsList.activeFriendCount_ = this.activeFriendCount_;
                    i |= 4;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientFriendsList.friendsLimitHit_ = this.friendsLimitHit_;
                    i |= 8;
                }
                cMsgClientFriendsList.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientFriendsList) {
                    return mergeFrom((CMsgClientFriendsList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientFriendsList cMsgClientFriendsList) {
                if (cMsgClientFriendsList == CMsgClientFriendsList.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientFriendsList.hasBincremental()) {
                    setBincremental(cMsgClientFriendsList.getBincremental());
                }
                if (this.friendsBuilder_ == null) {
                    if (!cMsgClientFriendsList.friends_.isEmpty()) {
                        if (this.friends_.isEmpty()) {
                            this.friends_ = cMsgClientFriendsList.friends_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureFriendsIsMutable();
                            this.friends_.addAll(cMsgClientFriendsList.friends_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientFriendsList.friends_.isEmpty()) {
                    if (this.friendsBuilder_.isEmpty()) {
                        this.friendsBuilder_.dispose();
                        this.friendsBuilder_ = null;
                        this.friends_ = cMsgClientFriendsList.friends_;
                        this.bitField0_ &= -3;
                        this.friendsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetFriendsFieldBuilder() : null;
                    } else {
                        this.friendsBuilder_.addAllMessages(cMsgClientFriendsList.friends_);
                    }
                }
                if (cMsgClientFriendsList.hasMaxFriendCount()) {
                    setMaxFriendCount(cMsgClientFriendsList.getMaxFriendCount());
                }
                if (cMsgClientFriendsList.hasActiveFriendCount()) {
                    setActiveFriendCount(cMsgClientFriendsList.getActiveFriendCount());
                }
                if (cMsgClientFriendsList.hasFriendsLimitHit()) {
                    setFriendsLimitHit(cMsgClientFriendsList.getFriendsLimitHit());
                }
                mergeUnknownFields(cMsgClientFriendsList.getUnknownFields());
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
                                    this.bincremental_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    Friend friend = (Friend) codedInputStream.readMessage(Friend.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureFriendsIsMutable();
                                        this.friends_.add(friend);
                                    } else {
                                        repeatedFieldBuilder.addMessage(friend);
                                    }
                                } else if (tag == 24) {
                                    this.maxFriendCount_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.activeFriendCount_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.friendsLimitHit_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public boolean hasBincremental() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public boolean getBincremental() {
                return this.bincremental_;
            }

            public Builder setBincremental(boolean z) {
                this.bincremental_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearBincremental() {
                this.bitField0_ &= -2;
                this.bincremental_ = false;
                onChanged();
                return this;
            }

            private void ensureFriendsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.friends_ = new ArrayList(this.friends_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public List<Friend> getFriendsList() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.friends_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public int getFriendsCount() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.friends_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public Friend getFriends(int i) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.friends_.get(i);
                }
                return (Friend) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setFriends(int i, Friend friend) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friend.getClass();
                    ensureFriendsIsMutable();
                    this.friends_.set(i, friend);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, friend);
                }
                return this;
            }

            public Builder setFriends(int i, Friend.Builder builder) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addFriends(Friend friend) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friend.getClass();
                    ensureFriendsIsMutable();
                    this.friends_.add(friend);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(friend);
                }
                return this;
            }

            public Builder addFriends(int i, Friend friend) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friend.getClass();
                    ensureFriendsIsMutable();
                    this.friends_.add(i, friend);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, friend);
                }
                return this;
            }

            public Builder addFriends(Friend.Builder builder) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addFriends(int i, Friend.Builder builder) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllFriends(Iterable<? extends Friend> iterable) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.friends_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearFriends() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.friends_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeFriends(int i) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Friend.Builder getFriendsBuilder(int i) {
                return (Friend.Builder) internalGetFriendsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public FriendOrBuilder getFriendsOrBuilder(int i) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.friends_.get(i);
                }
                return (FriendOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public List<? extends FriendOrBuilder> getFriendsOrBuilderList() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.friends_);
            }

            public Friend.Builder addFriendsBuilder() {
                return (Friend.Builder) internalGetFriendsFieldBuilder().addBuilder(Friend.getDefaultInstance());
            }

            public Friend.Builder addFriendsBuilder(int i) {
                return (Friend.Builder) internalGetFriendsFieldBuilder().addBuilder(i, Friend.getDefaultInstance());
            }

            public List<Friend.Builder> getFriendsBuilderList() {
                return internalGetFriendsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> internalGetFriendsFieldBuilder() {
                if (this.friendsBuilder_ == null) {
                    this.friendsBuilder_ = new RepeatedFieldBuilder<>(this.friends_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.friends_ = null;
                }
                return this.friendsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public boolean hasMaxFriendCount() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public int getMaxFriendCount() {
                return this.maxFriendCount_;
            }

            public Builder setMaxFriendCount(int i) {
                this.maxFriendCount_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearMaxFriendCount() {
                this.bitField0_ &= -5;
                this.maxFriendCount_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public boolean hasActiveFriendCount() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public int getActiveFriendCount() {
                return this.activeFriendCount_;
            }

            public Builder setActiveFriendCount(int i) {
                this.activeFriendCount_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearActiveFriendCount() {
                this.bitField0_ &= -9;
                this.activeFriendCount_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public boolean hasFriendsLimitHit() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendsListOrBuilder
            public boolean getFriendsLimitHit() {
                return this.friendsLimitHit_;
            }

            public Builder setFriendsLimitHit(boolean z) {
                this.friendsLimitHit_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearFriendsLimitHit() {
                this.bitField0_ &= -17;
                this.friendsLimitHit_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientFriendsList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientFriendsList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientFriendsList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientFriendsList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPlayerNicknameList extends GeneratedMessage implements CMsgClientPlayerNicknameListOrBuilder {
        private static final CMsgClientPlayerNicknameList DEFAULT_INSTANCE;
        public static final int INCREMENTAL_FIELD_NUMBER = 2;
        public static final int NICKNAMES_FIELD_NUMBER = 3;
        private static final Parser<CMsgClientPlayerNicknameList> PARSER;
        public static final int REMOVAL_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean incremental_;
        private byte memoizedIsInitialized;
        private List<PlayerNickname> nicknames_;
        private boolean removal_;

        public interface PlayerNicknameOrBuilder extends MessageOrBuilder {
            String getNickname();

            ByteString getNicknameBytes();

            long getSteamid();

            boolean hasNickname();

            boolean hasSteamid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPlayerNicknameList.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPlayerNicknameList();
            PARSER = new AbstractParser<CMsgClientPlayerNicknameList>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPlayerNicknameList parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPlayerNicknameList.newBuilder();
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

        private CMsgClientPlayerNicknameList(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.removal_ = false;
            this.incremental_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPlayerNicknameList() {
            this.removal_ = false;
            this.incremental_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.nicknames_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPlayerNicknameList.class, Builder.class);
        }

        public static final class PlayerNickname extends GeneratedMessage implements PlayerNicknameOrBuilder {
            private static final PlayerNickname DEFAULT_INSTANCE;
            public static final int NICKNAME_FIELD_NUMBER = 3;
            private static final Parser<PlayerNickname> PARSER;
            public static final int STEAMID_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private volatile Object nickname_;
            private long steamid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", PlayerNickname.class.getName());
                DEFAULT_INSTANCE = new PlayerNickname();
                PARSER = new AbstractParser<PlayerNickname>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNickname.1
                    @Override // com.google.protobuf.Parser
                    public PlayerNickname parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = PlayerNickname.newBuilder();
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

            private PlayerNickname(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.steamid_ = 0L;
                this.nickname_ = "";
                this.memoizedIsInitialized = (byte) -1;
            }

            private PlayerNickname() {
                this.steamid_ = 0L;
                this.nickname_ = "";
                this.memoizedIsInitialized = (byte) -1;
                this.nickname_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_PlayerNickname_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_PlayerNickname_fieldAccessorTable.ensureFieldAccessorsInitialized(PlayerNickname.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
            public boolean hasNickname() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
            public String getNickname() {
                Object obj = this.nickname_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.nickname_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
            public ByteString getNicknameBytes() {
                Object obj = this.nickname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.nickname_ = byteStringCopyFromUtf8;
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
                    codedOutputStream.writeFixed64(1, this.steamid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 3, this.nickname_);
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
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(3, this.nickname_);
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
                if (!(obj instanceof PlayerNickname)) {
                    return super.equals(obj);
                }
                PlayerNickname playerNickname = (PlayerNickname) obj;
                if (hasSteamid() != playerNickname.hasSteamid()) {
                    return false;
                }
                if ((!hasSteamid() || getSteamid() == playerNickname.getSteamid()) && hasNickname() == playerNickname.hasNickname()) {
                    return (!hasNickname() || getNickname().equals(playerNickname.getNickname())) && getUnknownFields().equals(playerNickname.getUnknownFields());
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
                if (hasNickname()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getNickname().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static PlayerNickname parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static PlayerNickname parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static PlayerNickname parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static PlayerNickname parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static PlayerNickname parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static PlayerNickname parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static PlayerNickname parseFrom(InputStream inputStream) throws IOException {
                return (PlayerNickname) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static PlayerNickname parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PlayerNickname) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PlayerNickname parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (PlayerNickname) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static PlayerNickname parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PlayerNickname) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PlayerNickname parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (PlayerNickname) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static PlayerNickname parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PlayerNickname) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(PlayerNickname playerNickname) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(playerNickname);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements PlayerNicknameOrBuilder {
                private int bitField0_;
                private Object nickname_;
                private long steamid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_PlayerNickname_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_PlayerNickname_fieldAccessorTable.ensureFieldAccessorsInitialized(PlayerNickname.class, Builder.class);
                }

                private Builder() {
                    this.nickname_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.nickname_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.steamid_ = 0L;
                    this.nickname_ = "";
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_PlayerNickname_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public PlayerNickname getDefaultInstanceForType() {
                    return PlayerNickname.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PlayerNickname build() {
                    PlayerNickname playerNicknameBuildPartial = buildPartial();
                    if (playerNicknameBuildPartial.isInitialized()) {
                        return playerNicknameBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) playerNicknameBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public PlayerNickname buildPartial() {
                    PlayerNickname playerNickname = new PlayerNickname(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(playerNickname);
                    }
                    onBuilt();
                    return playerNickname;
                }

                private void buildPartial0(PlayerNickname playerNickname) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        playerNickname.steamid_ = this.steamid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        playerNickname.nickname_ = this.nickname_;
                        i |= 2;
                    }
                    playerNickname.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof PlayerNickname) {
                        return mergeFrom((PlayerNickname) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(PlayerNickname playerNickname) {
                    if (playerNickname == PlayerNickname.getDefaultInstance()) {
                        return this;
                    }
                    if (playerNickname.hasSteamid()) {
                        setSteamid(playerNickname.getSteamid());
                    }
                    if (playerNickname.hasNickname()) {
                        this.nickname_ = playerNickname.nickname_;
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    mergeUnknownFields(playerNickname.getUnknownFields());
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
                                    } else if (tag == 26) {
                                        this.nickname_ = codedInputStream.readBytes();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
                public boolean hasSteamid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
                public boolean hasNickname() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
                public String getNickname() {
                    Object obj = this.nickname_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.nickname_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameList.PlayerNicknameOrBuilder
                public ByteString getNicknameBytes() {
                    Object obj = this.nickname_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.nickname_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setNickname(String str) {
                    str.getClass();
                    this.nickname_ = str;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearNickname() {
                    this.nickname_ = PlayerNickname.getDefaultInstance().getNickname();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder setNicknameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.nickname_ = byteString;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }
            }

            public static PlayerNickname getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<PlayerNickname> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<PlayerNickname> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PlayerNickname getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public boolean hasRemoval() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public boolean getRemoval() {
            return this.removal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public boolean hasIncremental() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public boolean getIncremental() {
            return this.incremental_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public List<PlayerNickname> getNicknamesList() {
            return this.nicknames_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public List<? extends PlayerNicknameOrBuilder> getNicknamesOrBuilderList() {
            return this.nicknames_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public int getNicknamesCount() {
            return this.nicknames_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public PlayerNickname getNicknames(int i) {
            return this.nicknames_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
        public PlayerNicknameOrBuilder getNicknamesOrBuilder(int i) {
            return this.nicknames_.get(i);
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
                codedOutputStream.writeBool(1, this.removal_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.incremental_);
            }
            for (int i = 0; i < this.nicknames_.size(); i++) {
                codedOutputStream.writeMessage(3, this.nicknames_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.removal_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(2, this.incremental_);
            }
            for (int i2 = 0; i2 < this.nicknames_.size(); i2++) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(3, this.nicknames_.get(i2));
            }
            int serializedSize = iComputeBoolSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientPlayerNicknameList)) {
                return super.equals(obj);
            }
            CMsgClientPlayerNicknameList cMsgClientPlayerNicknameList = (CMsgClientPlayerNicknameList) obj;
            if (hasRemoval() != cMsgClientPlayerNicknameList.hasRemoval()) {
                return false;
            }
            if ((!hasRemoval() || getRemoval() == cMsgClientPlayerNicknameList.getRemoval()) && hasIncremental() == cMsgClientPlayerNicknameList.hasIncremental()) {
                return (!hasIncremental() || getIncremental() == cMsgClientPlayerNicknameList.getIncremental()) && getNicknamesList().equals(cMsgClientPlayerNicknameList.getNicknamesList()) && getUnknownFields().equals(cMsgClientPlayerNicknameList.getUnknownFields());
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
            if (hasRemoval()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getRemoval());
            }
            if (hasIncremental()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getIncremental());
            }
            if (getNicknamesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getNicknamesList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPlayerNicknameList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPlayerNicknameList parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPlayerNicknameList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPlayerNicknameList parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPlayerNicknameList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPlayerNicknameList parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPlayerNicknameList parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPlayerNicknameList) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPlayerNicknameList parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPlayerNicknameList) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPlayerNicknameList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPlayerNicknameList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPlayerNicknameList parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPlayerNicknameList) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPlayerNicknameList parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPlayerNicknameList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPlayerNicknameList parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPlayerNicknameList) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPlayerNicknameList cMsgClientPlayerNicknameList) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPlayerNicknameList);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPlayerNicknameListOrBuilder {
            private int bitField0_;
            private boolean incremental_;
            private RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> nicknamesBuilder_;
            private List<PlayerNickname> nicknames_;
            private boolean removal_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPlayerNicknameList.class, Builder.class);
            }

            private Builder() {
                this.nicknames_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.nicknames_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.removal_ = false;
                this.incremental_ = false;
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.nicknames_ = Collections.emptyList();
                } else {
                    this.nicknames_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPlayerNicknameList_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPlayerNicknameList getDefaultInstanceForType() {
                return CMsgClientPlayerNicknameList.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPlayerNicknameList build() {
                CMsgClientPlayerNicknameList cMsgClientPlayerNicknameListBuildPartial = buildPartial();
                if (cMsgClientPlayerNicknameListBuildPartial.isInitialized()) {
                    return cMsgClientPlayerNicknameListBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPlayerNicknameListBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPlayerNicknameList buildPartial() {
                CMsgClientPlayerNicknameList cMsgClientPlayerNicknameList = new CMsgClientPlayerNicknameList(this);
                buildPartialRepeatedFields(cMsgClientPlayerNicknameList);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPlayerNicknameList);
                }
                onBuilt();
                return cMsgClientPlayerNicknameList;
            }

            private void buildPartialRepeatedFields(CMsgClientPlayerNicknameList cMsgClientPlayerNicknameList) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.nicknames_ = Collections.unmodifiableList(this.nicknames_);
                        this.bitField0_ &= -5;
                    }
                    cMsgClientPlayerNicknameList.nicknames_ = this.nicknames_;
                    return;
                }
                cMsgClientPlayerNicknameList.nicknames_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientPlayerNicknameList cMsgClientPlayerNicknameList) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientPlayerNicknameList.removal_ = this.removal_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientPlayerNicknameList.incremental_ = this.incremental_;
                    i |= 2;
                }
                cMsgClientPlayerNicknameList.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPlayerNicknameList) {
                    return mergeFrom((CMsgClientPlayerNicknameList) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPlayerNicknameList cMsgClientPlayerNicknameList) {
                if (cMsgClientPlayerNicknameList == CMsgClientPlayerNicknameList.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPlayerNicknameList.hasRemoval()) {
                    setRemoval(cMsgClientPlayerNicknameList.getRemoval());
                }
                if (cMsgClientPlayerNicknameList.hasIncremental()) {
                    setIncremental(cMsgClientPlayerNicknameList.getIncremental());
                }
                if (this.nicknamesBuilder_ == null) {
                    if (!cMsgClientPlayerNicknameList.nicknames_.isEmpty()) {
                        if (this.nicknames_.isEmpty()) {
                            this.nicknames_ = cMsgClientPlayerNicknameList.nicknames_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureNicknamesIsMutable();
                            this.nicknames_.addAll(cMsgClientPlayerNicknameList.nicknames_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPlayerNicknameList.nicknames_.isEmpty()) {
                    if (this.nicknamesBuilder_.isEmpty()) {
                        this.nicknamesBuilder_.dispose();
                        this.nicknamesBuilder_ = null;
                        this.nicknames_ = cMsgClientPlayerNicknameList.nicknames_;
                        this.bitField0_ &= -5;
                        this.nicknamesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetNicknamesFieldBuilder() : null;
                    } else {
                        this.nicknamesBuilder_.addAllMessages(cMsgClientPlayerNicknameList.nicknames_);
                    }
                }
                mergeUnknownFields(cMsgClientPlayerNicknameList.getUnknownFields());
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
                                    this.removal_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.incremental_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    PlayerNickname playerNickname = (PlayerNickname) codedInputStream.readMessage(PlayerNickname.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureNicknamesIsMutable();
                                        this.nicknames_.add(playerNickname);
                                    } else {
                                        repeatedFieldBuilder.addMessage(playerNickname);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public boolean hasRemoval() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public boolean getRemoval() {
                return this.removal_;
            }

            public Builder setRemoval(boolean z) {
                this.removal_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRemoval() {
                this.bitField0_ &= -2;
                this.removal_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public boolean hasIncremental() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public boolean getIncremental() {
                return this.incremental_;
            }

            public Builder setIncremental(boolean z) {
                this.incremental_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearIncremental() {
                this.bitField0_ &= -3;
                this.incremental_ = false;
                onChanged();
                return this;
            }

            private void ensureNicknamesIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.nicknames_ = new ArrayList(this.nicknames_);
                    this.bitField0_ |= 4;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public List<PlayerNickname> getNicknamesList() {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.nicknames_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public int getNicknamesCount() {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.nicknames_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public PlayerNickname getNicknames(int i) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.nicknames_.get(i);
                }
                return (PlayerNickname) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setNicknames(int i, PlayerNickname playerNickname) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    playerNickname.getClass();
                    ensureNicknamesIsMutable();
                    this.nicknames_.set(i, playerNickname);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, playerNickname);
                }
                return this;
            }

            public Builder setNicknames(int i, PlayerNickname.Builder builder) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNicknamesIsMutable();
                    this.nicknames_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addNicknames(PlayerNickname playerNickname) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    playerNickname.getClass();
                    ensureNicknamesIsMutable();
                    this.nicknames_.add(playerNickname);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(playerNickname);
                }
                return this;
            }

            public Builder addNicknames(int i, PlayerNickname playerNickname) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    playerNickname.getClass();
                    ensureNicknamesIsMutable();
                    this.nicknames_.add(i, playerNickname);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, playerNickname);
                }
                return this;
            }

            public Builder addNicknames(PlayerNickname.Builder builder) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNicknamesIsMutable();
                    this.nicknames_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addNicknames(int i, PlayerNickname.Builder builder) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNicknamesIsMutable();
                    this.nicknames_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllNicknames(Iterable<? extends PlayerNickname> iterable) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNicknamesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.nicknames_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearNicknames() {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.nicknames_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeNicknames(int i) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureNicknamesIsMutable();
                    this.nicknames_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public PlayerNickname.Builder getNicknamesBuilder(int i) {
                return (PlayerNickname.Builder) internalGetNicknamesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public PlayerNicknameOrBuilder getNicknamesOrBuilder(int i) {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.nicknames_.get(i);
                }
                return (PlayerNicknameOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPlayerNicknameListOrBuilder
            public List<? extends PlayerNicknameOrBuilder> getNicknamesOrBuilderList() {
                RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> repeatedFieldBuilder = this.nicknamesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.nicknames_);
            }

            public PlayerNickname.Builder addNicknamesBuilder() {
                return (PlayerNickname.Builder) internalGetNicknamesFieldBuilder().addBuilder(PlayerNickname.getDefaultInstance());
            }

            public PlayerNickname.Builder addNicknamesBuilder(int i) {
                return (PlayerNickname.Builder) internalGetNicknamesFieldBuilder().addBuilder(i, PlayerNickname.getDefaultInstance());
            }

            public List<PlayerNickname.Builder> getNicknamesBuilderList() {
                return internalGetNicknamesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<PlayerNickname, PlayerNickname.Builder, PlayerNicknameOrBuilder> internalGetNicknamesFieldBuilder() {
                if (this.nicknamesBuilder_ == null) {
                    this.nicknamesBuilder_ = new RepeatedFieldBuilder<>(this.nicknames_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.nicknames_ = null;
                }
                return this.nicknamesBuilder_;
            }
        }

        public static CMsgClientPlayerNicknameList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPlayerNicknameList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPlayerNicknameList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPlayerNicknameList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientSetPlayerNickname extends GeneratedMessage implements CMsgClientSetPlayerNicknameOrBuilder {
        private static final CMsgClientSetPlayerNickname DEFAULT_INSTANCE;
        public static final int NICKNAME_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientSetPlayerNickname> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object nickname_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientSetPlayerNickname.class.getName());
            DEFAULT_INSTANCE = new CMsgClientSetPlayerNickname();
            PARSER = new AbstractParser<CMsgClientSetPlayerNickname>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNickname.1
                @Override // com.google.protobuf.Parser
                public CMsgClientSetPlayerNickname parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientSetPlayerNickname.newBuilder();
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

        private CMsgClientSetPlayerNickname(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.nickname_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientSetPlayerNickname() {
            this.steamid_ = 0L;
            this.nickname_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.nickname_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNickname_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNickname_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientSetPlayerNickname.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
        public boolean hasNickname() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.nickname_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.nickname_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeFixed64(1, this.steamid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.nickname_);
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
                iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.nickname_);
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
            if (!(obj instanceof CMsgClientSetPlayerNickname)) {
                return super.equals(obj);
            }
            CMsgClientSetPlayerNickname cMsgClientSetPlayerNickname = (CMsgClientSetPlayerNickname) obj;
            if (hasSteamid() != cMsgClientSetPlayerNickname.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cMsgClientSetPlayerNickname.getSteamid()) && hasNickname() == cMsgClientSetPlayerNickname.hasNickname()) {
                return (!hasNickname() || getNickname().equals(cMsgClientSetPlayerNickname.getNickname())) && getUnknownFields().equals(cMsgClientSetPlayerNickname.getUnknownFields());
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
            if (hasNickname()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getNickname().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientSetPlayerNickname parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientSetPlayerNickname parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNickname parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientSetPlayerNickname parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNickname parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientSetPlayerNickname parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNickname parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientSetPlayerNickname) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientSetPlayerNickname parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSetPlayerNickname) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNickname parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientSetPlayerNickname) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientSetPlayerNickname parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSetPlayerNickname) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNickname parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientSetPlayerNickname) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientSetPlayerNickname parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSetPlayerNickname) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientSetPlayerNickname cMsgClientSetPlayerNickname) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientSetPlayerNickname);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientSetPlayerNicknameOrBuilder {
            private int bitField0_;
            private Object nickname_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNickname_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNickname_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientSetPlayerNickname.class, Builder.class);
            }

            private Builder() {
                this.nickname_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.nickname_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.nickname_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNickname_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientSetPlayerNickname getDefaultInstanceForType() {
                return CMsgClientSetPlayerNickname.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientSetPlayerNickname build() {
                CMsgClientSetPlayerNickname cMsgClientSetPlayerNicknameBuildPartial = buildPartial();
                if (cMsgClientSetPlayerNicknameBuildPartial.isInitialized()) {
                    return cMsgClientSetPlayerNicknameBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientSetPlayerNicknameBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientSetPlayerNickname buildPartial() {
                CMsgClientSetPlayerNickname cMsgClientSetPlayerNickname = new CMsgClientSetPlayerNickname(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientSetPlayerNickname);
                }
                onBuilt();
                return cMsgClientSetPlayerNickname;
            }

            private void buildPartial0(CMsgClientSetPlayerNickname cMsgClientSetPlayerNickname) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientSetPlayerNickname.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientSetPlayerNickname.nickname_ = this.nickname_;
                    i |= 2;
                }
                cMsgClientSetPlayerNickname.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientSetPlayerNickname) {
                    return mergeFrom((CMsgClientSetPlayerNickname) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientSetPlayerNickname cMsgClientSetPlayerNickname) {
                if (cMsgClientSetPlayerNickname == CMsgClientSetPlayerNickname.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientSetPlayerNickname.hasSteamid()) {
                    setSteamid(cMsgClientSetPlayerNickname.getSteamid());
                }
                if (cMsgClientSetPlayerNickname.hasNickname()) {
                    this.nickname_ = cMsgClientSetPlayerNickname.nickname_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientSetPlayerNickname.getUnknownFields());
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
                                    this.nickname_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
            public boolean hasNickname() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
            public String getNickname() {
                Object obj = this.nickname_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.nickname_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameOrBuilder
            public ByteString getNicknameBytes() {
                Object obj = this.nickname_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.nickname_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setNickname(String str) {
                str.getClass();
                this.nickname_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearNickname() {
                this.nickname_ = CMsgClientSetPlayerNickname.getDefaultInstance().getNickname();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setNicknameBytes(ByteString byteString) {
                byteString.getClass();
                this.nickname_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CMsgClientSetPlayerNickname getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientSetPlayerNickname> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientSetPlayerNickname> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientSetPlayerNickname getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientSetPlayerNicknameResponse extends GeneratedMessage implements CMsgClientSetPlayerNicknameResponseOrBuilder {
        private static final CMsgClientSetPlayerNicknameResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientSetPlayerNicknameResponse> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientSetPlayerNicknameResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientSetPlayerNicknameResponse();
            PARSER = new AbstractParser<CMsgClientSetPlayerNicknameResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientSetPlayerNicknameResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientSetPlayerNicknameResponse.newBuilder();
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

        private CMsgClientSetPlayerNicknameResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientSetPlayerNicknameResponse() {
            this.eresult_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNicknameResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNicknameResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientSetPlayerNicknameResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameResponseOrBuilder
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
                codedOutputStream.writeUInt32(1, this.eresult_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.eresult_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientSetPlayerNicknameResponse)) {
                return super.equals(obj);
            }
            CMsgClientSetPlayerNicknameResponse cMsgClientSetPlayerNicknameResponse = (CMsgClientSetPlayerNicknameResponse) obj;
            if (hasEresult() != cMsgClientSetPlayerNicknameResponse.hasEresult()) {
                return false;
            }
            return (!hasEresult() || getEresult() == cMsgClientSetPlayerNicknameResponse.getEresult()) && getUnknownFields().equals(cMsgClientSetPlayerNicknameResponse.getUnknownFields());
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
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientSetPlayerNicknameResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSetPlayerNicknameResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNicknameResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientSetPlayerNicknameResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientSetPlayerNicknameResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSetPlayerNicknameResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientSetPlayerNicknameResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientSetPlayerNicknameResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSetPlayerNicknameResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientSetPlayerNicknameResponse cMsgClientSetPlayerNicknameResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientSetPlayerNicknameResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientSetPlayerNicknameResponseOrBuilder {
            private int bitField0_;
            private int eresult_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNicknameResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNicknameResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientSetPlayerNicknameResponse.class, Builder.class);
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
                this.eresult_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientSetPlayerNicknameResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientSetPlayerNicknameResponse getDefaultInstanceForType() {
                return CMsgClientSetPlayerNicknameResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientSetPlayerNicknameResponse build() {
                CMsgClientSetPlayerNicknameResponse cMsgClientSetPlayerNicknameResponseBuildPartial = buildPartial();
                if (cMsgClientSetPlayerNicknameResponseBuildPartial.isInitialized()) {
                    return cMsgClientSetPlayerNicknameResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientSetPlayerNicknameResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientSetPlayerNicknameResponse buildPartial() {
                CMsgClientSetPlayerNicknameResponse cMsgClientSetPlayerNicknameResponse = new CMsgClientSetPlayerNicknameResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientSetPlayerNicknameResponse);
                }
                onBuilt();
                return cMsgClientSetPlayerNicknameResponse;
            }

            private void buildPartial0(CMsgClientSetPlayerNicknameResponse cMsgClientSetPlayerNicknameResponse) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientSetPlayerNicknameResponse.eresult_ = this.eresult_;
                } else {
                    i = 0;
                }
                cMsgClientSetPlayerNicknameResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientSetPlayerNicknameResponse) {
                    return mergeFrom((CMsgClientSetPlayerNicknameResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientSetPlayerNicknameResponse cMsgClientSetPlayerNicknameResponse) {
                if (cMsgClientSetPlayerNicknameResponse == CMsgClientSetPlayerNicknameResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientSetPlayerNicknameResponse.hasEresult()) {
                    setEresult(cMsgClientSetPlayerNicknameResponse.getEresult());
                }
                mergeUnknownFields(cMsgClientSetPlayerNicknameResponse.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameResponseOrBuilder
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
                this.eresult_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientSetPlayerNicknameResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientSetPlayerNicknameResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientSetPlayerNicknameResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientSetPlayerNicknameResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRequestFriendData extends GeneratedMessage implements CMsgClientRequestFriendDataOrBuilder {
        private static final CMsgClientRequestFriendData DEFAULT_INSTANCE;
        public static final int FRIENDS_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientRequestFriendData> PARSER;
        public static final int PERSONA_STATE_REQUESTED_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Internal.LongList friends_;
        private byte memoizedIsInitialized;
        private int personaStateRequested_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRequestFriendData.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRequestFriendData();
            PARSER = new AbstractParser<CMsgClientRequestFriendData>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendData.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRequestFriendData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRequestFriendData.newBuilder();
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

        private CMsgClientRequestFriendData(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.personaStateRequested_ = 0;
            this.friends_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRequestFriendData() {
            this.personaStateRequested_ = 0;
            this.friends_ = GeneratedMessage.emptyLongList();
            this.memoizedIsInitialized = (byte) -1;
            this.friends_ = GeneratedMessage.emptyLongList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientRequestFriendData_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientRequestFriendData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestFriendData.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
        public boolean hasPersonaStateRequested() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
        public int getPersonaStateRequested() {
            return this.personaStateRequested_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
        public List<Long> getFriendsList() {
            return this.friends_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
        public int getFriendsCount() {
            return this.friends_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
        public long getFriends(int i) {
            return this.friends_.getLong(i);
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
                codedOutputStream.writeUInt32(1, this.personaStateRequested_);
            }
            for (int i = 0; i < this.friends_.size(); i++) {
                codedOutputStream.writeFixed64(2, this.friends_.getLong(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.personaStateRequested_) : 0) + (getFriendsList().size() * 8) + getFriendsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientRequestFriendData)) {
                return super.equals(obj);
            }
            CMsgClientRequestFriendData cMsgClientRequestFriendData = (CMsgClientRequestFriendData) obj;
            if (hasPersonaStateRequested() != cMsgClientRequestFriendData.hasPersonaStateRequested()) {
                return false;
            }
            return (!hasPersonaStateRequested() || getPersonaStateRequested() == cMsgClientRequestFriendData.getPersonaStateRequested()) && getFriendsList().equals(cMsgClientRequestFriendData.getFriendsList()) && getUnknownFields().equals(cMsgClientRequestFriendData.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasPersonaStateRequested()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPersonaStateRequested();
            }
            if (getFriendsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFriendsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientRequestFriendData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRequestFriendData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRequestFriendData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRequestFriendData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRequestFriendData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRequestFriendData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRequestFriendData parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestFriendData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestFriendData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFriendData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestFriendData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestFriendData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestFriendData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFriendData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestFriendData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRequestFriendData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRequestFriendData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestFriendData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRequestFriendData cMsgClientRequestFriendData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRequestFriendData);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientRequestFriendDataOrBuilder {
            private int bitField0_;
            private Internal.LongList friends_;
            private int personaStateRequested_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientRequestFriendData_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientRequestFriendData_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestFriendData.class, Builder.class);
            }

            private Builder() {
                this.friends_ = GeneratedMessage.emptyLongList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.friends_ = GeneratedMessage.emptyLongList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.personaStateRequested_ = 0;
                this.friends_ = GeneratedMessage.emptyLongList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientRequestFriendData_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRequestFriendData getDefaultInstanceForType() {
                return CMsgClientRequestFriendData.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestFriendData build() {
                CMsgClientRequestFriendData cMsgClientRequestFriendDataBuildPartial = buildPartial();
                if (cMsgClientRequestFriendDataBuildPartial.isInitialized()) {
                    return cMsgClientRequestFriendDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRequestFriendDataBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestFriendData buildPartial() {
                CMsgClientRequestFriendData cMsgClientRequestFriendData = new CMsgClientRequestFriendData(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientRequestFriendData);
                }
                onBuilt();
                return cMsgClientRequestFriendData;
            }

            private void buildPartial0(CMsgClientRequestFriendData cMsgClientRequestFriendData) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientRequestFriendData.personaStateRequested_ = this.personaStateRequested_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    this.friends_.makeImmutable();
                    cMsgClientRequestFriendData.friends_ = this.friends_;
                }
                cMsgClientRequestFriendData.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRequestFriendData) {
                    return mergeFrom((CMsgClientRequestFriendData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRequestFriendData cMsgClientRequestFriendData) {
                if (cMsgClientRequestFriendData == CMsgClientRequestFriendData.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientRequestFriendData.hasPersonaStateRequested()) {
                    setPersonaStateRequested(cMsgClientRequestFriendData.getPersonaStateRequested());
                }
                if (!cMsgClientRequestFriendData.friends_.isEmpty()) {
                    if (this.friends_.isEmpty()) {
                        Internal.LongList longList = cMsgClientRequestFriendData.friends_;
                        this.friends_ = longList;
                        longList.makeImmutable();
                        this.bitField0_ |= 2;
                    } else {
                        ensureFriendsIsMutable();
                        this.friends_.addAll(cMsgClientRequestFriendData.friends_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cMsgClientRequestFriendData.getUnknownFields());
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
                                    this.personaStateRequested_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    long fixed64 = codedInputStream.readFixed64();
                                    ensureFriendsIsMutable();
                                    this.friends_.addLong(fixed64);
                                } else if (tag == 18) {
                                    int rawVarint32 = codedInputStream.readRawVarint32();
                                    int iPushLimit = codedInputStream.pushLimit(rawVarint32);
                                    if (rawVarint32 > 4096) {
                                        rawVarint32 = 4096;
                                    }
                                    ensureFriendsIsMutable(rawVarint32 / 8);
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.friends_.addLong(codedInputStream.readFixed64());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
            public boolean hasPersonaStateRequested() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
            public int getPersonaStateRequested() {
                return this.personaStateRequested_;
            }

            public Builder setPersonaStateRequested(int i) {
                this.personaStateRequested_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPersonaStateRequested() {
                this.bitField0_ &= -2;
                this.personaStateRequested_ = 0;
                onChanged();
                return this;
            }

            private void ensureFriendsIsMutable() {
                if (!this.friends_.isModifiable()) {
                    this.friends_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.friends_);
                }
                this.bitField0_ |= 2;
            }

            private void ensureFriendsIsMutable(int i) {
                if (!this.friends_.isModifiable()) {
                    this.friends_ = (Internal.LongList) GeneratedMessage.makeMutableCopy(this.friends_, i);
                }
                this.bitField0_ |= 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
            public List<Long> getFriendsList() {
                this.friends_.makeImmutable();
                return this.friends_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
            public int getFriendsCount() {
                return this.friends_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientRequestFriendDataOrBuilder
            public long getFriends(int i) {
                return this.friends_.getLong(i);
            }

            public Builder setFriends(int i, long j) {
                ensureFriendsIsMutable();
                this.friends_.setLong(i, j);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addFriends(long j) {
                ensureFriendsIsMutable();
                this.friends_.addLong(j);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder addAllFriends(Iterable<? extends Long> iterable) {
                ensureFriendsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.friends_);
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFriends() {
                this.friends_ = GeneratedMessage.emptyLongList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }
        }

        public static CMsgClientRequestFriendData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRequestFriendData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRequestFriendData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRequestFriendData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientChangeStatus extends GeneratedMessage implements CMsgClientChangeStatusOrBuilder {
        private static final CMsgClientChangeStatus DEFAULT_INSTANCE;
        public static final int HIGH_PRIORITY_FIELD_NUMBER = 4;
        public static final int IS_AUTO_GENERATED_NAME_FIELD_NUMBER = 3;
        public static final int IS_CLIENT_IDLE_FIELD_NUMBER = 8;
        public static final int NEED_PERSONA_RESPONSE_FIELD_NUMBER = 7;
        private static final Parser<CMsgClientChangeStatus> PARSER;
        public static final int PERSONA_SET_BY_USER_FIELD_NUMBER = 5;
        public static final int PERSONA_STATE_FIELD_NUMBER = 1;
        public static final int PERSONA_STATE_FLAGS_FIELD_NUMBER = 6;
        public static final int PLAYER_NAME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean highPriority_;
        private boolean isAutoGeneratedName_;
        private boolean isClientIdle_;
        private byte memoizedIsInitialized;
        private boolean needPersonaResponse_;
        private boolean personaSetByUser_;
        private int personaStateFlags_;
        private int personaState_;
        private volatile Object playerName_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientChangeStatus.class.getName());
            DEFAULT_INSTANCE = new CMsgClientChangeStatus();
            PARSER = new AbstractParser<CMsgClientChangeStatus>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatus.1
                @Override // com.google.protobuf.Parser
                public CMsgClientChangeStatus parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientChangeStatus.newBuilder();
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

        private CMsgClientChangeStatus(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.personaState_ = 0;
            this.playerName_ = "";
            this.isAutoGeneratedName_ = false;
            this.highPriority_ = false;
            this.personaSetByUser_ = false;
            this.personaStateFlags_ = 0;
            this.needPersonaResponse_ = false;
            this.isClientIdle_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientChangeStatus() {
            this.personaState_ = 0;
            this.playerName_ = "";
            this.isAutoGeneratedName_ = false;
            this.highPriority_ = false;
            this.personaSetByUser_ = false;
            this.personaStateFlags_ = 0;
            this.needPersonaResponse_ = false;
            this.isClientIdle_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.playerName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientChangeStatus_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientChangeStatus_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChangeStatus.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasPersonaState() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public int getPersonaState() {
            return this.personaState_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasPlayerName() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public String getPlayerName() {
            Object obj = this.playerName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.playerName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public ByteString getPlayerNameBytes() {
            Object obj = this.playerName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.playerName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasIsAutoGeneratedName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean getIsAutoGeneratedName() {
            return this.isAutoGeneratedName_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasHighPriority() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean getHighPriority() {
            return this.highPriority_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasPersonaSetByUser() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean getPersonaSetByUser() {
            return this.personaSetByUser_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasPersonaStateFlags() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public int getPersonaStateFlags() {
            return this.personaStateFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasNeedPersonaResponse() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean getNeedPersonaResponse() {
            return this.needPersonaResponse_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean hasIsClientIdle() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
        public boolean getIsClientIdle() {
            return this.isClientIdle_;
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
                codedOutputStream.writeUInt32(1, this.personaState_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.playerName_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.isAutoGeneratedName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.highPriority_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.personaSetByUser_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.personaStateFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(7, this.needPersonaResponse_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBool(8, this.isClientIdle_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.personaState_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.playerName_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.isAutoGeneratedName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(4, this.highPriority_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(5, this.personaSetByUser_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.personaStateFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(7, this.needPersonaResponse_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(8, this.isClientIdle_);
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
            if (!(obj instanceof CMsgClientChangeStatus)) {
                return super.equals(obj);
            }
            CMsgClientChangeStatus cMsgClientChangeStatus = (CMsgClientChangeStatus) obj;
            if (hasPersonaState() != cMsgClientChangeStatus.hasPersonaState()) {
                return false;
            }
            if ((hasPersonaState() && getPersonaState() != cMsgClientChangeStatus.getPersonaState()) || hasPlayerName() != cMsgClientChangeStatus.hasPlayerName()) {
                return false;
            }
            if ((hasPlayerName() && !getPlayerName().equals(cMsgClientChangeStatus.getPlayerName())) || hasIsAutoGeneratedName() != cMsgClientChangeStatus.hasIsAutoGeneratedName()) {
                return false;
            }
            if ((hasIsAutoGeneratedName() && getIsAutoGeneratedName() != cMsgClientChangeStatus.getIsAutoGeneratedName()) || hasHighPriority() != cMsgClientChangeStatus.hasHighPriority()) {
                return false;
            }
            if ((hasHighPriority() && getHighPriority() != cMsgClientChangeStatus.getHighPriority()) || hasPersonaSetByUser() != cMsgClientChangeStatus.hasPersonaSetByUser()) {
                return false;
            }
            if ((hasPersonaSetByUser() && getPersonaSetByUser() != cMsgClientChangeStatus.getPersonaSetByUser()) || hasPersonaStateFlags() != cMsgClientChangeStatus.hasPersonaStateFlags()) {
                return false;
            }
            if ((hasPersonaStateFlags() && getPersonaStateFlags() != cMsgClientChangeStatus.getPersonaStateFlags()) || hasNeedPersonaResponse() != cMsgClientChangeStatus.hasNeedPersonaResponse()) {
                return false;
            }
            if ((!hasNeedPersonaResponse() || getNeedPersonaResponse() == cMsgClientChangeStatus.getNeedPersonaResponse()) && hasIsClientIdle() == cMsgClientChangeStatus.hasIsClientIdle()) {
                return (!hasIsClientIdle() || getIsClientIdle() == cMsgClientChangeStatus.getIsClientIdle()) && getUnknownFields().equals(cMsgClientChangeStatus.getUnknownFields());
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
            if (hasPersonaState()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPersonaState();
            }
            if (hasPlayerName()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPlayerName().hashCode();
            }
            if (hasIsAutoGeneratedName()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getIsAutoGeneratedName());
            }
            if (hasHighPriority()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getHighPriority());
            }
            if (hasPersonaSetByUser()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getPersonaSetByUser());
            }
            if (hasPersonaStateFlags()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getPersonaStateFlags();
            }
            if (hasNeedPersonaResponse()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getNeedPersonaResponse());
            }
            if (hasIsClientIdle()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + Internal.hashBoolean(getIsClientIdle());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientChangeStatus parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientChangeStatus parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientChangeStatus parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientChangeStatus parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientChangeStatus parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientChangeStatus parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientChangeStatus parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChangeStatus) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChangeStatus parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChangeStatus) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChangeStatus parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientChangeStatus) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientChangeStatus parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChangeStatus) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientChangeStatus parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientChangeStatus) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientChangeStatus parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientChangeStatus) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientChangeStatus cMsgClientChangeStatus) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientChangeStatus);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientChangeStatusOrBuilder {
            private int bitField0_;
            private boolean highPriority_;
            private boolean isAutoGeneratedName_;
            private boolean isClientIdle_;
            private boolean needPersonaResponse_;
            private boolean personaSetByUser_;
            private int personaStateFlags_;
            private int personaState_;
            private Object playerName_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientChangeStatus_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientChangeStatus_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientChangeStatus.class, Builder.class);
            }

            private Builder() {
                this.playerName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.playerName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.personaState_ = 0;
                this.playerName_ = "";
                this.isAutoGeneratedName_ = false;
                this.highPriority_ = false;
                this.personaSetByUser_ = false;
                this.personaStateFlags_ = 0;
                this.needPersonaResponse_ = false;
                this.isClientIdle_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientChangeStatus_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientChangeStatus getDefaultInstanceForType() {
                return CMsgClientChangeStatus.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChangeStatus build() {
                CMsgClientChangeStatus cMsgClientChangeStatusBuildPartial = buildPartial();
                if (cMsgClientChangeStatusBuildPartial.isInitialized()) {
                    return cMsgClientChangeStatusBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientChangeStatusBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientChangeStatus buildPartial() {
                CMsgClientChangeStatus cMsgClientChangeStatus = new CMsgClientChangeStatus(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientChangeStatus);
                }
                onBuilt();
                return cMsgClientChangeStatus;
            }

            private void buildPartial0(CMsgClientChangeStatus cMsgClientChangeStatus) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientChangeStatus.personaState_ = this.personaState_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientChangeStatus.playerName_ = this.playerName_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientChangeStatus.isAutoGeneratedName_ = this.isAutoGeneratedName_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientChangeStatus.highPriority_ = this.highPriority_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientChangeStatus.personaSetByUser_ = this.personaSetByUser_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientChangeStatus.personaStateFlags_ = this.personaStateFlags_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientChangeStatus.needPersonaResponse_ = this.needPersonaResponse_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientChangeStatus.isClientIdle_ = this.isClientIdle_;
                    i |= 128;
                }
                cMsgClientChangeStatus.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientChangeStatus) {
                    return mergeFrom((CMsgClientChangeStatus) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientChangeStatus cMsgClientChangeStatus) {
                if (cMsgClientChangeStatus == CMsgClientChangeStatus.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientChangeStatus.hasPersonaState()) {
                    setPersonaState(cMsgClientChangeStatus.getPersonaState());
                }
                if (cMsgClientChangeStatus.hasPlayerName()) {
                    this.playerName_ = cMsgClientChangeStatus.playerName_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cMsgClientChangeStatus.hasIsAutoGeneratedName()) {
                    setIsAutoGeneratedName(cMsgClientChangeStatus.getIsAutoGeneratedName());
                }
                if (cMsgClientChangeStatus.hasHighPriority()) {
                    setHighPriority(cMsgClientChangeStatus.getHighPriority());
                }
                if (cMsgClientChangeStatus.hasPersonaSetByUser()) {
                    setPersonaSetByUser(cMsgClientChangeStatus.getPersonaSetByUser());
                }
                if (cMsgClientChangeStatus.hasPersonaStateFlags()) {
                    setPersonaStateFlags(cMsgClientChangeStatus.getPersonaStateFlags());
                }
                if (cMsgClientChangeStatus.hasNeedPersonaResponse()) {
                    setNeedPersonaResponse(cMsgClientChangeStatus.getNeedPersonaResponse());
                }
                if (cMsgClientChangeStatus.hasIsClientIdle()) {
                    setIsClientIdle(cMsgClientChangeStatus.getIsClientIdle());
                }
                mergeUnknownFields(cMsgClientChangeStatus.getUnknownFields());
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
                                    this.personaState_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.playerName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.isAutoGeneratedName_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.highPriority_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.personaSetByUser_ = codedInputStream.readBool();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.personaStateFlags_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.needPersonaResponse_ = codedInputStream.readBool();
                                    this.bitField0_ |= 64;
                                } else if (tag == 64) {
                                    this.isClientIdle_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasPersonaState() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public int getPersonaState() {
                return this.personaState_;
            }

            public Builder setPersonaState(int i) {
                this.personaState_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPersonaState() {
                this.bitField0_ &= -2;
                this.personaState_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasPlayerName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public String getPlayerName() {
                Object obj = this.playerName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.playerName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public ByteString getPlayerNameBytes() {
                Object obj = this.playerName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.playerName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPlayerName(String str) {
                str.getClass();
                this.playerName_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPlayerName() {
                this.playerName_ = CMsgClientChangeStatus.getDefaultInstance().getPlayerName();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setPlayerNameBytes(ByteString byteString) {
                byteString.getClass();
                this.playerName_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasIsAutoGeneratedName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean getIsAutoGeneratedName() {
                return this.isAutoGeneratedName_;
            }

            public Builder setIsAutoGeneratedName(boolean z) {
                this.isAutoGeneratedName_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearIsAutoGeneratedName() {
                this.bitField0_ &= -5;
                this.isAutoGeneratedName_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasHighPriority() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean getHighPriority() {
                return this.highPriority_;
            }

            public Builder setHighPriority(boolean z) {
                this.highPriority_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearHighPriority() {
                this.bitField0_ &= -9;
                this.highPriority_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasPersonaSetByUser() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean getPersonaSetByUser() {
                return this.personaSetByUser_;
            }

            public Builder setPersonaSetByUser(boolean z) {
                this.personaSetByUser_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearPersonaSetByUser() {
                this.bitField0_ &= -17;
                this.personaSetByUser_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasPersonaStateFlags() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public int getPersonaStateFlags() {
                return this.personaStateFlags_;
            }

            public Builder setPersonaStateFlags(int i) {
                this.personaStateFlags_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearPersonaStateFlags() {
                this.bitField0_ &= -33;
                this.personaStateFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasNeedPersonaResponse() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean getNeedPersonaResponse() {
                return this.needPersonaResponse_;
            }

            public Builder setNeedPersonaResponse(boolean z) {
                this.needPersonaResponse_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearNeedPersonaResponse() {
                this.bitField0_ &= -65;
                this.needPersonaResponse_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean hasIsClientIdle() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientChangeStatusOrBuilder
            public boolean getIsClientIdle() {
                return this.isClientIdle_;
            }

            public Builder setIsClientIdle(boolean z) {
                this.isClientIdle_ = z;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearIsClientIdle() {
                this.bitField0_ &= -129;
                this.isClientIdle_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientChangeStatus getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientChangeStatus> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientChangeStatus> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientChangeStatus getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgPersonaChangeResponse extends GeneratedMessage implements CMsgPersonaChangeResponseOrBuilder {
        private static final CMsgPersonaChangeResponse DEFAULT_INSTANCE;
        private static final Parser<CMsgPersonaChangeResponse> PARSER;
        public static final int PLAYER_NAME_FIELD_NUMBER = 2;
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object playerName_;
        private int result_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgPersonaChangeResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgPersonaChangeResponse();
            PARSER = new AbstractParser<CMsgPersonaChangeResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgPersonaChangeResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgPersonaChangeResponse.newBuilder();
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

        private CMsgPersonaChangeResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.result_ = 0;
            this.playerName_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgPersonaChangeResponse() {
            this.result_ = 0;
            this.playerName_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.playerName_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgPersonaChangeResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgPersonaChangeResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgPersonaChangeResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
        public int getResult() {
            return this.result_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
        public boolean hasPlayerName() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
        public String getPlayerName() {
            Object obj = this.playerName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.playerName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
        public ByteString getPlayerNameBytes() {
            Object obj = this.playerName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.playerName_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.result_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.playerName_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.result_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.playerName_);
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
            if (!(obj instanceof CMsgPersonaChangeResponse)) {
                return super.equals(obj);
            }
            CMsgPersonaChangeResponse cMsgPersonaChangeResponse = (CMsgPersonaChangeResponse) obj;
            if (hasResult() != cMsgPersonaChangeResponse.hasResult()) {
                return false;
            }
            if ((!hasResult() || getResult() == cMsgPersonaChangeResponse.getResult()) && hasPlayerName() == cMsgPersonaChangeResponse.hasPlayerName()) {
                return (!hasPlayerName() || getPlayerName().equals(cMsgPersonaChangeResponse.getPlayerName())) && getUnknownFields().equals(cMsgPersonaChangeResponse.getUnknownFields());
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
            if (hasResult()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getResult();
            }
            if (hasPlayerName()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPlayerName().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgPersonaChangeResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgPersonaChangeResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgPersonaChangeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgPersonaChangeResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgPersonaChangeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgPersonaChangeResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgPersonaChangeResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgPersonaChangeResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgPersonaChangeResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgPersonaChangeResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgPersonaChangeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgPersonaChangeResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgPersonaChangeResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgPersonaChangeResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgPersonaChangeResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgPersonaChangeResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgPersonaChangeResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgPersonaChangeResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgPersonaChangeResponse cMsgPersonaChangeResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgPersonaChangeResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgPersonaChangeResponseOrBuilder {
            private int bitField0_;
            private Object playerName_;
            private int result_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgPersonaChangeResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgPersonaChangeResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgPersonaChangeResponse.class, Builder.class);
            }

            private Builder() {
                this.playerName_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.playerName_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.result_ = 0;
                this.playerName_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgPersonaChangeResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgPersonaChangeResponse getDefaultInstanceForType() {
                return CMsgPersonaChangeResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgPersonaChangeResponse build() {
                CMsgPersonaChangeResponse cMsgPersonaChangeResponseBuildPartial = buildPartial();
                if (cMsgPersonaChangeResponseBuildPartial.isInitialized()) {
                    return cMsgPersonaChangeResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgPersonaChangeResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgPersonaChangeResponse buildPartial() {
                CMsgPersonaChangeResponse cMsgPersonaChangeResponse = new CMsgPersonaChangeResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgPersonaChangeResponse);
                }
                onBuilt();
                return cMsgPersonaChangeResponse;
            }

            private void buildPartial0(CMsgPersonaChangeResponse cMsgPersonaChangeResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgPersonaChangeResponse.result_ = this.result_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgPersonaChangeResponse.playerName_ = this.playerName_;
                    i |= 2;
                }
                cMsgPersonaChangeResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgPersonaChangeResponse) {
                    return mergeFrom((CMsgPersonaChangeResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgPersonaChangeResponse cMsgPersonaChangeResponse) {
                if (cMsgPersonaChangeResponse == CMsgPersonaChangeResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgPersonaChangeResponse.hasResult()) {
                    setResult(cMsgPersonaChangeResponse.getResult());
                }
                if (cMsgPersonaChangeResponse.hasPlayerName()) {
                    this.playerName_ = cMsgPersonaChangeResponse.playerName_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cMsgPersonaChangeResponse.getUnknownFields());
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
                                    this.result_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.playerName_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
            public int getResult() {
                return this.result_;
            }

            public Builder setResult(int i) {
                this.result_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -2;
                this.result_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
            public boolean hasPlayerName() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
            public String getPlayerName() {
                Object obj = this.playerName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.playerName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgPersonaChangeResponseOrBuilder
            public ByteString getPlayerNameBytes() {
                Object obj = this.playerName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.playerName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPlayerName(String str) {
                str.getClass();
                this.playerName_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearPlayerName() {
                this.playerName_ = CMsgPersonaChangeResponse.getDefaultInstance().getPlayerName();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setPlayerNameBytes(ByteString byteString) {
                byteString.getClass();
                this.playerName_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CMsgPersonaChangeResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgPersonaChangeResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgPersonaChangeResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgPersonaChangeResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientPersonaState extends GeneratedMessage implements CMsgClientPersonaStateOrBuilder {
        private static final CMsgClientPersonaState DEFAULT_INSTANCE;
        public static final int FRIENDS_FIELD_NUMBER = 2;
        private static final Parser<CMsgClientPersonaState> PARSER;
        public static final int STATUS_FLAGS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private List<Friend> friends_;
        private byte memoizedIsInitialized;
        private int statusFlags_;

        public interface FriendOrBuilder extends MessageOrBuilder {
            ByteString getAvatarHash();

            boolean getAvatarPendingReview();

            long getBroadcastId();

            Friend.ClanData getClanData();

            Friend.ClanDataOrBuilder getClanDataOrBuilder();

            int getClanRank();

            String getClanTag();

            ByteString getClanTagBytes();

            long getFriendid();

            ByteString getGameDataBlob();

            long getGameLobbyId();

            String getGameName();

            ByteString getGameNameBytes();

            int getGamePlayedAppId();

            int getGameServerIp();

            int getGameServerPort();

            long getGameid();

            int getGamingDeviceType();

            boolean getIsCommunityBanned();

            int getLastLogoff();

            int getLastLogon();

            int getLastSeenOnline();

            boolean getOnSteamDeck();

            int getOnlineSessionInstances();

            Friend.OtherGameData getOtherGameData(int i);

            int getOtherGameDataCount();

            List<Friend.OtherGameData> getOtherGameDataList();

            Friend.OtherGameDataOrBuilder getOtherGameDataOrBuilder(int i);

            List<? extends Friend.OtherGameDataOrBuilder> getOtherGameDataOrBuilderList();

            boolean getPersonaSetByUser();

            int getPersonaState();

            int getPersonaStateFlags();

            String getPlayerName();

            ByteString getPlayerNameBytes();

            boolean getPlayerNamePendingReview();

            int getQueryPort();

            Friend.KV getRichPresence(int i);

            int getRichPresenceCount();

            List<Friend.KV> getRichPresenceList();

            Friend.KVOrBuilder getRichPresenceOrBuilder(int i);

            List<? extends Friend.KVOrBuilder> getRichPresenceOrBuilderList();

            long getSteamidSource();

            int getWatchingBroadcastAccountid();

            int getWatchingBroadcastAppid();

            String getWatchingBroadcastTitle();

            ByteString getWatchingBroadcastTitleBytes();

            int getWatchingBroadcastViewers();

            boolean hasAvatarHash();

            boolean hasAvatarPendingReview();

            boolean hasBroadcastId();

            boolean hasClanData();

            boolean hasClanRank();

            boolean hasClanTag();

            boolean hasFriendid();

            boolean hasGameDataBlob();

            boolean hasGameLobbyId();

            boolean hasGameName();

            boolean hasGamePlayedAppId();

            boolean hasGameServerIp();

            boolean hasGameServerPort();

            boolean hasGameid();

            boolean hasGamingDeviceType();

            boolean hasIsCommunityBanned();

            boolean hasLastLogoff();

            boolean hasLastLogon();

            boolean hasLastSeenOnline();

            boolean hasOnSteamDeck();

            boolean hasOnlineSessionInstances();

            boolean hasPersonaSetByUser();

            boolean hasPersonaState();

            boolean hasPersonaStateFlags();

            boolean hasPlayerName();

            boolean hasPlayerNamePendingReview();

            boolean hasQueryPort();

            boolean hasSteamidSource();

            boolean hasWatchingBroadcastAccountid();

            boolean hasWatchingBroadcastAppid();

            boolean hasWatchingBroadcastTitle();

            boolean hasWatchingBroadcastViewers();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientPersonaState.class.getName());
            DEFAULT_INSTANCE = new CMsgClientPersonaState();
            PARSER = new AbstractParser<CMsgClientPersonaState>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.1
                @Override // com.google.protobuf.Parser
                public CMsgClientPersonaState parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientPersonaState.newBuilder();
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

        private CMsgClientPersonaState(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.statusFlags_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientPersonaState() {
            this.statusFlags_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.friends_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPersonaState.class, Builder.class);
        }

        public static final class Friend extends GeneratedMessage implements FriendOrBuilder {
            public static final int AVATAR_HASH_FIELD_NUMBER = 31;
            public static final int AVATAR_PENDING_REVIEW_FIELD_NUMBER = 80;
            public static final int BROADCAST_ID_FIELD_NUMBER = 72;
            public static final int CLAN_DATA_FIELD_NUMBER = 64;
            public static final int CLAN_RANK_FIELD_NUMBER = 50;
            public static final int CLAN_TAG_FIELD_NUMBER = 65;
            private static final Friend DEFAULT_INSTANCE;
            public static final int FRIENDID_FIELD_NUMBER = 1;
            public static final int GAMEID_FIELD_NUMBER = 56;
            public static final int GAME_DATA_BLOB_FIELD_NUMBER = 60;
            public static final int GAME_LOBBY_ID_FIELD_NUMBER = 73;
            public static final int GAME_NAME_FIELD_NUMBER = 55;
            public static final int GAME_PLAYED_APP_ID_FIELD_NUMBER = 3;
            public static final int GAME_SERVER_IP_FIELD_NUMBER = 4;
            public static final int GAME_SERVER_PORT_FIELD_NUMBER = 5;
            public static final int GAMING_DEVICE_TYPE_FIELD_NUMBER = 83;
            public static final int IS_COMMUNITY_BANNED_FIELD_NUMBER = 78;
            public static final int LAST_LOGOFF_FIELD_NUMBER = 45;
            public static final int LAST_LOGON_FIELD_NUMBER = 46;
            public static final int LAST_SEEN_ONLINE_FIELD_NUMBER = 47;
            public static final int ONLINE_SESSION_INSTANCES_FIELD_NUMBER = 7;
            public static final int ON_STEAM_DECK_FIELD_NUMBER = 81;
            public static final int OTHER_GAME_DATA_FIELD_NUMBER = 82;
            private static final Parser<Friend> PARSER;
            public static final int PERSONA_SET_BY_USER_FIELD_NUMBER = 10;
            public static final int PERSONA_STATE_FIELD_NUMBER = 2;
            public static final int PERSONA_STATE_FLAGS_FIELD_NUMBER = 6;
            public static final int PLAYER_NAME_FIELD_NUMBER = 15;
            public static final int PLAYER_NAME_PENDING_REVIEW_FIELD_NUMBER = 79;
            public static final int QUERY_PORT_FIELD_NUMBER = 20;
            public static final int RICH_PRESENCE_FIELD_NUMBER = 71;
            public static final int STEAMID_SOURCE_FIELD_NUMBER = 25;
            public static final int WATCHING_BROADCAST_ACCOUNTID_FIELD_NUMBER = 74;
            public static final int WATCHING_BROADCAST_APPID_FIELD_NUMBER = 75;
            public static final int WATCHING_BROADCAST_TITLE_FIELD_NUMBER = 77;
            public static final int WATCHING_BROADCAST_VIEWERS_FIELD_NUMBER = 76;
            private static final long serialVersionUID = 0;
            private ByteString avatarHash_;
            private boolean avatarPendingReview_;
            private int bitField0_;
            private long broadcastId_;
            private ClanData clanData_;
            private int clanRank_;
            private volatile Object clanTag_;
            private long friendid_;
            private ByteString gameDataBlob_;
            private long gameLobbyId_;
            private volatile Object gameName_;
            private int gamePlayedAppId_;
            private int gameServerIp_;
            private int gameServerPort_;
            private long gameid_;
            private int gamingDeviceType_;
            private boolean isCommunityBanned_;
            private int lastLogoff_;
            private int lastLogon_;
            private int lastSeenOnline_;
            private byte memoizedIsInitialized;
            private boolean onSteamDeck_;
            private int onlineSessionInstances_;
            private List<OtherGameData> otherGameData_;
            private boolean personaSetByUser_;
            private int personaStateFlags_;
            private int personaState_;
            private boolean playerNamePendingReview_;
            private volatile Object playerName_;
            private int queryPort_;
            private List<KV> richPresence_;
            private long steamidSource_;
            private int watchingBroadcastAccountid_;
            private int watchingBroadcastAppid_;
            private volatile Object watchingBroadcastTitle_;
            private int watchingBroadcastViewers_;

            public interface ClanDataOrBuilder extends MessageOrBuilder {
                long getChatGroupId();

                int getOggAppId();

                boolean hasChatGroupId();

                boolean hasOggAppId();
            }

            public interface KVOrBuilder extends MessageOrBuilder {
                String getKey();

                ByteString getKeyBytes();

                String getValue();

                ByteString getValueBytes();

                boolean hasKey();

                boolean hasValue();
            }

            public interface OtherGameDataOrBuilder extends MessageOrBuilder {
                long getGameid();

                KV getRichPresence(int i);

                int getRichPresenceCount();

                List<KV> getRichPresenceList();

                KVOrBuilder getRichPresenceOrBuilder(int i);

                List<? extends KVOrBuilder> getRichPresenceOrBuilderList();

                boolean hasGameid();
            }

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", Friend.class.getName());
                DEFAULT_INSTANCE = new Friend();
                PARSER = new AbstractParser<Friend>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.1
                    @Override // com.google.protobuf.Parser
                    public Friend parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = Friend.newBuilder();
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

            private Friend(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.friendid_ = 0L;
                this.personaState_ = 0;
                this.gamePlayedAppId_ = 0;
                this.gameServerIp_ = 0;
                this.gameServerPort_ = 0;
                this.personaStateFlags_ = 0;
                this.onlineSessionInstances_ = 0;
                this.personaSetByUser_ = false;
                this.playerName_ = "";
                this.queryPort_ = 0;
                this.steamidSource_ = 0L;
                ByteString byteString = ByteString.EMPTY;
                this.avatarHash_ = byteString;
                this.lastLogoff_ = 0;
                this.lastLogon_ = 0;
                this.lastSeenOnline_ = 0;
                this.clanRank_ = 0;
                this.gameName_ = "";
                this.gameid_ = 0L;
                this.gameDataBlob_ = byteString;
                this.clanTag_ = "";
                this.broadcastId_ = 0L;
                this.gameLobbyId_ = 0L;
                this.watchingBroadcastAccountid_ = 0;
                this.watchingBroadcastAppid_ = 0;
                this.watchingBroadcastViewers_ = 0;
                this.watchingBroadcastTitle_ = "";
                this.isCommunityBanned_ = false;
                this.playerNamePendingReview_ = false;
                this.avatarPendingReview_ = false;
                this.onSteamDeck_ = false;
                this.gamingDeviceType_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private Friend() {
                this.friendid_ = 0L;
                this.personaState_ = 0;
                this.gamePlayedAppId_ = 0;
                this.gameServerIp_ = 0;
                this.gameServerPort_ = 0;
                this.personaStateFlags_ = 0;
                this.onlineSessionInstances_ = 0;
                this.personaSetByUser_ = false;
                this.playerName_ = "";
                this.queryPort_ = 0;
                this.steamidSource_ = 0L;
                ByteString byteString = ByteString.EMPTY;
                this.avatarHash_ = byteString;
                this.lastLogoff_ = 0;
                this.lastLogon_ = 0;
                this.lastSeenOnline_ = 0;
                this.clanRank_ = 0;
                this.gameName_ = "";
                this.gameid_ = 0L;
                this.gameDataBlob_ = byteString;
                this.clanTag_ = "";
                this.broadcastId_ = 0L;
                this.gameLobbyId_ = 0L;
                this.watchingBroadcastAccountid_ = 0;
                this.watchingBroadcastAppid_ = 0;
                this.watchingBroadcastViewers_ = 0;
                this.watchingBroadcastTitle_ = "";
                this.isCommunityBanned_ = false;
                this.playerNamePendingReview_ = false;
                this.avatarPendingReview_ = false;
                this.onSteamDeck_ = false;
                this.gamingDeviceType_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.playerName_ = "";
                this.avatarHash_ = byteString;
                this.gameName_ = "";
                this.gameDataBlob_ = byteString;
                this.clanTag_ = "";
                this.richPresence_ = Collections.emptyList();
                this.watchingBroadcastTitle_ = "";
                this.otherGameData_ = Collections.emptyList();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_fieldAccessorTable.ensureFieldAccessorsInitialized(Friend.class, Builder.class);
            }

            public static final class ClanData extends GeneratedMessage implements ClanDataOrBuilder {
                public static final int CHAT_GROUP_ID_FIELD_NUMBER = 2;
                private static final ClanData DEFAULT_INSTANCE;
                public static final int OGG_APP_ID_FIELD_NUMBER = 1;
                private static final Parser<ClanData> PARSER;
                private static final long serialVersionUID = 0;
                private int bitField0_;
                private long chatGroupId_;
                private byte memoizedIsInitialized;
                private int oggAppId_;

                static {
                    RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ClanData.class.getName());
                    DEFAULT_INSTANCE = new ClanData();
                    PARSER = new AbstractParser<ClanData>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanData.1
                        @Override // com.google.protobuf.Parser
                        public ClanData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            Builder builderNewBuilder = ClanData.newBuilder();
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

                private ClanData(GeneratedMessage.Builder<?> builder) {
                    super(builder);
                    this.oggAppId_ = 0;
                    this.chatGroupId_ = 0L;
                    this.memoizedIsInitialized = (byte) -1;
                }

                private ClanData() {
                    this.oggAppId_ = 0;
                    this.chatGroupId_ = 0L;
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_ClanData_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_ClanData_fieldAccessorTable.ensureFieldAccessorsInitialized(ClanData.class, Builder.class);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                public boolean hasOggAppId() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                public int getOggAppId() {
                    return this.oggAppId_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                public boolean hasChatGroupId() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                public long getChatGroupId() {
                    return this.chatGroupId_;
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
                        codedOutputStream.writeUInt32(1, this.oggAppId_);
                    }
                    if ((this.bitField0_ & 2) != 0) {
                        codedOutputStream.writeUInt64(2, this.chatGroupId_);
                    }
                    getUnknownFields().writeTo(codedOutputStream);
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
                public int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.oggAppId_) : 0;
                    if ((this.bitField0_ & 2) != 0) {
                        iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.chatGroupId_);
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
                    if (!(obj instanceof ClanData)) {
                        return super.equals(obj);
                    }
                    ClanData clanData = (ClanData) obj;
                    if (hasOggAppId() != clanData.hasOggAppId()) {
                        return false;
                    }
                    if ((!hasOggAppId() || getOggAppId() == clanData.getOggAppId()) && hasChatGroupId() == clanData.hasChatGroupId()) {
                        return (!hasChatGroupId() || getChatGroupId() == clanData.getChatGroupId()) && getUnknownFields().equals(clanData.getUnknownFields());
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
                    if (hasOggAppId()) {
                        iHashCode = (((iHashCode * 37) + 1) * 53) + getOggAppId();
                    }
                    if (hasChatGroupId()) {
                        iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getChatGroupId());
                    }
                    int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                    this.memoizedHashCode = iHashCode2;
                    return iHashCode2;
                }

                public static ClanData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static ClanData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static ClanData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static ClanData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static ClanData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static ClanData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static ClanData parseFrom(InputStream inputStream) throws IOException {
                    return (ClanData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
                }

                public static ClanData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (ClanData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static ClanData parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (ClanData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static ClanData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (ClanData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static ClanData parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (ClanData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
                }

                public static ClanData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (ClanData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(ClanData clanData) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(clanData);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.google.protobuf.AbstractMessage
                public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                    return new Builder(builderParent);
                }

                public static final class Builder extends GeneratedMessage.Builder<Builder> implements ClanDataOrBuilder {
                    private int bitField0_;
                    private long chatGroupId_;
                    private int oggAppId_;

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_ClanData_descriptor;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder
                    public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_ClanData_fieldAccessorTable.ensureFieldAccessorsInitialized(ClanData.class, Builder.class);
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
                        this.oggAppId_ = 0;
                        this.chatGroupId_ = 0L;
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_ClanData_descriptor;
                    }

                    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                    public ClanData getDefaultInstanceForType() {
                        return ClanData.getDefaultInstance();
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public ClanData build() {
                        ClanData clanDataBuildPartial = buildPartial();
                        if (clanDataBuildPartial.isInitialized()) {
                            return clanDataBuildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) clanDataBuildPartial);
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public ClanData buildPartial() {
                        ClanData clanData = new ClanData(this);
                        if (this.bitField0_ != 0) {
                            buildPartial0(clanData);
                        }
                        onBuilt();
                        return clanData;
                    }

                    private void buildPartial0(ClanData clanData) {
                        int i;
                        int i2 = this.bitField0_;
                        if ((i2 & 1) != 0) {
                            clanData.oggAppId_ = this.oggAppId_;
                            i = 1;
                        } else {
                            i = 0;
                        }
                        if ((i2 & 2) != 0) {
                            clanData.chatGroupId_ = this.chatGroupId_;
                            i |= 2;
                        }
                        clanData.bitField0_ |= i;
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof ClanData) {
                            return mergeFrom((ClanData) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(ClanData clanData) {
                        if (clanData == ClanData.getDefaultInstance()) {
                            return this;
                        }
                        if (clanData.hasOggAppId()) {
                            setOggAppId(clanData.getOggAppId());
                        }
                        if (clanData.hasChatGroupId()) {
                            setChatGroupId(clanData.getChatGroupId());
                        }
                        mergeUnknownFields(clanData.getUnknownFields());
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
                                            this.oggAppId_ = codedInputStream.readUInt32();
                                            this.bitField0_ |= 1;
                                        } else if (tag == 16) {
                                            this.chatGroupId_ = codedInputStream.readUInt64();
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                    public boolean hasOggAppId() {
                        return (this.bitField0_ & 1) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                    public int getOggAppId() {
                        return this.oggAppId_;
                    }

                    public Builder setOggAppId(int i) {
                        this.oggAppId_ = i;
                        this.bitField0_ |= 1;
                        onChanged();
                        return this;
                    }

                    public Builder clearOggAppId() {
                        this.bitField0_ &= -2;
                        this.oggAppId_ = 0;
                        onChanged();
                        return this;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                    public boolean hasChatGroupId() {
                        return (this.bitField0_ & 2) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.ClanDataOrBuilder
                    public long getChatGroupId() {
                        return this.chatGroupId_;
                    }

                    public Builder setChatGroupId(long j) {
                        this.chatGroupId_ = j;
                        this.bitField0_ |= 2;
                        onChanged();
                        return this;
                    }

                    public Builder clearChatGroupId() {
                        this.bitField0_ &= -3;
                        this.chatGroupId_ = 0L;
                        onChanged();
                        return this;
                    }
                }

                public static ClanData getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static Parser<ClanData> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Parser<ClanData> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ClanData getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }
            }

            public static final class KV extends GeneratedMessage implements KVOrBuilder {
                private static final KV DEFAULT_INSTANCE;
                public static final int KEY_FIELD_NUMBER = 1;
                private static final Parser<KV> PARSER;
                public static final int VALUE_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private int bitField0_;
                private volatile Object key_;
                private byte memoizedIsInitialized;
                private volatile Object value_;

                static {
                    RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", KV.class.getName());
                    DEFAULT_INSTANCE = new KV();
                    PARSER = new AbstractParser<KV>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KV.1
                        @Override // com.google.protobuf.Parser
                        public KV parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            Builder builderNewBuilder = KV.newBuilder();
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

                private KV(GeneratedMessage.Builder<?> builder) {
                    super(builder);
                    this.key_ = "";
                    this.value_ = "";
                    this.memoizedIsInitialized = (byte) -1;
                }

                private KV() {
                    this.key_ = "";
                    this.value_ = "";
                    this.memoizedIsInitialized = (byte) -1;
                    this.key_ = "";
                    this.value_ = "";
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_KV_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_KV_fieldAccessorTable.ensureFieldAccessorsInitialized(KV.class, Builder.class);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
                public boolean hasKey() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
                public ByteString getKeyBytes() {
                    Object obj = this.key_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.key_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
                public boolean hasValue() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
                public ByteString getValueBytes() {
                    Object obj = this.value_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.value_ = byteStringCopyFromUtf8;
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
                        GeneratedMessage.writeString(codedOutputStream, 1, this.key_);
                    }
                    if ((this.bitField0_ & 2) != 0) {
                        GeneratedMessage.writeString(codedOutputStream, 2, this.value_);
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
                    int serializedSize = iComputeStringSize + getUnknownFields().getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof KV)) {
                        return super.equals(obj);
                    }
                    KV kv = (KV) obj;
                    if (hasKey() != kv.hasKey()) {
                        return false;
                    }
                    if ((!hasKey() || getKey().equals(kv.getKey())) && hasValue() == kv.hasValue()) {
                        return (!hasValue() || getValue().equals(kv.getValue())) && getUnknownFields().equals(kv.getUnknownFields());
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
                    int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                    this.memoizedHashCode = iHashCode2;
                    return iHashCode2;
                }

                public static KV parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static KV parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static KV parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static KV parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static KV parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static KV parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static KV parseFrom(InputStream inputStream) throws IOException {
                    return (KV) GeneratedMessage.parseWithIOException(PARSER, inputStream);
                }

                public static KV parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (KV) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static KV parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (KV) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static KV parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (KV) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static KV parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (KV) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
                }

                public static KV parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (KV) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(KV kv) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(kv);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.google.protobuf.AbstractMessage
                public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                    return new Builder(builderParent);
                }

                public static final class Builder extends GeneratedMessage.Builder<Builder> implements KVOrBuilder {
                    private int bitField0_;
                    private Object key_;
                    private Object value_;

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_KV_descriptor;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder
                    public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_KV_fieldAccessorTable.ensureFieldAccessorsInitialized(KV.class, Builder.class);
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
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_KV_descriptor;
                    }

                    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                    public KV getDefaultInstanceForType() {
                        return KV.getDefaultInstance();
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public KV build() {
                        KV kvBuildPartial = buildPartial();
                        if (kvBuildPartial.isInitialized()) {
                            return kvBuildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) kvBuildPartial);
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public KV buildPartial() {
                        KV kv = new KV(this);
                        if (this.bitField0_ != 0) {
                            buildPartial0(kv);
                        }
                        onBuilt();
                        return kv;
                    }

                    private void buildPartial0(KV kv) {
                        int i;
                        int i2 = this.bitField0_;
                        if ((i2 & 1) != 0) {
                            kv.key_ = this.key_;
                            i = 1;
                        } else {
                            i = 0;
                        }
                        if ((i2 & 2) != 0) {
                            kv.value_ = this.value_;
                            i |= 2;
                        }
                        kv.bitField0_ |= i;
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof KV) {
                            return mergeFrom((KV) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(KV kv) {
                        if (kv == KV.getDefaultInstance()) {
                            return this;
                        }
                        if (kv.hasKey()) {
                            this.key_ = kv.key_;
                            this.bitField0_ |= 1;
                            onChanged();
                        }
                        if (kv.hasValue()) {
                            this.value_ = kv.value_;
                            this.bitField0_ |= 2;
                            onChanged();
                        }
                        mergeUnknownFields(kv.getUnknownFields());
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
                    public boolean hasKey() {
                        return (this.bitField0_ & 1) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
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
                        this.key_ = KV.getDefaultInstance().getKey();
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
                    public boolean hasValue() {
                        return (this.bitField0_ & 2) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.KVOrBuilder
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
                        this.value_ = KV.getDefaultInstance().getValue();
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
                }

                public static KV getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static Parser<KV> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Parser<KV> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public KV getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }
            }

            public static final class OtherGameData extends GeneratedMessage implements OtherGameDataOrBuilder {
                private static final OtherGameData DEFAULT_INSTANCE;
                public static final int GAMEID_FIELD_NUMBER = 1;
                private static final Parser<OtherGameData> PARSER;
                public static final int RICH_PRESENCE_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private int bitField0_;
                private long gameid_;
                private byte memoizedIsInitialized;
                private List<KV> richPresence_;

                static {
                    RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", OtherGameData.class.getName());
                    DEFAULT_INSTANCE = new OtherGameData();
                    PARSER = new AbstractParser<OtherGameData>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameData.1
                        @Override // com.google.protobuf.Parser
                        public OtherGameData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            Builder builderNewBuilder = OtherGameData.newBuilder();
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

                private OtherGameData(GeneratedMessage.Builder<?> builder) {
                    super(builder);
                    this.gameid_ = 0L;
                    this.memoizedIsInitialized = (byte) -1;
                }

                private OtherGameData() {
                    this.gameid_ = 0L;
                    this.memoizedIsInitialized = (byte) -1;
                    this.richPresence_ = Collections.emptyList();
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_OtherGameData_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_OtherGameData_fieldAccessorTable.ensureFieldAccessorsInitialized(OtherGameData.class, Builder.class);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                public boolean hasGameid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                public long getGameid() {
                    return this.gameid_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                public List<KV> getRichPresenceList() {
                    return this.richPresence_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                public List<? extends KVOrBuilder> getRichPresenceOrBuilderList() {
                    return this.richPresence_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                public int getRichPresenceCount() {
                    return this.richPresence_.size();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                public KV getRichPresence(int i) {
                    return this.richPresence_.get(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                public KVOrBuilder getRichPresenceOrBuilder(int i) {
                    return this.richPresence_.get(i);
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
                        codedOutputStream.writeUInt64(1, this.gameid_);
                    }
                    for (int i = 0; i < this.richPresence_.size(); i++) {
                        codedOutputStream.writeMessage(2, this.richPresence_.get(i));
                    }
                    getUnknownFields().writeTo(codedOutputStream);
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
                public int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.gameid_) : 0;
                    for (int i2 = 0; i2 < this.richPresence_.size(); i2++) {
                        iComputeUInt64Size += CodedOutputStream.computeMessageSize(2, this.richPresence_.get(i2));
                    }
                    int serializedSize = iComputeUInt64Size + getUnknownFields().getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof OtherGameData)) {
                        return super.equals(obj);
                    }
                    OtherGameData otherGameData = (OtherGameData) obj;
                    if (hasGameid() != otherGameData.hasGameid()) {
                        return false;
                    }
                    return (!hasGameid() || getGameid() == otherGameData.getGameid()) && getRichPresenceList().equals(otherGameData.getRichPresenceList()) && getUnknownFields().equals(otherGameData.getUnknownFields());
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
                public int hashCode() {
                    int i = this.memoizedHashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = 779 + getDescriptor().hashCode();
                    if (hasGameid()) {
                        iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getGameid());
                    }
                    if (getRichPresenceCount() > 0) {
                        iHashCode = (((iHashCode * 37) + 2) * 53) + getRichPresenceList().hashCode();
                    }
                    int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                    this.memoizedHashCode = iHashCode2;
                    return iHashCode2;
                }

                public static OtherGameData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static OtherGameData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static OtherGameData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static OtherGameData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static OtherGameData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static OtherGameData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static OtherGameData parseFrom(InputStream inputStream) throws IOException {
                    return (OtherGameData) GeneratedMessage.parseWithIOException(PARSER, inputStream);
                }

                public static OtherGameData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (OtherGameData) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static OtherGameData parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (OtherGameData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static OtherGameData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (OtherGameData) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static OtherGameData parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (OtherGameData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
                }

                public static OtherGameData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (OtherGameData) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(OtherGameData otherGameData) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(otherGameData);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.google.protobuf.AbstractMessage
                public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                    return new Builder(builderParent);
                }

                public static final class Builder extends GeneratedMessage.Builder<Builder> implements OtherGameDataOrBuilder {
                    private int bitField0_;
                    private long gameid_;
                    private RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> richPresenceBuilder_;
                    private List<KV> richPresence_;

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_OtherGameData_descriptor;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder
                    public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_OtherGameData_fieldAccessorTable.ensureFieldAccessorsInitialized(OtherGameData.class, Builder.class);
                    }

                    private Builder() {
                        this.richPresence_ = Collections.emptyList();
                    }

                    private Builder(AbstractMessage.BuilderParent builderParent) {
                        super(builderParent);
                        this.richPresence_ = Collections.emptyList();
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public Builder clear() {
                        super.clear();
                        this.bitField0_ = 0;
                        this.gameid_ = 0L;
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            this.richPresence_ = Collections.emptyList();
                        } else {
                            this.richPresence_ = null;
                            repeatedFieldBuilder.clear();
                        }
                        this.bitField0_ &= -3;
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_OtherGameData_descriptor;
                    }

                    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                    public OtherGameData getDefaultInstanceForType() {
                        return OtherGameData.getDefaultInstance();
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public OtherGameData build() {
                        OtherGameData otherGameDataBuildPartial = buildPartial();
                        if (otherGameDataBuildPartial.isInitialized()) {
                            return otherGameDataBuildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) otherGameDataBuildPartial);
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public OtherGameData buildPartial() {
                        OtherGameData otherGameData = new OtherGameData(this);
                        buildPartialRepeatedFields(otherGameData);
                        if (this.bitField0_ != 0) {
                            buildPartial0(otherGameData);
                        }
                        onBuilt();
                        return otherGameData;
                    }

                    private void buildPartialRepeatedFields(OtherGameData otherGameData) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            if ((this.bitField0_ & 2) != 0) {
                                this.richPresence_ = Collections.unmodifiableList(this.richPresence_);
                                this.bitField0_ &= -3;
                            }
                            otherGameData.richPresence_ = this.richPresence_;
                            return;
                        }
                        otherGameData.richPresence_ = repeatedFieldBuilder.build();
                    }

                    private void buildPartial0(OtherGameData otherGameData) {
                        int i = 1;
                        if ((this.bitField0_ & 1) != 0) {
                            otherGameData.gameid_ = this.gameid_;
                        } else {
                            i = 0;
                        }
                        otherGameData.bitField0_ |= i;
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof OtherGameData) {
                            return mergeFrom((OtherGameData) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(OtherGameData otherGameData) {
                        if (otherGameData == OtherGameData.getDefaultInstance()) {
                            return this;
                        }
                        if (otherGameData.hasGameid()) {
                            setGameid(otherGameData.getGameid());
                        }
                        if (this.richPresenceBuilder_ == null) {
                            if (!otherGameData.richPresence_.isEmpty()) {
                                if (this.richPresence_.isEmpty()) {
                                    this.richPresence_ = otherGameData.richPresence_;
                                    this.bitField0_ &= -3;
                                } else {
                                    ensureRichPresenceIsMutable();
                                    this.richPresence_.addAll(otherGameData.richPresence_);
                                }
                                onChanged();
                            }
                        } else if (!otherGameData.richPresence_.isEmpty()) {
                            if (this.richPresenceBuilder_.isEmpty()) {
                                this.richPresenceBuilder_.dispose();
                                this.richPresenceBuilder_ = null;
                                this.richPresence_ = otherGameData.richPresence_;
                                this.bitField0_ &= -3;
                                this.richPresenceBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetRichPresenceFieldBuilder() : null;
                            } else {
                                this.richPresenceBuilder_.addAllMessages(otherGameData.richPresence_);
                            }
                        }
                        mergeUnknownFields(otherGameData.getUnknownFields());
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
                                            this.gameid_ = codedInputStream.readUInt64();
                                            this.bitField0_ |= 1;
                                        } else if (tag == 18) {
                                            KV kv = (KV) codedInputStream.readMessage(KV.parser(), extensionRegistryLite);
                                            RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                                            if (repeatedFieldBuilder == null) {
                                                ensureRichPresenceIsMutable();
                                                this.richPresence_.add(kv);
                                            } else {
                                                repeatedFieldBuilder.addMessage(kv);
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                    public boolean hasGameid() {
                        return (this.bitField0_ & 1) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                    public long getGameid() {
                        return this.gameid_;
                    }

                    public Builder setGameid(long j) {
                        this.gameid_ = j;
                        this.bitField0_ |= 1;
                        onChanged();
                        return this;
                    }

                    public Builder clearGameid() {
                        this.bitField0_ &= -2;
                        this.gameid_ = 0L;
                        onChanged();
                        return this;
                    }

                    private void ensureRichPresenceIsMutable() {
                        if ((this.bitField0_ & 2) == 0) {
                            this.richPresence_ = new ArrayList(this.richPresence_);
                            this.bitField0_ |= 2;
                        }
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                    public List<KV> getRichPresenceList() {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            return Collections.unmodifiableList(this.richPresence_);
                        }
                        return repeatedFieldBuilder.getMessageList();
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                    public int getRichPresenceCount() {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            return this.richPresence_.size();
                        }
                        return repeatedFieldBuilder.getCount();
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                    public KV getRichPresence(int i) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            return this.richPresence_.get(i);
                        }
                        return (KV) repeatedFieldBuilder.getMessage(i);
                    }

                    public Builder setRichPresence(int i, KV kv) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            kv.getClass();
                            ensureRichPresenceIsMutable();
                            this.richPresence_.set(i, kv);
                            onChanged();
                        } else {
                            repeatedFieldBuilder.setMessage(i, kv);
                        }
                        return this;
                    }

                    public Builder setRichPresence(int i, KV.Builder builder) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            ensureRichPresenceIsMutable();
                            this.richPresence_.set(i, builder.build());
                            onChanged();
                        } else {
                            repeatedFieldBuilder.setMessage(i, builder.build());
                        }
                        return this;
                    }

                    public Builder addRichPresence(KV kv) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            kv.getClass();
                            ensureRichPresenceIsMutable();
                            this.richPresence_.add(kv);
                            onChanged();
                        } else {
                            repeatedFieldBuilder.addMessage(kv);
                        }
                        return this;
                    }

                    public Builder addRichPresence(int i, KV kv) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            kv.getClass();
                            ensureRichPresenceIsMutable();
                            this.richPresence_.add(i, kv);
                            onChanged();
                        } else {
                            repeatedFieldBuilder.addMessage(i, kv);
                        }
                        return this;
                    }

                    public Builder addRichPresence(KV.Builder builder) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            ensureRichPresenceIsMutable();
                            this.richPresence_.add(builder.build());
                            onChanged();
                        } else {
                            repeatedFieldBuilder.addMessage(builder.build());
                        }
                        return this;
                    }

                    public Builder addRichPresence(int i, KV.Builder builder) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            ensureRichPresenceIsMutable();
                            this.richPresence_.add(i, builder.build());
                            onChanged();
                        } else {
                            repeatedFieldBuilder.addMessage(i, builder.build());
                        }
                        return this;
                    }

                    public Builder addAllRichPresence(Iterable<? extends KV> iterable) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            ensureRichPresenceIsMutable();
                            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.richPresence_);
                            onChanged();
                        } else {
                            repeatedFieldBuilder.addAllMessages(iterable);
                        }
                        return this;
                    }

                    public Builder clearRichPresence() {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            this.richPresence_ = Collections.emptyList();
                            this.bitField0_ &= -3;
                            onChanged();
                        } else {
                            repeatedFieldBuilder.clear();
                        }
                        return this;
                    }

                    public Builder removeRichPresence(int i) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            ensureRichPresenceIsMutable();
                            this.richPresence_.remove(i);
                            onChanged();
                        } else {
                            repeatedFieldBuilder.remove(i);
                        }
                        return this;
                    }

                    public KV.Builder getRichPresenceBuilder(int i) {
                        return (KV.Builder) internalGetRichPresenceFieldBuilder().getBuilder(i);
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                    public KVOrBuilder getRichPresenceOrBuilder(int i) {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder == null) {
                            return this.richPresence_.get(i);
                        }
                        return (KVOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.OtherGameDataOrBuilder
                    public List<? extends KVOrBuilder> getRichPresenceOrBuilderList() {
                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                        if (repeatedFieldBuilder != null) {
                            return repeatedFieldBuilder.getMessageOrBuilderList();
                        }
                        return Collections.unmodifiableList(this.richPresence_);
                    }

                    public KV.Builder addRichPresenceBuilder() {
                        return (KV.Builder) internalGetRichPresenceFieldBuilder().addBuilder(KV.getDefaultInstance());
                    }

                    public KV.Builder addRichPresenceBuilder(int i) {
                        return (KV.Builder) internalGetRichPresenceFieldBuilder().addBuilder(i, KV.getDefaultInstance());
                    }

                    public List<KV.Builder> getRichPresenceBuilderList() {
                        return internalGetRichPresenceFieldBuilder().getBuilderList();
                    }

                    private RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> internalGetRichPresenceFieldBuilder() {
                        if (this.richPresenceBuilder_ == null) {
                            this.richPresenceBuilder_ = new RepeatedFieldBuilder<>(this.richPresence_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                            this.richPresence_ = null;
                        }
                        return this.richPresenceBuilder_;
                    }
                }

                public static OtherGameData getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static Parser<OtherGameData> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Parser<OtherGameData> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public OtherGameData getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasFriendid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public long getFriendid() {
                return this.friendid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasPersonaState() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getPersonaState() {
                return this.personaState_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGamePlayedAppId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getGamePlayedAppId() {
                return this.gamePlayedAppId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGameServerIp() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getGameServerIp() {
                return this.gameServerIp_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGameServerPort() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getGameServerPort() {
                return this.gameServerPort_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasPersonaStateFlags() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getPersonaStateFlags() {
                return this.personaStateFlags_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasOnlineSessionInstances() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getOnlineSessionInstances() {
                return this.onlineSessionInstances_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasPersonaSetByUser() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean getPersonaSetByUser() {
                return this.personaSetByUser_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasPlayerName() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public String getPlayerName() {
                Object obj = this.playerName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.playerName_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ByteString getPlayerNameBytes() {
                Object obj = this.playerName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.playerName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasQueryPort() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getQueryPort() {
                return this.queryPort_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasSteamidSource() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public long getSteamidSource() {
                return this.steamidSource_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasAvatarHash() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ByteString getAvatarHash() {
                return this.avatarHash_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasLastLogoff() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getLastLogoff() {
                return this.lastLogoff_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasLastLogon() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getLastLogon() {
                return this.lastLogon_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasLastSeenOnline() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getLastSeenOnline() {
                return this.lastSeenOnline_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasClanRank() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getClanRank() {
                return this.clanRank_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGameName() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public String getGameName() {
                Object obj = this.gameName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gameName_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ByteString getGameNameBytes() {
                Object obj = this.gameName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gameName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGameid() {
                return (this.bitField0_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public long getGameid() {
                return this.gameid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGameDataBlob() {
                return (this.bitField0_ & 262144) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ByteString getGameDataBlob() {
                return this.gameDataBlob_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasClanData() {
                return (this.bitField0_ & 524288) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ClanData getClanData() {
                ClanData clanData = this.clanData_;
                return clanData == null ? ClanData.getDefaultInstance() : clanData;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ClanDataOrBuilder getClanDataOrBuilder() {
                ClanData clanData = this.clanData_;
                return clanData == null ? ClanData.getDefaultInstance() : clanData;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasClanTag() {
                return (this.bitField0_ & 1048576) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public String getClanTag() {
                Object obj = this.clanTag_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.clanTag_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ByteString getClanTagBytes() {
                Object obj = this.clanTag_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.clanTag_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public List<KV> getRichPresenceList() {
                return this.richPresence_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public List<? extends KVOrBuilder> getRichPresenceOrBuilderList() {
                return this.richPresence_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getRichPresenceCount() {
                return this.richPresence_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public KV getRichPresence(int i) {
                return this.richPresence_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public KVOrBuilder getRichPresenceOrBuilder(int i) {
                return this.richPresence_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasBroadcastId() {
                return (this.bitField0_ & 2097152) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public long getBroadcastId() {
                return this.broadcastId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGameLobbyId() {
                return (this.bitField0_ & 4194304) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public long getGameLobbyId() {
                return this.gameLobbyId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasWatchingBroadcastAccountid() {
                return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getWatchingBroadcastAccountid() {
                return this.watchingBroadcastAccountid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasWatchingBroadcastAppid() {
                return (this.bitField0_ & 16777216) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getWatchingBroadcastAppid() {
                return this.watchingBroadcastAppid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasWatchingBroadcastViewers() {
                return (this.bitField0_ & 33554432) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getWatchingBroadcastViewers() {
                return this.watchingBroadcastViewers_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasWatchingBroadcastTitle() {
                return (this.bitField0_ & 67108864) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public String getWatchingBroadcastTitle() {
                Object obj = this.watchingBroadcastTitle_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.watchingBroadcastTitle_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public ByteString getWatchingBroadcastTitleBytes() {
                Object obj = this.watchingBroadcastTitle_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.watchingBroadcastTitle_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasIsCommunityBanned() {
                return (this.bitField0_ & 134217728) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean getIsCommunityBanned() {
                return this.isCommunityBanned_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasPlayerNamePendingReview() {
                return (this.bitField0_ & 268435456) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean getPlayerNamePendingReview() {
                return this.playerNamePendingReview_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasAvatarPendingReview() {
                return (this.bitField0_ & 536870912) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean getAvatarPendingReview() {
                return this.avatarPendingReview_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasOnSteamDeck() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean getOnSteamDeck() {
                return this.onSteamDeck_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public List<OtherGameData> getOtherGameDataList() {
                return this.otherGameData_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public List<? extends OtherGameDataOrBuilder> getOtherGameDataOrBuilderList() {
                return this.otherGameData_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public int getOtherGameDataCount() {
                return this.otherGameData_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public OtherGameData getOtherGameData(int i) {
                return this.otherGameData_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public OtherGameDataOrBuilder getOtherGameDataOrBuilder(int i) {
                return this.otherGameData_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
            public boolean hasGamingDeviceType() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
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
                    codedOutputStream.writeFixed64(1, this.friendid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.personaState_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeUInt32(3, this.gamePlayedAppId_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeUInt32(4, this.gameServerIp_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeUInt32(5, this.gameServerPort_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeUInt32(6, this.personaStateFlags_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    codedOutputStream.writeUInt32(7, this.onlineSessionInstances_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    codedOutputStream.writeBool(10, this.personaSetByUser_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 15, this.playerName_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    codedOutputStream.writeUInt32(20, this.queryPort_);
                }
                if ((this.bitField0_ & 1024) != 0) {
                    codedOutputStream.writeFixed64(25, this.steamidSource_);
                }
                if ((this.bitField0_ & 2048) != 0) {
                    codedOutputStream.writeBytes(31, this.avatarHash_);
                }
                if ((this.bitField0_ & 4096) != 0) {
                    codedOutputStream.writeUInt32(45, this.lastLogoff_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    codedOutputStream.writeUInt32(46, this.lastLogon_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    codedOutputStream.writeUInt32(47, this.lastSeenOnline_);
                }
                if ((this.bitField0_ & 32768) != 0) {
                    codedOutputStream.writeUInt32(50, this.clanRank_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 55, this.gameName_);
                }
                if ((this.bitField0_ & 131072) != 0) {
                    codedOutputStream.writeFixed64(56, this.gameid_);
                }
                if ((this.bitField0_ & 262144) != 0) {
                    codedOutputStream.writeBytes(60, this.gameDataBlob_);
                }
                if ((this.bitField0_ & 524288) != 0) {
                    codedOutputStream.writeMessage(64, getClanData());
                }
                if ((this.bitField0_ & 1048576) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 65, this.clanTag_);
                }
                for (int i = 0; i < this.richPresence_.size(); i++) {
                    codedOutputStream.writeMessage(71, this.richPresence_.get(i));
                }
                if ((this.bitField0_ & 2097152) != 0) {
                    codedOutputStream.writeFixed64(72, this.broadcastId_);
                }
                if ((this.bitField0_ & 4194304) != 0) {
                    codedOutputStream.writeFixed64(73, this.gameLobbyId_);
                }
                if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                    codedOutputStream.writeUInt32(74, this.watchingBroadcastAccountid_);
                }
                if ((this.bitField0_ & 16777216) != 0) {
                    codedOutputStream.writeUInt32(75, this.watchingBroadcastAppid_);
                }
                if ((this.bitField0_ & 33554432) != 0) {
                    codedOutputStream.writeUInt32(76, this.watchingBroadcastViewers_);
                }
                if ((this.bitField0_ & 67108864) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 77, this.watchingBroadcastTitle_);
                }
                if ((this.bitField0_ & 134217728) != 0) {
                    codedOutputStream.writeBool(78, this.isCommunityBanned_);
                }
                if ((this.bitField0_ & 268435456) != 0) {
                    codedOutputStream.writeBool(79, this.playerNamePendingReview_);
                }
                if ((this.bitField0_ & 536870912) != 0) {
                    codedOutputStream.writeBool(80, this.avatarPendingReview_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0) {
                    codedOutputStream.writeBool(81, this.onSteamDeck_);
                }
                for (int i2 = 0; i2 < this.otherGameData_.size(); i2++) {
                    codedOutputStream.writeMessage(82, this.otherGameData_.get(i2));
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                    codedOutputStream.writeUInt32(83, this.gamingDeviceType_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.friendid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.personaState_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.gamePlayedAppId_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(4, this.gameServerIp_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(5, this.gameServerPort_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(6, this.personaStateFlags_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(7, this.onlineSessionInstances_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(10, this.personaSetByUser_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(15, this.playerName_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(20, this.queryPort_);
                }
                if ((this.bitField0_ & 1024) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFixed64Size(25, this.steamidSource_);
                }
                if ((this.bitField0_ & 2048) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBytesSize(31, this.avatarHash_);
                }
                if ((this.bitField0_ & 4096) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(45, this.lastLogoff_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(46, this.lastLogon_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(47, this.lastSeenOnline_);
                }
                if ((this.bitField0_ & 32768) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(50, this.clanRank_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(55, this.gameName_);
                }
                if ((this.bitField0_ & 131072) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFixed64Size(56, this.gameid_);
                }
                if ((this.bitField0_ & 262144) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBytesSize(60, this.gameDataBlob_);
                }
                if ((this.bitField0_ & 524288) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeMessageSize(64, getClanData());
                }
                if ((this.bitField0_ & 1048576) != 0) {
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(65, this.clanTag_);
                }
                for (int i2 = 0; i2 < this.richPresence_.size(); i2++) {
                    iComputeFixed64Size += CodedOutputStream.computeMessageSize(71, this.richPresence_.get(i2));
                }
                if ((this.bitField0_ & 2097152) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFixed64Size(72, this.broadcastId_);
                }
                if ((this.bitField0_ & 4194304) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeFixed64Size(73, this.gameLobbyId_);
                }
                if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(74, this.watchingBroadcastAccountid_);
                }
                if ((this.bitField0_ & 16777216) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(75, this.watchingBroadcastAppid_);
                }
                if ((this.bitField0_ & 33554432) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(76, this.watchingBroadcastViewers_);
                }
                if ((this.bitField0_ & 67108864) != 0) {
                    iComputeFixed64Size += GeneratedMessage.computeStringSize(77, this.watchingBroadcastTitle_);
                }
                if ((this.bitField0_ & 134217728) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(78, this.isCommunityBanned_);
                }
                if ((this.bitField0_ & 268435456) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(79, this.playerNamePendingReview_);
                }
                if ((this.bitField0_ & 536870912) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(80, this.avatarPendingReview_);
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeBoolSize(81, this.onSteamDeck_);
                }
                for (int i3 = 0; i3 < this.otherGameData_.size(); i3++) {
                    iComputeFixed64Size += CodedOutputStream.computeMessageSize(82, this.otherGameData_.get(i3));
                }
                if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                    iComputeFixed64Size += CodedOutputStream.computeUInt32Size(83, this.gamingDeviceType_);
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
                if (!(obj instanceof Friend)) {
                    return super.equals(obj);
                }
                Friend friend = (Friend) obj;
                if (hasFriendid() != friend.hasFriendid()) {
                    return false;
                }
                if ((hasFriendid() && getFriendid() != friend.getFriendid()) || hasPersonaState() != friend.hasPersonaState()) {
                    return false;
                }
                if ((hasPersonaState() && getPersonaState() != friend.getPersonaState()) || hasGamePlayedAppId() != friend.hasGamePlayedAppId()) {
                    return false;
                }
                if ((hasGamePlayedAppId() && getGamePlayedAppId() != friend.getGamePlayedAppId()) || hasGameServerIp() != friend.hasGameServerIp()) {
                    return false;
                }
                if ((hasGameServerIp() && getGameServerIp() != friend.getGameServerIp()) || hasGameServerPort() != friend.hasGameServerPort()) {
                    return false;
                }
                if ((hasGameServerPort() && getGameServerPort() != friend.getGameServerPort()) || hasPersonaStateFlags() != friend.hasPersonaStateFlags()) {
                    return false;
                }
                if ((hasPersonaStateFlags() && getPersonaStateFlags() != friend.getPersonaStateFlags()) || hasOnlineSessionInstances() != friend.hasOnlineSessionInstances()) {
                    return false;
                }
                if ((hasOnlineSessionInstances() && getOnlineSessionInstances() != friend.getOnlineSessionInstances()) || hasPersonaSetByUser() != friend.hasPersonaSetByUser()) {
                    return false;
                }
                if ((hasPersonaSetByUser() && getPersonaSetByUser() != friend.getPersonaSetByUser()) || hasPlayerName() != friend.hasPlayerName()) {
                    return false;
                }
                if ((hasPlayerName() && !getPlayerName().equals(friend.getPlayerName())) || hasQueryPort() != friend.hasQueryPort()) {
                    return false;
                }
                if ((hasQueryPort() && getQueryPort() != friend.getQueryPort()) || hasSteamidSource() != friend.hasSteamidSource()) {
                    return false;
                }
                if ((hasSteamidSource() && getSteamidSource() != friend.getSteamidSource()) || hasAvatarHash() != friend.hasAvatarHash()) {
                    return false;
                }
                if ((hasAvatarHash() && !getAvatarHash().equals(friend.getAvatarHash())) || hasLastLogoff() != friend.hasLastLogoff()) {
                    return false;
                }
                if ((hasLastLogoff() && getLastLogoff() != friend.getLastLogoff()) || hasLastLogon() != friend.hasLastLogon()) {
                    return false;
                }
                if ((hasLastLogon() && getLastLogon() != friend.getLastLogon()) || hasLastSeenOnline() != friend.hasLastSeenOnline()) {
                    return false;
                }
                if ((hasLastSeenOnline() && getLastSeenOnline() != friend.getLastSeenOnline()) || hasClanRank() != friend.hasClanRank()) {
                    return false;
                }
                if ((hasClanRank() && getClanRank() != friend.getClanRank()) || hasGameName() != friend.hasGameName()) {
                    return false;
                }
                if ((hasGameName() && !getGameName().equals(friend.getGameName())) || hasGameid() != friend.hasGameid()) {
                    return false;
                }
                if ((hasGameid() && getGameid() != friend.getGameid()) || hasGameDataBlob() != friend.hasGameDataBlob()) {
                    return false;
                }
                if ((hasGameDataBlob() && !getGameDataBlob().equals(friend.getGameDataBlob())) || hasClanData() != friend.hasClanData()) {
                    return false;
                }
                if ((hasClanData() && !getClanData().equals(friend.getClanData())) || hasClanTag() != friend.hasClanTag()) {
                    return false;
                }
                if ((hasClanTag() && !getClanTag().equals(friend.getClanTag())) || !getRichPresenceList().equals(friend.getRichPresenceList()) || hasBroadcastId() != friend.hasBroadcastId()) {
                    return false;
                }
                if ((hasBroadcastId() && getBroadcastId() != friend.getBroadcastId()) || hasGameLobbyId() != friend.hasGameLobbyId()) {
                    return false;
                }
                if ((hasGameLobbyId() && getGameLobbyId() != friend.getGameLobbyId()) || hasWatchingBroadcastAccountid() != friend.hasWatchingBroadcastAccountid()) {
                    return false;
                }
                if ((hasWatchingBroadcastAccountid() && getWatchingBroadcastAccountid() != friend.getWatchingBroadcastAccountid()) || hasWatchingBroadcastAppid() != friend.hasWatchingBroadcastAppid()) {
                    return false;
                }
                if ((hasWatchingBroadcastAppid() && getWatchingBroadcastAppid() != friend.getWatchingBroadcastAppid()) || hasWatchingBroadcastViewers() != friend.hasWatchingBroadcastViewers()) {
                    return false;
                }
                if ((hasWatchingBroadcastViewers() && getWatchingBroadcastViewers() != friend.getWatchingBroadcastViewers()) || hasWatchingBroadcastTitle() != friend.hasWatchingBroadcastTitle()) {
                    return false;
                }
                if ((hasWatchingBroadcastTitle() && !getWatchingBroadcastTitle().equals(friend.getWatchingBroadcastTitle())) || hasIsCommunityBanned() != friend.hasIsCommunityBanned()) {
                    return false;
                }
                if ((hasIsCommunityBanned() && getIsCommunityBanned() != friend.getIsCommunityBanned()) || hasPlayerNamePendingReview() != friend.hasPlayerNamePendingReview()) {
                    return false;
                }
                if ((hasPlayerNamePendingReview() && getPlayerNamePendingReview() != friend.getPlayerNamePendingReview()) || hasAvatarPendingReview() != friend.hasAvatarPendingReview()) {
                    return false;
                }
                if ((hasAvatarPendingReview() && getAvatarPendingReview() != friend.getAvatarPendingReview()) || hasOnSteamDeck() != friend.hasOnSteamDeck()) {
                    return false;
                }
                if ((!hasOnSteamDeck() || getOnSteamDeck() == friend.getOnSteamDeck()) && getOtherGameDataList().equals(friend.getOtherGameDataList()) && hasGamingDeviceType() == friend.hasGamingDeviceType()) {
                    return (!hasGamingDeviceType() || getGamingDeviceType() == friend.getGamingDeviceType()) && getUnknownFields().equals(friend.getUnknownFields());
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
                if (hasFriendid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getFriendid());
                }
                if (hasPersonaState()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getPersonaState();
                }
                if (hasGamePlayedAppId()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getGamePlayedAppId();
                }
                if (hasGameServerIp()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getGameServerIp();
                }
                if (hasGameServerPort()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getGameServerPort();
                }
                if (hasPersonaStateFlags()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + getPersonaStateFlags();
                }
                if (hasOnlineSessionInstances()) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + getOnlineSessionInstances();
                }
                if (hasPersonaSetByUser()) {
                    iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashBoolean(getPersonaSetByUser());
                }
                if (hasPlayerName()) {
                    iHashCode = (((iHashCode * 37) + 15) * 53) + getPlayerName().hashCode();
                }
                if (hasQueryPort()) {
                    iHashCode = (((iHashCode * 37) + 20) * 53) + getQueryPort();
                }
                if (hasSteamidSource()) {
                    iHashCode = (((iHashCode * 37) + 25) * 53) + Internal.hashLong(getSteamidSource());
                }
                if (hasAvatarHash()) {
                    iHashCode = (((iHashCode * 37) + 31) * 53) + getAvatarHash().hashCode();
                }
                if (hasLastLogoff()) {
                    iHashCode = (((iHashCode * 37) + 45) * 53) + getLastLogoff();
                }
                if (hasLastLogon()) {
                    iHashCode = (((iHashCode * 37) + 46) * 53) + getLastLogon();
                }
                if (hasLastSeenOnline()) {
                    iHashCode = (((iHashCode * 37) + 47) * 53) + getLastSeenOnline();
                }
                if (hasClanRank()) {
                    iHashCode = (((iHashCode * 37) + 50) * 53) + getClanRank();
                }
                if (hasGameName()) {
                    iHashCode = (((iHashCode * 37) + 55) * 53) + getGameName().hashCode();
                }
                if (hasGameid()) {
                    iHashCode = (((iHashCode * 37) + 56) * 53) + Internal.hashLong(getGameid());
                }
                if (hasGameDataBlob()) {
                    iHashCode = (((iHashCode * 37) + 60) * 53) + getGameDataBlob().hashCode();
                }
                if (hasClanData()) {
                    iHashCode = (((iHashCode * 37) + 64) * 53) + getClanData().hashCode();
                }
                if (hasClanTag()) {
                    iHashCode = (((iHashCode * 37) + 65) * 53) + getClanTag().hashCode();
                }
                if (getRichPresenceCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 71) * 53) + getRichPresenceList().hashCode();
                }
                if (hasBroadcastId()) {
                    iHashCode = (((iHashCode * 37) + 72) * 53) + Internal.hashLong(getBroadcastId());
                }
                if (hasGameLobbyId()) {
                    iHashCode = (((iHashCode * 37) + 73) * 53) + Internal.hashLong(getGameLobbyId());
                }
                if (hasWatchingBroadcastAccountid()) {
                    iHashCode = (((iHashCode * 37) + 74) * 53) + getWatchingBroadcastAccountid();
                }
                if (hasWatchingBroadcastAppid()) {
                    iHashCode = (((iHashCode * 37) + 75) * 53) + getWatchingBroadcastAppid();
                }
                if (hasWatchingBroadcastViewers()) {
                    iHashCode = (((iHashCode * 37) + 76) * 53) + getWatchingBroadcastViewers();
                }
                if (hasWatchingBroadcastTitle()) {
                    iHashCode = (((iHashCode * 37) + 77) * 53) + getWatchingBroadcastTitle().hashCode();
                }
                if (hasIsCommunityBanned()) {
                    iHashCode = (((iHashCode * 37) + 78) * 53) + Internal.hashBoolean(getIsCommunityBanned());
                }
                if (hasPlayerNamePendingReview()) {
                    iHashCode = (((iHashCode * 37) + 79) * 53) + Internal.hashBoolean(getPlayerNamePendingReview());
                }
                if (hasAvatarPendingReview()) {
                    iHashCode = (((iHashCode * 37) + 80) * 53) + Internal.hashBoolean(getAvatarPendingReview());
                }
                if (hasOnSteamDeck()) {
                    iHashCode = (((iHashCode * 37) + 81) * 53) + Internal.hashBoolean(getOnSteamDeck());
                }
                if (getOtherGameDataCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 82) * 53) + getOtherGameDataList().hashCode();
                }
                if (hasGamingDeviceType()) {
                    iHashCode = (((iHashCode * 37) + 83) * 53) + getGamingDeviceType();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static Friend parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Friend parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Friend parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Friend parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Friend parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Friend parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Friend parseFrom(InputStream inputStream) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static Friend parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Friend parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Friend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Friend parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Friend) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Friend parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static Friend parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Friend) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Friend friend) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(friend);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements FriendOrBuilder {
                private ByteString avatarHash_;
                private boolean avatarPendingReview_;
                private int bitField0_;
                private int bitField1_;
                private long broadcastId_;
                private SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> clanDataBuilder_;
                private ClanData clanData_;
                private int clanRank_;
                private Object clanTag_;
                private long friendid_;
                private ByteString gameDataBlob_;
                private long gameLobbyId_;
                private Object gameName_;
                private int gamePlayedAppId_;
                private int gameServerIp_;
                private int gameServerPort_;
                private long gameid_;
                private int gamingDeviceType_;
                private boolean isCommunityBanned_;
                private int lastLogoff_;
                private int lastLogon_;
                private int lastSeenOnline_;
                private boolean onSteamDeck_;
                private int onlineSessionInstances_;
                private RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> otherGameDataBuilder_;
                private List<OtherGameData> otherGameData_;
                private boolean personaSetByUser_;
                private int personaStateFlags_;
                private int personaState_;
                private boolean playerNamePendingReview_;
                private Object playerName_;
                private int queryPort_;
                private RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> richPresenceBuilder_;
                private List<KV> richPresence_;
                private long steamidSource_;
                private int watchingBroadcastAccountid_;
                private int watchingBroadcastAppid_;
                private Object watchingBroadcastTitle_;
                private int watchingBroadcastViewers_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_fieldAccessorTable.ensureFieldAccessorsInitialized(Friend.class, Builder.class);
                }

                private Builder() {
                    this.playerName_ = "";
                    ByteString byteString = ByteString.EMPTY;
                    this.avatarHash_ = byteString;
                    this.gameName_ = "";
                    this.gameDataBlob_ = byteString;
                    this.clanTag_ = "";
                    this.richPresence_ = Collections.emptyList();
                    this.watchingBroadcastTitle_ = "";
                    this.otherGameData_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.playerName_ = "";
                    ByteString byteString = ByteString.EMPTY;
                    this.avatarHash_ = byteString;
                    this.gameName_ = "";
                    this.gameDataBlob_ = byteString;
                    this.clanTag_ = "";
                    this.richPresence_ = Collections.emptyList();
                    this.watchingBroadcastTitle_ = "";
                    this.otherGameData_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessage.alwaysUseFieldBuilders) {
                        internalGetClanDataFieldBuilder();
                        internalGetRichPresenceFieldBuilder();
                        internalGetOtherGameDataFieldBuilder();
                    }
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.bitField1_ = 0;
                    this.friendid_ = 0L;
                    this.personaState_ = 0;
                    this.gamePlayedAppId_ = 0;
                    this.gameServerIp_ = 0;
                    this.gameServerPort_ = 0;
                    this.personaStateFlags_ = 0;
                    this.onlineSessionInstances_ = 0;
                    this.personaSetByUser_ = false;
                    this.playerName_ = "";
                    this.queryPort_ = 0;
                    this.steamidSource_ = 0L;
                    ByteString byteString = ByteString.EMPTY;
                    this.avatarHash_ = byteString;
                    this.lastLogoff_ = 0;
                    this.lastLogon_ = 0;
                    this.lastSeenOnline_ = 0;
                    this.clanRank_ = 0;
                    this.gameName_ = "";
                    this.gameid_ = 0L;
                    this.gameDataBlob_ = byteString;
                    this.clanData_ = null;
                    SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                    if (singleFieldBuilder != null) {
                        singleFieldBuilder.dispose();
                        this.clanDataBuilder_ = null;
                    }
                    this.clanTag_ = "";
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.richPresence_ = Collections.emptyList();
                    } else {
                        this.richPresence_ = null;
                        repeatedFieldBuilder.clear();
                    }
                    this.bitField0_ &= -2097153;
                    this.broadcastId_ = 0L;
                    this.gameLobbyId_ = 0L;
                    this.watchingBroadcastAccountid_ = 0;
                    this.watchingBroadcastAppid_ = 0;
                    this.watchingBroadcastViewers_ = 0;
                    this.watchingBroadcastTitle_ = "";
                    this.isCommunityBanned_ = false;
                    this.playerNamePendingReview_ = false;
                    this.avatarPendingReview_ = false;
                    this.onSteamDeck_ = false;
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder2 = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder2 == null) {
                        this.otherGameData_ = Collections.emptyList();
                    } else {
                        this.otherGameData_ = null;
                        repeatedFieldBuilder2.clear();
                    }
                    this.bitField1_ &= -2;
                    this.gamingDeviceType_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_Friend_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public Friend getDefaultInstanceForType() {
                    return Friend.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Friend build() {
                    Friend friendBuildPartial = buildPartial();
                    if (friendBuildPartial.isInitialized()) {
                        return friendBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Friend buildPartial() {
                    Friend friend = new Friend(this);
                    buildPartialRepeatedFields(friend);
                    if (this.bitField0_ != 0) {
                        buildPartial0(friend);
                    }
                    if (this.bitField1_ != 0) {
                        buildPartial1(friend);
                    }
                    onBuilt();
                    return friend;
                }

                private void buildPartialRepeatedFields(Friend friend) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        if ((this.bitField0_ & 2097152) != 0) {
                            this.richPresence_ = Collections.unmodifiableList(this.richPresence_);
                            this.bitField0_ &= -2097153;
                        }
                        friend.richPresence_ = this.richPresence_;
                    } else {
                        friend.richPresence_ = repeatedFieldBuilder.build();
                    }
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder2 = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder2 == null) {
                        if ((this.bitField1_ & 1) != 0) {
                            this.otherGameData_ = Collections.unmodifiableList(this.otherGameData_);
                            this.bitField1_ &= -2;
                        }
                        friend.otherGameData_ = this.otherGameData_;
                        return;
                    }
                    friend.otherGameData_ = repeatedFieldBuilder2.build();
                }

                private void buildPartial0(Friend friend) {
                    int i;
                    ClanData clanData;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        friend.friendid_ = this.friendid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        friend.personaState_ = this.personaState_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        friend.gamePlayedAppId_ = this.gamePlayedAppId_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        friend.gameServerIp_ = this.gameServerIp_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        friend.gameServerPort_ = this.gameServerPort_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        friend.personaStateFlags_ = this.personaStateFlags_;
                        i |= 32;
                    }
                    if ((i2 & 64) != 0) {
                        friend.onlineSessionInstances_ = this.onlineSessionInstances_;
                        i |= 64;
                    }
                    if ((i2 & 128) != 0) {
                        friend.personaSetByUser_ = this.personaSetByUser_;
                        i |= 128;
                    }
                    if ((i2 & 256) != 0) {
                        friend.playerName_ = this.playerName_;
                        i |= 256;
                    }
                    if ((i2 & 512) != 0) {
                        friend.queryPort_ = this.queryPort_;
                        i |= 512;
                    }
                    if ((i2 & 1024) != 0) {
                        friend.steamidSource_ = this.steamidSource_;
                        i |= 1024;
                    }
                    if ((i2 & 2048) != 0) {
                        friend.avatarHash_ = this.avatarHash_;
                        i |= 2048;
                    }
                    if ((i2 & 4096) != 0) {
                        friend.lastLogoff_ = this.lastLogoff_;
                        i |= 4096;
                    }
                    if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                        friend.lastLogon_ = this.lastLogon_;
                        i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                    }
                    if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                        friend.lastSeenOnline_ = this.lastSeenOnline_;
                        i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    }
                    if ((i2 & 32768) != 0) {
                        friend.clanRank_ = this.clanRank_;
                        i |= 32768;
                    }
                    if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                        friend.gameName_ = this.gameName_;
                        i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    }
                    if ((i2 & 131072) != 0) {
                        friend.gameid_ = this.gameid_;
                        i |= 131072;
                    }
                    if ((i2 & 262144) != 0) {
                        friend.gameDataBlob_ = this.gameDataBlob_;
                        i |= 262144;
                    }
                    if ((i2 & 524288) != 0) {
                        SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                        if (singleFieldBuilder == null) {
                            clanData = this.clanData_;
                        } else {
                            clanData = (ClanData) singleFieldBuilder.build();
                        }
                        friend.clanData_ = clanData;
                        i |= 524288;
                    }
                    if ((i2 & 1048576) != 0) {
                        friend.clanTag_ = this.clanTag_;
                        i |= 1048576;
                    }
                    if ((i2 & 4194304) != 0) {
                        friend.broadcastId_ = this.broadcastId_;
                        i |= 2097152;
                    }
                    if ((8388608 & i2) != 0) {
                        friend.gameLobbyId_ = this.gameLobbyId_;
                        i |= 4194304;
                    }
                    if ((16777216 & i2) != 0) {
                        friend.watchingBroadcastAccountid_ = this.watchingBroadcastAccountid_;
                        i |= LZMA2Options.DICT_SIZE_DEFAULT;
                    }
                    if ((33554432 & i2) != 0) {
                        friend.watchingBroadcastAppid_ = this.watchingBroadcastAppid_;
                        i |= 16777216;
                    }
                    if ((67108864 & i2) != 0) {
                        friend.watchingBroadcastViewers_ = this.watchingBroadcastViewers_;
                        i |= 33554432;
                    }
                    if ((134217728 & i2) != 0) {
                        friend.watchingBroadcastTitle_ = this.watchingBroadcastTitle_;
                        i |= 67108864;
                    }
                    if ((268435456 & i2) != 0) {
                        friend.isCommunityBanned_ = this.isCommunityBanned_;
                        i |= 134217728;
                    }
                    if ((536870912 & i2) != 0) {
                        friend.playerNamePendingReview_ = this.playerNamePendingReview_;
                        i |= 268435456;
                    }
                    if ((1073741824 & i2) != 0) {
                        friend.avatarPendingReview_ = this.avatarPendingReview_;
                        i |= 536870912;
                    }
                    if ((i2 & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                        friend.onSteamDeck_ = this.onSteamDeck_;
                        i |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                    }
                    friend.bitField0_ |= i;
                }

                private void buildPartial1(Friend friend) {
                    int i;
                    if ((this.bitField1_ & 2) != 0) {
                        friend.gamingDeviceType_ = this.gamingDeviceType_;
                        i = Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                    } else {
                        i = 0;
                    }
                    friend.bitField0_ = i | friend.bitField0_;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Friend) {
                        return mergeFrom((Friend) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Friend friend) {
                    if (friend == Friend.getDefaultInstance()) {
                        return this;
                    }
                    if (friend.hasFriendid()) {
                        setFriendid(friend.getFriendid());
                    }
                    if (friend.hasPersonaState()) {
                        setPersonaState(friend.getPersonaState());
                    }
                    if (friend.hasGamePlayedAppId()) {
                        setGamePlayedAppId(friend.getGamePlayedAppId());
                    }
                    if (friend.hasGameServerIp()) {
                        setGameServerIp(friend.getGameServerIp());
                    }
                    if (friend.hasGameServerPort()) {
                        setGameServerPort(friend.getGameServerPort());
                    }
                    if (friend.hasPersonaStateFlags()) {
                        setPersonaStateFlags(friend.getPersonaStateFlags());
                    }
                    if (friend.hasOnlineSessionInstances()) {
                        setOnlineSessionInstances(friend.getOnlineSessionInstances());
                    }
                    if (friend.hasPersonaSetByUser()) {
                        setPersonaSetByUser(friend.getPersonaSetByUser());
                    }
                    if (friend.hasPlayerName()) {
                        this.playerName_ = friend.playerName_;
                        this.bitField0_ |= 256;
                        onChanged();
                    }
                    if (friend.hasQueryPort()) {
                        setQueryPort(friend.getQueryPort());
                    }
                    if (friend.hasSteamidSource()) {
                        setSteamidSource(friend.getSteamidSource());
                    }
                    if (friend.hasAvatarHash()) {
                        setAvatarHash(friend.getAvatarHash());
                    }
                    if (friend.hasLastLogoff()) {
                        setLastLogoff(friend.getLastLogoff());
                    }
                    if (friend.hasLastLogon()) {
                        setLastLogon(friend.getLastLogon());
                    }
                    if (friend.hasLastSeenOnline()) {
                        setLastSeenOnline(friend.getLastSeenOnline());
                    }
                    if (friend.hasClanRank()) {
                        setClanRank(friend.getClanRank());
                    }
                    if (friend.hasGameName()) {
                        this.gameName_ = friend.gameName_;
                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                        onChanged();
                    }
                    if (friend.hasGameid()) {
                        setGameid(friend.getGameid());
                    }
                    if (friend.hasGameDataBlob()) {
                        setGameDataBlob(friend.getGameDataBlob());
                    }
                    if (friend.hasClanData()) {
                        mergeClanData(friend.getClanData());
                    }
                    if (friend.hasClanTag()) {
                        this.clanTag_ = friend.clanTag_;
                        this.bitField0_ |= 1048576;
                        onChanged();
                    }
                    if (this.richPresenceBuilder_ == null) {
                        if (!friend.richPresence_.isEmpty()) {
                            if (this.richPresence_.isEmpty()) {
                                this.richPresence_ = friend.richPresence_;
                                this.bitField0_ &= -2097153;
                            } else {
                                ensureRichPresenceIsMutable();
                                this.richPresence_.addAll(friend.richPresence_);
                            }
                            onChanged();
                        }
                    } else if (!friend.richPresence_.isEmpty()) {
                        if (this.richPresenceBuilder_.isEmpty()) {
                            this.richPresenceBuilder_.dispose();
                            this.richPresenceBuilder_ = null;
                            this.richPresence_ = friend.richPresence_;
                            this.bitField0_ &= -2097153;
                            this.richPresenceBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetRichPresenceFieldBuilder() : null;
                        } else {
                            this.richPresenceBuilder_.addAllMessages(friend.richPresence_);
                        }
                    }
                    if (friend.hasBroadcastId()) {
                        setBroadcastId(friend.getBroadcastId());
                    }
                    if (friend.hasGameLobbyId()) {
                        setGameLobbyId(friend.getGameLobbyId());
                    }
                    if (friend.hasWatchingBroadcastAccountid()) {
                        setWatchingBroadcastAccountid(friend.getWatchingBroadcastAccountid());
                    }
                    if (friend.hasWatchingBroadcastAppid()) {
                        setWatchingBroadcastAppid(friend.getWatchingBroadcastAppid());
                    }
                    if (friend.hasWatchingBroadcastViewers()) {
                        setWatchingBroadcastViewers(friend.getWatchingBroadcastViewers());
                    }
                    if (friend.hasWatchingBroadcastTitle()) {
                        this.watchingBroadcastTitle_ = friend.watchingBroadcastTitle_;
                        this.bitField0_ |= 134217728;
                        onChanged();
                    }
                    if (friend.hasIsCommunityBanned()) {
                        setIsCommunityBanned(friend.getIsCommunityBanned());
                    }
                    if (friend.hasPlayerNamePendingReview()) {
                        setPlayerNamePendingReview(friend.getPlayerNamePendingReview());
                    }
                    if (friend.hasAvatarPendingReview()) {
                        setAvatarPendingReview(friend.getAvatarPendingReview());
                    }
                    if (friend.hasOnSteamDeck()) {
                        setOnSteamDeck(friend.getOnSteamDeck());
                    }
                    if (this.otherGameDataBuilder_ == null) {
                        if (!friend.otherGameData_.isEmpty()) {
                            if (this.otherGameData_.isEmpty()) {
                                this.otherGameData_ = friend.otherGameData_;
                                this.bitField1_ &= -2;
                            } else {
                                ensureOtherGameDataIsMutable();
                                this.otherGameData_.addAll(friend.otherGameData_);
                            }
                            onChanged();
                        }
                    } else if (!friend.otherGameData_.isEmpty()) {
                        if (this.otherGameDataBuilder_.isEmpty()) {
                            this.otherGameDataBuilder_.dispose();
                            this.otherGameDataBuilder_ = null;
                            this.otherGameData_ = friend.otherGameData_;
                            this.bitField1_ &= -2;
                            this.otherGameDataBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetOtherGameDataFieldBuilder() : null;
                        } else {
                            this.otherGameDataBuilder_.addAllMessages(friend.otherGameData_);
                        }
                    }
                    if (friend.hasGamingDeviceType()) {
                        setGamingDeviceType(friend.getGamingDeviceType());
                    }
                    mergeUnknownFields(friend.getUnknownFields());
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
                                        this.friendid_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1;
                                        break;
                                    case 16:
                                        this.personaState_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                        break;
                                    case 24:
                                        this.gamePlayedAppId_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 4;
                                        break;
                                    case 32:
                                        this.gameServerIp_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 8;
                                        break;
                                    case 40:
                                        this.gameServerPort_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 16;
                                        break;
                                    case 48:
                                        this.personaStateFlags_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 32;
                                        break;
                                    case 56:
                                        this.onlineSessionInstances_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 64;
                                        break;
                                    case 80:
                                        this.personaSetByUser_ = codedInputStream.readBool();
                                        this.bitField0_ |= 128;
                                        break;
                                    case 122:
                                        this.playerName_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 256;
                                        break;
                                    case 160:
                                        this.queryPort_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 512;
                                        break;
                                    case 201:
                                        this.steamidSource_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 1024;
                                        break;
                                    case 250:
                                        this.avatarHash_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 2048;
                                        break;
                                    case 360:
                                        this.lastLogoff_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 4096;
                                        break;
                                    case 368:
                                        this.lastLogon_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                        break;
                                    case 376:
                                        this.lastSeenOnline_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                        break;
                                    case 400:
                                        this.clanRank_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 32768;
                                        break;
                                    case 442:
                                        this.gameName_ = codedInputStream.readBytes();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                        break;
                                    case 449:
                                        this.gameid_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 131072;
                                        break;
                                    case 482:
                                        this.gameDataBlob_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 262144;
                                        break;
                                    case 514:
                                        codedInputStream.readMessage(internalGetClanDataFieldBuilder().getBuilder(), extensionRegistryLite);
                                        this.bitField0_ |= 524288;
                                        break;
                                    case 522:
                                        this.clanTag_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 1048576;
                                        break;
                                    case 570:
                                        KV kv = (KV) codedInputStream.readMessage(KV.parser(), extensionRegistryLite);
                                        RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                                        if (repeatedFieldBuilder == null) {
                                            ensureRichPresenceIsMutable();
                                            this.richPresence_.add(kv);
                                        } else {
                                            repeatedFieldBuilder.addMessage(kv);
                                        }
                                        break;
                                    case 577:
                                        this.broadcastId_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= 4194304;
                                        break;
                                    case 585:
                                        this.gameLobbyId_ = codedInputStream.readFixed64();
                                        this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                                        break;
                                    case 592:
                                        this.watchingBroadcastAccountid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 16777216;
                                        break;
                                    case 600:
                                        this.watchingBroadcastAppid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 33554432;
                                        break;
                                    case 608:
                                        this.watchingBroadcastViewers_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 67108864;
                                        break;
                                    case 618:
                                        this.watchingBroadcastTitle_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 134217728;
                                        break;
                                    case 624:
                                        this.isCommunityBanned_ = codedInputStream.readBool();
                                        this.bitField0_ |= 268435456;
                                        break;
                                    case 632:
                                        this.playerNamePendingReview_ = codedInputStream.readBool();
                                        this.bitField0_ |= 536870912;
                                        break;
                                    case 640:
                                        this.avatarPendingReview_ = codedInputStream.readBool();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                                        break;
                                    case 648:
                                        this.onSteamDeck_ = codedInputStream.readBool();
                                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                                        break;
                                    case 658:
                                        OtherGameData otherGameData = (OtherGameData) codedInputStream.readMessage(OtherGameData.parser(), extensionRegistryLite);
                                        RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder2 = this.otherGameDataBuilder_;
                                        if (repeatedFieldBuilder2 == null) {
                                            ensureOtherGameDataIsMutable();
                                            this.otherGameData_.add(otherGameData);
                                        } else {
                                            repeatedFieldBuilder2.addMessage(otherGameData);
                                        }
                                        break;
                                    case 664:
                                        this.gamingDeviceType_ = codedInputStream.readUInt32();
                                        this.bitField1_ |= 2;
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasFriendid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public long getFriendid() {
                    return this.friendid_;
                }

                public Builder setFriendid(long j) {
                    this.friendid_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearFriendid() {
                    this.bitField0_ &= -2;
                    this.friendid_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasPersonaState() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getPersonaState() {
                    return this.personaState_;
                }

                public Builder setPersonaState(int i) {
                    this.personaState_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearPersonaState() {
                    this.bitField0_ &= -3;
                    this.personaState_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGamePlayedAppId() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getGamePlayedAppId() {
                    return this.gamePlayedAppId_;
                }

                public Builder setGamePlayedAppId(int i) {
                    this.gamePlayedAppId_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearGamePlayedAppId() {
                    this.bitField0_ &= -5;
                    this.gamePlayedAppId_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGameServerIp() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getGameServerIp() {
                    return this.gameServerIp_;
                }

                public Builder setGameServerIp(int i) {
                    this.gameServerIp_ = i;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearGameServerIp() {
                    this.bitField0_ &= -9;
                    this.gameServerIp_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGameServerPort() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getGameServerPort() {
                    return this.gameServerPort_;
                }

                public Builder setGameServerPort(int i) {
                    this.gameServerPort_ = i;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearGameServerPort() {
                    this.bitField0_ &= -17;
                    this.gameServerPort_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasPersonaStateFlags() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getPersonaStateFlags() {
                    return this.personaStateFlags_;
                }

                public Builder setPersonaStateFlags(int i) {
                    this.personaStateFlags_ = i;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearPersonaStateFlags() {
                    this.bitField0_ &= -33;
                    this.personaStateFlags_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasOnlineSessionInstances() {
                    return (this.bitField0_ & 64) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getOnlineSessionInstances() {
                    return this.onlineSessionInstances_;
                }

                public Builder setOnlineSessionInstances(int i) {
                    this.onlineSessionInstances_ = i;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }

                public Builder clearOnlineSessionInstances() {
                    this.bitField0_ &= -65;
                    this.onlineSessionInstances_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasPersonaSetByUser() {
                    return (this.bitField0_ & 128) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean getPersonaSetByUser() {
                    return this.personaSetByUser_;
                }

                public Builder setPersonaSetByUser(boolean z) {
                    this.personaSetByUser_ = z;
                    this.bitField0_ |= 128;
                    onChanged();
                    return this;
                }

                public Builder clearPersonaSetByUser() {
                    this.bitField0_ &= -129;
                    this.personaSetByUser_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasPlayerName() {
                    return (this.bitField0_ & 256) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public String getPlayerName() {
                    Object obj = this.playerName_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.playerName_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ByteString getPlayerNameBytes() {
                    Object obj = this.playerName_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.playerName_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setPlayerName(String str) {
                    str.getClass();
                    this.playerName_ = str;
                    this.bitField0_ |= 256;
                    onChanged();
                    return this;
                }

                public Builder clearPlayerName() {
                    this.playerName_ = Friend.getDefaultInstance().getPlayerName();
                    this.bitField0_ &= -257;
                    onChanged();
                    return this;
                }

                public Builder setPlayerNameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.playerName_ = byteString;
                    this.bitField0_ |= 256;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasQueryPort() {
                    return (this.bitField0_ & 512) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getQueryPort() {
                    return this.queryPort_;
                }

                public Builder setQueryPort(int i) {
                    this.queryPort_ = i;
                    this.bitField0_ |= 512;
                    onChanged();
                    return this;
                }

                public Builder clearQueryPort() {
                    this.bitField0_ &= -513;
                    this.queryPort_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasSteamidSource() {
                    return (this.bitField0_ & 1024) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public long getSteamidSource() {
                    return this.steamidSource_;
                }

                public Builder setSteamidSource(long j) {
                    this.steamidSource_ = j;
                    this.bitField0_ |= 1024;
                    onChanged();
                    return this;
                }

                public Builder clearSteamidSource() {
                    this.bitField0_ &= -1025;
                    this.steamidSource_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasAvatarHash() {
                    return (this.bitField0_ & 2048) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ByteString getAvatarHash() {
                    return this.avatarHash_;
                }

                public Builder setAvatarHash(ByteString byteString) {
                    byteString.getClass();
                    this.avatarHash_ = byteString;
                    this.bitField0_ |= 2048;
                    onChanged();
                    return this;
                }

                public Builder clearAvatarHash() {
                    this.bitField0_ &= -2049;
                    this.avatarHash_ = Friend.getDefaultInstance().getAvatarHash();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasLastLogoff() {
                    return (this.bitField0_ & 4096) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getLastLogoff() {
                    return this.lastLogoff_;
                }

                public Builder setLastLogoff(int i) {
                    this.lastLogoff_ = i;
                    this.bitField0_ |= 4096;
                    onChanged();
                    return this;
                }

                public Builder clearLastLogoff() {
                    this.bitField0_ &= -4097;
                    this.lastLogoff_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasLastLogon() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getLastLogon() {
                    return this.lastLogon_;
                }

                public Builder setLastLogon(int i) {
                    this.lastLogon_ = i;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearLastLogon() {
                    this.bitField0_ &= -8193;
                    this.lastLogon_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasLastSeenOnline() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getLastSeenOnline() {
                    return this.lastSeenOnline_;
                }

                public Builder setLastSeenOnline(int i) {
                    this.lastSeenOnline_ = i;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearLastSeenOnline() {
                    this.bitField0_ &= -16385;
                    this.lastSeenOnline_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasClanRank() {
                    return (this.bitField0_ & 32768) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getClanRank() {
                    return this.clanRank_;
                }

                public Builder setClanRank(int i) {
                    this.clanRank_ = i;
                    this.bitField0_ |= 32768;
                    onChanged();
                    return this;
                }

                public Builder clearClanRank() {
                    this.bitField0_ &= -32769;
                    this.clanRank_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGameName() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public String getGameName() {
                    Object obj = this.gameName_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.gameName_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ByteString getGameNameBytes() {
                    Object obj = this.gameName_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.gameName_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setGameName(String str) {
                    str.getClass();
                    this.gameName_ = str;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearGameName() {
                    this.gameName_ = Friend.getDefaultInstance().getGameName();
                    this.bitField0_ &= -65537;
                    onChanged();
                    return this;
                }

                public Builder setGameNameBytes(ByteString byteString) {
                    byteString.getClass();
                    this.gameName_ = byteString;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGameid() {
                    return (this.bitField0_ & 131072) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public long getGameid() {
                    return this.gameid_;
                }

                public Builder setGameid(long j) {
                    this.gameid_ = j;
                    this.bitField0_ |= 131072;
                    onChanged();
                    return this;
                }

                public Builder clearGameid() {
                    this.bitField0_ &= -131073;
                    this.gameid_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGameDataBlob() {
                    return (this.bitField0_ & 262144) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ByteString getGameDataBlob() {
                    return this.gameDataBlob_;
                }

                public Builder setGameDataBlob(ByteString byteString) {
                    byteString.getClass();
                    this.gameDataBlob_ = byteString;
                    this.bitField0_ |= 262144;
                    onChanged();
                    return this;
                }

                public Builder clearGameDataBlob() {
                    this.bitField0_ &= -262145;
                    this.gameDataBlob_ = Friend.getDefaultInstance().getGameDataBlob();
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasClanData() {
                    return (this.bitField0_ & 524288) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ClanData getClanData() {
                    SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                    if (singleFieldBuilder == null) {
                        ClanData clanData = this.clanData_;
                        return clanData == null ? ClanData.getDefaultInstance() : clanData;
                    }
                    return (ClanData) singleFieldBuilder.getMessage();
                }

                public Builder setClanData(ClanData clanData) {
                    SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                    if (singleFieldBuilder == null) {
                        clanData.getClass();
                        this.clanData_ = clanData;
                    } else {
                        singleFieldBuilder.setMessage(clanData);
                    }
                    this.bitField0_ |= 524288;
                    onChanged();
                    return this;
                }

                public Builder setClanData(ClanData.Builder builder) {
                    SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                    if (singleFieldBuilder == null) {
                        this.clanData_ = builder.build();
                    } else {
                        singleFieldBuilder.setMessage(builder.build());
                    }
                    this.bitField0_ |= 524288;
                    onChanged();
                    return this;
                }

                public Builder mergeClanData(ClanData clanData) {
                    ClanData clanData2;
                    SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                    if (singleFieldBuilder == null) {
                        if ((this.bitField0_ & 524288) != 0 && (clanData2 = this.clanData_) != null && clanData2 != ClanData.getDefaultInstance()) {
                            getClanDataBuilder().mergeFrom(clanData);
                        } else {
                            this.clanData_ = clanData;
                        }
                    } else {
                        singleFieldBuilder.mergeFrom(clanData);
                    }
                    if (this.clanData_ != null) {
                        this.bitField0_ |= 524288;
                        onChanged();
                    }
                    return this;
                }

                public Builder clearClanData() {
                    this.bitField0_ &= -524289;
                    this.clanData_ = null;
                    SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                    if (singleFieldBuilder != null) {
                        singleFieldBuilder.dispose();
                        this.clanDataBuilder_ = null;
                    }
                    onChanged();
                    return this;
                }

                public ClanData.Builder getClanDataBuilder() {
                    this.bitField0_ |= 524288;
                    onChanged();
                    return (ClanData.Builder) internalGetClanDataFieldBuilder().getBuilder();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ClanDataOrBuilder getClanDataOrBuilder() {
                    SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> singleFieldBuilder = this.clanDataBuilder_;
                    if (singleFieldBuilder != null) {
                        return (ClanDataOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                    }
                    ClanData clanData = this.clanData_;
                    return clanData == null ? ClanData.getDefaultInstance() : clanData;
                }

                private SingleFieldBuilder<ClanData, ClanData.Builder, ClanDataOrBuilder> internalGetClanDataFieldBuilder() {
                    if (this.clanDataBuilder_ == null) {
                        this.clanDataBuilder_ = new SingleFieldBuilder<>(getClanData(), getParentForChildren(), isClean());
                        this.clanData_ = null;
                    }
                    return this.clanDataBuilder_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasClanTag() {
                    return (this.bitField0_ & 1048576) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public String getClanTag() {
                    Object obj = this.clanTag_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.clanTag_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ByteString getClanTagBytes() {
                    Object obj = this.clanTag_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.clanTag_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setClanTag(String str) {
                    str.getClass();
                    this.clanTag_ = str;
                    this.bitField0_ |= 1048576;
                    onChanged();
                    return this;
                }

                public Builder clearClanTag() {
                    this.clanTag_ = Friend.getDefaultInstance().getClanTag();
                    this.bitField0_ &= -1048577;
                    onChanged();
                    return this;
                }

                public Builder setClanTagBytes(ByteString byteString) {
                    byteString.getClass();
                    this.clanTag_ = byteString;
                    this.bitField0_ |= 1048576;
                    onChanged();
                    return this;
                }

                private void ensureRichPresenceIsMutable() {
                    if ((this.bitField0_ & 2097152) == 0) {
                        this.richPresence_ = new ArrayList(this.richPresence_);
                        this.bitField0_ |= 2097152;
                    }
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public List<KV> getRichPresenceList() {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return Collections.unmodifiableList(this.richPresence_);
                    }
                    return repeatedFieldBuilder.getMessageList();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getRichPresenceCount() {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.richPresence_.size();
                    }
                    return repeatedFieldBuilder.getCount();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public KV getRichPresence(int i) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.richPresence_.get(i);
                    }
                    return (KV) repeatedFieldBuilder.getMessage(i);
                }

                public Builder setRichPresence(int i, KV kv) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        kv.getClass();
                        ensureRichPresenceIsMutable();
                        this.richPresence_.set(i, kv);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, kv);
                    }
                    return this;
                }

                public Builder setRichPresence(int i, KV.Builder builder) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureRichPresenceIsMutable();
                        this.richPresence_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addRichPresence(KV kv) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        kv.getClass();
                        ensureRichPresenceIsMutable();
                        this.richPresence_.add(kv);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(kv);
                    }
                    return this;
                }

                public Builder addRichPresence(int i, KV kv) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        kv.getClass();
                        ensureRichPresenceIsMutable();
                        this.richPresence_.add(i, kv);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, kv);
                    }
                    return this;
                }

                public Builder addRichPresence(KV.Builder builder) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureRichPresenceIsMutable();
                        this.richPresence_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addRichPresence(int i, KV.Builder builder) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureRichPresenceIsMutable();
                        this.richPresence_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addAllRichPresence(Iterable<? extends KV> iterable) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureRichPresenceIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.richPresence_);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder clearRichPresence() {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.richPresence_ = Collections.emptyList();
                        this.bitField0_ &= -2097153;
                        onChanged();
                    } else {
                        repeatedFieldBuilder.clear();
                    }
                    return this;
                }

                public Builder removeRichPresence(int i) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureRichPresenceIsMutable();
                        this.richPresence_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.remove(i);
                    }
                    return this;
                }

                public KV.Builder getRichPresenceBuilder(int i) {
                    return (KV.Builder) internalGetRichPresenceFieldBuilder().getBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public KVOrBuilder getRichPresenceOrBuilder(int i) {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.richPresence_.get(i);
                    }
                    return (KVOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public List<? extends KVOrBuilder> getRichPresenceOrBuilderList() {
                    RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> repeatedFieldBuilder = this.richPresenceBuilder_;
                    if (repeatedFieldBuilder != null) {
                        return repeatedFieldBuilder.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.richPresence_);
                }

                public KV.Builder addRichPresenceBuilder() {
                    return (KV.Builder) internalGetRichPresenceFieldBuilder().addBuilder(KV.getDefaultInstance());
                }

                public KV.Builder addRichPresenceBuilder(int i) {
                    return (KV.Builder) internalGetRichPresenceFieldBuilder().addBuilder(i, KV.getDefaultInstance());
                }

                public List<KV.Builder> getRichPresenceBuilderList() {
                    return internalGetRichPresenceFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilder<KV, KV.Builder, KVOrBuilder> internalGetRichPresenceFieldBuilder() {
                    if (this.richPresenceBuilder_ == null) {
                        this.richPresenceBuilder_ = new RepeatedFieldBuilder<>(this.richPresence_, (this.bitField0_ & 2097152) != 0, getParentForChildren(), isClean());
                        this.richPresence_ = null;
                    }
                    return this.richPresenceBuilder_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasBroadcastId() {
                    return (this.bitField0_ & 4194304) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public long getBroadcastId() {
                    return this.broadcastId_;
                }

                public Builder setBroadcastId(long j) {
                    this.broadcastId_ = j;
                    this.bitField0_ |= 4194304;
                    onChanged();
                    return this;
                }

                public Builder clearBroadcastId() {
                    this.bitField0_ &= -4194305;
                    this.broadcastId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGameLobbyId() {
                    return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public long getGameLobbyId() {
                    return this.gameLobbyId_;
                }

                public Builder setGameLobbyId(long j) {
                    this.gameLobbyId_ = j;
                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                    onChanged();
                    return this;
                }

                public Builder clearGameLobbyId() {
                    this.bitField0_ &= -8388609;
                    this.gameLobbyId_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasWatchingBroadcastAccountid() {
                    return (this.bitField0_ & 16777216) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getWatchingBroadcastAccountid() {
                    return this.watchingBroadcastAccountid_;
                }

                public Builder setWatchingBroadcastAccountid(int i) {
                    this.watchingBroadcastAccountid_ = i;
                    this.bitField0_ |= 16777216;
                    onChanged();
                    return this;
                }

                public Builder clearWatchingBroadcastAccountid() {
                    this.bitField0_ &= -16777217;
                    this.watchingBroadcastAccountid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasWatchingBroadcastAppid() {
                    return (this.bitField0_ & 33554432) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getWatchingBroadcastAppid() {
                    return this.watchingBroadcastAppid_;
                }

                public Builder setWatchingBroadcastAppid(int i) {
                    this.watchingBroadcastAppid_ = i;
                    this.bitField0_ |= 33554432;
                    onChanged();
                    return this;
                }

                public Builder clearWatchingBroadcastAppid() {
                    this.bitField0_ &= -33554433;
                    this.watchingBroadcastAppid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasWatchingBroadcastViewers() {
                    return (this.bitField0_ & 67108864) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getWatchingBroadcastViewers() {
                    return this.watchingBroadcastViewers_;
                }

                public Builder setWatchingBroadcastViewers(int i) {
                    this.watchingBroadcastViewers_ = i;
                    this.bitField0_ |= 67108864;
                    onChanged();
                    return this;
                }

                public Builder clearWatchingBroadcastViewers() {
                    this.bitField0_ &= -67108865;
                    this.watchingBroadcastViewers_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasWatchingBroadcastTitle() {
                    return (this.bitField0_ & 134217728) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public String getWatchingBroadcastTitle() {
                    Object obj = this.watchingBroadcastTitle_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.watchingBroadcastTitle_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public ByteString getWatchingBroadcastTitleBytes() {
                    Object obj = this.watchingBroadcastTitle_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.watchingBroadcastTitle_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setWatchingBroadcastTitle(String str) {
                    str.getClass();
                    this.watchingBroadcastTitle_ = str;
                    this.bitField0_ |= 134217728;
                    onChanged();
                    return this;
                }

                public Builder clearWatchingBroadcastTitle() {
                    this.watchingBroadcastTitle_ = Friend.getDefaultInstance().getWatchingBroadcastTitle();
                    this.bitField0_ &= -134217729;
                    onChanged();
                    return this;
                }

                public Builder setWatchingBroadcastTitleBytes(ByteString byteString) {
                    byteString.getClass();
                    this.watchingBroadcastTitle_ = byteString;
                    this.bitField0_ |= 134217728;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasIsCommunityBanned() {
                    return (this.bitField0_ & 268435456) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean getIsCommunityBanned() {
                    return this.isCommunityBanned_;
                }

                public Builder setIsCommunityBanned(boolean z) {
                    this.isCommunityBanned_ = z;
                    this.bitField0_ |= 268435456;
                    onChanged();
                    return this;
                }

                public Builder clearIsCommunityBanned() {
                    this.bitField0_ &= -268435457;
                    this.isCommunityBanned_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasPlayerNamePendingReview() {
                    return (this.bitField0_ & 536870912) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean getPlayerNamePendingReview() {
                    return this.playerNamePendingReview_;
                }

                public Builder setPlayerNamePendingReview(boolean z) {
                    this.playerNamePendingReview_ = z;
                    this.bitField0_ |= 536870912;
                    onChanged();
                    return this;
                }

                public Builder clearPlayerNamePendingReview() {
                    this.bitField0_ &= -536870913;
                    this.playerNamePendingReview_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasAvatarPendingReview() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean getAvatarPendingReview() {
                    return this.avatarPendingReview_;
                }

                public Builder setAvatarPendingReview(boolean z) {
                    this.avatarPendingReview_ = z;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearAvatarPendingReview() {
                    this.bitField0_ &= -1073741825;
                    this.avatarPendingReview_ = false;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasOnSteamDeck() {
                    return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean getOnSteamDeck() {
                    return this.onSteamDeck_;
                }

                public Builder setOnSteamDeck(boolean z) {
                    this.onSteamDeck_ = z;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                    onChanged();
                    return this;
                }

                public Builder clearOnSteamDeck() {
                    this.bitField0_ &= Integer.MAX_VALUE;
                    this.onSteamDeck_ = false;
                    onChanged();
                    return this;
                }

                private void ensureOtherGameDataIsMutable() {
                    if ((this.bitField1_ & 1) == 0) {
                        this.otherGameData_ = new ArrayList(this.otherGameData_);
                        this.bitField1_ |= 1;
                    }
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public List<OtherGameData> getOtherGameDataList() {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return Collections.unmodifiableList(this.otherGameData_);
                    }
                    return repeatedFieldBuilder.getMessageList();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getOtherGameDataCount() {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.otherGameData_.size();
                    }
                    return repeatedFieldBuilder.getCount();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public OtherGameData getOtherGameData(int i) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.otherGameData_.get(i);
                    }
                    return (OtherGameData) repeatedFieldBuilder.getMessage(i);
                }

                public Builder setOtherGameData(int i, OtherGameData otherGameData) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        otherGameData.getClass();
                        ensureOtherGameDataIsMutable();
                        this.otherGameData_.set(i, otherGameData);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, otherGameData);
                    }
                    return this;
                }

                public Builder setOtherGameData(int i, OtherGameData.Builder builder) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureOtherGameDataIsMutable();
                        this.otherGameData_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addOtherGameData(OtherGameData otherGameData) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        otherGameData.getClass();
                        ensureOtherGameDataIsMutable();
                        this.otherGameData_.add(otherGameData);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(otherGameData);
                    }
                    return this;
                }

                public Builder addOtherGameData(int i, OtherGameData otherGameData) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        otherGameData.getClass();
                        ensureOtherGameDataIsMutable();
                        this.otherGameData_.add(i, otherGameData);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, otherGameData);
                    }
                    return this;
                }

                public Builder addOtherGameData(OtherGameData.Builder builder) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureOtherGameDataIsMutable();
                        this.otherGameData_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addOtherGameData(int i, OtherGameData.Builder builder) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureOtherGameDataIsMutable();
                        this.otherGameData_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addAllOtherGameData(Iterable<? extends OtherGameData> iterable) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureOtherGameDataIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.otherGameData_);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder clearOtherGameData() {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.otherGameData_ = Collections.emptyList();
                        this.bitField1_ &= -2;
                        onChanged();
                    } else {
                        repeatedFieldBuilder.clear();
                    }
                    return this;
                }

                public Builder removeOtherGameData(int i) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureOtherGameDataIsMutable();
                        this.otherGameData_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.remove(i);
                    }
                    return this;
                }

                public OtherGameData.Builder getOtherGameDataBuilder(int i) {
                    return (OtherGameData.Builder) internalGetOtherGameDataFieldBuilder().getBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public OtherGameDataOrBuilder getOtherGameDataOrBuilder(int i) {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.otherGameData_.get(i);
                    }
                    return (OtherGameDataOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public List<? extends OtherGameDataOrBuilder> getOtherGameDataOrBuilderList() {
                    RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> repeatedFieldBuilder = this.otherGameDataBuilder_;
                    if (repeatedFieldBuilder != null) {
                        return repeatedFieldBuilder.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.otherGameData_);
                }

                public OtherGameData.Builder addOtherGameDataBuilder() {
                    return (OtherGameData.Builder) internalGetOtherGameDataFieldBuilder().addBuilder(OtherGameData.getDefaultInstance());
                }

                public OtherGameData.Builder addOtherGameDataBuilder(int i) {
                    return (OtherGameData.Builder) internalGetOtherGameDataFieldBuilder().addBuilder(i, OtherGameData.getDefaultInstance());
                }

                public List<OtherGameData.Builder> getOtherGameDataBuilderList() {
                    return internalGetOtherGameDataFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilder<OtherGameData, OtherGameData.Builder, OtherGameDataOrBuilder> internalGetOtherGameDataFieldBuilder() {
                    if (this.otherGameDataBuilder_ == null) {
                        this.otherGameDataBuilder_ = new RepeatedFieldBuilder<>(this.otherGameData_, (this.bitField1_ & 1) != 0, getParentForChildren(), isClean());
                        this.otherGameData_ = null;
                    }
                    return this.otherGameDataBuilder_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public boolean hasGamingDeviceType() {
                    return (this.bitField1_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaState.FriendOrBuilder
                public int getGamingDeviceType() {
                    return this.gamingDeviceType_;
                }

                public Builder setGamingDeviceType(int i) {
                    this.gamingDeviceType_ = i;
                    this.bitField1_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearGamingDeviceType() {
                    this.bitField1_ &= -3;
                    this.gamingDeviceType_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static Friend getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Friend> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<Friend> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Friend getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
        public boolean hasStatusFlags() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
        public int getStatusFlags() {
            return this.statusFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
        public List<Friend> getFriendsList() {
            return this.friends_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
        public List<? extends FriendOrBuilder> getFriendsOrBuilderList() {
            return this.friends_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
        public int getFriendsCount() {
            return this.friends_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
        public Friend getFriends(int i) {
            return this.friends_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
        public FriendOrBuilder getFriendsOrBuilder(int i) {
            return this.friends_.get(i);
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
                codedOutputStream.writeUInt32(1, this.statusFlags_);
            }
            for (int i = 0; i < this.friends_.size(); i++) {
                codedOutputStream.writeMessage(2, this.friends_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.statusFlags_) : 0;
            for (int i2 = 0; i2 < this.friends_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(2, this.friends_.get(i2));
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
            if (!(obj instanceof CMsgClientPersonaState)) {
                return super.equals(obj);
            }
            CMsgClientPersonaState cMsgClientPersonaState = (CMsgClientPersonaState) obj;
            if (hasStatusFlags() != cMsgClientPersonaState.hasStatusFlags()) {
                return false;
            }
            return (!hasStatusFlags() || getStatusFlags() == cMsgClientPersonaState.getStatusFlags()) && getFriendsList().equals(cMsgClientPersonaState.getFriendsList()) && getUnknownFields().equals(cMsgClientPersonaState.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasStatusFlags()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getStatusFlags();
            }
            if (getFriendsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFriendsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientPersonaState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientPersonaState parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientPersonaState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientPersonaState parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientPersonaState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientPersonaState parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientPersonaState parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPersonaState) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPersonaState parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPersonaState) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPersonaState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientPersonaState) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientPersonaState parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPersonaState) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientPersonaState parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientPersonaState) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientPersonaState parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientPersonaState) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientPersonaState cMsgClientPersonaState) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientPersonaState);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientPersonaStateOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> friendsBuilder_;
            private List<Friend> friends_;
            private int statusFlags_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientPersonaState.class, Builder.class);
            }

            private Builder() {
                this.friends_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.friends_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.statusFlags_ = 0;
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.friends_ = Collections.emptyList();
                } else {
                    this.friends_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientPersonaState_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientPersonaState getDefaultInstanceForType() {
                return CMsgClientPersonaState.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPersonaState build() {
                CMsgClientPersonaState cMsgClientPersonaStateBuildPartial = buildPartial();
                if (cMsgClientPersonaStateBuildPartial.isInitialized()) {
                    return cMsgClientPersonaStateBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientPersonaStateBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientPersonaState buildPartial() {
                CMsgClientPersonaState cMsgClientPersonaState = new CMsgClientPersonaState(this);
                buildPartialRepeatedFields(cMsgClientPersonaState);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientPersonaState);
                }
                onBuilt();
                return cMsgClientPersonaState;
            }

            private void buildPartialRepeatedFields(CMsgClientPersonaState cMsgClientPersonaState) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.friends_ = Collections.unmodifiableList(this.friends_);
                        this.bitField0_ &= -3;
                    }
                    cMsgClientPersonaState.friends_ = this.friends_;
                    return;
                }
                cMsgClientPersonaState.friends_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CMsgClientPersonaState cMsgClientPersonaState) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientPersonaState.statusFlags_ = this.statusFlags_;
                } else {
                    i = 0;
                }
                cMsgClientPersonaState.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientPersonaState) {
                    return mergeFrom((CMsgClientPersonaState) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientPersonaState cMsgClientPersonaState) {
                if (cMsgClientPersonaState == CMsgClientPersonaState.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientPersonaState.hasStatusFlags()) {
                    setStatusFlags(cMsgClientPersonaState.getStatusFlags());
                }
                if (this.friendsBuilder_ == null) {
                    if (!cMsgClientPersonaState.friends_.isEmpty()) {
                        if (this.friends_.isEmpty()) {
                            this.friends_ = cMsgClientPersonaState.friends_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureFriendsIsMutable();
                            this.friends_.addAll(cMsgClientPersonaState.friends_);
                        }
                        onChanged();
                    }
                } else if (!cMsgClientPersonaState.friends_.isEmpty()) {
                    if (this.friendsBuilder_.isEmpty()) {
                        this.friendsBuilder_.dispose();
                        this.friendsBuilder_ = null;
                        this.friends_ = cMsgClientPersonaState.friends_;
                        this.bitField0_ &= -3;
                        this.friendsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetFriendsFieldBuilder() : null;
                    } else {
                        this.friendsBuilder_.addAllMessages(cMsgClientPersonaState.friends_);
                    }
                }
                mergeUnknownFields(cMsgClientPersonaState.getUnknownFields());
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
                                    this.statusFlags_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    Friend friend = (Friend) codedInputStream.readMessage(Friend.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureFriendsIsMutable();
                                        this.friends_.add(friend);
                                    } else {
                                        repeatedFieldBuilder.addMessage(friend);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
            public boolean hasStatusFlags() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
            public int getStatusFlags() {
                return this.statusFlags_;
            }

            public Builder setStatusFlags(int i) {
                this.statusFlags_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearStatusFlags() {
                this.bitField0_ &= -2;
                this.statusFlags_ = 0;
                onChanged();
                return this;
            }

            private void ensureFriendsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.friends_ = new ArrayList(this.friends_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
            public List<Friend> getFriendsList() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.friends_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
            public int getFriendsCount() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.friends_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
            public Friend getFriends(int i) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.friends_.get(i);
                }
                return (Friend) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setFriends(int i, Friend friend) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friend.getClass();
                    ensureFriendsIsMutable();
                    this.friends_.set(i, friend);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, friend);
                }
                return this;
            }

            public Builder setFriends(int i, Friend.Builder builder) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addFriends(Friend friend) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friend.getClass();
                    ensureFriendsIsMutable();
                    this.friends_.add(friend);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(friend);
                }
                return this;
            }

            public Builder addFriends(int i, Friend friend) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friend.getClass();
                    ensureFriendsIsMutable();
                    this.friends_.add(i, friend);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, friend);
                }
                return this;
            }

            public Builder addFriends(Friend.Builder builder) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addFriends(int i, Friend.Builder builder) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllFriends(Iterable<? extends Friend> iterable) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.friends_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearFriends() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.friends_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeFriends(int i) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFriendsIsMutable();
                    this.friends_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public Friend.Builder getFriendsBuilder(int i) {
                return (Friend.Builder) internalGetFriendsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
            public FriendOrBuilder getFriendsOrBuilder(int i) {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.friends_.get(i);
                }
                return (FriendOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientPersonaStateOrBuilder
            public List<? extends FriendOrBuilder> getFriendsOrBuilderList() {
                RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> repeatedFieldBuilder = this.friendsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.friends_);
            }

            public Friend.Builder addFriendsBuilder() {
                return (Friend.Builder) internalGetFriendsFieldBuilder().addBuilder(Friend.getDefaultInstance());
            }

            public Friend.Builder addFriendsBuilder(int i) {
                return (Friend.Builder) internalGetFriendsFieldBuilder().addBuilder(i, Friend.getDefaultInstance());
            }

            public List<Friend.Builder> getFriendsBuilderList() {
                return internalGetFriendsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Friend, Friend.Builder, FriendOrBuilder> internalGetFriendsFieldBuilder() {
                if (this.friendsBuilder_ == null) {
                    this.friendsBuilder_ = new RepeatedFieldBuilder<>(this.friends_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.friends_ = null;
                }
                return this.friendsBuilder_;
            }
        }

        public static CMsgClientPersonaState getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientPersonaState> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientPersonaState> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientPersonaState getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientFriendProfileInfo extends GeneratedMessage implements CMsgClientFriendProfileInfoOrBuilder {
        private static final CMsgClientFriendProfileInfo DEFAULT_INSTANCE;
        private static final Parser<CMsgClientFriendProfileInfo> PARSER;
        public static final int STEAMID_FRIEND_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamidFriend_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientFriendProfileInfo.class.getName());
            DEFAULT_INSTANCE = new CMsgClientFriendProfileInfo();
            PARSER = new AbstractParser<CMsgClientFriendProfileInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfo.1
                @Override // com.google.protobuf.Parser
                public CMsgClientFriendProfileInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientFriendProfileInfo.newBuilder();
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

        private CMsgClientFriendProfileInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamidFriend_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientFriendProfileInfo() {
            this.steamidFriend_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfo_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendProfileInfo.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoOrBuilder
        public boolean hasSteamidFriend() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoOrBuilder
        public long getSteamidFriend() {
            return this.steamidFriend_;
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
                codedOutputStream.writeFixed64(1, this.steamidFriend_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamidFriend_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientFriendProfileInfo)) {
                return super.equals(obj);
            }
            CMsgClientFriendProfileInfo cMsgClientFriendProfileInfo = (CMsgClientFriendProfileInfo) obj;
            if (hasSteamidFriend() != cMsgClientFriendProfileInfo.hasSteamidFriend()) {
                return false;
            }
            return (!hasSteamidFriend() || getSteamidFriend() == cMsgClientFriendProfileInfo.getSteamidFriend()) && getUnknownFields().equals(cMsgClientFriendProfileInfo.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSteamidFriend()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamidFriend());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientFriendProfileInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientFriendProfileInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientFriendProfileInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientFriendProfileInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfo parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendProfileInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendProfileInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendProfileInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendProfileInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendProfileInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendProfileInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientFriendProfileInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientFriendProfileInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendProfileInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientFriendProfileInfo cMsgClientFriendProfileInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientFriendProfileInfo);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientFriendProfileInfoOrBuilder {
            private int bitField0_;
            private long steamidFriend_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendProfileInfo.class, Builder.class);
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
                this.steamidFriend_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfo_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientFriendProfileInfo getDefaultInstanceForType() {
                return CMsgClientFriendProfileInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendProfileInfo build() {
                CMsgClientFriendProfileInfo cMsgClientFriendProfileInfoBuildPartial = buildPartial();
                if (cMsgClientFriendProfileInfoBuildPartial.isInitialized()) {
                    return cMsgClientFriendProfileInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientFriendProfileInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendProfileInfo buildPartial() {
                CMsgClientFriendProfileInfo cMsgClientFriendProfileInfo = new CMsgClientFriendProfileInfo(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientFriendProfileInfo);
                }
                onBuilt();
                return cMsgClientFriendProfileInfo;
            }

            private void buildPartial0(CMsgClientFriendProfileInfo cMsgClientFriendProfileInfo) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientFriendProfileInfo.steamidFriend_ = this.steamidFriend_;
                } else {
                    i = 0;
                }
                cMsgClientFriendProfileInfo.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientFriendProfileInfo) {
                    return mergeFrom((CMsgClientFriendProfileInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientFriendProfileInfo cMsgClientFriendProfileInfo) {
                if (cMsgClientFriendProfileInfo == CMsgClientFriendProfileInfo.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientFriendProfileInfo.hasSteamidFriend()) {
                    setSteamidFriend(cMsgClientFriendProfileInfo.getSteamidFriend());
                }
                mergeUnknownFields(cMsgClientFriendProfileInfo.getUnknownFields());
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
                                    this.steamidFriend_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoOrBuilder
            public boolean hasSteamidFriend() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoOrBuilder
            public long getSteamidFriend() {
                return this.steamidFriend_;
            }

            public Builder setSteamidFriend(long j) {
                this.steamidFriend_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamidFriend() {
                this.bitField0_ &= -2;
                this.steamidFriend_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientFriendProfileInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientFriendProfileInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientFriendProfileInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientFriendProfileInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientFriendProfileInfoResponse extends GeneratedMessage implements CMsgClientFriendProfileInfoResponseOrBuilder {
        public static final int CITY_NAME_FIELD_NUMBER = 5;
        public static final int COUNTRY_NAME_FIELD_NUMBER = 7;
        private static final CMsgClientFriendProfileInfoResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int HEADLINE_FIELD_NUMBER = 8;
        private static final Parser<CMsgClientFriendProfileInfoResponse> PARSER;
        public static final int REAL_NAME_FIELD_NUMBER = 4;
        public static final int STATE_NAME_FIELD_NUMBER = 6;
        public static final int STEAMID_FRIEND_FIELD_NUMBER = 2;
        public static final int SUMMARY_FIELD_NUMBER = 9;
        public static final int TIME_CREATED_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object cityName_;
        private volatile Object countryName_;
        private int eresult_;
        private volatile Object headline_;
        private byte memoizedIsInitialized;
        private volatile Object realName_;
        private volatile Object stateName_;
        private long steamidFriend_;
        private volatile Object summary_;
        private int timeCreated_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientFriendProfileInfoResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientFriendProfileInfoResponse();
            PARSER = new AbstractParser<CMsgClientFriendProfileInfoResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientFriendProfileInfoResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientFriendProfileInfoResponse.newBuilder();
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

        private CMsgClientFriendProfileInfoResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.steamidFriend_ = 0L;
            this.timeCreated_ = 0;
            this.realName_ = "";
            this.cityName_ = "";
            this.stateName_ = "";
            this.countryName_ = "";
            this.headline_ = "";
            this.summary_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientFriendProfileInfoResponse() {
            this.eresult_ = 2;
            this.steamidFriend_ = 0L;
            this.timeCreated_ = 0;
            this.realName_ = "";
            this.cityName_ = "";
            this.stateName_ = "";
            this.countryName_ = "";
            this.headline_ = "";
            this.summary_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.realName_ = "";
            this.cityName_ = "";
            this.stateName_ = "";
            this.countryName_ = "";
            this.headline_ = "";
            this.summary_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfoResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendProfileInfoResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasSteamidFriend() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public long getSteamidFriend() {
            return this.steamidFriend_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasTimeCreated() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public int getTimeCreated() {
            return this.timeCreated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasRealName() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public String getRealName() {
            Object obj = this.realName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.realName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public ByteString getRealNameBytes() {
            Object obj = this.realName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.realName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasCityName() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public String getCityName() {
            Object obj = this.cityName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.cityName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public ByteString getCityNameBytes() {
            Object obj = this.cityName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cityName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasStateName() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public String getStateName() {
            Object obj = this.stateName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.stateName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public ByteString getStateNameBytes() {
            Object obj = this.stateName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.stateName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasCountryName() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public String getCountryName() {
            Object obj = this.countryName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.countryName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public ByteString getCountryNameBytes() {
            Object obj = this.countryName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.countryName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasHeadline() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public String getHeadline() {
            Object obj = this.headline_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.headline_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public ByteString getHeadlineBytes() {
            Object obj = this.headline_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.headline_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public boolean hasSummary() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public String getSummary() {
            Object obj = this.summary_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.summary_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
        public ByteString getSummaryBytes() {
            Object obj = this.summary_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.summary_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamidFriend_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.timeCreated_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.realName_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.cityName_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.stateName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 7, this.countryName_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.headline_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 9, this.summary_);
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
                iComputeInt32Size += CodedOutputStream.computeFixed64Size(2, this.steamidFriend_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(3, this.timeCreated_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(4, this.realName_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(5, this.cityName_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(6, this.stateName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(7, this.countryName_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(8, this.headline_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(9, this.summary_);
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
            if (!(obj instanceof CMsgClientFriendProfileInfoResponse)) {
                return super.equals(obj);
            }
            CMsgClientFriendProfileInfoResponse cMsgClientFriendProfileInfoResponse = (CMsgClientFriendProfileInfoResponse) obj;
            if (hasEresult() != cMsgClientFriendProfileInfoResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientFriendProfileInfoResponse.getEresult()) || hasSteamidFriend() != cMsgClientFriendProfileInfoResponse.hasSteamidFriend()) {
                return false;
            }
            if ((hasSteamidFriend() && getSteamidFriend() != cMsgClientFriendProfileInfoResponse.getSteamidFriend()) || hasTimeCreated() != cMsgClientFriendProfileInfoResponse.hasTimeCreated()) {
                return false;
            }
            if ((hasTimeCreated() && getTimeCreated() != cMsgClientFriendProfileInfoResponse.getTimeCreated()) || hasRealName() != cMsgClientFriendProfileInfoResponse.hasRealName()) {
                return false;
            }
            if ((hasRealName() && !getRealName().equals(cMsgClientFriendProfileInfoResponse.getRealName())) || hasCityName() != cMsgClientFriendProfileInfoResponse.hasCityName()) {
                return false;
            }
            if ((hasCityName() && !getCityName().equals(cMsgClientFriendProfileInfoResponse.getCityName())) || hasStateName() != cMsgClientFriendProfileInfoResponse.hasStateName()) {
                return false;
            }
            if ((hasStateName() && !getStateName().equals(cMsgClientFriendProfileInfoResponse.getStateName())) || hasCountryName() != cMsgClientFriendProfileInfoResponse.hasCountryName()) {
                return false;
            }
            if ((hasCountryName() && !getCountryName().equals(cMsgClientFriendProfileInfoResponse.getCountryName())) || hasHeadline() != cMsgClientFriendProfileInfoResponse.hasHeadline()) {
                return false;
            }
            if ((!hasHeadline() || getHeadline().equals(cMsgClientFriendProfileInfoResponse.getHeadline())) && hasSummary() == cMsgClientFriendProfileInfoResponse.hasSummary()) {
                return (!hasSummary() || getSummary().equals(cMsgClientFriendProfileInfoResponse.getSummary())) && getUnknownFields().equals(cMsgClientFriendProfileInfoResponse.getUnknownFields());
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
            if (hasSteamidFriend()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamidFriend());
            }
            if (hasTimeCreated()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTimeCreated();
            }
            if (hasRealName()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getRealName().hashCode();
            }
            if (hasCityName()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getCityName().hashCode();
            }
            if (hasStateName()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getStateName().hashCode();
            }
            if (hasCountryName()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getCountryName().hashCode();
            }
            if (hasHeadline()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getHeadline().hashCode();
            }
            if (hasSummary()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getSummary().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendProfileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendProfileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientFriendProfileInfoResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientFriendProfileInfoResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendProfileInfoResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientFriendProfileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientFriendProfileInfoResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientFriendProfileInfoResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientFriendProfileInfoResponse cMsgClientFriendProfileInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientFriendProfileInfoResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientFriendProfileInfoResponseOrBuilder {
            private int bitField0_;
            private Object cityName_;
            private Object countryName_;
            private int eresult_;
            private Object headline_;
            private Object realName_;
            private Object stateName_;
            private long steamidFriend_;
            private Object summary_;
            private int timeCreated_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfoResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientFriendProfileInfoResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.realName_ = "";
                this.cityName_ = "";
                this.stateName_ = "";
                this.countryName_ = "";
                this.headline_ = "";
                this.summary_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.realName_ = "";
                this.cityName_ = "";
                this.stateName_ = "";
                this.countryName_ = "";
                this.headline_ = "";
                this.summary_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.steamidFriend_ = 0L;
                this.timeCreated_ = 0;
                this.realName_ = "";
                this.cityName_ = "";
                this.stateName_ = "";
                this.countryName_ = "";
                this.headline_ = "";
                this.summary_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverFriends.internal_static_CMsgClientFriendProfileInfoResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientFriendProfileInfoResponse getDefaultInstanceForType() {
                return CMsgClientFriendProfileInfoResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendProfileInfoResponse build() {
                CMsgClientFriendProfileInfoResponse cMsgClientFriendProfileInfoResponseBuildPartial = buildPartial();
                if (cMsgClientFriendProfileInfoResponseBuildPartial.isInitialized()) {
                    return cMsgClientFriendProfileInfoResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientFriendProfileInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientFriendProfileInfoResponse buildPartial() {
                CMsgClientFriendProfileInfoResponse cMsgClientFriendProfileInfoResponse = new CMsgClientFriendProfileInfoResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientFriendProfileInfoResponse);
                }
                onBuilt();
                return cMsgClientFriendProfileInfoResponse;
            }

            private void buildPartial0(CMsgClientFriendProfileInfoResponse cMsgClientFriendProfileInfoResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientFriendProfileInfoResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientFriendProfileInfoResponse.steamidFriend_ = this.steamidFriend_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientFriendProfileInfoResponse.timeCreated_ = this.timeCreated_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientFriendProfileInfoResponse.realName_ = this.realName_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientFriendProfileInfoResponse.cityName_ = this.cityName_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientFriendProfileInfoResponse.stateName_ = this.stateName_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientFriendProfileInfoResponse.countryName_ = this.countryName_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientFriendProfileInfoResponse.headline_ = this.headline_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgClientFriendProfileInfoResponse.summary_ = this.summary_;
                    i |= 256;
                }
                cMsgClientFriendProfileInfoResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientFriendProfileInfoResponse) {
                    return mergeFrom((CMsgClientFriendProfileInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientFriendProfileInfoResponse cMsgClientFriendProfileInfoResponse) {
                if (cMsgClientFriendProfileInfoResponse == CMsgClientFriendProfileInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientFriendProfileInfoResponse.hasEresult()) {
                    setEresult(cMsgClientFriendProfileInfoResponse.getEresult());
                }
                if (cMsgClientFriendProfileInfoResponse.hasSteamidFriend()) {
                    setSteamidFriend(cMsgClientFriendProfileInfoResponse.getSteamidFriend());
                }
                if (cMsgClientFriendProfileInfoResponse.hasTimeCreated()) {
                    setTimeCreated(cMsgClientFriendProfileInfoResponse.getTimeCreated());
                }
                if (cMsgClientFriendProfileInfoResponse.hasRealName()) {
                    this.realName_ = cMsgClientFriendProfileInfoResponse.realName_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cMsgClientFriendProfileInfoResponse.hasCityName()) {
                    this.cityName_ = cMsgClientFriendProfileInfoResponse.cityName_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (cMsgClientFriendProfileInfoResponse.hasStateName()) {
                    this.stateName_ = cMsgClientFriendProfileInfoResponse.stateName_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cMsgClientFriendProfileInfoResponse.hasCountryName()) {
                    this.countryName_ = cMsgClientFriendProfileInfoResponse.countryName_;
                    this.bitField0_ |= 64;
                    onChanged();
                }
                if (cMsgClientFriendProfileInfoResponse.hasHeadline()) {
                    this.headline_ = cMsgClientFriendProfileInfoResponse.headline_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                if (cMsgClientFriendProfileInfoResponse.hasSummary()) {
                    this.summary_ = cMsgClientFriendProfileInfoResponse.summary_;
                    this.bitField0_ |= 256;
                    onChanged();
                }
                mergeUnknownFields(cMsgClientFriendProfileInfoResponse.getUnknownFields());
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
                                } else if (tag == 17) {
                                    this.steamidFriend_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.timeCreated_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.realName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.cityName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 50) {
                                    this.stateName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                } else if (tag == 58) {
                                    this.countryName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                } else if (tag == 66) {
                                    this.headline_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                } else if (tag == 74) {
                                    this.summary_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasSteamidFriend() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public long getSteamidFriend() {
                return this.steamidFriend_;
            }

            public Builder setSteamidFriend(long j) {
                this.steamidFriend_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamidFriend() {
                this.bitField0_ &= -3;
                this.steamidFriend_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasTimeCreated() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public int getTimeCreated() {
                return this.timeCreated_;
            }

            public Builder setTimeCreated(int i) {
                this.timeCreated_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearTimeCreated() {
                this.bitField0_ &= -5;
                this.timeCreated_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasRealName() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public String getRealName() {
                Object obj = this.realName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.realName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public ByteString getRealNameBytes() {
                Object obj = this.realName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.realName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRealName(String str) {
                str.getClass();
                this.realName_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearRealName() {
                this.realName_ = CMsgClientFriendProfileInfoResponse.getDefaultInstance().getRealName();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setRealNameBytes(ByteString byteString) {
                byteString.getClass();
                this.realName_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasCityName() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public String getCityName() {
                Object obj = this.cityName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.cityName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public ByteString getCityNameBytes() {
                Object obj = this.cityName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.cityName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCityName(String str) {
                str.getClass();
                this.cityName_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearCityName() {
                this.cityName_ = CMsgClientFriendProfileInfoResponse.getDefaultInstance().getCityName();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setCityNameBytes(ByteString byteString) {
                byteString.getClass();
                this.cityName_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasStateName() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public String getStateName() {
                Object obj = this.stateName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.stateName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public ByteString getStateNameBytes() {
                Object obj = this.stateName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.stateName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setStateName(String str) {
                str.getClass();
                this.stateName_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearStateName() {
                this.stateName_ = CMsgClientFriendProfileInfoResponse.getDefaultInstance().getStateName();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setStateNameBytes(ByteString byteString) {
                byteString.getClass();
                this.stateName_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasCountryName() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public String getCountryName() {
                Object obj = this.countryName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.countryName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public ByteString getCountryNameBytes() {
                Object obj = this.countryName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.countryName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCountryName(String str) {
                str.getClass();
                this.countryName_ = str;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearCountryName() {
                this.countryName_ = CMsgClientFriendProfileInfoResponse.getDefaultInstance().getCountryName();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public Builder setCountryNameBytes(ByteString byteString) {
                byteString.getClass();
                this.countryName_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasHeadline() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public String getHeadline() {
                Object obj = this.headline_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.headline_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public ByteString getHeadlineBytes() {
                Object obj = this.headline_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.headline_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHeadline(String str) {
                str.getClass();
                this.headline_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearHeadline() {
                this.headline_ = CMsgClientFriendProfileInfoResponse.getDefaultInstance().getHeadline();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setHeadlineBytes(ByteString byteString) {
                byteString.getClass();
                this.headline_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public boolean hasSummary() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public String getSummary() {
                Object obj = this.summary_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.summary_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponseOrBuilder
            public ByteString getSummaryBytes() {
                Object obj = this.summary_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.summary_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSummary(String str) {
                str.getClass();
                this.summary_ = str;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearSummary() {
                this.summary_ = CMsgClientFriendProfileInfoResponse.getDefaultInstance().getSummary();
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public Builder setSummaryBytes(ByteString byteString) {
                byteString.getClass();
                this.summary_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }
        }

        public static CMsgClientFriendProfileInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientFriendProfileInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientFriendProfileInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientFriendProfileInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
