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
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesFriendmessagesSteamclient {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_AckMessage_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_AckMessage_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_GetRecentMessages_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_GetRecentMessages_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_GetRecentMessages_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_GetRecentMessages_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_IncomingMessage_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_IncomingMessage_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_IsInFriendsUIBeta_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_IsInFriendsUIBeta_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_IsInFriendsUIBeta_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_IsInFriendsUIBeta_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_MessageReaction_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_MessageReaction_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_SendMessage_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_SendMessage_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_SendMessage_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_SendMessage_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_UpdateMessageReaction_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_UpdateMessageReaction_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendMessages_UpdateMessageReaction_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendMessages_UpdateMessageReaction_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendsMessages_GetActiveMessageSessions_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendsMessages_GetActiveMessageSessions_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CFriendsMessages_GetActiveMessageSessions_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CFriendsMessages_GetActiveMessageSessions_Response_fieldAccessorTable;

    public interface CFriendMessages_AckMessage_NotificationOrBuilder extends MessageOrBuilder {
        long getSteamidPartner();

        int getTimestamp();

        boolean hasSteamidPartner();

        boolean hasTimestamp();
    }

    public interface CFriendMessages_GetRecentMessages_RequestOrBuilder extends MessageOrBuilder {
        boolean getBbcodeFormat();

        int getCount();

        boolean getMostRecentConversation();

        int getOrdinalLast();

        int getRtime32StartTime();

        int getStartOrdinal();

        long getSteamid1();

        long getSteamid2();

        int getTimeLast();

        boolean hasBbcodeFormat();

        boolean hasCount();

        boolean hasMostRecentConversation();

        boolean hasOrdinalLast();

        boolean hasRtime32StartTime();

        boolean hasStartOrdinal();

        boolean hasSteamid1();

        boolean hasSteamid2();

        boolean hasTimeLast();
    }

    public interface CFriendMessages_GetRecentMessages_ResponseOrBuilder extends MessageOrBuilder {
        CFriendMessages_GetRecentMessages_Response.FriendMessage getMessages(int i);

        int getMessagesCount();

        List<CFriendMessages_GetRecentMessages_Response.FriendMessage> getMessagesList();

        CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder getMessagesOrBuilder(int i);

        List<? extends CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder> getMessagesOrBuilderList();

        boolean getMoreAvailable();

        boolean hasMoreAvailable();
    }

    public interface CFriendMessages_IncomingMessage_NotificationOrBuilder extends MessageOrBuilder {
        int getChatEntryType();

        boolean getFromLimitedAccount();

        boolean getLocalEcho();

        boolean getLowPriority();

        String getMessage();

        ByteString getMessageBytes();

        String getMessageNoBbcode();

        ByteString getMessageNoBbcodeBytes();

        int getOrdinal();

        int getRtime32ServerTimestamp();

        long getSteamidFriend();

        boolean hasChatEntryType();

        boolean hasFromLimitedAccount();

        boolean hasLocalEcho();

        boolean hasLowPriority();

        boolean hasMessage();

        boolean hasMessageNoBbcode();

        boolean hasOrdinal();

        boolean hasRtime32ServerTimestamp();

        boolean hasSteamidFriend();
    }

    public interface CFriendMessages_IsInFriendsUIBeta_RequestOrBuilder extends MessageOrBuilder {
        long getSteamid();

        boolean hasSteamid();
    }

    public interface CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder extends MessageOrBuilder {
        boolean getHasUsedFriendsui();

        boolean getOnlineInFriendsui();

        boolean hasHasUsedFriendsui();

        boolean hasOnlineInFriendsui();
    }

    public interface CFriendMessages_MessageReaction_NotificationOrBuilder extends MessageOrBuilder {
        boolean getIsAdd();

        int getOrdinal();

        String getReaction();

        ByteString getReactionBytes();

        EMessageReactionType getReactionType();

        long getReactor();

        int getServerTimestamp();

        long getSteamidFriend();

        boolean hasIsAdd();

        boolean hasOrdinal();

        boolean hasReaction();

        boolean hasReactionType();

        boolean hasReactor();

        boolean hasServerTimestamp();

        boolean hasSteamidFriend();
    }

    public interface CFriendMessages_SendMessage_RequestOrBuilder extends MessageOrBuilder {
        int getChatEntryType();

        String getClientMessageId();

        ByteString getClientMessageIdBytes();

        boolean getContainsBbcode();

        boolean getEchoToSender();

        boolean getLowPriority();

        String getMessage();

        ByteString getMessageBytes();

        long getSteamid();

        boolean hasChatEntryType();

        boolean hasClientMessageId();

        boolean hasContainsBbcode();

        boolean hasEchoToSender();

        boolean hasLowPriority();

        boolean hasMessage();

        boolean hasSteamid();
    }

    public interface CFriendMessages_SendMessage_ResponseOrBuilder extends MessageOrBuilder {
        String getMessageWithoutBbCode();

        ByteString getMessageWithoutBbCodeBytes();

        String getModifiedMessage();

        ByteString getModifiedMessageBytes();

        int getOrdinal();

        int getServerTimestamp();

        boolean hasMessageWithoutBbCode();

        boolean hasModifiedMessage();

        boolean hasOrdinal();

        boolean hasServerTimestamp();
    }

    public interface CFriendMessages_UpdateMessageReaction_RequestOrBuilder extends MessageOrBuilder {
        boolean getIsAdd();

        int getOrdinal();

        String getReaction();

        ByteString getReactionBytes();

        EMessageReactionType getReactionType();

        int getServerTimestamp();

        long getSteamid();

        boolean hasIsAdd();

        boolean hasOrdinal();

        boolean hasReaction();

        boolean hasReactionType();

        boolean hasServerTimestamp();

        boolean hasSteamid();
    }

    public interface CFriendMessages_UpdateMessageReaction_ResponseOrBuilder extends MessageOrBuilder {
        int getReactors(int i);

        int getReactorsCount();

        List<Integer> getReactorsList();
    }

    public interface CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder extends MessageOrBuilder {
        int getLastmessageSince();

        boolean getOnlySessionsWithMessages();

        boolean hasLastmessageSince();

        boolean hasOnlySessionsWithMessages();
    }

    public interface CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder extends MessageOrBuilder {
        CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSession getMessageSessions(int i);

        int getMessageSessionsCount();

        List<CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSession> getMessageSessionsList();

        CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder getMessageSessionsOrBuilder(int i);

        List<? extends CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder> getMessageSessionsOrBuilderList();

        int getTimestamp();

        boolean hasTimestamp();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesFriendmessagesSteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesFriendmessagesSteamclient.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n[in/dragonbra/javasteam/protobufs/steamclient/steammessages_friendmessages.steamclient.proto\u001aYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\"ó\u0001\n)CFriendMessages_GetRecentMessages_Request\u0012\u0010\n\bsteamid1\u0018\u0001 \u0001(\u0006\u0012\u0010\n\bsteamid2\u0018\u0002 \u0001(\u0006\u0012\r\n\u0005count\u0018\u0003 \u0001(\r\u0012 \n\u0018most_recent_conversation\u0018\u0004 \u0001(\b\u0012\u001a\n\u0012rtime32_start_time\u0018\u0005 \u0001(\u0007\u0012\u0015\n\rbbcode_format\u0018\u0006 \u0001(\b\u0012\u0015\n\rstart_ordinal\u0018\u0007 \u0001(\r\u0012\u0011\n\ttime_last\u0018\b \u0001(\r\u0012\u0014\n\fordinal_last\u0018\t \u0001(\r\"Ï\u0003\n*CFriendMessages_GetRecentMessages_Response\u0012K\n\bmessages\u0018\u0001 \u0003(\u000b29.CFriendMessages_GetRecentMessages_Response.FriendMessage\u0012\u0016\n\u000emore_available\u0018\u0004 \u0001(\b\u001a»\u0002\n\rFriendMessage\u0012\u0011\n\taccountid\u0018\u0001 \u0001(\r\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007message\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007ordinal\u0018\u0004 \u0001(\r\u0012\\\n\treactions\u0018\u0005 \u0003(\u000b2I.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReaction\u001a\u0083\u0001\n\u000fMessageReaction\u0012L\n\rreaction_type\u0018\u0001 \u0001(\u000e2\u0015.EMessageReactionType:\u001ek_EMessageReactionType_Invalid\u0012\u0010\n\breaction\u0018\u0002 \u0001(\t\u0012\u0010\n\breactors\u0018\u0003 \u0003(\r\"s\n1CFriendsMessages_GetActiveMessageSessions_Request\u0012\u0019\n\u0011lastmessage_since\u0018\u0001 \u0001(\r\u0012#\n\u001bonly_sessions_with_messages\u0018\u0002 \u0001(\b\"¤\u0002\n2CFriendsMessages_GetActiveMessageSessions_Response\u0012b\n\u0010message_sessions\u0018\u0001 \u0003(\u000b2H.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSession\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\r\u001aw\n\u0014FriendMessageSession\u0012\u0018\n\u0010accountid_friend\u0018\u0001 \u0001(\r\u0012\u0014\n\flast_message\u0018\u0002 \u0001(\r\u0012\u0011\n\tlast_view\u0018\u0003 \u0001(\r\u0012\u001c\n\u0014unread_message_count\u0018\u0004 \u0001(\r\"Â\u0001\n#CFriendMessages_SendMessage_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0017\n\u000fchat_entry_type\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007message\u0018\u0003 \u0001(\t\u0012\u0017\n\u000fcontains_bbcode\u0018\u0004 \u0001(\b\u0012\u0016\n\u000eecho_to_sender\u0018\u0005 \u0001(\b\u0012\u0014\n\flow_priority\u0018\u0006 \u0001(\b\u0012\u0019\n\u0011client_message_id\u0018\b \u0001(\t\"\u008c\u0001\n$CFriendMessages_SendMessage_Response\u0012\u0018\n\u0010modified_message\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010server_timestamp\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007ordinal\u0018\u0003 \u0001(\r\u0012\u001f\n\u0017message_without_bb_code\u0018\u0004 \u0001(\t\"U\n'CFriendMessages_AckMessage_Notification\u0012\u0017\n\u000fsteamid_partner\u0018\u0001 \u0001(\u0006\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\r\"<\n)CFriendMessages_IsInFriendsUIBeta_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\"e\n*CFriendMessages_IsInFriendsUIBeta_Response\u0012\u001b\n\u0013online_in_friendsui\u0018\u0001 \u0001(\b\u0012\u001a\n\u0012has_used_friendsui\u0018\u0002 \u0001(\b\"Û\u0001\n-CFriendMessages_UpdateMessageReaction_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010server_timestamp\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007ordinal\u0018\u0003 \u0001(\r\u0012L\n\rreaction_type\u0018\u0004 \u0001(\u000e2\u0015.EMessageReactionType:\u001ek_EMessageReactionType_Invalid\u0012\u0010\n\breaction\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006is_add\u0018\u0006 \u0001(\b\"B\n.CFriendMessages_UpdateMessageReaction_Response\u0012\u0010\n\breactors\u0018\u0001 \u0003(\r\"\u0086\u0002\n,CFriendMessages_IncomingMessage_Notification\u0012\u0016\n\u000esteamid_friend\u0018\u0001 \u0001(\u0006\u0012\u0017\n\u000fchat_entry_type\u0018\u0002 \u0001(\u0005\u0012\u001c\n\u0014from_limited_account\u0018\u0003 \u0001(\b\u0012\u000f\n\u0007message\u0018\u0004 \u0001(\t\u0012 \n\u0018rtime32_server_timestamp\u0018\u0005 \u0001(\u0007\u0012\u000f\n\u0007ordinal\u0018\u0006 \u0001(\r\u0012\u0012\n\nlocal_echo\u0018\u0007 \u0001(\b\u0012\u0019\n\u0011message_no_bbcode\u0018\b \u0001(\t\u0012\u0014\n\flow_priority\u0018\t \u0001(\b\"ò\u0001\n,CFriendMessages_MessageReaction_Notification\u0012\u0016\n\u000esteamid_friend\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010server_timestamp\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007ordinal\u0018\u0003 \u0001(\r\u0012\u000f\n\u0007reactor\u0018\u0004 \u0001(\u0006\u0012L\n\rreaction_type\u0018\u0005 \u0001(\u000e2\u0015.EMessageReactionType:\u001ek_EMessageReactionType_Invalid\u0012\u0010\n\breaction\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006is_add\u0018\u0007 \u0001(\b*\u0083\u0001\n\u0014EMessageReactionType\u0012\"\n\u001ek_EMessageReactionType_Invalid\u0010\u0000\u0012#\n\u001fk_EMessageReactionType_Emoticon\u0010\u0001\u0012\"\n\u001ek_EMessageReactionType_Sticker\u0010\u00022\u008d\u0005\n\u000eFriendMessages\u0012l\n\u0011GetRecentMessages\u0012*.CFriendMessages_GetRecentMessages_Request\u001a+.CFriendMessages_GetRecentMessages_Response\u0012\u0083\u0001\n\u0018GetActiveMessageSessions\u00122.CFriendsMessages_GetActiveMessageSessions_Request\u001a3.CFriendsMessages_GetActiveMessageSessions_Response\u0012Z\n\u000bSendMessage\u0012$.CFriendMessages_SendMessage_Request\u001a%.CFriendMessages_SendMessage_Response\u0012C\n\nAckMessage\u0012(.CFriendMessages_AckMessage_Notification\u001a\u000b.NoResponse\u0012l\n\u0011IsInFriendsUIBeta\u0012*.CFriendMessages_IsInFriendsUIBeta_Request\u001a+.CFriendMessages_IsInFriendsUIBeta_Response\u0012x\n\u0015UpdateMessageReaction\u0012..CFriendMessages_UpdateMessageReaction_Request\u001a/.CFriendMessages_UpdateMessageReaction_Response2\u0089\u0002\n\u0014FriendMessagesClient\u0012M\n\u000fIncomingMessage\u0012-.CFriendMessages_IncomingMessage_Notification\u001a\u000b.NoResponse\u0012M\n\u0014NotifyAckMessageEcho\u0012(.CFriendMessages_AckMessage_Notification\u001a\u000b.NoResponse\u0012M\n\u000fMessageReaction\u0012-.CFriendMessages_MessageReaction_Notification\u001a\u000b.NoResponse\u001a\u0004Àµ\u0018\u0002B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesUnifiedBaseSteamclient.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CFriendMessages_GetRecentMessages_Request_descriptor = descriptor2;
        internal_static_CFriendMessages_GetRecentMessages_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Steamid1", "Steamid2", "Count", "MostRecentConversation", "Rtime32StartTime", "BbcodeFormat", "StartOrdinal", "TimeLast", "OrdinalLast"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CFriendMessages_GetRecentMessages_Response_descriptor = descriptor3;
        internal_static_CFriendMessages_GetRecentMessages_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Messages", "MoreAvailable"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_descriptor = descriptor4;
        internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Accountid", "Timestamp", "Message", "Ordinal", "Reactions"});
        Descriptors.Descriptor descriptor5 = descriptor4.getNestedTypes().get(0);
        internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_descriptor = descriptor5;
        internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"ReactionType", "Reaction", "Reactors"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(2);
        internal_static_CFriendsMessages_GetActiveMessageSessions_Request_descriptor = descriptor6;
        internal_static_CFriendsMessages_GetActiveMessageSessions_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"LastmessageSince", "OnlySessionsWithMessages"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(3);
        internal_static_CFriendsMessages_GetActiveMessageSessions_Response_descriptor = descriptor7;
        internal_static_CFriendsMessages_GetActiveMessageSessions_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"MessageSessions", "Timestamp"});
        Descriptors.Descriptor descriptor8 = descriptor7.getNestedTypes().get(0);
        internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_descriptor = descriptor8;
        internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"AccountidFriend", "LastMessage", "LastView", "UnreadMessageCount"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(4);
        internal_static_CFriendMessages_SendMessage_Request_descriptor = descriptor9;
        internal_static_CFriendMessages_SendMessage_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Steamid", "ChatEntryType", "Message", "ContainsBbcode", "EchoToSender", "LowPriority", "ClientMessageId"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(5);
        internal_static_CFriendMessages_SendMessage_Response_descriptor = descriptor10;
        internal_static_CFriendMessages_SendMessage_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"ModifiedMessage", "ServerTimestamp", "Ordinal", "MessageWithoutBbCode"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(6);
        internal_static_CFriendMessages_AckMessage_Notification_descriptor = descriptor11;
        internal_static_CFriendMessages_AckMessage_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"SteamidPartner", "Timestamp"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(7);
        internal_static_CFriendMessages_IsInFriendsUIBeta_Request_descriptor = descriptor12;
        internal_static_CFriendMessages_IsInFriendsUIBeta_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Steamid"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(8);
        internal_static_CFriendMessages_IsInFriendsUIBeta_Response_descriptor = descriptor13;
        internal_static_CFriendMessages_IsInFriendsUIBeta_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"OnlineInFriendsui", "HasUsedFriendsui"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(9);
        internal_static_CFriendMessages_UpdateMessageReaction_Request_descriptor = descriptor14;
        internal_static_CFriendMessages_UpdateMessageReaction_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Steamid", "ServerTimestamp", "Ordinal", "ReactionType", "Reaction", "IsAdd"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(10);
        internal_static_CFriendMessages_UpdateMessageReaction_Response_descriptor = descriptor15;
        internal_static_CFriendMessages_UpdateMessageReaction_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Reactors"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(11);
        internal_static_CFriendMessages_IncomingMessage_Notification_descriptor = descriptor16;
        internal_static_CFriendMessages_IncomingMessage_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"SteamidFriend", "ChatEntryType", "FromLimitedAccount", "Message", "Rtime32ServerTimestamp", "Ordinal", "LocalEcho", "MessageNoBbcode", "LowPriority"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(12);
        internal_static_CFriendMessages_MessageReaction_Notification_descriptor = descriptor17;
        internal_static_CFriendMessages_MessageReaction_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"SteamidFriend", "ServerTimestamp", "Ordinal", "Reactor", "ReactionType", "Reaction", "IsAdd"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesUnifiedBaseSteamclient.getDescriptor();
        ExtensionRegistry extensionRegistryNewInstance = ExtensionRegistry.newInstance();
        extensionRegistryNewInstance.add((GeneratedMessage.GeneratedExtension<?, ?>) SteammessagesUnifiedBaseSteamclient.serviceExecutionSite);
        Descriptors.FileDescriptor.internalUpdateFileDescriptor(descriptor, extensionRegistryNewInstance);
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum EMessageReactionType implements ProtocolMessageEnum {
        k_EMessageReactionType_Invalid(0),
        k_EMessageReactionType_Emoticon(1),
        k_EMessageReactionType_Sticker(2);

        private static final EMessageReactionType[] VALUES;
        private static final Internal.EnumLiteMap<EMessageReactionType> internalValueMap;
        public static final int k_EMessageReactionType_Emoticon_VALUE = 1;
        public static final int k_EMessageReactionType_Invalid_VALUE = 0;
        public static final int k_EMessageReactionType_Sticker_VALUE = 2;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EMessageReactionType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EMessageReactionType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.EMessageReactionType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EMessageReactionType findValueByNumber(int i) {
                    return EMessageReactionType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EMessageReactionType valueOf(int i) {
            return forNumber(i);
        }

        public static EMessageReactionType forNumber(int i) {
            if (i == 0) {
                return k_EMessageReactionType_Invalid;
            }
            if (i == 1) {
                return k_EMessageReactionType_Emoticon;
            }
            if (i != 2) {
                return null;
            }
            return k_EMessageReactionType_Sticker;
        }

        public static Internal.EnumLiteMap<EMessageReactionType> internalGetValueMap() {
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
            return SteammessagesFriendmessagesSteamclient.getDescriptor().getEnumTypes().get(0);
        }

        public static EMessageReactionType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EMessageReactionType(int i) {
            this.value = i;
        }
    }

    public static final class CFriendMessages_GetRecentMessages_Request extends GeneratedMessage implements CFriendMessages_GetRecentMessages_RequestOrBuilder {
        public static final int BBCODE_FORMAT_FIELD_NUMBER = 6;
        public static final int COUNT_FIELD_NUMBER = 3;
        private static final CFriendMessages_GetRecentMessages_Request DEFAULT_INSTANCE;
        public static final int MOST_RECENT_CONVERSATION_FIELD_NUMBER = 4;
        public static final int ORDINAL_LAST_FIELD_NUMBER = 9;
        private static final Parser<CFriendMessages_GetRecentMessages_Request> PARSER;
        public static final int RTIME32_START_TIME_FIELD_NUMBER = 5;
        public static final int START_ORDINAL_FIELD_NUMBER = 7;
        public static final int STEAMID1_FIELD_NUMBER = 1;
        public static final int STEAMID2_FIELD_NUMBER = 2;
        public static final int TIME_LAST_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private boolean bbcodeFormat_;
        private int bitField0_;
        private int count_;
        private byte memoizedIsInitialized;
        private boolean mostRecentConversation_;
        private int ordinalLast_;
        private int rtime32StartTime_;
        private int startOrdinal_;
        private long steamid1_;
        private long steamid2_;
        private int timeLast_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_GetRecentMessages_Request.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_GetRecentMessages_Request();
            PARSER = new AbstractParser<CFriendMessages_GetRecentMessages_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Request.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_GetRecentMessages_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_GetRecentMessages_Request.newBuilder();
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

        private CFriendMessages_GetRecentMessages_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid1_ = 0L;
            this.steamid2_ = 0L;
            this.count_ = 0;
            this.mostRecentConversation_ = false;
            this.rtime32StartTime_ = 0;
            this.bbcodeFormat_ = false;
            this.startOrdinal_ = 0;
            this.timeLast_ = 0;
            this.ordinalLast_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_GetRecentMessages_Request() {
            this.steamid1_ = 0L;
            this.steamid2_ = 0L;
            this.count_ = 0;
            this.mostRecentConversation_ = false;
            this.rtime32StartTime_ = 0;
            this.bbcodeFormat_ = false;
            this.startOrdinal_ = 0;
            this.timeLast_ = 0;
            this.ordinalLast_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_GetRecentMessages_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasSteamid1() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public long getSteamid1() {
            return this.steamid1_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasSteamid2() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public long getSteamid2() {
            return this.steamid2_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasCount() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public int getCount() {
            return this.count_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasMostRecentConversation() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean getMostRecentConversation() {
            return this.mostRecentConversation_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasRtime32StartTime() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public int getRtime32StartTime() {
            return this.rtime32StartTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasBbcodeFormat() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean getBbcodeFormat() {
            return this.bbcodeFormat_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasStartOrdinal() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public int getStartOrdinal() {
            return this.startOrdinal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasTimeLast() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public int getTimeLast() {
            return this.timeLast_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public boolean hasOrdinalLast() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
        public int getOrdinalLast() {
            return this.ordinalLast_;
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
                codedOutputStream.writeFixed64(1, this.steamid1_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.steamid2_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.count_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.mostRecentConversation_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed32(5, this.rtime32StartTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeBool(6, this.bbcodeFormat_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.startOrdinal_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(8, this.timeLast_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(9, this.ordinalLast_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamid1_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(2, this.steamid2_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.count_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(4, this.mostRecentConversation_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed32Size(5, this.rtime32StartTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(6, this.bbcodeFormat_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(7, this.startOrdinal_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(8, this.timeLast_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(9, this.ordinalLast_);
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
            if (!(obj instanceof CFriendMessages_GetRecentMessages_Request)) {
                return super.equals(obj);
            }
            CFriendMessages_GetRecentMessages_Request cFriendMessages_GetRecentMessages_Request = (CFriendMessages_GetRecentMessages_Request) obj;
            if (hasSteamid1() != cFriendMessages_GetRecentMessages_Request.hasSteamid1()) {
                return false;
            }
            if ((hasSteamid1() && getSteamid1() != cFriendMessages_GetRecentMessages_Request.getSteamid1()) || hasSteamid2() != cFriendMessages_GetRecentMessages_Request.hasSteamid2()) {
                return false;
            }
            if ((hasSteamid2() && getSteamid2() != cFriendMessages_GetRecentMessages_Request.getSteamid2()) || hasCount() != cFriendMessages_GetRecentMessages_Request.hasCount()) {
                return false;
            }
            if ((hasCount() && getCount() != cFriendMessages_GetRecentMessages_Request.getCount()) || hasMostRecentConversation() != cFriendMessages_GetRecentMessages_Request.hasMostRecentConversation()) {
                return false;
            }
            if ((hasMostRecentConversation() && getMostRecentConversation() != cFriendMessages_GetRecentMessages_Request.getMostRecentConversation()) || hasRtime32StartTime() != cFriendMessages_GetRecentMessages_Request.hasRtime32StartTime()) {
                return false;
            }
            if ((hasRtime32StartTime() && getRtime32StartTime() != cFriendMessages_GetRecentMessages_Request.getRtime32StartTime()) || hasBbcodeFormat() != cFriendMessages_GetRecentMessages_Request.hasBbcodeFormat()) {
                return false;
            }
            if ((hasBbcodeFormat() && getBbcodeFormat() != cFriendMessages_GetRecentMessages_Request.getBbcodeFormat()) || hasStartOrdinal() != cFriendMessages_GetRecentMessages_Request.hasStartOrdinal()) {
                return false;
            }
            if ((hasStartOrdinal() && getStartOrdinal() != cFriendMessages_GetRecentMessages_Request.getStartOrdinal()) || hasTimeLast() != cFriendMessages_GetRecentMessages_Request.hasTimeLast()) {
                return false;
            }
            if ((!hasTimeLast() || getTimeLast() == cFriendMessages_GetRecentMessages_Request.getTimeLast()) && hasOrdinalLast() == cFriendMessages_GetRecentMessages_Request.hasOrdinalLast()) {
                return (!hasOrdinalLast() || getOrdinalLast() == cFriendMessages_GetRecentMessages_Request.getOrdinalLast()) && getUnknownFields().equals(cFriendMessages_GetRecentMessages_Request.getUnknownFields());
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
            if (hasSteamid1()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamid1());
            }
            if (hasSteamid2()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid2());
            }
            if (hasCount()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCount();
            }
            if (hasMostRecentConversation()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getMostRecentConversation());
            }
            if (hasRtime32StartTime()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getRtime32StartTime();
            }
            if (hasBbcodeFormat()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getBbcodeFormat());
            }
            if (hasStartOrdinal()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getStartOrdinal();
            }
            if (hasTimeLast()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getTimeLast();
            }
            if (hasOrdinalLast()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getOrdinalLast();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_GetRecentMessages_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_GetRecentMessages_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_GetRecentMessages_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_GetRecentMessages_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_GetRecentMessages_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_GetRecentMessages_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_GetRecentMessages_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_GetRecentMessages_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_GetRecentMessages_Request cFriendMessages_GetRecentMessages_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_GetRecentMessages_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_GetRecentMessages_RequestOrBuilder {
            private boolean bbcodeFormat_;
            private int bitField0_;
            private int count_;
            private boolean mostRecentConversation_;
            private int ordinalLast_;
            private int rtime32StartTime_;
            private int startOrdinal_;
            private long steamid1_;
            private long steamid2_;
            private int timeLast_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_GetRecentMessages_Request.class, Builder.class);
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
                this.steamid1_ = 0L;
                this.steamid2_ = 0L;
                this.count_ = 0;
                this.mostRecentConversation_ = false;
                this.rtime32StartTime_ = 0;
                this.bbcodeFormat_ = false;
                this.startOrdinal_ = 0;
                this.timeLast_ = 0;
                this.ordinalLast_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_GetRecentMessages_Request getDefaultInstanceForType() {
                return CFriendMessages_GetRecentMessages_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_GetRecentMessages_Request build() {
                CFriendMessages_GetRecentMessages_Request cFriendMessages_GetRecentMessages_RequestBuildPartial = buildPartial();
                if (cFriendMessages_GetRecentMessages_RequestBuildPartial.isInitialized()) {
                    return cFriendMessages_GetRecentMessages_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_GetRecentMessages_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_GetRecentMessages_Request buildPartial() {
                CFriendMessages_GetRecentMessages_Request cFriendMessages_GetRecentMessages_Request = new CFriendMessages_GetRecentMessages_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_GetRecentMessages_Request);
                }
                onBuilt();
                return cFriendMessages_GetRecentMessages_Request;
            }

            private void buildPartial0(CFriendMessages_GetRecentMessages_Request cFriendMessages_GetRecentMessages_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_GetRecentMessages_Request.steamid1_ = this.steamid1_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_GetRecentMessages_Request.steamid2_ = this.steamid2_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cFriendMessages_GetRecentMessages_Request.count_ = this.count_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cFriendMessages_GetRecentMessages_Request.mostRecentConversation_ = this.mostRecentConversation_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cFriendMessages_GetRecentMessages_Request.rtime32StartTime_ = this.rtime32StartTime_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cFriendMessages_GetRecentMessages_Request.bbcodeFormat_ = this.bbcodeFormat_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cFriendMessages_GetRecentMessages_Request.startOrdinal_ = this.startOrdinal_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cFriendMessages_GetRecentMessages_Request.timeLast_ = this.timeLast_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cFriendMessages_GetRecentMessages_Request.ordinalLast_ = this.ordinalLast_;
                    i |= 256;
                }
                cFriendMessages_GetRecentMessages_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_GetRecentMessages_Request) {
                    return mergeFrom((CFriendMessages_GetRecentMessages_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_GetRecentMessages_Request cFriendMessages_GetRecentMessages_Request) {
                if (cFriendMessages_GetRecentMessages_Request == CFriendMessages_GetRecentMessages_Request.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_GetRecentMessages_Request.hasSteamid1()) {
                    setSteamid1(cFriendMessages_GetRecentMessages_Request.getSteamid1());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasSteamid2()) {
                    setSteamid2(cFriendMessages_GetRecentMessages_Request.getSteamid2());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasCount()) {
                    setCount(cFriendMessages_GetRecentMessages_Request.getCount());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasMostRecentConversation()) {
                    setMostRecentConversation(cFriendMessages_GetRecentMessages_Request.getMostRecentConversation());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasRtime32StartTime()) {
                    setRtime32StartTime(cFriendMessages_GetRecentMessages_Request.getRtime32StartTime());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasBbcodeFormat()) {
                    setBbcodeFormat(cFriendMessages_GetRecentMessages_Request.getBbcodeFormat());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasStartOrdinal()) {
                    setStartOrdinal(cFriendMessages_GetRecentMessages_Request.getStartOrdinal());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasTimeLast()) {
                    setTimeLast(cFriendMessages_GetRecentMessages_Request.getTimeLast());
                }
                if (cFriendMessages_GetRecentMessages_Request.hasOrdinalLast()) {
                    setOrdinalLast(cFriendMessages_GetRecentMessages_Request.getOrdinalLast());
                }
                mergeUnknownFields(cFriendMessages_GetRecentMessages_Request.getUnknownFields());
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
                                    this.steamid1_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.steamid2_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.count_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.mostRecentConversation_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 45) {
                                    this.rtime32StartTime_ = codedInputStream.readFixed32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.bbcodeFormat_ = codedInputStream.readBool();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.startOrdinal_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                } else if (tag == 64) {
                                    this.timeLast_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
                                } else if (tag == 72) {
                                    this.ordinalLast_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasSteamid1() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public long getSteamid1() {
                return this.steamid1_;
            }

            public Builder setSteamid1(long j) {
                this.steamid1_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamid1() {
                this.bitField0_ &= -2;
                this.steamid1_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasSteamid2() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public long getSteamid2() {
                return this.steamid2_;
            }

            public Builder setSteamid2(long j) {
                this.steamid2_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSteamid2() {
                this.bitField0_ &= -3;
                this.steamid2_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasCount() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public int getCount() {
                return this.count_;
            }

            public Builder setCount(int i) {
                this.count_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCount() {
                this.bitField0_ &= -5;
                this.count_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasMostRecentConversation() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean getMostRecentConversation() {
                return this.mostRecentConversation_;
            }

            public Builder setMostRecentConversation(boolean z) {
                this.mostRecentConversation_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMostRecentConversation() {
                this.bitField0_ &= -9;
                this.mostRecentConversation_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasRtime32StartTime() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public int getRtime32StartTime() {
                return this.rtime32StartTime_;
            }

            public Builder setRtime32StartTime(int i) {
                this.rtime32StartTime_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearRtime32StartTime() {
                this.bitField0_ &= -17;
                this.rtime32StartTime_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasBbcodeFormat() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean getBbcodeFormat() {
                return this.bbcodeFormat_;
            }

            public Builder setBbcodeFormat(boolean z) {
                this.bbcodeFormat_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearBbcodeFormat() {
                this.bitField0_ &= -33;
                this.bbcodeFormat_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasStartOrdinal() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public int getStartOrdinal() {
                return this.startOrdinal_;
            }

            public Builder setStartOrdinal(int i) {
                this.startOrdinal_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearStartOrdinal() {
                this.bitField0_ &= -65;
                this.startOrdinal_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasTimeLast() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public int getTimeLast() {
                return this.timeLast_;
            }

            public Builder setTimeLast(int i) {
                this.timeLast_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearTimeLast() {
                this.bitField0_ &= -129;
                this.timeLast_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public boolean hasOrdinalLast() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_RequestOrBuilder
            public int getOrdinalLast() {
                return this.ordinalLast_;
            }

            public Builder setOrdinalLast(int i) {
                this.ordinalLast_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearOrdinalLast() {
                this.bitField0_ &= -257;
                this.ordinalLast_ = 0;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_GetRecentMessages_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_GetRecentMessages_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_GetRecentMessages_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_GetRecentMessages_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_GetRecentMessages_Response extends GeneratedMessage implements CFriendMessages_GetRecentMessages_ResponseOrBuilder {
        private static final CFriendMessages_GetRecentMessages_Response DEFAULT_INSTANCE;
        public static final int MESSAGES_FIELD_NUMBER = 1;
        public static final int MORE_AVAILABLE_FIELD_NUMBER = 4;
        private static final Parser<CFriendMessages_GetRecentMessages_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private List<FriendMessage> messages_;
        private boolean moreAvailable_;

        public interface FriendMessageOrBuilder extends MessageOrBuilder {
            int getAccountid();

            String getMessage();

            ByteString getMessageBytes();

            int getOrdinal();

            FriendMessage.MessageReaction getReactions(int i);

            int getReactionsCount();

            List<FriendMessage.MessageReaction> getReactionsList();

            FriendMessage.MessageReactionOrBuilder getReactionsOrBuilder(int i);

            List<? extends FriendMessage.MessageReactionOrBuilder> getReactionsOrBuilderList();

            int getTimestamp();

            boolean hasAccountid();

            boolean hasMessage();

            boolean hasOrdinal();

            boolean hasTimestamp();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_GetRecentMessages_Response.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_GetRecentMessages_Response();
            PARSER = new AbstractParser<CFriendMessages_GetRecentMessages_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_GetRecentMessages_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_GetRecentMessages_Response.newBuilder();
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

        private CFriendMessages_GetRecentMessages_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.moreAvailable_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_GetRecentMessages_Response() {
            this.moreAvailable_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.messages_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_GetRecentMessages_Response.class, Builder.class);
        }

        public static final class FriendMessage extends GeneratedMessage implements FriendMessageOrBuilder {
            public static final int ACCOUNTID_FIELD_NUMBER = 1;
            private static final FriendMessage DEFAULT_INSTANCE;
            public static final int MESSAGE_FIELD_NUMBER = 3;
            public static final int ORDINAL_FIELD_NUMBER = 4;
            private static final Parser<FriendMessage> PARSER;
            public static final int REACTIONS_FIELD_NUMBER = 5;
            public static final int TIMESTAMP_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int accountid_;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private volatile Object message_;
            private int ordinal_;
            private List<MessageReaction> reactions_;
            private int timestamp_;

            public interface MessageReactionOrBuilder extends MessageOrBuilder {
                String getReaction();

                ByteString getReactionBytes();

                EMessageReactionType getReactionType();

                int getReactors(int i);

                int getReactorsCount();

                List<Integer> getReactorsList();

                boolean hasReaction();

                boolean hasReactionType();
            }

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", FriendMessage.class.getName());
                DEFAULT_INSTANCE = new FriendMessage();
                PARSER = new AbstractParser<FriendMessage>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.1
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
                this.ordinal_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private FriendMessage() {
                this.accountid_ = 0;
                this.timestamp_ = 0;
                this.message_ = "";
                this.ordinal_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.message_ = "";
                this.reactions_ = Collections.emptyList();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(FriendMessage.class, Builder.class);
            }

            public static final class MessageReaction extends GeneratedMessage implements MessageReactionOrBuilder {
                private static final MessageReaction DEFAULT_INSTANCE;
                private static final Parser<MessageReaction> PARSER;
                public static final int REACTION_FIELD_NUMBER = 2;
                public static final int REACTION_TYPE_FIELD_NUMBER = 1;
                public static final int REACTORS_FIELD_NUMBER = 3;
                private static final long serialVersionUID = 0;
                private int bitField0_;
                private byte memoizedIsInitialized;
                private int reactionType_;
                private volatile Object reaction_;
                private Internal.IntList reactors_;

                static {
                    RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", MessageReaction.class.getName());
                    DEFAULT_INSTANCE = new MessageReaction();
                    PARSER = new AbstractParser<MessageReaction>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReaction.1
                        @Override // com.google.protobuf.Parser
                        public MessageReaction parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            Builder builderNewBuilder = MessageReaction.newBuilder();
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

                private MessageReaction(GeneratedMessage.Builder<?> builder) {
                    super(builder);
                    this.reactionType_ = 0;
                    this.reaction_ = "";
                    this.reactors_ = GeneratedMessage.emptyIntList();
                    this.memoizedIsInitialized = (byte) -1;
                }

                private MessageReaction() {
                    this.reactionType_ = 0;
                    this.reaction_ = "";
                    this.reactors_ = GeneratedMessage.emptyIntList();
                    this.memoizedIsInitialized = (byte) -1;
                    this.reactionType_ = 0;
                    this.reaction_ = "";
                    this.reactors_ = GeneratedMessage.emptyIntList();
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_fieldAccessorTable.ensureFieldAccessorsInitialized(MessageReaction.class, Builder.class);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public boolean hasReactionType() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public EMessageReactionType getReactionType() {
                    EMessageReactionType eMessageReactionTypeForNumber = EMessageReactionType.forNumber(this.reactionType_);
                    return eMessageReactionTypeForNumber == null ? EMessageReactionType.k_EMessageReactionType_Invalid : eMessageReactionTypeForNumber;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public boolean hasReaction() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public String getReaction() {
                    Object obj = this.reaction_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.reaction_ = stringUtf8;
                    }
                    return stringUtf8;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public ByteString getReactionBytes() {
                    Object obj = this.reaction_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.reaction_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public List<Integer> getReactorsList() {
                    return this.reactors_;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public int getReactorsCount() {
                    return this.reactors_.size();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                public int getReactors(int i) {
                    return this.reactors_.getInt(i);
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
                        codedOutputStream.writeEnum(1, this.reactionType_);
                    }
                    if ((this.bitField0_ & 2) != 0) {
                        GeneratedMessage.writeString(codedOutputStream, 2, this.reaction_);
                    }
                    for (int i = 0; i < this.reactors_.size(); i++) {
                        codedOutputStream.writeUInt32(3, this.reactors_.getInt(i));
                    }
                    getUnknownFields().writeTo(codedOutputStream);
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
                public int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int iComputeEnumSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeEnumSize(1, this.reactionType_) : 0;
                    if ((this.bitField0_ & 2) != 0) {
                        iComputeEnumSize += GeneratedMessage.computeStringSize(2, this.reaction_);
                    }
                    int iComputeUInt32SizeNoTag = 0;
                    for (int i2 = 0; i2 < this.reactors_.size(); i2++) {
                        iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.reactors_.getInt(i2));
                    }
                    int size = iComputeEnumSize + iComputeUInt32SizeNoTag + getReactorsList().size() + getUnknownFields().getSerializedSize();
                    this.memoizedSize = size;
                    return size;
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof MessageReaction)) {
                        return super.equals(obj);
                    }
                    MessageReaction messageReaction = (MessageReaction) obj;
                    if (hasReactionType() != messageReaction.hasReactionType()) {
                        return false;
                    }
                    if ((!hasReactionType() || this.reactionType_ == messageReaction.reactionType_) && hasReaction() == messageReaction.hasReaction()) {
                        return (!hasReaction() || getReaction().equals(messageReaction.getReaction())) && getReactorsList().equals(messageReaction.getReactorsList()) && getUnknownFields().equals(messageReaction.getUnknownFields());
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
                    if (hasReactionType()) {
                        iHashCode = (((iHashCode * 37) + 1) * 53) + this.reactionType_;
                    }
                    if (hasReaction()) {
                        iHashCode = (((iHashCode * 37) + 2) * 53) + getReaction().hashCode();
                    }
                    if (getReactorsCount() > 0) {
                        iHashCode = (((iHashCode * 37) + 3) * 53) + getReactorsList().hashCode();
                    }
                    int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                    this.memoizedHashCode = iHashCode2;
                    return iHashCode2;
                }

                public static MessageReaction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static MessageReaction parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static MessageReaction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static MessageReaction parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static MessageReaction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static MessageReaction parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static MessageReaction parseFrom(InputStream inputStream) throws IOException {
                    return (MessageReaction) GeneratedMessage.parseWithIOException(PARSER, inputStream);
                }

                public static MessageReaction parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (MessageReaction) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static MessageReaction parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (MessageReaction) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static MessageReaction parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (MessageReaction) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static MessageReaction parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (MessageReaction) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
                }

                public static MessageReaction parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (MessageReaction) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(MessageReaction messageReaction) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(messageReaction);
                }

                @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.google.protobuf.AbstractMessage
                public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                    return new Builder(builderParent);
                }

                public static final class Builder extends GeneratedMessage.Builder<Builder> implements MessageReactionOrBuilder {
                    private int bitField0_;
                    private int reactionType_;
                    private Object reaction_;
                    private Internal.IntList reactors_;

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_descriptor;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder
                    public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                        return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_fieldAccessorTable.ensureFieldAccessorsInitialized(MessageReaction.class, Builder.class);
                    }

                    private Builder() {
                        this.reactionType_ = 0;
                        this.reaction_ = "";
                        this.reactors_ = GeneratedMessage.emptyIntList();
                    }

                    private Builder(AbstractMessage.BuilderParent builderParent) {
                        super(builderParent);
                        this.reactionType_ = 0;
                        this.reaction_ = "";
                        this.reactors_ = GeneratedMessage.emptyIntList();
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public Builder clear() {
                        super.clear();
                        this.bitField0_ = 0;
                        this.reactionType_ = 0;
                        this.reaction_ = "";
                        this.reactors_ = GeneratedMessage.emptyIntList();
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_MessageReaction_descriptor;
                    }

                    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                    public MessageReaction getDefaultInstanceForType() {
                        return MessageReaction.getDefaultInstance();
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public MessageReaction build() {
                        MessageReaction messageReactionBuildPartial = buildPartial();
                        if (messageReactionBuildPartial.isInitialized()) {
                            return messageReactionBuildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageReactionBuildPartial);
                    }

                    @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public MessageReaction buildPartial() {
                        MessageReaction messageReaction = new MessageReaction(this);
                        if (this.bitField0_ != 0) {
                            buildPartial0(messageReaction);
                        }
                        onBuilt();
                        return messageReaction;
                    }

                    private void buildPartial0(MessageReaction messageReaction) {
                        int i;
                        int i2 = this.bitField0_;
                        if ((i2 & 1) != 0) {
                            messageReaction.reactionType_ = this.reactionType_;
                            i = 1;
                        } else {
                            i = 0;
                        }
                        if ((i2 & 2) != 0) {
                            messageReaction.reaction_ = this.reaction_;
                            i |= 2;
                        }
                        if ((i2 & 4) != 0) {
                            this.reactors_.makeImmutable();
                            messageReaction.reactors_ = this.reactors_;
                        }
                        messageReaction.bitField0_ |= i;
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof MessageReaction) {
                            return mergeFrom((MessageReaction) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(MessageReaction messageReaction) {
                        if (messageReaction == MessageReaction.getDefaultInstance()) {
                            return this;
                        }
                        if (messageReaction.hasReactionType()) {
                            setReactionType(messageReaction.getReactionType());
                        }
                        if (messageReaction.hasReaction()) {
                            this.reaction_ = messageReaction.reaction_;
                            this.bitField0_ |= 2;
                            onChanged();
                        }
                        if (!messageReaction.reactors_.isEmpty()) {
                            if (this.reactors_.isEmpty()) {
                                Internal.IntList intList = messageReaction.reactors_;
                                this.reactors_ = intList;
                                intList.makeImmutable();
                                this.bitField0_ |= 4;
                            } else {
                                ensureReactorsIsMutable();
                                this.reactors_.addAll(messageReaction.reactors_);
                            }
                            onChanged();
                        }
                        mergeUnknownFields(messageReaction.getUnknownFields());
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
                                            if (EMessageReactionType.forNumber(i) == null) {
                                                mergeUnknownVarintField(1, i);
                                            } else {
                                                this.reactionType_ = i;
                                                this.bitField0_ |= 1;
                                            }
                                        } else if (tag == 18) {
                                            this.reaction_ = codedInputStream.readBytes();
                                            this.bitField0_ |= 2;
                                        } else if (tag == 24) {
                                            int uInt32 = codedInputStream.readUInt32();
                                            ensureReactorsIsMutable();
                                            this.reactors_.addInt(uInt32);
                                        } else if (tag == 26) {
                                            int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                            ensureReactorsIsMutable();
                                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                                this.reactors_.addInt(codedInputStream.readUInt32());
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

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public boolean hasReactionType() {
                        return (this.bitField0_ & 1) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public EMessageReactionType getReactionType() {
                        EMessageReactionType eMessageReactionTypeForNumber = EMessageReactionType.forNumber(this.reactionType_);
                        return eMessageReactionTypeForNumber == null ? EMessageReactionType.k_EMessageReactionType_Invalid : eMessageReactionTypeForNumber;
                    }

                    public Builder setReactionType(EMessageReactionType eMessageReactionType) {
                        eMessageReactionType.getClass();
                        this.bitField0_ |= 1;
                        this.reactionType_ = eMessageReactionType.getNumber();
                        onChanged();
                        return this;
                    }

                    public Builder clearReactionType() {
                        this.bitField0_ &= -2;
                        this.reactionType_ = 0;
                        onChanged();
                        return this;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public boolean hasReaction() {
                        return (this.bitField0_ & 2) != 0;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public String getReaction() {
                        Object obj = this.reaction_;
                        if (!(obj instanceof String)) {
                            ByteString byteString = (ByteString) obj;
                            String stringUtf8 = byteString.toStringUtf8();
                            if (byteString.isValidUtf8()) {
                                this.reaction_ = stringUtf8;
                            }
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public ByteString getReactionBytes() {
                        Object obj = this.reaction_;
                        if (obj instanceof String) {
                            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.reaction_ = byteStringCopyFromUtf8;
                            return byteStringCopyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    public Builder setReaction(String str) {
                        str.getClass();
                        this.reaction_ = str;
                        this.bitField0_ |= 2;
                        onChanged();
                        return this;
                    }

                    public Builder clearReaction() {
                        this.reaction_ = MessageReaction.getDefaultInstance().getReaction();
                        this.bitField0_ &= -3;
                        onChanged();
                        return this;
                    }

                    public Builder setReactionBytes(ByteString byteString) {
                        byteString.getClass();
                        this.reaction_ = byteString;
                        this.bitField0_ |= 2;
                        onChanged();
                        return this;
                    }

                    private void ensureReactorsIsMutable() {
                        if (!this.reactors_.isModifiable()) {
                            this.reactors_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.reactors_);
                        }
                        this.bitField0_ |= 4;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public List<Integer> getReactorsList() {
                        this.reactors_.makeImmutable();
                        return this.reactors_;
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public int getReactorsCount() {
                        return this.reactors_.size();
                    }

                    @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessage.MessageReactionOrBuilder
                    public int getReactors(int i) {
                        return this.reactors_.getInt(i);
                    }

                    public Builder setReactors(int i, int i2) {
                        ensureReactorsIsMutable();
                        this.reactors_.setInt(i, i2);
                        this.bitField0_ |= 4;
                        onChanged();
                        return this;
                    }

                    public Builder addReactors(int i) {
                        ensureReactorsIsMutable();
                        this.reactors_.addInt(i);
                        this.bitField0_ |= 4;
                        onChanged();
                        return this;
                    }

                    public Builder addAllReactors(Iterable<? extends Integer> iterable) {
                        ensureReactorsIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.reactors_);
                        this.bitField0_ |= 4;
                        onChanged();
                        return this;
                    }

                    public Builder clearReactors() {
                        this.reactors_ = GeneratedMessage.emptyIntList();
                        this.bitField0_ &= -5;
                        onChanged();
                        return this;
                    }
                }

                public static MessageReaction getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static Parser<MessageReaction> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Parser<MessageReaction> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public MessageReaction getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public boolean hasAccountid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public int getAccountid() {
                return this.accountid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public boolean hasTimestamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public int getTimestamp() {
                return this.timestamp_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.message_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public boolean hasOrdinal() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public int getOrdinal() {
                return this.ordinal_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public List<MessageReaction> getReactionsList() {
                return this.reactions_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public List<? extends MessageReactionOrBuilder> getReactionsOrBuilderList() {
                return this.reactions_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public int getReactionsCount() {
                return this.reactions_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public MessageReaction getReactions(int i) {
                return this.reactions_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
            public MessageReactionOrBuilder getReactionsOrBuilder(int i) {
                return this.reactions_.get(i);
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
                    codedOutputStream.writeUInt32(4, this.ordinal_);
                }
                for (int i = 0; i < this.reactions_.size(); i++) {
                    codedOutputStream.writeMessage(5, this.reactions_.get(i));
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
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.ordinal_);
                }
                for (int i2 = 0; i2 < this.reactions_.size(); i2++) {
                    iComputeUInt32Size += CodedOutputStream.computeMessageSize(5, this.reactions_.get(i2));
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
                if ((!hasMessage() || getMessage().equals(friendMessage.getMessage())) && hasOrdinal() == friendMessage.hasOrdinal()) {
                    return (!hasOrdinal() || getOrdinal() == friendMessage.getOrdinal()) && getReactionsList().equals(friendMessage.getReactionsList()) && getUnknownFields().equals(friendMessage.getUnknownFields());
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
                if (hasOrdinal()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getOrdinal();
                }
                if (getReactionsCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + getReactionsList().hashCode();
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
                private int ordinal_;
                private RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> reactionsBuilder_;
                private List<MessageReaction> reactions_;
                private int timestamp_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(FriendMessage.class, Builder.class);
                }

                private Builder() {
                    this.message_ = "";
                    this.reactions_ = Collections.emptyList();
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.message_ = "";
                    this.reactions_ = Collections.emptyList();
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.accountid_ = 0;
                    this.timestamp_ = 0;
                    this.message_ = "";
                    this.ordinal_ = 0;
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.reactions_ = Collections.emptyList();
                    } else {
                        this.reactions_ = null;
                        repeatedFieldBuilder.clear();
                    }
                    this.bitField0_ &= -17;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_FriendMessage_descriptor;
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
                    buildPartialRepeatedFields(friendMessage);
                    if (this.bitField0_ != 0) {
                        buildPartial0(friendMessage);
                    }
                    onBuilt();
                    return friendMessage;
                }

                private void buildPartialRepeatedFields(FriendMessage friendMessage) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        if ((this.bitField0_ & 16) != 0) {
                            this.reactions_ = Collections.unmodifiableList(this.reactions_);
                            this.bitField0_ &= -17;
                        }
                        friendMessage.reactions_ = this.reactions_;
                        return;
                    }
                    friendMessage.reactions_ = repeatedFieldBuilder.build();
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
                        friendMessage.ordinal_ = this.ordinal_;
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
                    if (friendMessage.hasOrdinal()) {
                        setOrdinal(friendMessage.getOrdinal());
                    }
                    if (this.reactionsBuilder_ == null) {
                        if (!friendMessage.reactions_.isEmpty()) {
                            if (this.reactions_.isEmpty()) {
                                this.reactions_ = friendMessage.reactions_;
                                this.bitField0_ &= -17;
                            } else {
                                ensureReactionsIsMutable();
                                this.reactions_.addAll(friendMessage.reactions_);
                            }
                            onChanged();
                        }
                    } else if (!friendMessage.reactions_.isEmpty()) {
                        if (this.reactionsBuilder_.isEmpty()) {
                            this.reactionsBuilder_.dispose();
                            this.reactionsBuilder_ = null;
                            this.reactions_ = friendMessage.reactions_;
                            this.bitField0_ &= -17;
                            this.reactionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetReactionsFieldBuilder() : null;
                        } else {
                            this.reactionsBuilder_.addAllMessages(friendMessage.reactions_);
                        }
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
                                        this.ordinal_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 8;
                                    } else if (tag == 42) {
                                        MessageReaction messageReaction = (MessageReaction) codedInputStream.readMessage(MessageReaction.parser(), extensionRegistryLite);
                                        RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                                        if (repeatedFieldBuilder == null) {
                                            ensureReactionsIsMutable();
                                            this.reactions_.add(messageReaction);
                                        } else {
                                            repeatedFieldBuilder.addMessage(messageReaction);
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public boolean hasAccountid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public boolean hasTimestamp() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public boolean hasMessage() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public boolean hasOrdinal() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public int getOrdinal() {
                    return this.ordinal_;
                }

                public Builder setOrdinal(int i) {
                    this.ordinal_ = i;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearOrdinal() {
                    this.bitField0_ &= -9;
                    this.ordinal_ = 0;
                    onChanged();
                    return this;
                }

                private void ensureReactionsIsMutable() {
                    if ((this.bitField0_ & 16) == 0) {
                        this.reactions_ = new ArrayList(this.reactions_);
                        this.bitField0_ |= 16;
                    }
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public List<MessageReaction> getReactionsList() {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return Collections.unmodifiableList(this.reactions_);
                    }
                    return repeatedFieldBuilder.getMessageList();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public int getReactionsCount() {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.reactions_.size();
                    }
                    return repeatedFieldBuilder.getCount();
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public MessageReaction getReactions(int i) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.reactions_.get(i);
                    }
                    return (MessageReaction) repeatedFieldBuilder.getMessage(i);
                }

                public Builder setReactions(int i, MessageReaction messageReaction) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        messageReaction.getClass();
                        ensureReactionsIsMutable();
                        this.reactions_.set(i, messageReaction);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, messageReaction);
                    }
                    return this;
                }

                public Builder setReactions(int i, MessageReaction.Builder builder) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureReactionsIsMutable();
                        this.reactions_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.setMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addReactions(MessageReaction messageReaction) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        messageReaction.getClass();
                        ensureReactionsIsMutable();
                        this.reactions_.add(messageReaction);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(messageReaction);
                    }
                    return this;
                }

                public Builder addReactions(int i, MessageReaction messageReaction) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        messageReaction.getClass();
                        ensureReactionsIsMutable();
                        this.reactions_.add(i, messageReaction);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, messageReaction);
                    }
                    return this;
                }

                public Builder addReactions(MessageReaction.Builder builder) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureReactionsIsMutable();
                        this.reactions_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addReactions(int i, MessageReaction.Builder builder) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureReactionsIsMutable();
                        this.reactions_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addMessage(i, builder.build());
                    }
                    return this;
                }

                public Builder addAllReactions(Iterable<? extends MessageReaction> iterable) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureReactionsIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.reactions_);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder clearReactions() {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        this.reactions_ = Collections.emptyList();
                        this.bitField0_ &= -17;
                        onChanged();
                    } else {
                        repeatedFieldBuilder.clear();
                    }
                    return this;
                }

                public Builder removeReactions(int i) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        ensureReactionsIsMutable();
                        this.reactions_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilder.remove(i);
                    }
                    return this;
                }

                public MessageReaction.Builder getReactionsBuilder(int i) {
                    return (MessageReaction.Builder) internalGetReactionsFieldBuilder().getBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public MessageReactionOrBuilder getReactionsOrBuilder(int i) {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder == null) {
                        return this.reactions_.get(i);
                    }
                    return (MessageReactionOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.FriendMessageOrBuilder
                public List<? extends MessageReactionOrBuilder> getReactionsOrBuilderList() {
                    RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> repeatedFieldBuilder = this.reactionsBuilder_;
                    if (repeatedFieldBuilder != null) {
                        return repeatedFieldBuilder.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.reactions_);
                }

                public MessageReaction.Builder addReactionsBuilder() {
                    return (MessageReaction.Builder) internalGetReactionsFieldBuilder().addBuilder(MessageReaction.getDefaultInstance());
                }

                public MessageReaction.Builder addReactionsBuilder(int i) {
                    return (MessageReaction.Builder) internalGetReactionsFieldBuilder().addBuilder(i, MessageReaction.getDefaultInstance());
                }

                public List<MessageReaction.Builder> getReactionsBuilderList() {
                    return internalGetReactionsFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilder<MessageReaction, MessageReaction.Builder, MessageReactionOrBuilder> internalGetReactionsFieldBuilder() {
                    if (this.reactionsBuilder_ == null) {
                        this.reactionsBuilder_ = new RepeatedFieldBuilder<>(this.reactions_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                        this.reactions_ = null;
                    }
                    return this.reactionsBuilder_;
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
        public List<FriendMessage> getMessagesList() {
            return this.messages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
        public List<? extends FriendMessageOrBuilder> getMessagesOrBuilderList() {
            return this.messages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
        public int getMessagesCount() {
            return this.messages_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
        public FriendMessage getMessages(int i) {
            return this.messages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
        public FriendMessageOrBuilder getMessagesOrBuilder(int i) {
            return this.messages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
        public boolean hasMoreAvailable() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
        public boolean getMoreAvailable() {
            return this.moreAvailable_;
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
            for (int i = 0; i < this.messages_.size(); i++) {
                codedOutputStream.writeMessage(1, this.messages_.get(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeBool(4, this.moreAvailable_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = 0;
            for (int i2 = 0; i2 < this.messages_.size(); i2++) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(1, this.messages_.get(i2));
            }
            if ((this.bitField0_ & 1) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(4, this.moreAvailable_);
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
            if (!(obj instanceof CFriendMessages_GetRecentMessages_Response)) {
                return super.equals(obj);
            }
            CFriendMessages_GetRecentMessages_Response cFriendMessages_GetRecentMessages_Response = (CFriendMessages_GetRecentMessages_Response) obj;
            if (getMessagesList().equals(cFriendMessages_GetRecentMessages_Response.getMessagesList()) && hasMoreAvailable() == cFriendMessages_GetRecentMessages_Response.hasMoreAvailable()) {
                return (!hasMoreAvailable() || getMoreAvailable() == cFriendMessages_GetRecentMessages_Response.getMoreAvailable()) && getUnknownFields().equals(cFriendMessages_GetRecentMessages_Response.getUnknownFields());
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
            if (getMessagesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getMessagesList().hashCode();
            }
            if (hasMoreAvailable()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getMoreAvailable());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_GetRecentMessages_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_GetRecentMessages_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_GetRecentMessages_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_GetRecentMessages_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_GetRecentMessages_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_GetRecentMessages_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_GetRecentMessages_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_GetRecentMessages_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_GetRecentMessages_Response cFriendMessages_GetRecentMessages_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_GetRecentMessages_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_GetRecentMessages_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> messagesBuilder_;
            private List<FriendMessage> messages_;
            private boolean moreAvailable_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_GetRecentMessages_Response.class, Builder.class);
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
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.messages_ = Collections.emptyList();
                } else {
                    this.messages_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.moreAvailable_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_GetRecentMessages_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_GetRecentMessages_Response getDefaultInstanceForType() {
                return CFriendMessages_GetRecentMessages_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_GetRecentMessages_Response build() {
                CFriendMessages_GetRecentMessages_Response cFriendMessages_GetRecentMessages_ResponseBuildPartial = buildPartial();
                if (cFriendMessages_GetRecentMessages_ResponseBuildPartial.isInitialized()) {
                    return cFriendMessages_GetRecentMessages_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_GetRecentMessages_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_GetRecentMessages_Response buildPartial() {
                CFriendMessages_GetRecentMessages_Response cFriendMessages_GetRecentMessages_Response = new CFriendMessages_GetRecentMessages_Response(this);
                buildPartialRepeatedFields(cFriendMessages_GetRecentMessages_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_GetRecentMessages_Response);
                }
                onBuilt();
                return cFriendMessages_GetRecentMessages_Response;
            }

            private void buildPartialRepeatedFields(CFriendMessages_GetRecentMessages_Response cFriendMessages_GetRecentMessages_Response) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.messages_ = Collections.unmodifiableList(this.messages_);
                        this.bitField0_ &= -2;
                    }
                    cFriendMessages_GetRecentMessages_Response.messages_ = this.messages_;
                    return;
                }
                cFriendMessages_GetRecentMessages_Response.messages_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CFriendMessages_GetRecentMessages_Response cFriendMessages_GetRecentMessages_Response) {
                int i;
                if ((this.bitField0_ & 2) != 0) {
                    cFriendMessages_GetRecentMessages_Response.moreAvailable_ = this.moreAvailable_;
                    i = 1;
                } else {
                    i = 0;
                }
                cFriendMessages_GetRecentMessages_Response.bitField0_ = i | cFriendMessages_GetRecentMessages_Response.bitField0_;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_GetRecentMessages_Response) {
                    return mergeFrom((CFriendMessages_GetRecentMessages_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_GetRecentMessages_Response cFriendMessages_GetRecentMessages_Response) {
                if (cFriendMessages_GetRecentMessages_Response == CFriendMessages_GetRecentMessages_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.messagesBuilder_ == null) {
                    if (!cFriendMessages_GetRecentMessages_Response.messages_.isEmpty()) {
                        if (this.messages_.isEmpty()) {
                            this.messages_ = cFriendMessages_GetRecentMessages_Response.messages_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMessagesIsMutable();
                            this.messages_.addAll(cFriendMessages_GetRecentMessages_Response.messages_);
                        }
                        onChanged();
                    }
                } else if (!cFriendMessages_GetRecentMessages_Response.messages_.isEmpty()) {
                    if (this.messagesBuilder_.isEmpty()) {
                        this.messagesBuilder_.dispose();
                        this.messagesBuilder_ = null;
                        this.messages_ = cFriendMessages_GetRecentMessages_Response.messages_;
                        this.bitField0_ &= -2;
                        this.messagesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetMessagesFieldBuilder() : null;
                    } else {
                        this.messagesBuilder_.addAllMessages(cFriendMessages_GetRecentMessages_Response.messages_);
                    }
                }
                if (cFriendMessages_GetRecentMessages_Response.hasMoreAvailable()) {
                    setMoreAvailable(cFriendMessages_GetRecentMessages_Response.getMoreAvailable());
                }
                mergeUnknownFields(cFriendMessages_GetRecentMessages_Response.getUnknownFields());
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
                                    FriendMessage friendMessage = (FriendMessage) codedInputStream.readMessage(FriendMessage.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureMessagesIsMutable();
                                        this.messages_.add(friendMessage);
                                    } else {
                                        repeatedFieldBuilder.addMessage(friendMessage);
                                    }
                                } else if (tag == 32) {
                                    this.moreAvailable_ = codedInputStream.readBool();
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

            private void ensureMessagesIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.messages_ = new ArrayList(this.messages_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
            public List<FriendMessage> getMessagesList() {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.messages_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
            public int getMessagesCount() {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messages_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
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
                    this.bitField0_ &= -2;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
            public FriendMessageOrBuilder getMessagesOrBuilder(int i) {
                RepeatedFieldBuilder<FriendMessage, FriendMessage.Builder, FriendMessageOrBuilder> repeatedFieldBuilder = this.messagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messages_.get(i);
                }
                return (FriendMessageOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
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
                    this.messagesBuilder_ = new RepeatedFieldBuilder<>(this.messages_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.messages_ = null;
                }
                return this.messagesBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
            public boolean hasMoreAvailable() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_ResponseOrBuilder
            public boolean getMoreAvailable() {
                return this.moreAvailable_;
            }

            public Builder setMoreAvailable(boolean z) {
                this.moreAvailable_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMoreAvailable() {
                this.bitField0_ &= -3;
                this.moreAvailable_ = false;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_GetRecentMessages_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_GetRecentMessages_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_GetRecentMessages_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_GetRecentMessages_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendsMessages_GetActiveMessageSessions_Request extends GeneratedMessage implements CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder {
        private static final CFriendsMessages_GetActiveMessageSessions_Request DEFAULT_INSTANCE;
        public static final int LASTMESSAGE_SINCE_FIELD_NUMBER = 1;
        public static final int ONLY_SESSIONS_WITH_MESSAGES_FIELD_NUMBER = 2;
        private static final Parser<CFriendsMessages_GetActiveMessageSessions_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int lastmessageSince_;
        private byte memoizedIsInitialized;
        private boolean onlySessionsWithMessages_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendsMessages_GetActiveMessageSessions_Request.class.getName());
            DEFAULT_INSTANCE = new CFriendsMessages_GetActiveMessageSessions_Request();
            PARSER = new AbstractParser<CFriendsMessages_GetActiveMessageSessions_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Request.1
                @Override // com.google.protobuf.Parser
                public CFriendsMessages_GetActiveMessageSessions_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendsMessages_GetActiveMessageSessions_Request.newBuilder();
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

        private CFriendsMessages_GetActiveMessageSessions_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.lastmessageSince_ = 0;
            this.onlySessionsWithMessages_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendsMessages_GetActiveMessageSessions_Request() {
            this.lastmessageSince_ = 0;
            this.onlySessionsWithMessages_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendsMessages_GetActiveMessageSessions_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
        public boolean hasLastmessageSince() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
        public int getLastmessageSince() {
            return this.lastmessageSince_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
        public boolean hasOnlySessionsWithMessages() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
        public boolean getOnlySessionsWithMessages() {
            return this.onlySessionsWithMessages_;
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
                codedOutputStream.writeUInt32(1, this.lastmessageSince_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.onlySessionsWithMessages_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.lastmessageSince_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(2, this.onlySessionsWithMessages_);
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
            if (!(obj instanceof CFriendsMessages_GetActiveMessageSessions_Request)) {
                return super.equals(obj);
            }
            CFriendsMessages_GetActiveMessageSessions_Request cFriendsMessages_GetActiveMessageSessions_Request = (CFriendsMessages_GetActiveMessageSessions_Request) obj;
            if (hasLastmessageSince() != cFriendsMessages_GetActiveMessageSessions_Request.hasLastmessageSince()) {
                return false;
            }
            if ((!hasLastmessageSince() || getLastmessageSince() == cFriendsMessages_GetActiveMessageSessions_Request.getLastmessageSince()) && hasOnlySessionsWithMessages() == cFriendsMessages_GetActiveMessageSessions_Request.hasOnlySessionsWithMessages()) {
                return (!hasOnlySessionsWithMessages() || getOnlySessionsWithMessages() == cFriendsMessages_GetActiveMessageSessions_Request.getOnlySessionsWithMessages()) && getUnknownFields().equals(cFriendsMessages_GetActiveMessageSessions_Request.getUnknownFields());
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
            if (hasLastmessageSince()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getLastmessageSince();
            }
            if (hasOnlySessionsWithMessages()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getOnlySessionsWithMessages());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(InputStream inputStream) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendsMessages_GetActiveMessageSessions_Request cFriendsMessages_GetActiveMessageSessions_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendsMessages_GetActiveMessageSessions_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder {
            private int bitField0_;
            private int lastmessageSince_;
            private boolean onlySessionsWithMessages_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendsMessages_GetActiveMessageSessions_Request.class, Builder.class);
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
                this.lastmessageSince_ = 0;
                this.onlySessionsWithMessages_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendsMessages_GetActiveMessageSessions_Request getDefaultInstanceForType() {
                return CFriendsMessages_GetActiveMessageSessions_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendsMessages_GetActiveMessageSessions_Request build() {
                CFriendsMessages_GetActiveMessageSessions_Request cFriendsMessages_GetActiveMessageSessions_RequestBuildPartial = buildPartial();
                if (cFriendsMessages_GetActiveMessageSessions_RequestBuildPartial.isInitialized()) {
                    return cFriendsMessages_GetActiveMessageSessions_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendsMessages_GetActiveMessageSessions_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendsMessages_GetActiveMessageSessions_Request buildPartial() {
                CFriendsMessages_GetActiveMessageSessions_Request cFriendsMessages_GetActiveMessageSessions_Request = new CFriendsMessages_GetActiveMessageSessions_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendsMessages_GetActiveMessageSessions_Request);
                }
                onBuilt();
                return cFriendsMessages_GetActiveMessageSessions_Request;
            }

            private void buildPartial0(CFriendsMessages_GetActiveMessageSessions_Request cFriendsMessages_GetActiveMessageSessions_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendsMessages_GetActiveMessageSessions_Request.lastmessageSince_ = this.lastmessageSince_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendsMessages_GetActiveMessageSessions_Request.onlySessionsWithMessages_ = this.onlySessionsWithMessages_;
                    i |= 2;
                }
                cFriendsMessages_GetActiveMessageSessions_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendsMessages_GetActiveMessageSessions_Request) {
                    return mergeFrom((CFriendsMessages_GetActiveMessageSessions_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendsMessages_GetActiveMessageSessions_Request cFriendsMessages_GetActiveMessageSessions_Request) {
                if (cFriendsMessages_GetActiveMessageSessions_Request == CFriendsMessages_GetActiveMessageSessions_Request.getDefaultInstance()) {
                    return this;
                }
                if (cFriendsMessages_GetActiveMessageSessions_Request.hasLastmessageSince()) {
                    setLastmessageSince(cFriendsMessages_GetActiveMessageSessions_Request.getLastmessageSince());
                }
                if (cFriendsMessages_GetActiveMessageSessions_Request.hasOnlySessionsWithMessages()) {
                    setOnlySessionsWithMessages(cFriendsMessages_GetActiveMessageSessions_Request.getOnlySessionsWithMessages());
                }
                mergeUnknownFields(cFriendsMessages_GetActiveMessageSessions_Request.getUnknownFields());
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
                                    this.lastmessageSince_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.onlySessionsWithMessages_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
            public boolean hasLastmessageSince() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
            public int getLastmessageSince() {
                return this.lastmessageSince_;
            }

            public Builder setLastmessageSince(int i) {
                this.lastmessageSince_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearLastmessageSince() {
                this.bitField0_ &= -2;
                this.lastmessageSince_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
            public boolean hasOnlySessionsWithMessages() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_RequestOrBuilder
            public boolean getOnlySessionsWithMessages() {
                return this.onlySessionsWithMessages_;
            }

            public Builder setOnlySessionsWithMessages(boolean z) {
                this.onlySessionsWithMessages_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearOnlySessionsWithMessages() {
                this.bitField0_ &= -3;
                this.onlySessionsWithMessages_ = false;
                onChanged();
                return this;
            }
        }

        public static CFriendsMessages_GetActiveMessageSessions_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendsMessages_GetActiveMessageSessions_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendsMessages_GetActiveMessageSessions_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendsMessages_GetActiveMessageSessions_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendsMessages_GetActiveMessageSessions_Response extends GeneratedMessage implements CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder {
        private static final CFriendsMessages_GetActiveMessageSessions_Response DEFAULT_INSTANCE;
        public static final int MESSAGE_SESSIONS_FIELD_NUMBER = 1;
        private static final Parser<CFriendsMessages_GetActiveMessageSessions_Response> PARSER;
        public static final int TIMESTAMP_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private List<FriendMessageSession> messageSessions_;
        private int timestamp_;

        public interface FriendMessageSessionOrBuilder extends MessageOrBuilder {
            int getAccountidFriend();

            int getLastMessage();

            int getLastView();

            int getUnreadMessageCount();

            boolean hasAccountidFriend();

            boolean hasLastMessage();

            boolean hasLastView();

            boolean hasUnreadMessageCount();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendsMessages_GetActiveMessageSessions_Response.class.getName());
            DEFAULT_INSTANCE = new CFriendsMessages_GetActiveMessageSessions_Response();
            PARSER = new AbstractParser<CFriendsMessages_GetActiveMessageSessions_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.1
                @Override // com.google.protobuf.Parser
                public CFriendsMessages_GetActiveMessageSessions_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendsMessages_GetActiveMessageSessions_Response.newBuilder();
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

        private CFriendsMessages_GetActiveMessageSessions_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.timestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendsMessages_GetActiveMessageSessions_Response() {
            this.timestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.messageSessions_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendsMessages_GetActiveMessageSessions_Response.class, Builder.class);
        }

        public static final class FriendMessageSession extends GeneratedMessage implements FriendMessageSessionOrBuilder {
            public static final int ACCOUNTID_FRIEND_FIELD_NUMBER = 1;
            private static final FriendMessageSession DEFAULT_INSTANCE;
            public static final int LAST_MESSAGE_FIELD_NUMBER = 2;
            public static final int LAST_VIEW_FIELD_NUMBER = 3;
            private static final Parser<FriendMessageSession> PARSER;
            public static final int UNREAD_MESSAGE_COUNT_FIELD_NUMBER = 4;
            private static final long serialVersionUID = 0;
            private int accountidFriend_;
            private int bitField0_;
            private int lastMessage_;
            private int lastView_;
            private byte memoizedIsInitialized;
            private int unreadMessageCount_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", FriendMessageSession.class.getName());
                DEFAULT_INSTANCE = new FriendMessageSession();
                PARSER = new AbstractParser<FriendMessageSession>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSession.1
                    @Override // com.google.protobuf.Parser
                    public FriendMessageSession parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = FriendMessageSession.newBuilder();
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

            private FriendMessageSession(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.accountidFriend_ = 0;
                this.lastMessage_ = 0;
                this.lastView_ = 0;
                this.unreadMessageCount_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private FriendMessageSession() {
                this.accountidFriend_ = 0;
                this.lastMessage_ = 0;
                this.lastView_ = 0;
                this.unreadMessageCount_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_fieldAccessorTable.ensureFieldAccessorsInitialized(FriendMessageSession.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public boolean hasAccountidFriend() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public int getAccountidFriend() {
                return this.accountidFriend_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public boolean hasLastMessage() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public int getLastMessage() {
                return this.lastMessage_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public boolean hasLastView() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public int getLastView() {
                return this.lastView_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public boolean hasUnreadMessageCount() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
            public int getUnreadMessageCount() {
                return this.unreadMessageCount_;
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
                    codedOutputStream.writeUInt32(1, this.accountidFriend_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.lastMessage_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeUInt32(3, this.lastView_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeUInt32(4, this.unreadMessageCount_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.accountidFriend_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.lastMessage_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.lastView_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.unreadMessageCount_);
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
                if (!(obj instanceof FriendMessageSession)) {
                    return super.equals(obj);
                }
                FriendMessageSession friendMessageSession = (FriendMessageSession) obj;
                if (hasAccountidFriend() != friendMessageSession.hasAccountidFriend()) {
                    return false;
                }
                if ((hasAccountidFriend() && getAccountidFriend() != friendMessageSession.getAccountidFriend()) || hasLastMessage() != friendMessageSession.hasLastMessage()) {
                    return false;
                }
                if ((hasLastMessage() && getLastMessage() != friendMessageSession.getLastMessage()) || hasLastView() != friendMessageSession.hasLastView()) {
                    return false;
                }
                if ((!hasLastView() || getLastView() == friendMessageSession.getLastView()) && hasUnreadMessageCount() == friendMessageSession.hasUnreadMessageCount()) {
                    return (!hasUnreadMessageCount() || getUnreadMessageCount() == friendMessageSession.getUnreadMessageCount()) && getUnknownFields().equals(friendMessageSession.getUnknownFields());
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
                if (hasAccountidFriend()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getAccountidFriend();
                }
                if (hasLastMessage()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getLastMessage();
                }
                if (hasLastView()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getLastView();
                }
                if (hasUnreadMessageCount()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getUnreadMessageCount();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static FriendMessageSession parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static FriendMessageSession parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static FriendMessageSession parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static FriendMessageSession parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static FriendMessageSession parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static FriendMessageSession parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static FriendMessageSession parseFrom(InputStream inputStream) throws IOException {
                return (FriendMessageSession) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static FriendMessageSession parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FriendMessageSession) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static FriendMessageSession parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (FriendMessageSession) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static FriendMessageSession parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FriendMessageSession) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static FriendMessageSession parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (FriendMessageSession) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static FriendMessageSession parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (FriendMessageSession) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(FriendMessageSession friendMessageSession) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(friendMessageSession);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements FriendMessageSessionOrBuilder {
                private int accountidFriend_;
                private int bitField0_;
                private int lastMessage_;
                private int lastView_;
                private int unreadMessageCount_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_fieldAccessorTable.ensureFieldAccessorsInitialized(FriendMessageSession.class, Builder.class);
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
                    this.accountidFriend_ = 0;
                    this.lastMessage_ = 0;
                    this.lastView_ = 0;
                    this.unreadMessageCount_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_FriendMessageSession_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public FriendMessageSession getDefaultInstanceForType() {
                    return FriendMessageSession.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public FriendMessageSession build() {
                    FriendMessageSession friendMessageSessionBuildPartial = buildPartial();
                    if (friendMessageSessionBuildPartial.isInitialized()) {
                        return friendMessageSessionBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendMessageSessionBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public FriendMessageSession buildPartial() {
                    FriendMessageSession friendMessageSession = new FriendMessageSession(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(friendMessageSession);
                    }
                    onBuilt();
                    return friendMessageSession;
                }

                private void buildPartial0(FriendMessageSession friendMessageSession) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        friendMessageSession.accountidFriend_ = this.accountidFriend_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        friendMessageSession.lastMessage_ = this.lastMessage_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        friendMessageSession.lastView_ = this.lastView_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        friendMessageSession.unreadMessageCount_ = this.unreadMessageCount_;
                        i |= 8;
                    }
                    friendMessageSession.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof FriendMessageSession) {
                        return mergeFrom((FriendMessageSession) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(FriendMessageSession friendMessageSession) {
                    if (friendMessageSession == FriendMessageSession.getDefaultInstance()) {
                        return this;
                    }
                    if (friendMessageSession.hasAccountidFriend()) {
                        setAccountidFriend(friendMessageSession.getAccountidFriend());
                    }
                    if (friendMessageSession.hasLastMessage()) {
                        setLastMessage(friendMessageSession.getLastMessage());
                    }
                    if (friendMessageSession.hasLastView()) {
                        setLastView(friendMessageSession.getLastView());
                    }
                    if (friendMessageSession.hasUnreadMessageCount()) {
                        setUnreadMessageCount(friendMessageSession.getUnreadMessageCount());
                    }
                    mergeUnknownFields(friendMessageSession.getUnknownFields());
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
                                        this.accountidFriend_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.lastMessage_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 2;
                                    } else if (tag == 24) {
                                        this.lastView_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 4;
                                    } else if (tag == 32) {
                                        this.unreadMessageCount_ = codedInputStream.readUInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public boolean hasAccountidFriend() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public int getAccountidFriend() {
                    return this.accountidFriend_;
                }

                public Builder setAccountidFriend(int i) {
                    this.accountidFriend_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearAccountidFriend() {
                    this.bitField0_ &= -2;
                    this.accountidFriend_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public boolean hasLastMessage() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public int getLastMessage() {
                    return this.lastMessage_;
                }

                public Builder setLastMessage(int i) {
                    this.lastMessage_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearLastMessage() {
                    this.bitField0_ &= -3;
                    this.lastMessage_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public boolean hasLastView() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public int getLastView() {
                    return this.lastView_;
                }

                public Builder setLastView(int i) {
                    this.lastView_ = i;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearLastView() {
                    this.bitField0_ &= -5;
                    this.lastView_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public boolean hasUnreadMessageCount() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.FriendMessageSessionOrBuilder
                public int getUnreadMessageCount() {
                    return this.unreadMessageCount_;
                }

                public Builder setUnreadMessageCount(int i) {
                    this.unreadMessageCount_ = i;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearUnreadMessageCount() {
                    this.bitField0_ &= -9;
                    this.unreadMessageCount_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static FriendMessageSession getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<FriendMessageSession> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<FriendMessageSession> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FriendMessageSession getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
        public List<FriendMessageSession> getMessageSessionsList() {
            return this.messageSessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
        public List<? extends FriendMessageSessionOrBuilder> getMessageSessionsOrBuilderList() {
            return this.messageSessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
        public int getMessageSessionsCount() {
            return this.messageSessions_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
        public FriendMessageSession getMessageSessions(int i) {
            return this.messageSessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
        public FriendMessageSessionOrBuilder getMessageSessionsOrBuilder(int i) {
            return this.messageSessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
        public boolean hasTimestamp() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
        public int getTimestamp() {
            return this.timestamp_;
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
            for (int i = 0; i < this.messageSessions_.size(); i++) {
                codedOutputStream.writeMessage(1, this.messageSessions_.get(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(2, this.timestamp_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = 0;
            for (int i2 = 0; i2 < this.messageSessions_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(1, this.messageSessions_.get(i2));
            }
            if ((this.bitField0_ & 1) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.timestamp_);
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
            if (!(obj instanceof CFriendsMessages_GetActiveMessageSessions_Response)) {
                return super.equals(obj);
            }
            CFriendsMessages_GetActiveMessageSessions_Response cFriendsMessages_GetActiveMessageSessions_Response = (CFriendsMessages_GetActiveMessageSessions_Response) obj;
            if (getMessageSessionsList().equals(cFriendsMessages_GetActiveMessageSessions_Response.getMessageSessionsList()) && hasTimestamp() == cFriendsMessages_GetActiveMessageSessions_Response.hasTimestamp()) {
                return (!hasTimestamp() || getTimestamp() == cFriendsMessages_GetActiveMessageSessions_Response.getTimestamp()) && getUnknownFields().equals(cFriendsMessages_GetActiveMessageSessions_Response.getUnknownFields());
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
            if (getMessageSessionsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getMessageSessionsList().hashCode();
            }
            if (hasTimestamp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getTimestamp();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(InputStream inputStream) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendsMessages_GetActiveMessageSessions_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendsMessages_GetActiveMessageSessions_Response cFriendsMessages_GetActiveMessageSessions_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendsMessages_GetActiveMessageSessions_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> messageSessionsBuilder_;
            private List<FriendMessageSession> messageSessions_;
            private int timestamp_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendsMessages_GetActiveMessageSessions_Response.class, Builder.class);
            }

            private Builder() {
                this.messageSessions_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.messageSessions_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.messageSessions_ = Collections.emptyList();
                } else {
                    this.messageSessions_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.timestamp_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendsMessages_GetActiveMessageSessions_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendsMessages_GetActiveMessageSessions_Response getDefaultInstanceForType() {
                return CFriendsMessages_GetActiveMessageSessions_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendsMessages_GetActiveMessageSessions_Response build() {
                CFriendsMessages_GetActiveMessageSessions_Response cFriendsMessages_GetActiveMessageSessions_ResponseBuildPartial = buildPartial();
                if (cFriendsMessages_GetActiveMessageSessions_ResponseBuildPartial.isInitialized()) {
                    return cFriendsMessages_GetActiveMessageSessions_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendsMessages_GetActiveMessageSessions_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendsMessages_GetActiveMessageSessions_Response buildPartial() {
                CFriendsMessages_GetActiveMessageSessions_Response cFriendsMessages_GetActiveMessageSessions_Response = new CFriendsMessages_GetActiveMessageSessions_Response(this);
                buildPartialRepeatedFields(cFriendsMessages_GetActiveMessageSessions_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendsMessages_GetActiveMessageSessions_Response);
                }
                onBuilt();
                return cFriendsMessages_GetActiveMessageSessions_Response;
            }

            private void buildPartialRepeatedFields(CFriendsMessages_GetActiveMessageSessions_Response cFriendsMessages_GetActiveMessageSessions_Response) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.messageSessions_ = Collections.unmodifiableList(this.messageSessions_);
                        this.bitField0_ &= -2;
                    }
                    cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_ = this.messageSessions_;
                    return;
                }
                cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CFriendsMessages_GetActiveMessageSessions_Response cFriendsMessages_GetActiveMessageSessions_Response) {
                int i;
                if ((this.bitField0_ & 2) != 0) {
                    cFriendsMessages_GetActiveMessageSessions_Response.timestamp_ = this.timestamp_;
                    i = 1;
                } else {
                    i = 0;
                }
                cFriendsMessages_GetActiveMessageSessions_Response.bitField0_ = i | cFriendsMessages_GetActiveMessageSessions_Response.bitField0_;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendsMessages_GetActiveMessageSessions_Response) {
                    return mergeFrom((CFriendsMessages_GetActiveMessageSessions_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendsMessages_GetActiveMessageSessions_Response cFriendsMessages_GetActiveMessageSessions_Response) {
                if (cFriendsMessages_GetActiveMessageSessions_Response == CFriendsMessages_GetActiveMessageSessions_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.messageSessionsBuilder_ == null) {
                    if (!cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_.isEmpty()) {
                        if (this.messageSessions_.isEmpty()) {
                            this.messageSessions_ = cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMessageSessionsIsMutable();
                            this.messageSessions_.addAll(cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_);
                        }
                        onChanged();
                    }
                } else if (!cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_.isEmpty()) {
                    if (this.messageSessionsBuilder_.isEmpty()) {
                        this.messageSessionsBuilder_.dispose();
                        this.messageSessionsBuilder_ = null;
                        this.messageSessions_ = cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_;
                        this.bitField0_ &= -2;
                        this.messageSessionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetMessageSessionsFieldBuilder() : null;
                    } else {
                        this.messageSessionsBuilder_.addAllMessages(cFriendsMessages_GetActiveMessageSessions_Response.messageSessions_);
                    }
                }
                if (cFriendsMessages_GetActiveMessageSessions_Response.hasTimestamp()) {
                    setTimestamp(cFriendsMessages_GetActiveMessageSessions_Response.getTimestamp());
                }
                mergeUnknownFields(cFriendsMessages_GetActiveMessageSessions_Response.getUnknownFields());
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
                                    FriendMessageSession friendMessageSession = (FriendMessageSession) codedInputStream.readMessage(FriendMessageSession.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureMessageSessionsIsMutable();
                                        this.messageSessions_.add(friendMessageSession);
                                    } else {
                                        repeatedFieldBuilder.addMessage(friendMessageSession);
                                    }
                                } else if (tag == 16) {
                                    this.timestamp_ = codedInputStream.readUInt32();
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

            private void ensureMessageSessionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.messageSessions_ = new ArrayList(this.messageSessions_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
            public List<FriendMessageSession> getMessageSessionsList() {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.messageSessions_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
            public int getMessageSessionsCount() {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messageSessions_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
            public FriendMessageSession getMessageSessions(int i) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messageSessions_.get(i);
                }
                return (FriendMessageSession) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setMessageSessions(int i, FriendMessageSession friendMessageSession) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friendMessageSession.getClass();
                    ensureMessageSessionsIsMutable();
                    this.messageSessions_.set(i, friendMessageSession);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, friendMessageSession);
                }
                return this;
            }

            public Builder setMessageSessions(int i, FriendMessageSession.Builder builder) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessageSessionsIsMutable();
                    this.messageSessions_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMessageSessions(FriendMessageSession friendMessageSession) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friendMessageSession.getClass();
                    ensureMessageSessionsIsMutable();
                    this.messageSessions_.add(friendMessageSession);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(friendMessageSession);
                }
                return this;
            }

            public Builder addMessageSessions(int i, FriendMessageSession friendMessageSession) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    friendMessageSession.getClass();
                    ensureMessageSessionsIsMutable();
                    this.messageSessions_.add(i, friendMessageSession);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, friendMessageSession);
                }
                return this;
            }

            public Builder addMessageSessions(FriendMessageSession.Builder builder) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessageSessionsIsMutable();
                    this.messageSessions_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMessageSessions(int i, FriendMessageSession.Builder builder) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessageSessionsIsMutable();
                    this.messageSessions_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMessageSessions(Iterable<? extends FriendMessageSession> iterable) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessageSessionsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.messageSessions_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMessageSessions() {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.messageSessions_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeMessageSessions(int i) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureMessageSessionsIsMutable();
                    this.messageSessions_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public FriendMessageSession.Builder getMessageSessionsBuilder(int i) {
                return (FriendMessageSession.Builder) internalGetMessageSessionsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
            public FriendMessageSessionOrBuilder getMessageSessionsOrBuilder(int i) {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.messageSessions_.get(i);
                }
                return (FriendMessageSessionOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
            public List<? extends FriendMessageSessionOrBuilder> getMessageSessionsOrBuilderList() {
                RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> repeatedFieldBuilder = this.messageSessionsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.messageSessions_);
            }

            public FriendMessageSession.Builder addMessageSessionsBuilder() {
                return (FriendMessageSession.Builder) internalGetMessageSessionsFieldBuilder().addBuilder(FriendMessageSession.getDefaultInstance());
            }

            public FriendMessageSession.Builder addMessageSessionsBuilder(int i) {
                return (FriendMessageSession.Builder) internalGetMessageSessionsFieldBuilder().addBuilder(i, FriendMessageSession.getDefaultInstance());
            }

            public List<FriendMessageSession.Builder> getMessageSessionsBuilderList() {
                return internalGetMessageSessionsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<FriendMessageSession, FriendMessageSession.Builder, FriendMessageSessionOrBuilder> internalGetMessageSessionsFieldBuilder() {
                if (this.messageSessionsBuilder_ == null) {
                    this.messageSessionsBuilder_ = new RepeatedFieldBuilder<>(this.messageSessions_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.messageSessions_ = null;
                }
                return this.messageSessionsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
            public boolean hasTimestamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_ResponseOrBuilder
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
        }

        public static CFriendsMessages_GetActiveMessageSessions_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendsMessages_GetActiveMessageSessions_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendsMessages_GetActiveMessageSessions_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendsMessages_GetActiveMessageSessions_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_SendMessage_Request extends GeneratedMessage implements CFriendMessages_SendMessage_RequestOrBuilder {
        public static final int CHAT_ENTRY_TYPE_FIELD_NUMBER = 2;
        public static final int CLIENT_MESSAGE_ID_FIELD_NUMBER = 8;
        public static final int CONTAINS_BBCODE_FIELD_NUMBER = 4;
        private static final CFriendMessages_SendMessage_Request DEFAULT_INSTANCE;
        public static final int ECHO_TO_SENDER_FIELD_NUMBER = 5;
        public static final int LOW_PRIORITY_FIELD_NUMBER = 6;
        public static final int MESSAGE_FIELD_NUMBER = 3;
        private static final Parser<CFriendMessages_SendMessage_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int chatEntryType_;
        private volatile Object clientMessageId_;
        private boolean containsBbcode_;
        private boolean echoToSender_;
        private boolean lowPriority_;
        private byte memoizedIsInitialized;
        private volatile Object message_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_SendMessage_Request.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_SendMessage_Request();
            PARSER = new AbstractParser<CFriendMessages_SendMessage_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_Request.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_SendMessage_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_SendMessage_Request.newBuilder();
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

        private CFriendMessages_SendMessage_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.chatEntryType_ = 0;
            this.message_ = "";
            this.containsBbcode_ = false;
            this.echoToSender_ = false;
            this.lowPriority_ = false;
            this.clientMessageId_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_SendMessage_Request() {
            this.steamid_ = 0L;
            this.chatEntryType_ = 0;
            this.message_ = "";
            this.containsBbcode_ = false;
            this.echoToSender_ = false;
            this.lowPriority_ = false;
            this.clientMessageId_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.message_ = "";
            this.clientMessageId_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_SendMessage_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean hasChatEntryType() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public int getChatEntryType() {
            return this.chatEntryType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean hasContainsBbcode() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean getContainsBbcode() {
            return this.containsBbcode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean hasEchoToSender() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean getEchoToSender() {
            return this.echoToSender_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean hasLowPriority() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean getLowPriority() {
            return this.lowPriority_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public boolean hasClientMessageId() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public String getClientMessageId() {
            Object obj = this.clientMessageId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.clientMessageId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
        public ByteString getClientMessageIdBytes() {
            Object obj = this.clientMessageId_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.clientMessageId_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeInt32(2, this.chatEntryType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.message_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.containsBbcode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.echoToSender_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeBool(6, this.lowPriority_);
            }
            if ((this.bitField0_ & 64) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.clientMessageId_);
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
                iComputeFixed64Size += GeneratedMessage.computeStringSize(3, this.message_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(4, this.containsBbcode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(5, this.echoToSender_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(6, this.lowPriority_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(8, this.clientMessageId_);
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
            if (!(obj instanceof CFriendMessages_SendMessage_Request)) {
                return super.equals(obj);
            }
            CFriendMessages_SendMessage_Request cFriendMessages_SendMessage_Request = (CFriendMessages_SendMessage_Request) obj;
            if (hasSteamid() != cFriendMessages_SendMessage_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cFriendMessages_SendMessage_Request.getSteamid()) || hasChatEntryType() != cFriendMessages_SendMessage_Request.hasChatEntryType()) {
                return false;
            }
            if ((hasChatEntryType() && getChatEntryType() != cFriendMessages_SendMessage_Request.getChatEntryType()) || hasMessage() != cFriendMessages_SendMessage_Request.hasMessage()) {
                return false;
            }
            if ((hasMessage() && !getMessage().equals(cFriendMessages_SendMessage_Request.getMessage())) || hasContainsBbcode() != cFriendMessages_SendMessage_Request.hasContainsBbcode()) {
                return false;
            }
            if ((hasContainsBbcode() && getContainsBbcode() != cFriendMessages_SendMessage_Request.getContainsBbcode()) || hasEchoToSender() != cFriendMessages_SendMessage_Request.hasEchoToSender()) {
                return false;
            }
            if ((hasEchoToSender() && getEchoToSender() != cFriendMessages_SendMessage_Request.getEchoToSender()) || hasLowPriority() != cFriendMessages_SendMessage_Request.hasLowPriority()) {
                return false;
            }
            if ((!hasLowPriority() || getLowPriority() == cFriendMessages_SendMessage_Request.getLowPriority()) && hasClientMessageId() == cFriendMessages_SendMessage_Request.hasClientMessageId()) {
                return (!hasClientMessageId() || getClientMessageId().equals(cFriendMessages_SendMessage_Request.getClientMessageId())) && getUnknownFields().equals(cFriendMessages_SendMessage_Request.getUnknownFields());
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
            if (hasContainsBbcode()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getContainsBbcode());
            }
            if (hasEchoToSender()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getEchoToSender());
            }
            if (hasLowPriority()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getLowPriority());
            }
            if (hasClientMessageId()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getClientMessageId().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_SendMessage_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_SendMessage_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_SendMessage_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_SendMessage_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_SendMessage_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_SendMessage_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_SendMessage_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_SendMessage_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_SendMessage_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_SendMessage_Request cFriendMessages_SendMessage_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_SendMessage_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_SendMessage_RequestOrBuilder {
            private int bitField0_;
            private int chatEntryType_;
            private Object clientMessageId_;
            private boolean containsBbcode_;
            private boolean echoToSender_;
            private boolean lowPriority_;
            private Object message_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_SendMessage_Request.class, Builder.class);
            }

            private Builder() {
                this.message_ = "";
                this.clientMessageId_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                this.clientMessageId_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.chatEntryType_ = 0;
                this.message_ = "";
                this.containsBbcode_ = false;
                this.echoToSender_ = false;
                this.lowPriority_ = false;
                this.clientMessageId_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_SendMessage_Request getDefaultInstanceForType() {
                return CFriendMessages_SendMessage_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_SendMessage_Request build() {
                CFriendMessages_SendMessage_Request cFriendMessages_SendMessage_RequestBuildPartial = buildPartial();
                if (cFriendMessages_SendMessage_RequestBuildPartial.isInitialized()) {
                    return cFriendMessages_SendMessage_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_SendMessage_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_SendMessage_Request buildPartial() {
                CFriendMessages_SendMessage_Request cFriendMessages_SendMessage_Request = new CFriendMessages_SendMessage_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_SendMessage_Request);
                }
                onBuilt();
                return cFriendMessages_SendMessage_Request;
            }

            private void buildPartial0(CFriendMessages_SendMessage_Request cFriendMessages_SendMessage_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_SendMessage_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_SendMessage_Request.chatEntryType_ = this.chatEntryType_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cFriendMessages_SendMessage_Request.message_ = this.message_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cFriendMessages_SendMessage_Request.containsBbcode_ = this.containsBbcode_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cFriendMessages_SendMessage_Request.echoToSender_ = this.echoToSender_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cFriendMessages_SendMessage_Request.lowPriority_ = this.lowPriority_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cFriendMessages_SendMessage_Request.clientMessageId_ = this.clientMessageId_;
                    i |= 64;
                }
                cFriendMessages_SendMessage_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_SendMessage_Request) {
                    return mergeFrom((CFriendMessages_SendMessage_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_SendMessage_Request cFriendMessages_SendMessage_Request) {
                if (cFriendMessages_SendMessage_Request == CFriendMessages_SendMessage_Request.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_SendMessage_Request.hasSteamid()) {
                    setSteamid(cFriendMessages_SendMessage_Request.getSteamid());
                }
                if (cFriendMessages_SendMessage_Request.hasChatEntryType()) {
                    setChatEntryType(cFriendMessages_SendMessage_Request.getChatEntryType());
                }
                if (cFriendMessages_SendMessage_Request.hasMessage()) {
                    this.message_ = cFriendMessages_SendMessage_Request.message_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cFriendMessages_SendMessage_Request.hasContainsBbcode()) {
                    setContainsBbcode(cFriendMessages_SendMessage_Request.getContainsBbcode());
                }
                if (cFriendMessages_SendMessage_Request.hasEchoToSender()) {
                    setEchoToSender(cFriendMessages_SendMessage_Request.getEchoToSender());
                }
                if (cFriendMessages_SendMessage_Request.hasLowPriority()) {
                    setLowPriority(cFriendMessages_SendMessage_Request.getLowPriority());
                }
                if (cFriendMessages_SendMessage_Request.hasClientMessageId()) {
                    this.clientMessageId_ = cFriendMessages_SendMessage_Request.clientMessageId_;
                    this.bitField0_ |= 64;
                    onChanged();
                }
                mergeUnknownFields(cFriendMessages_SendMessage_Request.getUnknownFields());
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
                                } else if (tag == 32) {
                                    this.containsBbcode_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.echoToSender_ = codedInputStream.readBool();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.lowPriority_ = codedInputStream.readBool();
                                    this.bitField0_ |= 32;
                                } else if (tag == 66) {
                                    this.clientMessageId_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean hasChatEntryType() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
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
                this.message_ = CFriendMessages_SendMessage_Request.getDefaultInstance().getMessage();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean hasContainsBbcode() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean getContainsBbcode() {
                return this.containsBbcode_;
            }

            public Builder setContainsBbcode(boolean z) {
                this.containsBbcode_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearContainsBbcode() {
                this.bitField0_ &= -9;
                this.containsBbcode_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean hasEchoToSender() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean hasLowPriority() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean getLowPriority() {
                return this.lowPriority_;
            }

            public Builder setLowPriority(boolean z) {
                this.lowPriority_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearLowPriority() {
                this.bitField0_ &= -33;
                this.lowPriority_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public boolean hasClientMessageId() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public String getClientMessageId() {
                Object obj = this.clientMessageId_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.clientMessageId_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_RequestOrBuilder
            public ByteString getClientMessageIdBytes() {
                Object obj = this.clientMessageId_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.clientMessageId_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setClientMessageId(String str) {
                str.getClass();
                this.clientMessageId_ = str;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearClientMessageId() {
                this.clientMessageId_ = CFriendMessages_SendMessage_Request.getDefaultInstance().getClientMessageId();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public Builder setClientMessageIdBytes(ByteString byteString) {
                byteString.getClass();
                this.clientMessageId_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_SendMessage_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_SendMessage_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_SendMessage_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_SendMessage_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_SendMessage_Response extends GeneratedMessage implements CFriendMessages_SendMessage_ResponseOrBuilder {
        private static final CFriendMessages_SendMessage_Response DEFAULT_INSTANCE;
        public static final int MESSAGE_WITHOUT_BB_CODE_FIELD_NUMBER = 4;
        public static final int MODIFIED_MESSAGE_FIELD_NUMBER = 1;
        public static final int ORDINAL_FIELD_NUMBER = 3;
        private static final Parser<CFriendMessages_SendMessage_Response> PARSER;
        public static final int SERVER_TIMESTAMP_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object messageWithoutBbCode_;
        private volatile Object modifiedMessage_;
        private int ordinal_;
        private int serverTimestamp_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_SendMessage_Response.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_SendMessage_Response();
            PARSER = new AbstractParser<CFriendMessages_SendMessage_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_Response.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_SendMessage_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_SendMessage_Response.newBuilder();
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

        private CFriendMessages_SendMessage_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.modifiedMessage_ = "";
            this.serverTimestamp_ = 0;
            this.ordinal_ = 0;
            this.messageWithoutBbCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_SendMessage_Response() {
            this.modifiedMessage_ = "";
            this.serverTimestamp_ = 0;
            this.ordinal_ = 0;
            this.messageWithoutBbCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.modifiedMessage_ = "";
            this.messageWithoutBbCode_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_SendMessage_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public boolean hasModifiedMessage() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public String getModifiedMessage() {
            Object obj = this.modifiedMessage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.modifiedMessage_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public ByteString getModifiedMessageBytes() {
            Object obj = this.modifiedMessage_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.modifiedMessage_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public boolean hasServerTimestamp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public int getServerTimestamp() {
            return this.serverTimestamp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public boolean hasOrdinal() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public int getOrdinal() {
            return this.ordinal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public boolean hasMessageWithoutBbCode() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public String getMessageWithoutBbCode() {
            Object obj = this.messageWithoutBbCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.messageWithoutBbCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
        public ByteString getMessageWithoutBbCodeBytes() {
            Object obj = this.messageWithoutBbCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.messageWithoutBbCode_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.modifiedMessage_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.serverTimestamp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.ordinal_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.messageWithoutBbCode_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.modifiedMessage_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(2, this.serverTimestamp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(3, this.ordinal_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(4, this.messageWithoutBbCode_);
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
            if (!(obj instanceof CFriendMessages_SendMessage_Response)) {
                return super.equals(obj);
            }
            CFriendMessages_SendMessage_Response cFriendMessages_SendMessage_Response = (CFriendMessages_SendMessage_Response) obj;
            if (hasModifiedMessage() != cFriendMessages_SendMessage_Response.hasModifiedMessage()) {
                return false;
            }
            if ((hasModifiedMessage() && !getModifiedMessage().equals(cFriendMessages_SendMessage_Response.getModifiedMessage())) || hasServerTimestamp() != cFriendMessages_SendMessage_Response.hasServerTimestamp()) {
                return false;
            }
            if ((hasServerTimestamp() && getServerTimestamp() != cFriendMessages_SendMessage_Response.getServerTimestamp()) || hasOrdinal() != cFriendMessages_SendMessage_Response.hasOrdinal()) {
                return false;
            }
            if ((!hasOrdinal() || getOrdinal() == cFriendMessages_SendMessage_Response.getOrdinal()) && hasMessageWithoutBbCode() == cFriendMessages_SendMessage_Response.hasMessageWithoutBbCode()) {
                return (!hasMessageWithoutBbCode() || getMessageWithoutBbCode().equals(cFriendMessages_SendMessage_Response.getMessageWithoutBbCode())) && getUnknownFields().equals(cFriendMessages_SendMessage_Response.getUnknownFields());
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
            if (hasModifiedMessage()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getModifiedMessage().hashCode();
            }
            if (hasServerTimestamp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getServerTimestamp();
            }
            if (hasOrdinal()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getOrdinal();
            }
            if (hasMessageWithoutBbCode()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMessageWithoutBbCode().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_SendMessage_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_SendMessage_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_SendMessage_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_SendMessage_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_SendMessage_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_SendMessage_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_SendMessage_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_SendMessage_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_SendMessage_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_SendMessage_Response cFriendMessages_SendMessage_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_SendMessage_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_SendMessage_ResponseOrBuilder {
            private int bitField0_;
            private Object messageWithoutBbCode_;
            private Object modifiedMessage_;
            private int ordinal_;
            private int serverTimestamp_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_SendMessage_Response.class, Builder.class);
            }

            private Builder() {
                this.modifiedMessage_ = "";
                this.messageWithoutBbCode_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.modifiedMessage_ = "";
                this.messageWithoutBbCode_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.modifiedMessage_ = "";
                this.serverTimestamp_ = 0;
                this.ordinal_ = 0;
                this.messageWithoutBbCode_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_SendMessage_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_SendMessage_Response getDefaultInstanceForType() {
                return CFriendMessages_SendMessage_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_SendMessage_Response build() {
                CFriendMessages_SendMessage_Response cFriendMessages_SendMessage_ResponseBuildPartial = buildPartial();
                if (cFriendMessages_SendMessage_ResponseBuildPartial.isInitialized()) {
                    return cFriendMessages_SendMessage_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_SendMessage_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_SendMessage_Response buildPartial() {
                CFriendMessages_SendMessage_Response cFriendMessages_SendMessage_Response = new CFriendMessages_SendMessage_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_SendMessage_Response);
                }
                onBuilt();
                return cFriendMessages_SendMessage_Response;
            }

            private void buildPartial0(CFriendMessages_SendMessage_Response cFriendMessages_SendMessage_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_SendMessage_Response.modifiedMessage_ = this.modifiedMessage_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_SendMessage_Response.serverTimestamp_ = this.serverTimestamp_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cFriendMessages_SendMessage_Response.ordinal_ = this.ordinal_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cFriendMessages_SendMessage_Response.messageWithoutBbCode_ = this.messageWithoutBbCode_;
                    i |= 8;
                }
                cFriendMessages_SendMessage_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_SendMessage_Response) {
                    return mergeFrom((CFriendMessages_SendMessage_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_SendMessage_Response cFriendMessages_SendMessage_Response) {
                if (cFriendMessages_SendMessage_Response == CFriendMessages_SendMessage_Response.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_SendMessage_Response.hasModifiedMessage()) {
                    this.modifiedMessage_ = cFriendMessages_SendMessage_Response.modifiedMessage_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cFriendMessages_SendMessage_Response.hasServerTimestamp()) {
                    setServerTimestamp(cFriendMessages_SendMessage_Response.getServerTimestamp());
                }
                if (cFriendMessages_SendMessage_Response.hasOrdinal()) {
                    setOrdinal(cFriendMessages_SendMessage_Response.getOrdinal());
                }
                if (cFriendMessages_SendMessage_Response.hasMessageWithoutBbCode()) {
                    this.messageWithoutBbCode_ = cFriendMessages_SendMessage_Response.messageWithoutBbCode_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                mergeUnknownFields(cFriendMessages_SendMessage_Response.getUnknownFields());
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
                                    this.modifiedMessage_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.serverTimestamp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.ordinal_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.messageWithoutBbCode_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public boolean hasModifiedMessage() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public String getModifiedMessage() {
                Object obj = this.modifiedMessage_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.modifiedMessage_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public ByteString getModifiedMessageBytes() {
                Object obj = this.modifiedMessage_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.modifiedMessage_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setModifiedMessage(String str) {
                str.getClass();
                this.modifiedMessage_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearModifiedMessage() {
                this.modifiedMessage_ = CFriendMessages_SendMessage_Response.getDefaultInstance().getModifiedMessage();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setModifiedMessageBytes(ByteString byteString) {
                byteString.getClass();
                this.modifiedMessage_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public boolean hasServerTimestamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public int getServerTimestamp() {
                return this.serverTimestamp_;
            }

            public Builder setServerTimestamp(int i) {
                this.serverTimestamp_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearServerTimestamp() {
                this.bitField0_ &= -3;
                this.serverTimestamp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public boolean hasOrdinal() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public int getOrdinal() {
                return this.ordinal_;
            }

            public Builder setOrdinal(int i) {
                this.ordinal_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearOrdinal() {
                this.bitField0_ &= -5;
                this.ordinal_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public boolean hasMessageWithoutBbCode() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public String getMessageWithoutBbCode() {
                Object obj = this.messageWithoutBbCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.messageWithoutBbCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_ResponseOrBuilder
            public ByteString getMessageWithoutBbCodeBytes() {
                Object obj = this.messageWithoutBbCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.messageWithoutBbCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setMessageWithoutBbCode(String str) {
                str.getClass();
                this.messageWithoutBbCode_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMessageWithoutBbCode() {
                this.messageWithoutBbCode_ = CFriendMessages_SendMessage_Response.getDefaultInstance().getMessageWithoutBbCode();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setMessageWithoutBbCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.messageWithoutBbCode_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_SendMessage_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_SendMessage_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_SendMessage_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_SendMessage_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_AckMessage_Notification extends GeneratedMessage implements CFriendMessages_AckMessage_NotificationOrBuilder {
        private static final CFriendMessages_AckMessage_Notification DEFAULT_INSTANCE;
        private static final Parser<CFriendMessages_AckMessage_Notification> PARSER;
        public static final int STEAMID_PARTNER_FIELD_NUMBER = 1;
        public static final int TIMESTAMP_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamidPartner_;
        private int timestamp_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_AckMessage_Notification.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_AckMessage_Notification();
            PARSER = new AbstractParser<CFriendMessages_AckMessage_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_Notification.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_AckMessage_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_AckMessage_Notification.newBuilder();
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

        private CFriendMessages_AckMessage_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamidPartner_ = 0L;
            this.timestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_AckMessage_Notification() {
            this.steamidPartner_ = 0L;
            this.timestamp_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_AckMessage_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_AckMessage_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_AckMessage_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
        public boolean hasSteamidPartner() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
        public long getSteamidPartner() {
            return this.steamidPartner_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
        public boolean hasTimestamp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
        public int getTimestamp() {
            return this.timestamp_;
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
                codedOutputStream.writeFixed64(1, this.steamidPartner_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.timestamp_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamidPartner_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.timestamp_);
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
            if (!(obj instanceof CFriendMessages_AckMessage_Notification)) {
                return super.equals(obj);
            }
            CFriendMessages_AckMessage_Notification cFriendMessages_AckMessage_Notification = (CFriendMessages_AckMessage_Notification) obj;
            if (hasSteamidPartner() != cFriendMessages_AckMessage_Notification.hasSteamidPartner()) {
                return false;
            }
            if ((!hasSteamidPartner() || getSteamidPartner() == cFriendMessages_AckMessage_Notification.getSteamidPartner()) && hasTimestamp() == cFriendMessages_AckMessage_Notification.hasTimestamp()) {
                return (!hasTimestamp() || getTimestamp() == cFriendMessages_AckMessage_Notification.getTimestamp()) && getUnknownFields().equals(cFriendMessages_AckMessage_Notification.getUnknownFields());
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
            if (hasSteamidPartner()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamidPartner());
            }
            if (hasTimestamp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getTimestamp();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_AckMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_AckMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_AckMessage_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_AckMessage_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_AckMessage_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_AckMessage_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_AckMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_AckMessage_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_AckMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_AckMessage_Notification cFriendMessages_AckMessage_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_AckMessage_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_AckMessage_NotificationOrBuilder {
            private int bitField0_;
            private long steamidPartner_;
            private int timestamp_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_AckMessage_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_AckMessage_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_AckMessage_Notification.class, Builder.class);
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
                this.steamidPartner_ = 0L;
                this.timestamp_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_AckMessage_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_AckMessage_Notification getDefaultInstanceForType() {
                return CFriendMessages_AckMessage_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_AckMessage_Notification build() {
                CFriendMessages_AckMessage_Notification cFriendMessages_AckMessage_NotificationBuildPartial = buildPartial();
                if (cFriendMessages_AckMessage_NotificationBuildPartial.isInitialized()) {
                    return cFriendMessages_AckMessage_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_AckMessage_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_AckMessage_Notification buildPartial() {
                CFriendMessages_AckMessage_Notification cFriendMessages_AckMessage_Notification = new CFriendMessages_AckMessage_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_AckMessage_Notification);
                }
                onBuilt();
                return cFriendMessages_AckMessage_Notification;
            }

            private void buildPartial0(CFriendMessages_AckMessage_Notification cFriendMessages_AckMessage_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_AckMessage_Notification.steamidPartner_ = this.steamidPartner_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_AckMessage_Notification.timestamp_ = this.timestamp_;
                    i |= 2;
                }
                cFriendMessages_AckMessage_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_AckMessage_Notification) {
                    return mergeFrom((CFriendMessages_AckMessage_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_AckMessage_Notification cFriendMessages_AckMessage_Notification) {
                if (cFriendMessages_AckMessage_Notification == CFriendMessages_AckMessage_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_AckMessage_Notification.hasSteamidPartner()) {
                    setSteamidPartner(cFriendMessages_AckMessage_Notification.getSteamidPartner());
                }
                if (cFriendMessages_AckMessage_Notification.hasTimestamp()) {
                    setTimestamp(cFriendMessages_AckMessage_Notification.getTimestamp());
                }
                mergeUnknownFields(cFriendMessages_AckMessage_Notification.getUnknownFields());
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
                                    this.steamidPartner_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.timestamp_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
            public boolean hasSteamidPartner() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
            public long getSteamidPartner() {
                return this.steamidPartner_;
            }

            public Builder setSteamidPartner(long j) {
                this.steamidPartner_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSteamidPartner() {
                this.bitField0_ &= -2;
                this.steamidPartner_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
            public boolean hasTimestamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_NotificationOrBuilder
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
        }

        public static CFriendMessages_AckMessage_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_AckMessage_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_AckMessage_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_AckMessage_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_IsInFriendsUIBeta_Request extends GeneratedMessage implements CFriendMessages_IsInFriendsUIBeta_RequestOrBuilder {
        private static final CFriendMessages_IsInFriendsUIBeta_Request DEFAULT_INSTANCE;
        private static final Parser<CFriendMessages_IsInFriendsUIBeta_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_IsInFriendsUIBeta_Request.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_IsInFriendsUIBeta_Request();
            PARSER = new AbstractParser<CFriendMessages_IsInFriendsUIBeta_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_Request.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_IsInFriendsUIBeta_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_IsInFriendsUIBeta_Request.newBuilder();
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

        private CFriendMessages_IsInFriendsUIBeta_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_IsInFriendsUIBeta_Request() {
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_IsInFriendsUIBeta_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_RequestOrBuilder
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
            if (!(obj instanceof CFriendMessages_IsInFriendsUIBeta_Request)) {
                return super.equals(obj);
            }
            CFriendMessages_IsInFriendsUIBeta_Request cFriendMessages_IsInFriendsUIBeta_Request = (CFriendMessages_IsInFriendsUIBeta_Request) obj;
            if (hasSteamid() != cFriendMessages_IsInFriendsUIBeta_Request.hasSteamid()) {
                return false;
            }
            return (!hasSteamid() || getSteamid() == cFriendMessages_IsInFriendsUIBeta_Request.getSteamid()) && getUnknownFields().equals(cFriendMessages_IsInFriendsUIBeta_Request.getUnknownFields());
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

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_IsInFriendsUIBeta_Request cFriendMessages_IsInFriendsUIBeta_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_IsInFriendsUIBeta_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_IsInFriendsUIBeta_RequestOrBuilder {
            private int bitField0_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_IsInFriendsUIBeta_Request.class, Builder.class);
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
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_IsInFriendsUIBeta_Request getDefaultInstanceForType() {
                return CFriendMessages_IsInFriendsUIBeta_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_IsInFriendsUIBeta_Request build() {
                CFriendMessages_IsInFriendsUIBeta_Request cFriendMessages_IsInFriendsUIBeta_RequestBuildPartial = buildPartial();
                if (cFriendMessages_IsInFriendsUIBeta_RequestBuildPartial.isInitialized()) {
                    return cFriendMessages_IsInFriendsUIBeta_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_IsInFriendsUIBeta_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_IsInFriendsUIBeta_Request buildPartial() {
                CFriendMessages_IsInFriendsUIBeta_Request cFriendMessages_IsInFriendsUIBeta_Request = new CFriendMessages_IsInFriendsUIBeta_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_IsInFriendsUIBeta_Request);
                }
                onBuilt();
                return cFriendMessages_IsInFriendsUIBeta_Request;
            }

            private void buildPartial0(CFriendMessages_IsInFriendsUIBeta_Request cFriendMessages_IsInFriendsUIBeta_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cFriendMessages_IsInFriendsUIBeta_Request.steamid_ = this.steamid_;
                } else {
                    i = 0;
                }
                cFriendMessages_IsInFriendsUIBeta_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_IsInFriendsUIBeta_Request) {
                    return mergeFrom((CFriendMessages_IsInFriendsUIBeta_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_IsInFriendsUIBeta_Request cFriendMessages_IsInFriendsUIBeta_Request) {
                if (cFriendMessages_IsInFriendsUIBeta_Request == CFriendMessages_IsInFriendsUIBeta_Request.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_IsInFriendsUIBeta_Request.hasSteamid()) {
                    setSteamid(cFriendMessages_IsInFriendsUIBeta_Request.getSteamid());
                }
                mergeUnknownFields(cFriendMessages_IsInFriendsUIBeta_Request.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_RequestOrBuilder
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

        public static CFriendMessages_IsInFriendsUIBeta_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_IsInFriendsUIBeta_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_IsInFriendsUIBeta_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_IsInFriendsUIBeta_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_IsInFriendsUIBeta_Response extends GeneratedMessage implements CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder {
        private static final CFriendMessages_IsInFriendsUIBeta_Response DEFAULT_INSTANCE;
        public static final int HAS_USED_FRIENDSUI_FIELD_NUMBER = 2;
        public static final int ONLINE_IN_FRIENDSUI_FIELD_NUMBER = 1;
        private static final Parser<CFriendMessages_IsInFriendsUIBeta_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean hasUsedFriendsui_;
        private byte memoizedIsInitialized;
        private boolean onlineInFriendsui_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_IsInFriendsUIBeta_Response.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_IsInFriendsUIBeta_Response();
            PARSER = new AbstractParser<CFriendMessages_IsInFriendsUIBeta_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_Response.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_IsInFriendsUIBeta_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_IsInFriendsUIBeta_Response.newBuilder();
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

        private CFriendMessages_IsInFriendsUIBeta_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.onlineInFriendsui_ = false;
            this.hasUsedFriendsui_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_IsInFriendsUIBeta_Response() {
            this.onlineInFriendsui_ = false;
            this.hasUsedFriendsui_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_IsInFriendsUIBeta_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
        public boolean hasOnlineInFriendsui() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
        public boolean getOnlineInFriendsui() {
            return this.onlineInFriendsui_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
        public boolean hasHasUsedFriendsui() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
        public boolean getHasUsedFriendsui() {
            return this.hasUsedFriendsui_;
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
                codedOutputStream.writeBool(1, this.onlineInFriendsui_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.hasUsedFriendsui_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.onlineInFriendsui_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(2, this.hasUsedFriendsui_);
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
            if (!(obj instanceof CFriendMessages_IsInFriendsUIBeta_Response)) {
                return super.equals(obj);
            }
            CFriendMessages_IsInFriendsUIBeta_Response cFriendMessages_IsInFriendsUIBeta_Response = (CFriendMessages_IsInFriendsUIBeta_Response) obj;
            if (hasOnlineInFriendsui() != cFriendMessages_IsInFriendsUIBeta_Response.hasOnlineInFriendsui()) {
                return false;
            }
            if ((!hasOnlineInFriendsui() || getOnlineInFriendsui() == cFriendMessages_IsInFriendsUIBeta_Response.getOnlineInFriendsui()) && hasHasUsedFriendsui() == cFriendMessages_IsInFriendsUIBeta_Response.hasHasUsedFriendsui()) {
                return (!hasHasUsedFriendsui() || getHasUsedFriendsui() == cFriendMessages_IsInFriendsUIBeta_Response.getHasUsedFriendsui()) && getUnknownFields().equals(cFriendMessages_IsInFriendsUIBeta_Response.getUnknownFields());
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
            if (hasOnlineInFriendsui()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getOnlineInFriendsui());
            }
            if (hasHasUsedFriendsui()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getHasUsedFriendsui());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IsInFriendsUIBeta_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_IsInFriendsUIBeta_Response cFriendMessages_IsInFriendsUIBeta_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_IsInFriendsUIBeta_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder {
            private int bitField0_;
            private boolean hasUsedFriendsui_;
            private boolean onlineInFriendsui_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_IsInFriendsUIBeta_Response.class, Builder.class);
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
                this.onlineInFriendsui_ = false;
                this.hasUsedFriendsui_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IsInFriendsUIBeta_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_IsInFriendsUIBeta_Response getDefaultInstanceForType() {
                return CFriendMessages_IsInFriendsUIBeta_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_IsInFriendsUIBeta_Response build() {
                CFriendMessages_IsInFriendsUIBeta_Response cFriendMessages_IsInFriendsUIBeta_ResponseBuildPartial = buildPartial();
                if (cFriendMessages_IsInFriendsUIBeta_ResponseBuildPartial.isInitialized()) {
                    return cFriendMessages_IsInFriendsUIBeta_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_IsInFriendsUIBeta_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_IsInFriendsUIBeta_Response buildPartial() {
                CFriendMessages_IsInFriendsUIBeta_Response cFriendMessages_IsInFriendsUIBeta_Response = new CFriendMessages_IsInFriendsUIBeta_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_IsInFriendsUIBeta_Response);
                }
                onBuilt();
                return cFriendMessages_IsInFriendsUIBeta_Response;
            }

            private void buildPartial0(CFriendMessages_IsInFriendsUIBeta_Response cFriendMessages_IsInFriendsUIBeta_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_IsInFriendsUIBeta_Response.onlineInFriendsui_ = this.onlineInFriendsui_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_IsInFriendsUIBeta_Response.hasUsedFriendsui_ = this.hasUsedFriendsui_;
                    i |= 2;
                }
                cFriendMessages_IsInFriendsUIBeta_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_IsInFriendsUIBeta_Response) {
                    return mergeFrom((CFriendMessages_IsInFriendsUIBeta_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_IsInFriendsUIBeta_Response cFriendMessages_IsInFriendsUIBeta_Response) {
                if (cFriendMessages_IsInFriendsUIBeta_Response == CFriendMessages_IsInFriendsUIBeta_Response.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_IsInFriendsUIBeta_Response.hasOnlineInFriendsui()) {
                    setOnlineInFriendsui(cFriendMessages_IsInFriendsUIBeta_Response.getOnlineInFriendsui());
                }
                if (cFriendMessages_IsInFriendsUIBeta_Response.hasHasUsedFriendsui()) {
                    setHasUsedFriendsui(cFriendMessages_IsInFriendsUIBeta_Response.getHasUsedFriendsui());
                }
                mergeUnknownFields(cFriendMessages_IsInFriendsUIBeta_Response.getUnknownFields());
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
                                    this.onlineInFriendsui_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.hasUsedFriendsui_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
            public boolean hasOnlineInFriendsui() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
            public boolean getOnlineInFriendsui() {
                return this.onlineInFriendsui_;
            }

            public Builder setOnlineInFriendsui(boolean z) {
                this.onlineInFriendsui_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearOnlineInFriendsui() {
                this.bitField0_ &= -2;
                this.onlineInFriendsui_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
            public boolean hasHasUsedFriendsui() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_ResponseOrBuilder
            public boolean getHasUsedFriendsui() {
                return this.hasUsedFriendsui_;
            }

            public Builder setHasUsedFriendsui(boolean z) {
                this.hasUsedFriendsui_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearHasUsedFriendsui() {
                this.bitField0_ &= -3;
                this.hasUsedFriendsui_ = false;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_IsInFriendsUIBeta_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_IsInFriendsUIBeta_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_IsInFriendsUIBeta_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_IsInFriendsUIBeta_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_UpdateMessageReaction_Request extends GeneratedMessage implements CFriendMessages_UpdateMessageReaction_RequestOrBuilder {
        private static final CFriendMessages_UpdateMessageReaction_Request DEFAULT_INSTANCE;
        public static final int IS_ADD_FIELD_NUMBER = 6;
        public static final int ORDINAL_FIELD_NUMBER = 3;
        private static final Parser<CFriendMessages_UpdateMessageReaction_Request> PARSER;
        public static final int REACTION_FIELD_NUMBER = 5;
        public static final int REACTION_TYPE_FIELD_NUMBER = 4;
        public static final int SERVER_TIMESTAMP_FIELD_NUMBER = 2;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean isAdd_;
        private byte memoizedIsInitialized;
        private int ordinal_;
        private int reactionType_;
        private volatile Object reaction_;
        private int serverTimestamp_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_UpdateMessageReaction_Request.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_UpdateMessageReaction_Request();
            PARSER = new AbstractParser<CFriendMessages_UpdateMessageReaction_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_Request.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_UpdateMessageReaction_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_UpdateMessageReaction_Request.newBuilder();
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

        private CFriendMessages_UpdateMessageReaction_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.serverTimestamp_ = 0;
            this.ordinal_ = 0;
            this.reactionType_ = 0;
            this.reaction_ = "";
            this.isAdd_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_UpdateMessageReaction_Request() {
            this.steamid_ = 0L;
            this.serverTimestamp_ = 0;
            this.ordinal_ = 0;
            this.reactionType_ = 0;
            this.reaction_ = "";
            this.isAdd_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.reactionType_ = 0;
            this.reaction_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_UpdateMessageReaction_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public boolean hasServerTimestamp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public int getServerTimestamp() {
            return this.serverTimestamp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public boolean hasOrdinal() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public int getOrdinal() {
            return this.ordinal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public boolean hasReactionType() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public EMessageReactionType getReactionType() {
            EMessageReactionType eMessageReactionTypeForNumber = EMessageReactionType.forNumber(this.reactionType_);
            return eMessageReactionTypeForNumber == null ? EMessageReactionType.k_EMessageReactionType_Invalid : eMessageReactionTypeForNumber;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public boolean hasReaction() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public String getReaction() {
            Object obj = this.reaction_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.reaction_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public ByteString getReactionBytes() {
            Object obj = this.reaction_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.reaction_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public boolean hasIsAdd() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
        public boolean getIsAdd() {
            return this.isAdd_;
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
                codedOutputStream.writeUInt32(2, this.serverTimestamp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.ordinal_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeEnum(4, this.reactionType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.reaction_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeBool(6, this.isAdd_);
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
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.serverTimestamp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.ordinal_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeEnumSize(4, this.reactionType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(5, this.reaction_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(6, this.isAdd_);
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
            if (!(obj instanceof CFriendMessages_UpdateMessageReaction_Request)) {
                return super.equals(obj);
            }
            CFriendMessages_UpdateMessageReaction_Request cFriendMessages_UpdateMessageReaction_Request = (CFriendMessages_UpdateMessageReaction_Request) obj;
            if (hasSteamid() != cFriendMessages_UpdateMessageReaction_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cFriendMessages_UpdateMessageReaction_Request.getSteamid()) || hasServerTimestamp() != cFriendMessages_UpdateMessageReaction_Request.hasServerTimestamp()) {
                return false;
            }
            if ((hasServerTimestamp() && getServerTimestamp() != cFriendMessages_UpdateMessageReaction_Request.getServerTimestamp()) || hasOrdinal() != cFriendMessages_UpdateMessageReaction_Request.hasOrdinal()) {
                return false;
            }
            if ((hasOrdinal() && getOrdinal() != cFriendMessages_UpdateMessageReaction_Request.getOrdinal()) || hasReactionType() != cFriendMessages_UpdateMessageReaction_Request.hasReactionType()) {
                return false;
            }
            if ((hasReactionType() && this.reactionType_ != cFriendMessages_UpdateMessageReaction_Request.reactionType_) || hasReaction() != cFriendMessages_UpdateMessageReaction_Request.hasReaction()) {
                return false;
            }
            if ((!hasReaction() || getReaction().equals(cFriendMessages_UpdateMessageReaction_Request.getReaction())) && hasIsAdd() == cFriendMessages_UpdateMessageReaction_Request.hasIsAdd()) {
                return (!hasIsAdd() || getIsAdd() == cFriendMessages_UpdateMessageReaction_Request.getIsAdd()) && getUnknownFields().equals(cFriendMessages_UpdateMessageReaction_Request.getUnknownFields());
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
            if (hasServerTimestamp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getServerTimestamp();
            }
            if (hasOrdinal()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getOrdinal();
            }
            if (hasReactionType()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + this.reactionType_;
            }
            if (hasReaction()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getReaction().hashCode();
            }
            if (hasIsAdd()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getIsAdd());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_UpdateMessageReaction_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_UpdateMessageReaction_Request cFriendMessages_UpdateMessageReaction_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_UpdateMessageReaction_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_UpdateMessageReaction_RequestOrBuilder {
            private int bitField0_;
            private boolean isAdd_;
            private int ordinal_;
            private int reactionType_;
            private Object reaction_;
            private int serverTimestamp_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_UpdateMessageReaction_Request.class, Builder.class);
            }

            private Builder() {
                this.reactionType_ = 0;
                this.reaction_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.reactionType_ = 0;
                this.reaction_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.serverTimestamp_ = 0;
                this.ordinal_ = 0;
                this.reactionType_ = 0;
                this.reaction_ = "";
                this.isAdd_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_UpdateMessageReaction_Request getDefaultInstanceForType() {
                return CFriendMessages_UpdateMessageReaction_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_UpdateMessageReaction_Request build() {
                CFriendMessages_UpdateMessageReaction_Request cFriendMessages_UpdateMessageReaction_RequestBuildPartial = buildPartial();
                if (cFriendMessages_UpdateMessageReaction_RequestBuildPartial.isInitialized()) {
                    return cFriendMessages_UpdateMessageReaction_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_UpdateMessageReaction_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_UpdateMessageReaction_Request buildPartial() {
                CFriendMessages_UpdateMessageReaction_Request cFriendMessages_UpdateMessageReaction_Request = new CFriendMessages_UpdateMessageReaction_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_UpdateMessageReaction_Request);
                }
                onBuilt();
                return cFriendMessages_UpdateMessageReaction_Request;
            }

            private void buildPartial0(CFriendMessages_UpdateMessageReaction_Request cFriendMessages_UpdateMessageReaction_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_UpdateMessageReaction_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_UpdateMessageReaction_Request.serverTimestamp_ = this.serverTimestamp_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cFriendMessages_UpdateMessageReaction_Request.ordinal_ = this.ordinal_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cFriendMessages_UpdateMessageReaction_Request.reactionType_ = this.reactionType_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cFriendMessages_UpdateMessageReaction_Request.reaction_ = this.reaction_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cFriendMessages_UpdateMessageReaction_Request.isAdd_ = this.isAdd_;
                    i |= 32;
                }
                cFriendMessages_UpdateMessageReaction_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_UpdateMessageReaction_Request) {
                    return mergeFrom((CFriendMessages_UpdateMessageReaction_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_UpdateMessageReaction_Request cFriendMessages_UpdateMessageReaction_Request) {
                if (cFriendMessages_UpdateMessageReaction_Request == CFriendMessages_UpdateMessageReaction_Request.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_UpdateMessageReaction_Request.hasSteamid()) {
                    setSteamid(cFriendMessages_UpdateMessageReaction_Request.getSteamid());
                }
                if (cFriendMessages_UpdateMessageReaction_Request.hasServerTimestamp()) {
                    setServerTimestamp(cFriendMessages_UpdateMessageReaction_Request.getServerTimestamp());
                }
                if (cFriendMessages_UpdateMessageReaction_Request.hasOrdinal()) {
                    setOrdinal(cFriendMessages_UpdateMessageReaction_Request.getOrdinal());
                }
                if (cFriendMessages_UpdateMessageReaction_Request.hasReactionType()) {
                    setReactionType(cFriendMessages_UpdateMessageReaction_Request.getReactionType());
                }
                if (cFriendMessages_UpdateMessageReaction_Request.hasReaction()) {
                    this.reaction_ = cFriendMessages_UpdateMessageReaction_Request.reaction_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (cFriendMessages_UpdateMessageReaction_Request.hasIsAdd()) {
                    setIsAdd(cFriendMessages_UpdateMessageReaction_Request.getIsAdd());
                }
                mergeUnknownFields(cFriendMessages_UpdateMessageReaction_Request.getUnknownFields());
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
                                    this.serverTimestamp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.ordinal_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    int i = codedInputStream.readEnum();
                                    if (EMessageReactionType.forNumber(i) == null) {
                                        mergeUnknownVarintField(4, i);
                                    } else {
                                        this.reactionType_ = i;
                                        this.bitField0_ |= 8;
                                    }
                                } else if (tag == 42) {
                                    this.reaction_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.isAdd_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public boolean hasServerTimestamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public int getServerTimestamp() {
                return this.serverTimestamp_;
            }

            public Builder setServerTimestamp(int i) {
                this.serverTimestamp_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearServerTimestamp() {
                this.bitField0_ &= -3;
                this.serverTimestamp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public boolean hasOrdinal() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public int getOrdinal() {
                return this.ordinal_;
            }

            public Builder setOrdinal(int i) {
                this.ordinal_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearOrdinal() {
                this.bitField0_ &= -5;
                this.ordinal_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public boolean hasReactionType() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public EMessageReactionType getReactionType() {
                EMessageReactionType eMessageReactionTypeForNumber = EMessageReactionType.forNumber(this.reactionType_);
                return eMessageReactionTypeForNumber == null ? EMessageReactionType.k_EMessageReactionType_Invalid : eMessageReactionTypeForNumber;
            }

            public Builder setReactionType(EMessageReactionType eMessageReactionType) {
                eMessageReactionType.getClass();
                this.bitField0_ |= 8;
                this.reactionType_ = eMessageReactionType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearReactionType() {
                this.bitField0_ &= -9;
                this.reactionType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public boolean hasReaction() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public String getReaction() {
                Object obj = this.reaction_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.reaction_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public ByteString getReactionBytes() {
                Object obj = this.reaction_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.reaction_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setReaction(String str) {
                str.getClass();
                this.reaction_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearReaction() {
                this.reaction_ = CFriendMessages_UpdateMessageReaction_Request.getDefaultInstance().getReaction();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setReactionBytes(ByteString byteString) {
                byteString.getClass();
                this.reaction_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public boolean hasIsAdd() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_RequestOrBuilder
            public boolean getIsAdd() {
                return this.isAdd_;
            }

            public Builder setIsAdd(boolean z) {
                this.isAdd_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearIsAdd() {
                this.bitField0_ &= -33;
                this.isAdd_ = false;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_UpdateMessageReaction_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_UpdateMessageReaction_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_UpdateMessageReaction_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_UpdateMessageReaction_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_UpdateMessageReaction_Response extends GeneratedMessage implements CFriendMessages_UpdateMessageReaction_ResponseOrBuilder {
        private static final CFriendMessages_UpdateMessageReaction_Response DEFAULT_INSTANCE;
        private static final Parser<CFriendMessages_UpdateMessageReaction_Response> PARSER;
        public static final int REACTORS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private Internal.IntList reactors_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_UpdateMessageReaction_Response.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_UpdateMessageReaction_Response();
            PARSER = new AbstractParser<CFriendMessages_UpdateMessageReaction_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_Response.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_UpdateMessageReaction_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_UpdateMessageReaction_Response.newBuilder();
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

        private CFriendMessages_UpdateMessageReaction_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.reactors_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_UpdateMessageReaction_Response() {
            this.reactors_ = GeneratedMessage.emptyIntList();
            this.memoizedIsInitialized = (byte) -1;
            this.reactors_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_UpdateMessageReaction_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_ResponseOrBuilder
        public List<Integer> getReactorsList() {
            return this.reactors_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_ResponseOrBuilder
        public int getReactorsCount() {
            return this.reactors_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_ResponseOrBuilder
        public int getReactors(int i) {
            return this.reactors_.getInt(i);
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
            for (int i = 0; i < this.reactors_.size(); i++) {
                codedOutputStream.writeUInt32(1, this.reactors_.getInt(i));
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
            for (int i2 = 0; i2 < this.reactors_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.reactors_.getInt(i2));
            }
            int size = iComputeUInt32SizeNoTag + getReactorsList().size() + getUnknownFields().getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CFriendMessages_UpdateMessageReaction_Response)) {
                return super.equals(obj);
            }
            CFriendMessages_UpdateMessageReaction_Response cFriendMessages_UpdateMessageReaction_Response = (CFriendMessages_UpdateMessageReaction_Response) obj;
            return getReactorsList().equals(cFriendMessages_UpdateMessageReaction_Response.getReactorsList()) && getUnknownFields().equals(cFriendMessages_UpdateMessageReaction_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getReactorsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getReactorsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_UpdateMessageReaction_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_UpdateMessageReaction_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_UpdateMessageReaction_Response cFriendMessages_UpdateMessageReaction_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_UpdateMessageReaction_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_UpdateMessageReaction_ResponseOrBuilder {
            private int bitField0_;
            private Internal.IntList reactors_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_UpdateMessageReaction_Response.class, Builder.class);
            }

            private Builder() {
                this.reactors_ = GeneratedMessage.emptyIntList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.reactors_ = GeneratedMessage.emptyIntList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.reactors_ = GeneratedMessage.emptyIntList();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_UpdateMessageReaction_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_UpdateMessageReaction_Response getDefaultInstanceForType() {
                return CFriendMessages_UpdateMessageReaction_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_UpdateMessageReaction_Response build() {
                CFriendMessages_UpdateMessageReaction_Response cFriendMessages_UpdateMessageReaction_ResponseBuildPartial = buildPartial();
                if (cFriendMessages_UpdateMessageReaction_ResponseBuildPartial.isInitialized()) {
                    return cFriendMessages_UpdateMessageReaction_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_UpdateMessageReaction_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_UpdateMessageReaction_Response buildPartial() {
                CFriendMessages_UpdateMessageReaction_Response cFriendMessages_UpdateMessageReaction_Response = new CFriendMessages_UpdateMessageReaction_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_UpdateMessageReaction_Response);
                }
                onBuilt();
                return cFriendMessages_UpdateMessageReaction_Response;
            }

            private void buildPartial0(CFriendMessages_UpdateMessageReaction_Response cFriendMessages_UpdateMessageReaction_Response) {
                if ((this.bitField0_ & 1) != 0) {
                    this.reactors_.makeImmutable();
                    cFriendMessages_UpdateMessageReaction_Response.reactors_ = this.reactors_;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_UpdateMessageReaction_Response) {
                    return mergeFrom((CFriendMessages_UpdateMessageReaction_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_UpdateMessageReaction_Response cFriendMessages_UpdateMessageReaction_Response) {
                if (cFriendMessages_UpdateMessageReaction_Response == CFriendMessages_UpdateMessageReaction_Response.getDefaultInstance()) {
                    return this;
                }
                if (!cFriendMessages_UpdateMessageReaction_Response.reactors_.isEmpty()) {
                    if (this.reactors_.isEmpty()) {
                        Internal.IntList intList = cFriendMessages_UpdateMessageReaction_Response.reactors_;
                        this.reactors_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 1;
                    } else {
                        ensureReactorsIsMutable();
                        this.reactors_.addAll(cFriendMessages_UpdateMessageReaction_Response.reactors_);
                    }
                    onChanged();
                }
                mergeUnknownFields(cFriendMessages_UpdateMessageReaction_Response.getUnknownFields());
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
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureReactorsIsMutable();
                                    this.reactors_.addInt(uInt32);
                                } else if (tag == 10) {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureReactorsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.reactors_.addInt(codedInputStream.readUInt32());
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

            private void ensureReactorsIsMutable() {
                if (!this.reactors_.isModifiable()) {
                    this.reactors_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.reactors_);
                }
                this.bitField0_ |= 1;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_ResponseOrBuilder
            public List<Integer> getReactorsList() {
                this.reactors_.makeImmutable();
                return this.reactors_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_ResponseOrBuilder
            public int getReactorsCount() {
                return this.reactors_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_ResponseOrBuilder
            public int getReactors(int i) {
                return this.reactors_.getInt(i);
            }

            public Builder setReactors(int i, int i2) {
                ensureReactorsIsMutable();
                this.reactors_.setInt(i, i2);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addReactors(int i) {
                ensureReactorsIsMutable();
                this.reactors_.addInt(i);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder addAllReactors(Iterable<? extends Integer> iterable) {
                ensureReactorsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.reactors_);
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearReactors() {
                this.reactors_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_UpdateMessageReaction_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_UpdateMessageReaction_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_UpdateMessageReaction_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_UpdateMessageReaction_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_IncomingMessage_Notification extends GeneratedMessage implements CFriendMessages_IncomingMessage_NotificationOrBuilder {
        public static final int CHAT_ENTRY_TYPE_FIELD_NUMBER = 2;
        private static final CFriendMessages_IncomingMessage_Notification DEFAULT_INSTANCE;
        public static final int FROM_LIMITED_ACCOUNT_FIELD_NUMBER = 3;
        public static final int LOCAL_ECHO_FIELD_NUMBER = 7;
        public static final int LOW_PRIORITY_FIELD_NUMBER = 9;
        public static final int MESSAGE_FIELD_NUMBER = 4;
        public static final int MESSAGE_NO_BBCODE_FIELD_NUMBER = 8;
        public static final int ORDINAL_FIELD_NUMBER = 6;
        private static final Parser<CFriendMessages_IncomingMessage_Notification> PARSER;
        public static final int RTIME32_SERVER_TIMESTAMP_FIELD_NUMBER = 5;
        public static final int STEAMID_FRIEND_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int chatEntryType_;
        private boolean fromLimitedAccount_;
        private boolean localEcho_;
        private boolean lowPriority_;
        private byte memoizedIsInitialized;
        private volatile Object messageNoBbcode_;
        private volatile Object message_;
        private int ordinal_;
        private int rtime32ServerTimestamp_;
        private long steamidFriend_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_IncomingMessage_Notification.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_IncomingMessage_Notification();
            PARSER = new AbstractParser<CFriendMessages_IncomingMessage_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_Notification.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_IncomingMessage_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_IncomingMessage_Notification.newBuilder();
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

        private CFriendMessages_IncomingMessage_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamidFriend_ = 0L;
            this.chatEntryType_ = 0;
            this.fromLimitedAccount_ = false;
            this.message_ = "";
            this.rtime32ServerTimestamp_ = 0;
            this.ordinal_ = 0;
            this.localEcho_ = false;
            this.messageNoBbcode_ = "";
            this.lowPriority_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_IncomingMessage_Notification() {
            this.steamidFriend_ = 0L;
            this.chatEntryType_ = 0;
            this.fromLimitedAccount_ = false;
            this.message_ = "";
            this.rtime32ServerTimestamp_ = 0;
            this.ordinal_ = 0;
            this.localEcho_ = false;
            this.messageNoBbcode_ = "";
            this.lowPriority_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.message_ = "";
            this.messageNoBbcode_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IncomingMessage_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IncomingMessage_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_IncomingMessage_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasSteamidFriend() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public long getSteamidFriend() {
            return this.steamidFriend_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasChatEntryType() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public int getChatEntryType() {
            return this.chatEntryType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasFromLimitedAccount() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean getFromLimitedAccount() {
            return this.fromLimitedAccount_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasRtime32ServerTimestamp() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public int getRtime32ServerTimestamp() {
            return this.rtime32ServerTimestamp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasOrdinal() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public int getOrdinal() {
            return this.ordinal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasLocalEcho() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean getLocalEcho() {
            return this.localEcho_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasMessageNoBbcode() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public String getMessageNoBbcode() {
            Object obj = this.messageNoBbcode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.messageNoBbcode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public ByteString getMessageNoBbcodeBytes() {
            Object obj = this.messageNoBbcode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.messageNoBbcode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean hasLowPriority() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
        public boolean getLowPriority() {
            return this.lowPriority_;
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
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.chatEntryType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.fromLimitedAccount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.message_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed32(5, this.rtime32ServerTimestamp_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.ordinal_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(7, this.localEcho_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.messageNoBbcode_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeBool(9, this.lowPriority_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamidFriend_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(2, this.chatEntryType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(3, this.fromLimitedAccount_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(4, this.message_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed32Size(5, this.rtime32ServerTimestamp_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(6, this.ordinal_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(7, this.localEcho_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(8, this.messageNoBbcode_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(9, this.lowPriority_);
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
            if (!(obj instanceof CFriendMessages_IncomingMessage_Notification)) {
                return super.equals(obj);
            }
            CFriendMessages_IncomingMessage_Notification cFriendMessages_IncomingMessage_Notification = (CFriendMessages_IncomingMessage_Notification) obj;
            if (hasSteamidFriend() != cFriendMessages_IncomingMessage_Notification.hasSteamidFriend()) {
                return false;
            }
            if ((hasSteamidFriend() && getSteamidFriend() != cFriendMessages_IncomingMessage_Notification.getSteamidFriend()) || hasChatEntryType() != cFriendMessages_IncomingMessage_Notification.hasChatEntryType()) {
                return false;
            }
            if ((hasChatEntryType() && getChatEntryType() != cFriendMessages_IncomingMessage_Notification.getChatEntryType()) || hasFromLimitedAccount() != cFriendMessages_IncomingMessage_Notification.hasFromLimitedAccount()) {
                return false;
            }
            if ((hasFromLimitedAccount() && getFromLimitedAccount() != cFriendMessages_IncomingMessage_Notification.getFromLimitedAccount()) || hasMessage() != cFriendMessages_IncomingMessage_Notification.hasMessage()) {
                return false;
            }
            if ((hasMessage() && !getMessage().equals(cFriendMessages_IncomingMessage_Notification.getMessage())) || hasRtime32ServerTimestamp() != cFriendMessages_IncomingMessage_Notification.hasRtime32ServerTimestamp()) {
                return false;
            }
            if ((hasRtime32ServerTimestamp() && getRtime32ServerTimestamp() != cFriendMessages_IncomingMessage_Notification.getRtime32ServerTimestamp()) || hasOrdinal() != cFriendMessages_IncomingMessage_Notification.hasOrdinal()) {
                return false;
            }
            if ((hasOrdinal() && getOrdinal() != cFriendMessages_IncomingMessage_Notification.getOrdinal()) || hasLocalEcho() != cFriendMessages_IncomingMessage_Notification.hasLocalEcho()) {
                return false;
            }
            if ((hasLocalEcho() && getLocalEcho() != cFriendMessages_IncomingMessage_Notification.getLocalEcho()) || hasMessageNoBbcode() != cFriendMessages_IncomingMessage_Notification.hasMessageNoBbcode()) {
                return false;
            }
            if ((!hasMessageNoBbcode() || getMessageNoBbcode().equals(cFriendMessages_IncomingMessage_Notification.getMessageNoBbcode())) && hasLowPriority() == cFriendMessages_IncomingMessage_Notification.hasLowPriority()) {
                return (!hasLowPriority() || getLowPriority() == cFriendMessages_IncomingMessage_Notification.getLowPriority()) && getUnknownFields().equals(cFriendMessages_IncomingMessage_Notification.getUnknownFields());
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
            if (hasSteamidFriend()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamidFriend());
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
            if (hasOrdinal()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getOrdinal();
            }
            if (hasLocalEcho()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getLocalEcho());
            }
            if (hasMessageNoBbcode()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getMessageNoBbcode().hashCode();
            }
            if (hasLowPriority()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + Internal.hashBoolean(getLowPriority());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_IncomingMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IncomingMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_IncomingMessage_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_IncomingMessage_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_IncomingMessage_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IncomingMessage_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_IncomingMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_IncomingMessage_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_IncomingMessage_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_IncomingMessage_Notification cFriendMessages_IncomingMessage_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_IncomingMessage_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_IncomingMessage_NotificationOrBuilder {
            private int bitField0_;
            private int chatEntryType_;
            private boolean fromLimitedAccount_;
            private boolean localEcho_;
            private boolean lowPriority_;
            private Object messageNoBbcode_;
            private Object message_;
            private int ordinal_;
            private int rtime32ServerTimestamp_;
            private long steamidFriend_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IncomingMessage_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IncomingMessage_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_IncomingMessage_Notification.class, Builder.class);
            }

            private Builder() {
                this.message_ = "";
                this.messageNoBbcode_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                this.messageNoBbcode_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamidFriend_ = 0L;
                this.chatEntryType_ = 0;
                this.fromLimitedAccount_ = false;
                this.message_ = "";
                this.rtime32ServerTimestamp_ = 0;
                this.ordinal_ = 0;
                this.localEcho_ = false;
                this.messageNoBbcode_ = "";
                this.lowPriority_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_IncomingMessage_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_IncomingMessage_Notification getDefaultInstanceForType() {
                return CFriendMessages_IncomingMessage_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_IncomingMessage_Notification build() {
                CFriendMessages_IncomingMessage_Notification cFriendMessages_IncomingMessage_NotificationBuildPartial = buildPartial();
                if (cFriendMessages_IncomingMessage_NotificationBuildPartial.isInitialized()) {
                    return cFriendMessages_IncomingMessage_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_IncomingMessage_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_IncomingMessage_Notification buildPartial() {
                CFriendMessages_IncomingMessage_Notification cFriendMessages_IncomingMessage_Notification = new CFriendMessages_IncomingMessage_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_IncomingMessage_Notification);
                }
                onBuilt();
                return cFriendMessages_IncomingMessage_Notification;
            }

            private void buildPartial0(CFriendMessages_IncomingMessage_Notification cFriendMessages_IncomingMessage_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_IncomingMessage_Notification.steamidFriend_ = this.steamidFriend_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_IncomingMessage_Notification.chatEntryType_ = this.chatEntryType_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cFriendMessages_IncomingMessage_Notification.fromLimitedAccount_ = this.fromLimitedAccount_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cFriendMessages_IncomingMessage_Notification.message_ = this.message_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cFriendMessages_IncomingMessage_Notification.rtime32ServerTimestamp_ = this.rtime32ServerTimestamp_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cFriendMessages_IncomingMessage_Notification.ordinal_ = this.ordinal_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cFriendMessages_IncomingMessage_Notification.localEcho_ = this.localEcho_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cFriendMessages_IncomingMessage_Notification.messageNoBbcode_ = this.messageNoBbcode_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cFriendMessages_IncomingMessage_Notification.lowPriority_ = this.lowPriority_;
                    i |= 256;
                }
                cFriendMessages_IncomingMessage_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_IncomingMessage_Notification) {
                    return mergeFrom((CFriendMessages_IncomingMessage_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_IncomingMessage_Notification cFriendMessages_IncomingMessage_Notification) {
                if (cFriendMessages_IncomingMessage_Notification == CFriendMessages_IncomingMessage_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_IncomingMessage_Notification.hasSteamidFriend()) {
                    setSteamidFriend(cFriendMessages_IncomingMessage_Notification.getSteamidFriend());
                }
                if (cFriendMessages_IncomingMessage_Notification.hasChatEntryType()) {
                    setChatEntryType(cFriendMessages_IncomingMessage_Notification.getChatEntryType());
                }
                if (cFriendMessages_IncomingMessage_Notification.hasFromLimitedAccount()) {
                    setFromLimitedAccount(cFriendMessages_IncomingMessage_Notification.getFromLimitedAccount());
                }
                if (cFriendMessages_IncomingMessage_Notification.hasMessage()) {
                    this.message_ = cFriendMessages_IncomingMessage_Notification.message_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cFriendMessages_IncomingMessage_Notification.hasRtime32ServerTimestamp()) {
                    setRtime32ServerTimestamp(cFriendMessages_IncomingMessage_Notification.getRtime32ServerTimestamp());
                }
                if (cFriendMessages_IncomingMessage_Notification.hasOrdinal()) {
                    setOrdinal(cFriendMessages_IncomingMessage_Notification.getOrdinal());
                }
                if (cFriendMessages_IncomingMessage_Notification.hasLocalEcho()) {
                    setLocalEcho(cFriendMessages_IncomingMessage_Notification.getLocalEcho());
                }
                if (cFriendMessages_IncomingMessage_Notification.hasMessageNoBbcode()) {
                    this.messageNoBbcode_ = cFriendMessages_IncomingMessage_Notification.messageNoBbcode_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                if (cFriendMessages_IncomingMessage_Notification.hasLowPriority()) {
                    setLowPriority(cFriendMessages_IncomingMessage_Notification.getLowPriority());
                }
                mergeUnknownFields(cFriendMessages_IncomingMessage_Notification.getUnknownFields());
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
                                } else if (tag == 48) {
                                    this.ordinal_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.localEcho_ = codedInputStream.readBool();
                                    this.bitField0_ |= 64;
                                } else if (tag == 66) {
                                    this.messageNoBbcode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                } else if (tag == 72) {
                                    this.lowPriority_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasSteamidFriend() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasChatEntryType() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasFromLimitedAccount() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
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
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.message_ = CFriendMessages_IncomingMessage_Notification.getDefaultInstance().getMessage();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                byteString.getClass();
                this.message_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasRtime32ServerTimestamp() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasOrdinal() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public int getOrdinal() {
                return this.ordinal_;
            }

            public Builder setOrdinal(int i) {
                this.ordinal_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearOrdinal() {
                this.bitField0_ &= -33;
                this.ordinal_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasLocalEcho() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean getLocalEcho() {
                return this.localEcho_;
            }

            public Builder setLocalEcho(boolean z) {
                this.localEcho_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearLocalEcho() {
                this.bitField0_ &= -65;
                this.localEcho_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasMessageNoBbcode() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public String getMessageNoBbcode() {
                Object obj = this.messageNoBbcode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.messageNoBbcode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public ByteString getMessageNoBbcodeBytes() {
                Object obj = this.messageNoBbcode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.messageNoBbcode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setMessageNoBbcode(String str) {
                str.getClass();
                this.messageNoBbcode_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearMessageNoBbcode() {
                this.messageNoBbcode_ = CFriendMessages_IncomingMessage_Notification.getDefaultInstance().getMessageNoBbcode();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setMessageNoBbcodeBytes(ByteString byteString) {
                byteString.getClass();
                this.messageNoBbcode_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean hasLowPriority() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_NotificationOrBuilder
            public boolean getLowPriority() {
                return this.lowPriority_;
            }

            public Builder setLowPriority(boolean z) {
                this.lowPriority_ = z;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearLowPriority() {
                this.bitField0_ &= -257;
                this.lowPriority_ = false;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_IncomingMessage_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_IncomingMessage_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_IncomingMessage_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_IncomingMessage_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CFriendMessages_MessageReaction_Notification extends GeneratedMessage implements CFriendMessages_MessageReaction_NotificationOrBuilder {
        private static final CFriendMessages_MessageReaction_Notification DEFAULT_INSTANCE;
        public static final int IS_ADD_FIELD_NUMBER = 7;
        public static final int ORDINAL_FIELD_NUMBER = 3;
        private static final Parser<CFriendMessages_MessageReaction_Notification> PARSER;
        public static final int REACTION_FIELD_NUMBER = 6;
        public static final int REACTION_TYPE_FIELD_NUMBER = 5;
        public static final int REACTOR_FIELD_NUMBER = 4;
        public static final int SERVER_TIMESTAMP_FIELD_NUMBER = 2;
        public static final int STEAMID_FRIEND_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean isAdd_;
        private byte memoizedIsInitialized;
        private int ordinal_;
        private int reactionType_;
        private volatile Object reaction_;
        private long reactor_;
        private int serverTimestamp_;
        private long steamidFriend_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CFriendMessages_MessageReaction_Notification.class.getName());
            DEFAULT_INSTANCE = new CFriendMessages_MessageReaction_Notification();
            PARSER = new AbstractParser<CFriendMessages_MessageReaction_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_Notification.1
                @Override // com.google.protobuf.Parser
                public CFriendMessages_MessageReaction_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CFriendMessages_MessageReaction_Notification.newBuilder();
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

        private CFriendMessages_MessageReaction_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamidFriend_ = 0L;
            this.serverTimestamp_ = 0;
            this.ordinal_ = 0;
            this.reactor_ = 0L;
            this.reactionType_ = 0;
            this.reaction_ = "";
            this.isAdd_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CFriendMessages_MessageReaction_Notification() {
            this.steamidFriend_ = 0L;
            this.serverTimestamp_ = 0;
            this.ordinal_ = 0;
            this.reactor_ = 0L;
            this.reactionType_ = 0;
            this.reaction_ = "";
            this.isAdd_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.reactionType_ = 0;
            this.reaction_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_MessageReaction_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_MessageReaction_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_MessageReaction_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean hasSteamidFriend() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public long getSteamidFriend() {
            return this.steamidFriend_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean hasServerTimestamp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public int getServerTimestamp() {
            return this.serverTimestamp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean hasOrdinal() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public int getOrdinal() {
            return this.ordinal_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean hasReactor() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public long getReactor() {
            return this.reactor_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean hasReactionType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public EMessageReactionType getReactionType() {
            EMessageReactionType eMessageReactionTypeForNumber = EMessageReactionType.forNumber(this.reactionType_);
            return eMessageReactionTypeForNumber == null ? EMessageReactionType.k_EMessageReactionType_Invalid : eMessageReactionTypeForNumber;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean hasReaction() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public String getReaction() {
            Object obj = this.reaction_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.reaction_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public ByteString getReactionBytes() {
            Object obj = this.reaction_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.reaction_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean hasIsAdd() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
        public boolean getIsAdd() {
            return this.isAdd_;
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
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.serverTimestamp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.ordinal_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(4, this.reactor_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeEnum(5, this.reactionType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.reaction_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(7, this.isAdd_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.steamidFriend_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.serverTimestamp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.ordinal_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(4, this.reactor_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeEnumSize(5, this.reactionType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(6, this.reaction_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(7, this.isAdd_);
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
            if (!(obj instanceof CFriendMessages_MessageReaction_Notification)) {
                return super.equals(obj);
            }
            CFriendMessages_MessageReaction_Notification cFriendMessages_MessageReaction_Notification = (CFriendMessages_MessageReaction_Notification) obj;
            if (hasSteamidFriend() != cFriendMessages_MessageReaction_Notification.hasSteamidFriend()) {
                return false;
            }
            if ((hasSteamidFriend() && getSteamidFriend() != cFriendMessages_MessageReaction_Notification.getSteamidFriend()) || hasServerTimestamp() != cFriendMessages_MessageReaction_Notification.hasServerTimestamp()) {
                return false;
            }
            if ((hasServerTimestamp() && getServerTimestamp() != cFriendMessages_MessageReaction_Notification.getServerTimestamp()) || hasOrdinal() != cFriendMessages_MessageReaction_Notification.hasOrdinal()) {
                return false;
            }
            if ((hasOrdinal() && getOrdinal() != cFriendMessages_MessageReaction_Notification.getOrdinal()) || hasReactor() != cFriendMessages_MessageReaction_Notification.hasReactor()) {
                return false;
            }
            if ((hasReactor() && getReactor() != cFriendMessages_MessageReaction_Notification.getReactor()) || hasReactionType() != cFriendMessages_MessageReaction_Notification.hasReactionType()) {
                return false;
            }
            if ((hasReactionType() && this.reactionType_ != cFriendMessages_MessageReaction_Notification.reactionType_) || hasReaction() != cFriendMessages_MessageReaction_Notification.hasReaction()) {
                return false;
            }
            if ((!hasReaction() || getReaction().equals(cFriendMessages_MessageReaction_Notification.getReaction())) && hasIsAdd() == cFriendMessages_MessageReaction_Notification.hasIsAdd()) {
                return (!hasIsAdd() || getIsAdd() == cFriendMessages_MessageReaction_Notification.getIsAdd()) && getUnknownFields().equals(cFriendMessages_MessageReaction_Notification.getUnknownFields());
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
            if (hasSteamidFriend()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamidFriend());
            }
            if (hasServerTimestamp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getServerTimestamp();
            }
            if (hasOrdinal()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getOrdinal();
            }
            if (hasReactor()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getReactor());
            }
            if (hasReactionType()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + this.reactionType_;
            }
            if (hasReaction()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getReaction().hashCode();
            }
            if (hasIsAdd()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getIsAdd());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_MessageReaction_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_MessageReaction_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_MessageReaction_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CFriendMessages_MessageReaction_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CFriendMessages_MessageReaction_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_MessageReaction_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CFriendMessages_MessageReaction_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CFriendMessages_MessageReaction_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CFriendMessages_MessageReaction_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CFriendMessages_MessageReaction_Notification cFriendMessages_MessageReaction_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cFriendMessages_MessageReaction_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CFriendMessages_MessageReaction_NotificationOrBuilder {
            private int bitField0_;
            private boolean isAdd_;
            private int ordinal_;
            private int reactionType_;
            private Object reaction_;
            private long reactor_;
            private int serverTimestamp_;
            private long steamidFriend_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_MessageReaction_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_MessageReaction_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CFriendMessages_MessageReaction_Notification.class, Builder.class);
            }

            private Builder() {
                this.reactionType_ = 0;
                this.reaction_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.reactionType_ = 0;
                this.reaction_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamidFriend_ = 0L;
                this.serverTimestamp_ = 0;
                this.ordinal_ = 0;
                this.reactor_ = 0L;
                this.reactionType_ = 0;
                this.reaction_ = "";
                this.isAdd_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesFriendmessagesSteamclient.internal_static_CFriendMessages_MessageReaction_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CFriendMessages_MessageReaction_Notification getDefaultInstanceForType() {
                return CFriendMessages_MessageReaction_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_MessageReaction_Notification build() {
                CFriendMessages_MessageReaction_Notification cFriendMessages_MessageReaction_NotificationBuildPartial = buildPartial();
                if (cFriendMessages_MessageReaction_NotificationBuildPartial.isInitialized()) {
                    return cFriendMessages_MessageReaction_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cFriendMessages_MessageReaction_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CFriendMessages_MessageReaction_Notification buildPartial() {
                CFriendMessages_MessageReaction_Notification cFriendMessages_MessageReaction_Notification = new CFriendMessages_MessageReaction_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cFriendMessages_MessageReaction_Notification);
                }
                onBuilt();
                return cFriendMessages_MessageReaction_Notification;
            }

            private void buildPartial0(CFriendMessages_MessageReaction_Notification cFriendMessages_MessageReaction_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cFriendMessages_MessageReaction_Notification.steamidFriend_ = this.steamidFriend_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cFriendMessages_MessageReaction_Notification.serverTimestamp_ = this.serverTimestamp_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cFriendMessages_MessageReaction_Notification.ordinal_ = this.ordinal_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cFriendMessages_MessageReaction_Notification.reactor_ = this.reactor_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cFriendMessages_MessageReaction_Notification.reactionType_ = this.reactionType_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cFriendMessages_MessageReaction_Notification.reaction_ = this.reaction_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cFriendMessages_MessageReaction_Notification.isAdd_ = this.isAdd_;
                    i |= 64;
                }
                cFriendMessages_MessageReaction_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CFriendMessages_MessageReaction_Notification) {
                    return mergeFrom((CFriendMessages_MessageReaction_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CFriendMessages_MessageReaction_Notification cFriendMessages_MessageReaction_Notification) {
                if (cFriendMessages_MessageReaction_Notification == CFriendMessages_MessageReaction_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cFriendMessages_MessageReaction_Notification.hasSteamidFriend()) {
                    setSteamidFriend(cFriendMessages_MessageReaction_Notification.getSteamidFriend());
                }
                if (cFriendMessages_MessageReaction_Notification.hasServerTimestamp()) {
                    setServerTimestamp(cFriendMessages_MessageReaction_Notification.getServerTimestamp());
                }
                if (cFriendMessages_MessageReaction_Notification.hasOrdinal()) {
                    setOrdinal(cFriendMessages_MessageReaction_Notification.getOrdinal());
                }
                if (cFriendMessages_MessageReaction_Notification.hasReactor()) {
                    setReactor(cFriendMessages_MessageReaction_Notification.getReactor());
                }
                if (cFriendMessages_MessageReaction_Notification.hasReactionType()) {
                    setReactionType(cFriendMessages_MessageReaction_Notification.getReactionType());
                }
                if (cFriendMessages_MessageReaction_Notification.hasReaction()) {
                    this.reaction_ = cFriendMessages_MessageReaction_Notification.reaction_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cFriendMessages_MessageReaction_Notification.hasIsAdd()) {
                    setIsAdd(cFriendMessages_MessageReaction_Notification.getIsAdd());
                }
                mergeUnknownFields(cFriendMessages_MessageReaction_Notification.getUnknownFields());
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
                                } else if (tag == 16) {
                                    this.serverTimestamp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.ordinal_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 33) {
                                    this.reactor_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    int i = codedInputStream.readEnum();
                                    if (EMessageReactionType.forNumber(i) == null) {
                                        mergeUnknownVarintField(5, i);
                                    } else {
                                        this.reactionType_ = i;
                                        this.bitField0_ |= 16;
                                    }
                                } else if (tag == 50) {
                                    this.reaction_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.isAdd_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean hasSteamidFriend() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean hasServerTimestamp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public int getServerTimestamp() {
                return this.serverTimestamp_;
            }

            public Builder setServerTimestamp(int i) {
                this.serverTimestamp_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearServerTimestamp() {
                this.bitField0_ &= -3;
                this.serverTimestamp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean hasOrdinal() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public int getOrdinal() {
                return this.ordinal_;
            }

            public Builder setOrdinal(int i) {
                this.ordinal_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearOrdinal() {
                this.bitField0_ &= -5;
                this.ordinal_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean hasReactor() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public long getReactor() {
                return this.reactor_;
            }

            public Builder setReactor(long j) {
                this.reactor_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearReactor() {
                this.bitField0_ &= -9;
                this.reactor_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean hasReactionType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public EMessageReactionType getReactionType() {
                EMessageReactionType eMessageReactionTypeForNumber = EMessageReactionType.forNumber(this.reactionType_);
                return eMessageReactionTypeForNumber == null ? EMessageReactionType.k_EMessageReactionType_Invalid : eMessageReactionTypeForNumber;
            }

            public Builder setReactionType(EMessageReactionType eMessageReactionType) {
                eMessageReactionType.getClass();
                this.bitField0_ |= 16;
                this.reactionType_ = eMessageReactionType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearReactionType() {
                this.bitField0_ &= -17;
                this.reactionType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean hasReaction() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public String getReaction() {
                Object obj = this.reaction_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.reaction_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public ByteString getReactionBytes() {
                Object obj = this.reaction_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.reaction_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setReaction(String str) {
                str.getClass();
                this.reaction_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearReaction() {
                this.reaction_ = CFriendMessages_MessageReaction_Notification.getDefaultInstance().getReaction();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setReactionBytes(ByteString byteString) {
                byteString.getClass();
                this.reaction_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean hasIsAdd() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_NotificationOrBuilder
            public boolean getIsAdd() {
                return this.isAdd_;
            }

            public Builder setIsAdd(boolean z) {
                this.isAdd_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearIsAdd() {
                this.bitField0_ &= -65;
                this.isAdd_ = false;
                onChanged();
                return this;
            }
        }

        public static CFriendMessages_MessageReaction_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CFriendMessages_MessageReaction_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CFriendMessages_MessageReaction_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CFriendMessages_MessageReaction_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
