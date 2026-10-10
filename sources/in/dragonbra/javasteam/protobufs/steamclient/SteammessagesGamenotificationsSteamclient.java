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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesGamenotificationsSteamclient {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_CreateSession_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_CreateSession_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_CreateSession_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_CreateSession_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_DeleteSession_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_DeleteSession_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_DeleteSession_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_DeleteSession_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_EnumerateSessions_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_EnumerateSessions_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_EnumerateSessions_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_EnumerateSessions_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_GetSessionDetails_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_GetSessionDetails_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_GetSessionDetails_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_GetSessionDetails_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_LocalizedText_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_LocalizedText_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_OnNotificationsRequested_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_OnNotificationsRequested_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_OnUserStatusChanged_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_OnUserStatusChanged_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_Session_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_Session_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_UpdateNotificationSettings_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_UpdateNotificationSettings_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_UpdateNotificationSettings_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_UpdateNotificationSettings_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_UpdateSession_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_UpdateSession_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_UpdateSession_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_UpdateSession_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_UserStatus_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_UserStatus_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CGameNotifications_Variable_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CGameNotifications_Variable_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_GameNotificationSettings_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_GameNotificationSettings_fieldAccessorTable;

    public interface CGameNotifications_CreateSession_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getContext();

        long getSteamid();

        CGameNotifications_LocalizedText getTitle();

        CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder();

        CGameNotifications_UserStatus getUsers(int i);

        int getUsersCount();

        List<CGameNotifications_UserStatus> getUsersList();

        CGameNotifications_UserStatusOrBuilder getUsersOrBuilder(int i);

        List<? extends CGameNotifications_UserStatusOrBuilder> getUsersOrBuilderList();

        boolean hasAppid();

        boolean hasContext();

        boolean hasSteamid();

        boolean hasTitle();
    }

    public interface CGameNotifications_CreateSession_ResponseOrBuilder extends MessageOrBuilder {
        long getSessionid();

        boolean hasSessionid();
    }

    public interface CGameNotifications_DeleteSession_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getSessionid();

        long getSteamid();

        boolean hasAppid();

        boolean hasSessionid();

        boolean hasSteamid();
    }

    public interface CGameNotifications_EnumerateSessions_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean getIncludeAllUserMessages();

        boolean getIncludeAuthUserMessage();

        String getLanguage();

        ByteString getLanguageBytes();

        boolean hasAppid();

        boolean hasIncludeAllUserMessages();

        boolean hasIncludeAuthUserMessage();

        boolean hasLanguage();
    }

    public interface CGameNotifications_EnumerateSessions_ResponseOrBuilder extends MessageOrBuilder {
        CGameNotifications_Session getSessions(int i);

        int getSessionsCount();

        List<CGameNotifications_Session> getSessionsList();

        CGameNotifications_SessionOrBuilder getSessionsOrBuilder(int i);

        List<? extends CGameNotifications_SessionOrBuilder> getSessionsOrBuilderList();
    }

    public interface CGameNotifications_GetSessionDetails_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getLanguage();

        ByteString getLanguageBytes();

        CGameNotifications_GetSessionDetails_Request.RequestedSession getSessions(int i);

        int getSessionsCount();

        List<CGameNotifications_GetSessionDetails_Request.RequestedSession> getSessionsList();

        CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder getSessionsOrBuilder(int i);

        List<? extends CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder> getSessionsOrBuilderList();

        boolean hasAppid();

        boolean hasLanguage();
    }

    public interface CGameNotifications_GetSessionDetails_ResponseOrBuilder extends MessageOrBuilder {
        CGameNotifications_Session getSessions(int i);

        int getSessionsCount();

        List<CGameNotifications_Session> getSessionsList();

        CGameNotifications_SessionOrBuilder getSessionsOrBuilder(int i);

        List<? extends CGameNotifications_SessionOrBuilder> getSessionsOrBuilderList();
    }

    public interface CGameNotifications_LocalizedTextOrBuilder extends MessageOrBuilder {
        String getRenderedText();

        ByteString getRenderedTextBytes();

        String getToken();

        ByteString getTokenBytes();

        CGameNotifications_Variable getVariables(int i);

        int getVariablesCount();

        List<CGameNotifications_Variable> getVariablesList();

        CGameNotifications_VariableOrBuilder getVariablesOrBuilder(int i);

        List<? extends CGameNotifications_VariableOrBuilder> getVariablesOrBuilderList();

        boolean hasRenderedText();

        boolean hasToken();
    }

    public interface CGameNotifications_OnNotificationsRequested_NotificationOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getSteamid();

        boolean hasAppid();

        boolean hasSteamid();
    }

    public interface CGameNotifications_OnUserStatusChanged_NotificationOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean getRemoved();

        long getSessionid();

        CGameNotifications_UserStatus getStatus();

        CGameNotifications_UserStatusOrBuilder getStatusOrBuilder();

        long getSteamid();

        boolean hasAppid();

        boolean hasRemoved();

        boolean hasSessionid();

        boolean hasStatus();

        boolean hasSteamid();
    }

    public interface CGameNotifications_SessionOrBuilder extends MessageOrBuilder {
        long getAppid();

        long getContext();

        long getSessionid();

        int getTimeCreated();

        int getTimeUpdated();

        CGameNotifications_LocalizedText getTitle();

        CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder();

        CGameNotifications_UserStatus getUserStatus(int i);

        int getUserStatusCount();

        List<CGameNotifications_UserStatus> getUserStatusList();

        CGameNotifications_UserStatusOrBuilder getUserStatusOrBuilder(int i);

        List<? extends CGameNotifications_UserStatusOrBuilder> getUserStatusOrBuilderList();

        boolean hasAppid();

        boolean hasContext();

        boolean hasSessionid();

        boolean hasTimeCreated();

        boolean hasTimeUpdated();

        boolean hasTitle();
    }

    public interface CGameNotifications_UpdateNotificationSettings_RequestOrBuilder extends MessageOrBuilder {
        GameNotificationSettings getGameNotificationSettings(int i);

        int getGameNotificationSettingsCount();

        List<GameNotificationSettings> getGameNotificationSettingsList();

        GameNotificationSettingsOrBuilder getGameNotificationSettingsOrBuilder(int i);

        List<? extends GameNotificationSettingsOrBuilder> getGameNotificationSettingsOrBuilderList();
    }

    public interface CGameNotifications_UpdateSession_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getSessionid();

        long getSteamid();

        CGameNotifications_LocalizedText getTitle();

        CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder();

        CGameNotifications_UserStatus getUsers(int i);

        int getUsersCount();

        List<CGameNotifications_UserStatus> getUsersList();

        CGameNotifications_UserStatusOrBuilder getUsersOrBuilder(int i);

        List<? extends CGameNotifications_UserStatusOrBuilder> getUsersOrBuilderList();

        boolean hasAppid();

        boolean hasSessionid();

        boolean hasSteamid();

        boolean hasTitle();
    }

    public interface CGameNotifications_UserStatusOrBuilder extends MessageOrBuilder {
        CGameNotifications_LocalizedText getMessage();

        CGameNotifications_LocalizedTextOrBuilder getMessageOrBuilder();

        String getState();

        ByteString getStateBytes();

        long getSteamid();

        CGameNotifications_LocalizedText getTitle();

        CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder();

        boolean hasMessage();

        boolean hasState();

        boolean hasSteamid();

        boolean hasTitle();
    }

    public interface CGameNotifications_VariableOrBuilder extends MessageOrBuilder {
        String getKey();

        ByteString getKeyBytes();

        String getValue();

        ByteString getValueBytes();

        boolean hasKey();

        boolean hasValue();
    }

    public interface GameNotificationSettingsOrBuilder extends MessageOrBuilder {
        boolean getAllowNotifications();

        int getAppid();

        boolean hasAllowNotifications();

        boolean hasAppid();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesGamenotificationsSteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesGamenotificationsSteamclient.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n^in/dragonbra/javasteam/protobufs/steamclient/steammessages_gamenotifications.steamclient.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001aYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\"9\n\u001bCGameNotifications_Variable\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"y\n CGameNotifications_LocalizedText\u0012\r\n\u0005token\u0018\u0001 \u0001(\t\u0012/\n\tvariables\u0018\u0002 \u0003(\u000b2\u001c.CGameNotifications_Variable\u0012\u0015\n\rrendered_text\u0018\u0003 \u0001(\t\"¥\u0001\n\u001dCGameNotifications_UserStatus\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\r\n\u0005state\u0018\u0002 \u0001(\t\u00120\n\u0005title\u0018\u0003 \u0001(\u000b2!.CGameNotifications_LocalizedText\u00122\n\u0007message\u0018\u0004 \u0001(\u000b2!.CGameNotifications_LocalizedText\"¼\u0001\n(CGameNotifications_CreateSession_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007context\u0018\u0002 \u0001(\u0004\u00120\n\u0005title\u0018\u0003 \u0001(\u000b2!.CGameNotifications_LocalizedText\u0012-\n\u0005users\u0018\u0004 \u0003(\u000b2\u001e.CGameNotifications_UserStatus\u0012\u000f\n\u0007steamid\u0018\u0005 \u0001(\u0006\">\n)CGameNotifications_CreateSession_Response\u0012\u0011\n\tsessionid\u0018\u0001 \u0001(\u0004\"]\n(CGameNotifications_DeleteSession_Request\u0012\u0011\n\tsessionid\u0018\u0001 \u0001(\u0004\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\u0003 \u0001(\u0006\"+\n)CGameNotifications_DeleteSession_Response\"¾\u0001\n(CGameNotifications_UpdateSession_Request\u0012\u0011\n\tsessionid\u0018\u0001 \u0001(\u0004\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\u00120\n\u0005title\u0018\u0003 \u0001(\u000b2!.CGameNotifications_LocalizedText\u0012-\n\u0005users\u0018\u0004 \u0003(\u000b2\u001e.CGameNotifications_UserStatus\u0012\u000f\n\u0007steamid\u0018\u0006 \u0001(\u0006\"+\n)CGameNotifications_UpdateSession_Response\"\u0095\u0001\n,CGameNotifications_EnumerateSessions_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012!\n\u0019include_all_user_messages\u0018\u0003 \u0001(\b\u0012!\n\u0019include_auth_user_message\u0018\u0004 \u0001(\b\u0012\u0010\n\blanguage\u0018\u0005 \u0001(\t\"â\u0001\n\u001aCGameNotifications_Session\u0012\u0011\n\tsessionid\u0018\u0001 \u0001(\u0004\u0012\r\n\u0005appid\u0018\u0002 \u0001(\u0004\u0012\u000f\n\u0007context\u0018\u0003 \u0001(\u0004\u00120\n\u0005title\u0018\u0004 \u0001(\u000b2!.CGameNotifications_LocalizedText\u0012\u0014\n\ftime_created\u0018\u0005 \u0001(\r\u0012\u0014\n\ftime_updated\u0018\u0006 \u0001(\r\u00123\n\u000buser_status\u0018\u0007 \u0003(\u000b2\u001e.CGameNotifications_UserStatus\"^\n-CGameNotifications_EnumerateSessions_Response\u0012-\n\bsessions\u0018\u0001 \u0003(\u000b2\u001b.CGameNotifications_Session\"ë\u0001\n,CGameNotifications_GetSessionDetails_Request\u0012P\n\bsessions\u0018\u0001 \u0003(\u000b2>.CGameNotifications_GetSessionDetails_Request.RequestedSession\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\u0012\u0010\n\blanguage\u0018\u0003 \u0001(\t\u001aH\n\u0010RequestedSession\u0012\u0011\n\tsessionid\u0018\u0001 \u0001(\u0004\u0012!\n\u0019include_auth_user_message\u0018\u0003 \u0001(\b\"^\n-CGameNotifications_GetSessionDetails_Response\u0012-\n\bsessions\u0018\u0001 \u0003(\u000b2\u001b.CGameNotifications_Session\"F\n\u0018GameNotificationSettings\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\u001b\n\u0013allow_notifications\u0018\u0002 \u0001(\b\"v\n5CGameNotifications_UpdateNotificationSettings_Request\u0012=\n\u001agame_notification_settings\u0018\u0001 \u0003(\u000b2\u0019.GameNotificationSettings\"8\n6CGameNotifications_UpdateNotificationSettings_Response\"Z\n8CGameNotifications_OnNotificationsRequested_Notification\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\"©\u0001\n3CGameNotifications_OnUserStatusChanged_Notification\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tsessionid\u0018\u0002 \u0001(\u0004\u0012\r\n\u0005appid\u0018\u0003 \u0001(\r\u0012.\n\u0006status\u0018\u0004 \u0001(\u000b2\u001e.CGameNotifications_UserStatus\u0012\u000f\n\u0007removed\u0018\u0005 \u0001(\b2Ï\u0005\n\u0011GameNotifications\u0012j\n\u0011UserCreateSession\u0012).CGameNotifications_CreateSession_Request\u001a*.CGameNotifications_CreateSession_Response\u0012j\n\u0011UserDeleteSession\u0012).CGameNotifications_DeleteSession_Request\u001a*.CGameNotifications_DeleteSession_Response\u0012j\n\u0011UserUpdateSession\u0012).CGameNotifications_UpdateSession_Request\u001a*.CGameNotifications_UpdateSession_Response\u0012r\n\u0011EnumerateSessions\u0012-.CGameNotifications_EnumerateSessions_Request\u001a..CGameNotifications_EnumerateSessions_Response\u0012r\n\u0011GetSessionDetails\u0012-.CGameNotifications_GetSessionDetails_Request\u001a..CGameNotifications_GetSessionDetails_Response\u0012\u008d\u0001\n\u001aUpdateNotificationSettings\u00126.CGameNotifications_UpdateNotificationSettings_Request\u001a7.CGameNotifications_UpdateNotificationSettings_Response2Ý\u0001\n\u0017GameNotificationsClient\u0012b\n\u0018OnNotificationsRequested\u00129.CGameNotifications_OnNotificationsRequested_Notification\u001a\u000b.NoResponse\u0012X\n\u0013OnUserStatusChanged\u00124.CGameNotifications_OnUserStatusChanged_Notification\u001a\u000b.NoResponse\u001a\u0004Àµ\u0018\u0002B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor(), SteammessagesUnifiedBaseSteamclient.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CGameNotifications_Variable_descriptor = descriptor2;
        internal_static_CGameNotifications_Variable_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CGameNotifications_LocalizedText_descriptor = descriptor3;
        internal_static_CGameNotifications_LocalizedText_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Token", "Variables", "RenderedText"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CGameNotifications_UserStatus_descriptor = descriptor4;
        internal_static_CGameNotifications_UserStatus_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Steamid", "State", "Title", "Message"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CGameNotifications_CreateSession_Request_descriptor = descriptor5;
        internal_static_CGameNotifications_CreateSession_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Appid", "Context", "Title", "Users", "Steamid"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CGameNotifications_CreateSession_Response_descriptor = descriptor6;
        internal_static_CGameNotifications_CreateSession_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Sessionid"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CGameNotifications_DeleteSession_Request_descriptor = descriptor7;
        internal_static_CGameNotifications_DeleteSession_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Sessionid", "Appid", "Steamid"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CGameNotifications_DeleteSession_Response_descriptor = descriptor8;
        internal_static_CGameNotifications_DeleteSession_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[0]);
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CGameNotifications_UpdateSession_Request_descriptor = descriptor9;
        internal_static_CGameNotifications_UpdateSession_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Sessionid", "Appid", "Title", "Users", "Steamid"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_CGameNotifications_UpdateSession_Response_descriptor = descriptor10;
        internal_static_CGameNotifications_UpdateSession_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[0]);
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_CGameNotifications_EnumerateSessions_Request_descriptor = descriptor11;
        internal_static_CGameNotifications_EnumerateSessions_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Appid", "IncludeAllUserMessages", "IncludeAuthUserMessage", "Language"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_CGameNotifications_Session_descriptor = descriptor12;
        internal_static_CGameNotifications_Session_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Sessionid", "Appid", "Context", "Title", "TimeCreated", "TimeUpdated", "UserStatus"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_CGameNotifications_EnumerateSessions_Response_descriptor = descriptor13;
        internal_static_CGameNotifications_EnumerateSessions_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Sessions"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_CGameNotifications_GetSessionDetails_Request_descriptor = descriptor14;
        internal_static_CGameNotifications_GetSessionDetails_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Sessions", "Appid", "Language"});
        Descriptors.Descriptor descriptor15 = descriptor14.getNestedTypes().get(0);
        internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_descriptor = descriptor15;
        internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Sessionid", "IncludeAuthUserMessage"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(13);
        internal_static_CGameNotifications_GetSessionDetails_Response_descriptor = descriptor16;
        internal_static_CGameNotifications_GetSessionDetails_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Sessions"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(14);
        internal_static_GameNotificationSettings_descriptor = descriptor17;
        internal_static_GameNotificationSettings_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Appid", "AllowNotifications"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(15);
        internal_static_CGameNotifications_UpdateNotificationSettings_Request_descriptor = descriptor18;
        internal_static_CGameNotifications_UpdateNotificationSettings_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"GameNotificationSettings"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(16);
        internal_static_CGameNotifications_UpdateNotificationSettings_Response_descriptor = descriptor19;
        internal_static_CGameNotifications_UpdateNotificationSettings_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[0]);
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(17);
        internal_static_CGameNotifications_OnNotificationsRequested_Notification_descriptor = descriptor20;
        internal_static_CGameNotifications_OnNotificationsRequested_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"Steamid", "Appid"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(18);
        internal_static_CGameNotifications_OnUserStatusChanged_Notification_descriptor = descriptor21;
        internal_static_CGameNotifications_OnUserStatusChanged_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Steamid", "Sessionid", "Appid", "Status", "Removed"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        SteammessagesUnifiedBaseSteamclient.getDescriptor();
        ExtensionRegistry extensionRegistryNewInstance = ExtensionRegistry.newInstance();
        extensionRegistryNewInstance.add((GeneratedMessage.GeneratedExtension<?, ?>) SteammessagesUnifiedBaseSteamclient.serviceExecutionSite);
        Descriptors.FileDescriptor.internalUpdateFileDescriptor(descriptor, extensionRegistryNewInstance);
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CGameNotifications_Variable extends GeneratedMessage implements CGameNotifications_VariableOrBuilder {
        private static final CGameNotifications_Variable DEFAULT_INSTANCE;
        public static final int KEY_FIELD_NUMBER = 1;
        private static final Parser<CGameNotifications_Variable> PARSER;
        public static final int VALUE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object key_;
        private byte memoizedIsInitialized;
        private volatile Object value_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_Variable.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_Variable();
            PARSER = new AbstractParser<CGameNotifications_Variable>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_Variable.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_Variable parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_Variable.newBuilder();
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

        private CGameNotifications_Variable(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.key_ = "";
            this.value_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_Variable() {
            this.key_ = "";
            this.value_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.key_ = "";
            this.value_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Variable_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Variable_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_Variable.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
        public boolean hasKey() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
        public ByteString getKeyBytes() {
            Object obj = this.key_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.key_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
        public boolean hasValue() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
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
            if (!(obj instanceof CGameNotifications_Variable)) {
                return super.equals(obj);
            }
            CGameNotifications_Variable cGameNotifications_Variable = (CGameNotifications_Variable) obj;
            if (hasKey() != cGameNotifications_Variable.hasKey()) {
                return false;
            }
            if ((!hasKey() || getKey().equals(cGameNotifications_Variable.getKey())) && hasValue() == cGameNotifications_Variable.hasValue()) {
                return (!hasValue() || getValue().equals(cGameNotifications_Variable.getValue())) && getUnknownFields().equals(cGameNotifications_Variable.getUnknownFields());
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

        public static CGameNotifications_Variable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_Variable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_Variable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_Variable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_Variable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_Variable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_Variable parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_Variable) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_Variable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_Variable) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_Variable parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_Variable) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_Variable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_Variable) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_Variable parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_Variable) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_Variable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_Variable) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_Variable cGameNotifications_Variable) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_Variable);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_VariableOrBuilder {
            private int bitField0_;
            private Object key_;
            private Object value_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Variable_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Variable_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_Variable.class, Builder.class);
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
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Variable_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_Variable getDefaultInstanceForType() {
                return CGameNotifications_Variable.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_Variable build() {
                CGameNotifications_Variable cGameNotifications_VariableBuildPartial = buildPartial();
                if (cGameNotifications_VariableBuildPartial.isInitialized()) {
                    return cGameNotifications_VariableBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_VariableBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_Variable buildPartial() {
                CGameNotifications_Variable cGameNotifications_Variable = new CGameNotifications_Variable(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_Variable);
                }
                onBuilt();
                return cGameNotifications_Variable;
            }

            private void buildPartial0(CGameNotifications_Variable cGameNotifications_Variable) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_Variable.key_ = this.key_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_Variable.value_ = this.value_;
                    i |= 2;
                }
                cGameNotifications_Variable.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_Variable) {
                    return mergeFrom((CGameNotifications_Variable) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_Variable cGameNotifications_Variable) {
                if (cGameNotifications_Variable == CGameNotifications_Variable.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_Variable.hasKey()) {
                    this.key_ = cGameNotifications_Variable.key_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cGameNotifications_Variable.hasValue()) {
                    this.value_ = cGameNotifications_Variable.value_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cGameNotifications_Variable.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
            public boolean hasKey() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
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
                this.key_ = CGameNotifications_Variable.getDefaultInstance().getKey();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
            public boolean hasValue() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_VariableOrBuilder
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
                this.value_ = CGameNotifications_Variable.getDefaultInstance().getValue();
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

        public static CGameNotifications_Variable getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_Variable> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_Variable> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_Variable getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_LocalizedText extends GeneratedMessage implements CGameNotifications_LocalizedTextOrBuilder {
        private static final CGameNotifications_LocalizedText DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_LocalizedText> PARSER;
        public static final int RENDERED_TEXT_FIELD_NUMBER = 3;
        public static final int TOKEN_FIELD_NUMBER = 1;
        public static final int VARIABLES_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object renderedText_;
        private volatile Object token_;
        private List<CGameNotifications_Variable> variables_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_LocalizedText.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_LocalizedText();
            PARSER = new AbstractParser<CGameNotifications_LocalizedText>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedText.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_LocalizedText parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_LocalizedText.newBuilder();
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

        private CGameNotifications_LocalizedText(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.token_ = "";
            this.renderedText_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_LocalizedText() {
            this.token_ = "";
            this.renderedText_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
            this.variables_ = Collections.emptyList();
            this.renderedText_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_LocalizedText_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_LocalizedText_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_LocalizedText.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.token_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public List<CGameNotifications_Variable> getVariablesList() {
            return this.variables_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public List<? extends CGameNotifications_VariableOrBuilder> getVariablesOrBuilderList() {
            return this.variables_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public int getVariablesCount() {
            return this.variables_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public CGameNotifications_Variable getVariables(int i) {
            return this.variables_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public CGameNotifications_VariableOrBuilder getVariablesOrBuilder(int i) {
            return this.variables_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public boolean hasRenderedText() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public String getRenderedText() {
            Object obj = this.renderedText_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.renderedText_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
        public ByteString getRenderedTextBytes() {
            Object obj = this.renderedText_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.renderedText_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.token_);
            }
            for (int i = 0; i < this.variables_.size(); i++) {
                codedOutputStream.writeMessage(2, this.variables_.get(i));
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.renderedText_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.token_) : 0;
            for (int i2 = 0; i2 < this.variables_.size(); i2++) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(2, this.variables_.get(i2));
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(3, this.renderedText_);
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
            if (!(obj instanceof CGameNotifications_LocalizedText)) {
                return super.equals(obj);
            }
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = (CGameNotifications_LocalizedText) obj;
            if (hasToken() != cGameNotifications_LocalizedText.hasToken()) {
                return false;
            }
            if ((!hasToken() || getToken().equals(cGameNotifications_LocalizedText.getToken())) && getVariablesList().equals(cGameNotifications_LocalizedText.getVariablesList()) && hasRenderedText() == cGameNotifications_LocalizedText.hasRenderedText()) {
                return (!hasRenderedText() || getRenderedText().equals(cGameNotifications_LocalizedText.getRenderedText())) && getUnknownFields().equals(cGameNotifications_LocalizedText.getUnknownFields());
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
            if (hasToken()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getToken().hashCode();
            }
            if (getVariablesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getVariablesList().hashCode();
            }
            if (hasRenderedText()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRenderedText().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_LocalizedText parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_LocalizedText parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_LocalizedText parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_LocalizedText parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_LocalizedText parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_LocalizedText parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_LocalizedText parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_LocalizedText) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_LocalizedText parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_LocalizedText) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_LocalizedText parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_LocalizedText) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_LocalizedText parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_LocalizedText) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_LocalizedText parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_LocalizedText) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_LocalizedText parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_LocalizedText) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_LocalizedText);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_LocalizedTextOrBuilder {
            private int bitField0_;
            private Object renderedText_;
            private Object token_;
            private RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> variablesBuilder_;
            private List<CGameNotifications_Variable> variables_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_LocalizedText_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_LocalizedText_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_LocalizedText.class, Builder.class);
            }

            private Builder() {
                this.token_ = "";
                this.variables_ = Collections.emptyList();
                this.renderedText_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.token_ = "";
                this.variables_ = Collections.emptyList();
                this.renderedText_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.token_ = "";
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.variables_ = Collections.emptyList();
                } else {
                    this.variables_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                this.renderedText_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_LocalizedText_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_LocalizedText getDefaultInstanceForType() {
                return CGameNotifications_LocalizedText.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_LocalizedText build() {
                CGameNotifications_LocalizedText cGameNotifications_LocalizedTextBuildPartial = buildPartial();
                if (cGameNotifications_LocalizedTextBuildPartial.isInitialized()) {
                    return cGameNotifications_LocalizedTextBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_LocalizedTextBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_LocalizedText buildPartial() {
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText = new CGameNotifications_LocalizedText(this);
                buildPartialRepeatedFields(cGameNotifications_LocalizedText);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_LocalizedText);
                }
                onBuilt();
                return cGameNotifications_LocalizedText;
            }

            private void buildPartialRepeatedFields(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.variables_ = Collections.unmodifiableList(this.variables_);
                        this.bitField0_ &= -3;
                    }
                    cGameNotifications_LocalizedText.variables_ = this.variables_;
                    return;
                }
                cGameNotifications_LocalizedText.variables_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_LocalizedText.token_ = this.token_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 4) != 0) {
                    cGameNotifications_LocalizedText.renderedText_ = this.renderedText_;
                    i |= 2;
                }
                cGameNotifications_LocalizedText.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_LocalizedText) {
                    return mergeFrom((CGameNotifications_LocalizedText) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                if (cGameNotifications_LocalizedText == CGameNotifications_LocalizedText.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_LocalizedText.hasToken()) {
                    this.token_ = cGameNotifications_LocalizedText.token_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (this.variablesBuilder_ == null) {
                    if (!cGameNotifications_LocalizedText.variables_.isEmpty()) {
                        if (this.variables_.isEmpty()) {
                            this.variables_ = cGameNotifications_LocalizedText.variables_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureVariablesIsMutable();
                            this.variables_.addAll(cGameNotifications_LocalizedText.variables_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_LocalizedText.variables_.isEmpty()) {
                    if (this.variablesBuilder_.isEmpty()) {
                        this.variablesBuilder_.dispose();
                        this.variablesBuilder_ = null;
                        this.variables_ = cGameNotifications_LocalizedText.variables_;
                        this.bitField0_ &= -3;
                        this.variablesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetVariablesFieldBuilder() : null;
                    } else {
                        this.variablesBuilder_.addAllMessages(cGameNotifications_LocalizedText.variables_);
                    }
                }
                if (cGameNotifications_LocalizedText.hasRenderedText()) {
                    this.renderedText_ = cGameNotifications_LocalizedText.renderedText_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cGameNotifications_LocalizedText.getUnknownFields());
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
                                    this.token_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    CGameNotifications_Variable cGameNotifications_Variable = (CGameNotifications_Variable) codedInputStream.readMessage(CGameNotifications_Variable.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureVariablesIsMutable();
                                        this.variables_.add(cGameNotifications_Variable);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cGameNotifications_Variable);
                                    }
                                } else if (tag == 26) {
                                    this.renderedText_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public String getToken() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.token_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.token_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setToken(String str) {
                str.getClass();
                this.token_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearToken() {
                this.token_ = CGameNotifications_LocalizedText.getDefaultInstance().getToken();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.token_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            private void ensureVariablesIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.variables_ = new ArrayList(this.variables_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public List<CGameNotifications_Variable> getVariablesList() {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.variables_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public int getVariablesCount() {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.variables_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public CGameNotifications_Variable getVariables(int i) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.variables_.get(i);
                }
                return (CGameNotifications_Variable) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setVariables(int i, CGameNotifications_Variable cGameNotifications_Variable) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Variable.getClass();
                    ensureVariablesIsMutable();
                    this.variables_.set(i, cGameNotifications_Variable);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cGameNotifications_Variable);
                }
                return this;
            }

            public Builder setVariables(int i, CGameNotifications_Variable.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureVariablesIsMutable();
                    this.variables_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addVariables(CGameNotifications_Variable cGameNotifications_Variable) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Variable.getClass();
                    ensureVariablesIsMutable();
                    this.variables_.add(cGameNotifications_Variable);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cGameNotifications_Variable);
                }
                return this;
            }

            public Builder addVariables(int i, CGameNotifications_Variable cGameNotifications_Variable) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Variable.getClass();
                    ensureVariablesIsMutable();
                    this.variables_.add(i, cGameNotifications_Variable);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cGameNotifications_Variable);
                }
                return this;
            }

            public Builder addVariables(CGameNotifications_Variable.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureVariablesIsMutable();
                    this.variables_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addVariables(int i, CGameNotifications_Variable.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureVariablesIsMutable();
                    this.variables_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllVariables(Iterable<? extends CGameNotifications_Variable> iterable) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureVariablesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.variables_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearVariables() {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.variables_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeVariables(int i) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureVariablesIsMutable();
                    this.variables_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CGameNotifications_Variable.Builder getVariablesBuilder(int i) {
                return (CGameNotifications_Variable.Builder) internalGetVariablesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public CGameNotifications_VariableOrBuilder getVariablesOrBuilder(int i) {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.variables_.get(i);
                }
                return (CGameNotifications_VariableOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public List<? extends CGameNotifications_VariableOrBuilder> getVariablesOrBuilderList() {
                RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> repeatedFieldBuilder = this.variablesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.variables_);
            }

            public CGameNotifications_Variable.Builder addVariablesBuilder() {
                return (CGameNotifications_Variable.Builder) internalGetVariablesFieldBuilder().addBuilder(CGameNotifications_Variable.getDefaultInstance());
            }

            public CGameNotifications_Variable.Builder addVariablesBuilder(int i) {
                return (CGameNotifications_Variable.Builder) internalGetVariablesFieldBuilder().addBuilder(i, CGameNotifications_Variable.getDefaultInstance());
            }

            public List<CGameNotifications_Variable.Builder> getVariablesBuilderList() {
                return internalGetVariablesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CGameNotifications_Variable, CGameNotifications_Variable.Builder, CGameNotifications_VariableOrBuilder> internalGetVariablesFieldBuilder() {
                if (this.variablesBuilder_ == null) {
                    this.variablesBuilder_ = new RepeatedFieldBuilder<>(this.variables_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.variables_ = null;
                }
                return this.variablesBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public boolean hasRenderedText() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public String getRenderedText() {
                Object obj = this.renderedText_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.renderedText_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_LocalizedTextOrBuilder
            public ByteString getRenderedTextBytes() {
                Object obj = this.renderedText_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.renderedText_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRenderedText(String str) {
                str.getClass();
                this.renderedText_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRenderedText() {
                this.renderedText_ = CGameNotifications_LocalizedText.getDefaultInstance().getRenderedText();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setRenderedTextBytes(ByteString byteString) {
                byteString.getClass();
                this.renderedText_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_LocalizedText getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_LocalizedText> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_LocalizedText> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_LocalizedText getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_UserStatus extends GeneratedMessage implements CGameNotifications_UserStatusOrBuilder {
        private static final CGameNotifications_UserStatus DEFAULT_INSTANCE;
        public static final int MESSAGE_FIELD_NUMBER = 4;
        private static final Parser<CGameNotifications_UserStatus> PARSER;
        public static final int STATE_FIELD_NUMBER = 2;
        public static final int STEAMID_FIELD_NUMBER = 1;
        public static final int TITLE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private CGameNotifications_LocalizedText message_;
        private volatile Object state_;
        private long steamid_;
        private CGameNotifications_LocalizedText title_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_UserStatus.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_UserStatus();
            PARSER = new AbstractParser<CGameNotifications_UserStatus>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatus.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_UserStatus parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_UserStatus.newBuilder();
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

        private CGameNotifications_UserStatus(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.state_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_UserStatus() {
            this.steamid_ = 0L;
            this.state_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.state_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UserStatus_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UserStatus_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UserStatus.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public boolean hasState() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public ByteString getStateBytes() {
            Object obj = this.state_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.state_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public boolean hasTitle() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public CGameNotifications_LocalizedText getTitle() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public CGameNotifications_LocalizedText getMessage() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.message_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
        public CGameNotifications_LocalizedTextOrBuilder getMessageOrBuilder() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.message_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.state_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeMessage(3, getTitle());
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeMessage(4, getMessage());
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
                iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.state_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(3, getTitle());
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(4, getMessage());
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
            if (!(obj instanceof CGameNotifications_UserStatus)) {
                return super.equals(obj);
            }
            CGameNotifications_UserStatus cGameNotifications_UserStatus = (CGameNotifications_UserStatus) obj;
            if (hasSteamid() != cGameNotifications_UserStatus.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cGameNotifications_UserStatus.getSteamid()) || hasState() != cGameNotifications_UserStatus.hasState()) {
                return false;
            }
            if ((hasState() && !getState().equals(cGameNotifications_UserStatus.getState())) || hasTitle() != cGameNotifications_UserStatus.hasTitle()) {
                return false;
            }
            if ((!hasTitle() || getTitle().equals(cGameNotifications_UserStatus.getTitle())) && hasMessage() == cGameNotifications_UserStatus.hasMessage()) {
                return (!hasMessage() || getMessage().equals(cGameNotifications_UserStatus.getMessage())) && getUnknownFields().equals(cGameNotifications_UserStatus.getUnknownFields());
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
            if (hasState()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getState().hashCode();
            }
            if (hasTitle()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTitle().hashCode();
            }
            if (hasMessage()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getMessage().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_UserStatus parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_UserStatus parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_UserStatus parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_UserStatus parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_UserStatus parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_UserStatus parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_UserStatus parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UserStatus) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UserStatus parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UserStatus) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UserStatus parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UserStatus) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UserStatus parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UserStatus) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UserStatus parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_UserStatus) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_UserStatus parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UserStatus) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_UserStatus);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_UserStatusOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> messageBuilder_;
            private CGameNotifications_LocalizedText message_;
            private Object state_;
            private long steamid_;
            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> titleBuilder_;
            private CGameNotifications_LocalizedText title_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UserStatus_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UserStatus_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UserStatus.class, Builder.class);
            }

            private Builder() {
                this.state_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.state_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetTitleFieldBuilder();
                    internalGetMessageFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.state_ = "";
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                this.message_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder2 = this.messageBuilder_;
                if (singleFieldBuilder2 != null) {
                    singleFieldBuilder2.dispose();
                    this.messageBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UserStatus_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_UserStatus getDefaultInstanceForType() {
                return CGameNotifications_UserStatus.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UserStatus build() {
                CGameNotifications_UserStatus cGameNotifications_UserStatusBuildPartial = buildPartial();
                if (cGameNotifications_UserStatusBuildPartial.isInitialized()) {
                    return cGameNotifications_UserStatusBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_UserStatusBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UserStatus buildPartial() {
                CGameNotifications_UserStatus cGameNotifications_UserStatus = new CGameNotifications_UserStatus(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_UserStatus);
                }
                onBuilt();
                return cGameNotifications_UserStatus;
            }

            private void buildPartial0(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                int i;
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText;
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText2;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_UserStatus.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_UserStatus.state_ = this.state_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                    if (singleFieldBuilder == null) {
                        cGameNotifications_LocalizedText2 = this.title_;
                    } else {
                        cGameNotifications_LocalizedText2 = (CGameNotifications_LocalizedText) singleFieldBuilder.build();
                    }
                    cGameNotifications_UserStatus.title_ = cGameNotifications_LocalizedText2;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder2 = this.messageBuilder_;
                    if (singleFieldBuilder2 == null) {
                        cGameNotifications_LocalizedText = this.message_;
                    } else {
                        cGameNotifications_LocalizedText = (CGameNotifications_LocalizedText) singleFieldBuilder2.build();
                    }
                    cGameNotifications_UserStatus.message_ = cGameNotifications_LocalizedText;
                    i |= 8;
                }
                cGameNotifications_UserStatus.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_UserStatus) {
                    return mergeFrom((CGameNotifications_UserStatus) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                if (cGameNotifications_UserStatus == CGameNotifications_UserStatus.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_UserStatus.hasSteamid()) {
                    setSteamid(cGameNotifications_UserStatus.getSteamid());
                }
                if (cGameNotifications_UserStatus.hasState()) {
                    this.state_ = cGameNotifications_UserStatus.state_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cGameNotifications_UserStatus.hasTitle()) {
                    mergeTitle(cGameNotifications_UserStatus.getTitle());
                }
                if (cGameNotifications_UserStatus.hasMessage()) {
                    mergeMessage(cGameNotifications_UserStatus.getMessage());
                }
                mergeUnknownFields(cGameNotifications_UserStatus.getUnknownFields());
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
                                    this.state_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetTitleFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    codedInputStream.readMessage(internalGetMessageFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public boolean hasState() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
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
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearState() {
                this.state_ = CGameNotifications_UserStatus.getDefaultInstance().getState();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setStateBytes(ByteString byteString) {
                byteString.getClass();
                this.state_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public boolean hasTitle() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public CGameNotifications_LocalizedText getTitle() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                    return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
                }
                return (CGameNotifications_LocalizedText) singleFieldBuilder.getMessage();
            }

            public Builder setTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    cGameNotifications_LocalizedText.getClass();
                    this.title_ = cGameNotifications_LocalizedText;
                } else {
                    singleFieldBuilder.setMessage(cGameNotifications_LocalizedText);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setTitle(CGameNotifications_LocalizedText.Builder builder) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    this.title_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText2;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (cGameNotifications_LocalizedText2 = this.title_) != null && cGameNotifications_LocalizedText2 != CGameNotifications_LocalizedText.getDefaultInstance()) {
                        getTitleBuilder().mergeFrom(cGameNotifications_LocalizedText);
                    } else {
                        this.title_ = cGameNotifications_LocalizedText;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cGameNotifications_LocalizedText);
                }
                if (this.title_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearTitle() {
                this.bitField0_ &= -5;
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CGameNotifications_LocalizedText.Builder getTitleBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (CGameNotifications_LocalizedText.Builder) internalGetTitleFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    return (CGameNotifications_LocalizedTextOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
            }

            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> internalGetTitleFieldBuilder() {
                if (this.titleBuilder_ == null) {
                    this.titleBuilder_ = new SingleFieldBuilder<>(getTitle(), getParentForChildren(), isClean());
                    this.title_ = null;
                }
                return this.titleBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public CGameNotifications_LocalizedText getMessage() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.messageBuilder_;
                if (singleFieldBuilder == null) {
                    CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.message_;
                    return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
                }
                return (CGameNotifications_LocalizedText) singleFieldBuilder.getMessage();
            }

            public Builder setMessage(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.messageBuilder_;
                if (singleFieldBuilder == null) {
                    cGameNotifications_LocalizedText.getClass();
                    this.message_ = cGameNotifications_LocalizedText;
                } else {
                    singleFieldBuilder.setMessage(cGameNotifications_LocalizedText);
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder setMessage(CGameNotifications_LocalizedText.Builder builder) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.messageBuilder_;
                if (singleFieldBuilder == null) {
                    this.message_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder mergeMessage(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText2;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.messageBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0 && (cGameNotifications_LocalizedText2 = this.message_) != null && cGameNotifications_LocalizedText2 != CGameNotifications_LocalizedText.getDefaultInstance()) {
                        getMessageBuilder().mergeFrom(cGameNotifications_LocalizedText);
                    } else {
                        this.message_ = cGameNotifications_LocalizedText;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cGameNotifications_LocalizedText);
                }
                if (this.message_ != null) {
                    this.bitField0_ |= 8;
                    onChanged();
                }
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -9;
                this.message_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.messageBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.messageBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CGameNotifications_LocalizedText.Builder getMessageBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (CGameNotifications_LocalizedText.Builder) internalGetMessageFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UserStatusOrBuilder
            public CGameNotifications_LocalizedTextOrBuilder getMessageOrBuilder() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.messageBuilder_;
                if (singleFieldBuilder != null) {
                    return (CGameNotifications_LocalizedTextOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.message_;
                return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
            }

            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> internalGetMessageFieldBuilder() {
                if (this.messageBuilder_ == null) {
                    this.messageBuilder_ = new SingleFieldBuilder<>(getMessage(), getParentForChildren(), isClean());
                    this.message_ = null;
                }
                return this.messageBuilder_;
            }
        }

        public static CGameNotifications_UserStatus getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_UserStatus> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_UserStatus> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_UserStatus getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_CreateSession_Request extends GeneratedMessage implements CGameNotifications_CreateSession_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CONTEXT_FIELD_NUMBER = 2;
        private static final CGameNotifications_CreateSession_Request DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_CreateSession_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 5;
        public static final int TITLE_FIELD_NUMBER = 3;
        public static final int USERS_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private long context_;
        private byte memoizedIsInitialized;
        private long steamid_;
        private CGameNotifications_LocalizedText title_;
        private List<CGameNotifications_UserStatus> users_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_CreateSession_Request.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_CreateSession_Request();
            PARSER = new AbstractParser<CGameNotifications_CreateSession_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_Request.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_CreateSession_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_CreateSession_Request.newBuilder();
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

        private CGameNotifications_CreateSession_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.context_ = 0L;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_CreateSession_Request() {
            this.appid_ = 0;
            this.context_ = 0L;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.users_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_CreateSession_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public boolean hasContext() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public long getContext() {
            return this.context_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public boolean hasTitle() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public CGameNotifications_LocalizedText getTitle() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public List<CGameNotifications_UserStatus> getUsersList() {
            return this.users_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public List<? extends CGameNotifications_UserStatusOrBuilder> getUsersOrBuilderList() {
            return this.users_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public int getUsersCount() {
            return this.users_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public CGameNotifications_UserStatus getUsers(int i) {
            return this.users_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public CGameNotifications_UserStatusOrBuilder getUsersOrBuilder(int i) {
            return this.users_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.context_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeMessage(3, getTitle());
            }
            for (int i = 0; i < this.users_.size(); i++) {
                codedOutputStream.writeMessage(4, this.users_.get(i));
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(5, this.steamid_);
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
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(2, this.context_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(3, getTitle());
            }
            for (int i2 = 0; i2 < this.users_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(4, this.users_.get(i2));
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(5, this.steamid_);
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
            if (!(obj instanceof CGameNotifications_CreateSession_Request)) {
                return super.equals(obj);
            }
            CGameNotifications_CreateSession_Request cGameNotifications_CreateSession_Request = (CGameNotifications_CreateSession_Request) obj;
            if (hasAppid() != cGameNotifications_CreateSession_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cGameNotifications_CreateSession_Request.getAppid()) || hasContext() != cGameNotifications_CreateSession_Request.hasContext()) {
                return false;
            }
            if ((hasContext() && getContext() != cGameNotifications_CreateSession_Request.getContext()) || hasTitle() != cGameNotifications_CreateSession_Request.hasTitle()) {
                return false;
            }
            if ((!hasTitle() || getTitle().equals(cGameNotifications_CreateSession_Request.getTitle())) && getUsersList().equals(cGameNotifications_CreateSession_Request.getUsersList()) && hasSteamid() == cGameNotifications_CreateSession_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cGameNotifications_CreateSession_Request.getSteamid()) && getUnknownFields().equals(cGameNotifications_CreateSession_Request.getUnknownFields());
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
            if (hasContext()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getContext());
            }
            if (hasTitle()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTitle().hashCode();
            }
            if (getUsersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getUsersList().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_CreateSession_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_CreateSession_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_CreateSession_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_CreateSession_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_CreateSession_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_CreateSession_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_CreateSession_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_CreateSession_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_CreateSession_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_CreateSession_Request cGameNotifications_CreateSession_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_CreateSession_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_CreateSession_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long context_;
            private long steamid_;
            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> titleBuilder_;
            private CGameNotifications_LocalizedText title_;
            private RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> usersBuilder_;
            private List<CGameNotifications_UserStatus> users_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_CreateSession_Request.class, Builder.class);
            }

            private Builder() {
                this.users_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.users_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetTitleFieldBuilder();
                    internalGetUsersFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.context_ = 0L;
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.users_ = Collections.emptyList();
                } else {
                    this.users_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_CreateSession_Request getDefaultInstanceForType() {
                return CGameNotifications_CreateSession_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_CreateSession_Request build() {
                CGameNotifications_CreateSession_Request cGameNotifications_CreateSession_RequestBuildPartial = buildPartial();
                if (cGameNotifications_CreateSession_RequestBuildPartial.isInitialized()) {
                    return cGameNotifications_CreateSession_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_CreateSession_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_CreateSession_Request buildPartial() {
                CGameNotifications_CreateSession_Request cGameNotifications_CreateSession_Request = new CGameNotifications_CreateSession_Request(this);
                buildPartialRepeatedFields(cGameNotifications_CreateSession_Request);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_CreateSession_Request);
                }
                onBuilt();
                return cGameNotifications_CreateSession_Request;
            }

            private void buildPartialRepeatedFields(CGameNotifications_CreateSession_Request cGameNotifications_CreateSession_Request) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0) {
                        this.users_ = Collections.unmodifiableList(this.users_);
                        this.bitField0_ &= -9;
                    }
                    cGameNotifications_CreateSession_Request.users_ = this.users_;
                    return;
                }
                cGameNotifications_CreateSession_Request.users_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CGameNotifications_CreateSession_Request cGameNotifications_CreateSession_Request) {
                int i;
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_CreateSession_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_CreateSession_Request.context_ = this.context_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                    if (singleFieldBuilder == null) {
                        cGameNotifications_LocalizedText = this.title_;
                    } else {
                        cGameNotifications_LocalizedText = (CGameNotifications_LocalizedText) singleFieldBuilder.build();
                    }
                    cGameNotifications_CreateSession_Request.title_ = cGameNotifications_LocalizedText;
                    i |= 4;
                }
                if ((i2 & 16) != 0) {
                    cGameNotifications_CreateSession_Request.steamid_ = this.steamid_;
                    i |= 8;
                }
                cGameNotifications_CreateSession_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_CreateSession_Request) {
                    return mergeFrom((CGameNotifications_CreateSession_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_CreateSession_Request cGameNotifications_CreateSession_Request) {
                if (cGameNotifications_CreateSession_Request == CGameNotifications_CreateSession_Request.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_CreateSession_Request.hasAppid()) {
                    setAppid(cGameNotifications_CreateSession_Request.getAppid());
                }
                if (cGameNotifications_CreateSession_Request.hasContext()) {
                    setContext(cGameNotifications_CreateSession_Request.getContext());
                }
                if (cGameNotifications_CreateSession_Request.hasTitle()) {
                    mergeTitle(cGameNotifications_CreateSession_Request.getTitle());
                }
                if (this.usersBuilder_ == null) {
                    if (!cGameNotifications_CreateSession_Request.users_.isEmpty()) {
                        if (this.users_.isEmpty()) {
                            this.users_ = cGameNotifications_CreateSession_Request.users_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureUsersIsMutable();
                            this.users_.addAll(cGameNotifications_CreateSession_Request.users_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_CreateSession_Request.users_.isEmpty()) {
                    if (this.usersBuilder_.isEmpty()) {
                        this.usersBuilder_.dispose();
                        this.usersBuilder_ = null;
                        this.users_ = cGameNotifications_CreateSession_Request.users_;
                        this.bitField0_ &= -9;
                        this.usersBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetUsersFieldBuilder() : null;
                    } else {
                        this.usersBuilder_.addAllMessages(cGameNotifications_CreateSession_Request.users_);
                    }
                }
                if (cGameNotifications_CreateSession_Request.hasSteamid()) {
                    setSteamid(cGameNotifications_CreateSession_Request.getSteamid());
                }
                mergeUnknownFields(cGameNotifications_CreateSession_Request.getUnknownFields());
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
                                    this.context_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetTitleFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    CGameNotifications_UserStatus cGameNotifications_UserStatus = (CGameNotifications_UserStatus) codedInputStream.readMessage(CGameNotifications_UserStatus.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureUsersIsMutable();
                                        this.users_.add(cGameNotifications_UserStatus);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cGameNotifications_UserStatus);
                                    }
                                } else if (tag == 41) {
                                    this.steamid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public boolean hasContext() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public long getContext() {
                return this.context_;
            }

            public Builder setContext(long j) {
                this.context_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearContext() {
                this.bitField0_ &= -3;
                this.context_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public boolean hasTitle() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public CGameNotifications_LocalizedText getTitle() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                    return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
                }
                return (CGameNotifications_LocalizedText) singleFieldBuilder.getMessage();
            }

            public Builder setTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    cGameNotifications_LocalizedText.getClass();
                    this.title_ = cGameNotifications_LocalizedText;
                } else {
                    singleFieldBuilder.setMessage(cGameNotifications_LocalizedText);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setTitle(CGameNotifications_LocalizedText.Builder builder) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    this.title_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText2;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (cGameNotifications_LocalizedText2 = this.title_) != null && cGameNotifications_LocalizedText2 != CGameNotifications_LocalizedText.getDefaultInstance()) {
                        getTitleBuilder().mergeFrom(cGameNotifications_LocalizedText);
                    } else {
                        this.title_ = cGameNotifications_LocalizedText;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cGameNotifications_LocalizedText);
                }
                if (this.title_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearTitle() {
                this.bitField0_ &= -5;
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CGameNotifications_LocalizedText.Builder getTitleBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (CGameNotifications_LocalizedText.Builder) internalGetTitleFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    return (CGameNotifications_LocalizedTextOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
            }

            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> internalGetTitleFieldBuilder() {
                if (this.titleBuilder_ == null) {
                    this.titleBuilder_ = new SingleFieldBuilder<>(getTitle(), getParentForChildren(), isClean());
                    this.title_ = null;
                }
                return this.titleBuilder_;
            }

            private void ensureUsersIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.users_ = new ArrayList(this.users_);
                    this.bitField0_ |= 8;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public List<CGameNotifications_UserStatus> getUsersList() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.users_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public int getUsersCount() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.users_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public CGameNotifications_UserStatus getUsers(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.users_.get(i);
                }
                return (CGameNotifications_UserStatus) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setUsers(int i, CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUsersIsMutable();
                    this.users_.set(i, cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder setUsers(int i, CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUsers(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUsersIsMutable();
                    this.users_.add(cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder addUsers(int i, CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUsersIsMutable();
                    this.users_.add(i, cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder addUsers(CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUsers(int i, CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUsers(Iterable<? extends CGameNotifications_UserStatus> iterable) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.users_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUsers() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.users_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeUsers(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CGameNotifications_UserStatus.Builder getUsersBuilder(int i) {
                return (CGameNotifications_UserStatus.Builder) internalGetUsersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public CGameNotifications_UserStatusOrBuilder getUsersOrBuilder(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.users_.get(i);
                }
                return (CGameNotifications_UserStatusOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public List<? extends CGameNotifications_UserStatusOrBuilder> getUsersOrBuilderList() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.users_);
            }

            public CGameNotifications_UserStatus.Builder addUsersBuilder() {
                return (CGameNotifications_UserStatus.Builder) internalGetUsersFieldBuilder().addBuilder(CGameNotifications_UserStatus.getDefaultInstance());
            }

            public CGameNotifications_UserStatus.Builder addUsersBuilder(int i) {
                return (CGameNotifications_UserStatus.Builder) internalGetUsersFieldBuilder().addBuilder(i, CGameNotifications_UserStatus.getDefaultInstance());
            }

            public List<CGameNotifications_UserStatus.Builder> getUsersBuilderList() {
                return internalGetUsersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> internalGetUsersFieldBuilder() {
                if (this.usersBuilder_ == null) {
                    this.usersBuilder_ = new RepeatedFieldBuilder<>(this.users_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                    this.users_ = null;
                }
                return this.usersBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -17;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_CreateSession_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_CreateSession_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_CreateSession_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_CreateSession_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_CreateSession_Response extends GeneratedMessage implements CGameNotifications_CreateSession_ResponseOrBuilder {
        private static final CGameNotifications_CreateSession_Response DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_CreateSession_Response> PARSER;
        public static final int SESSIONID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long sessionid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_CreateSession_Response.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_CreateSession_Response();
            PARSER = new AbstractParser<CGameNotifications_CreateSession_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_Response.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_CreateSession_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_CreateSession_Response.newBuilder();
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

        private CGameNotifications_CreateSession_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_CreateSession_Response() {
            this.sessionid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_CreateSession_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_ResponseOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_ResponseOrBuilder
        public long getSessionid() {
            return this.sessionid_;
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
                codedOutputStream.writeUInt64(1, this.sessionid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.sessionid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt64Size;
            return iComputeUInt64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CGameNotifications_CreateSession_Response)) {
                return super.equals(obj);
            }
            CGameNotifications_CreateSession_Response cGameNotifications_CreateSession_Response = (CGameNotifications_CreateSession_Response) obj;
            if (hasSessionid() != cGameNotifications_CreateSession_Response.hasSessionid()) {
                return false;
            }
            return (!hasSessionid() || getSessionid() == cGameNotifications_CreateSession_Response.getSessionid()) && getUnknownFields().equals(cGameNotifications_CreateSession_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_CreateSession_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_CreateSession_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_CreateSession_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_CreateSession_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_CreateSession_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_CreateSession_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_CreateSession_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_CreateSession_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_CreateSession_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_CreateSession_Response cGameNotifications_CreateSession_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_CreateSession_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_CreateSession_ResponseOrBuilder {
            private int bitField0_;
            private long sessionid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_CreateSession_Response.class, Builder.class);
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
                this.sessionid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_CreateSession_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_CreateSession_Response getDefaultInstanceForType() {
                return CGameNotifications_CreateSession_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_CreateSession_Response build() {
                CGameNotifications_CreateSession_Response cGameNotifications_CreateSession_ResponseBuildPartial = buildPartial();
                if (cGameNotifications_CreateSession_ResponseBuildPartial.isInitialized()) {
                    return cGameNotifications_CreateSession_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_CreateSession_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_CreateSession_Response buildPartial() {
                CGameNotifications_CreateSession_Response cGameNotifications_CreateSession_Response = new CGameNotifications_CreateSession_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_CreateSession_Response);
                }
                onBuilt();
                return cGameNotifications_CreateSession_Response;
            }

            private void buildPartial0(CGameNotifications_CreateSession_Response cGameNotifications_CreateSession_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cGameNotifications_CreateSession_Response.sessionid_ = this.sessionid_;
                } else {
                    i = 0;
                }
                cGameNotifications_CreateSession_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_CreateSession_Response) {
                    return mergeFrom((CGameNotifications_CreateSession_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_CreateSession_Response cGameNotifications_CreateSession_Response) {
                if (cGameNotifications_CreateSession_Response == CGameNotifications_CreateSession_Response.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_CreateSession_Response.hasSessionid()) {
                    setSessionid(cGameNotifications_CreateSession_Response.getSessionid());
                }
                mergeUnknownFields(cGameNotifications_CreateSession_Response.getUnknownFields());
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
                                    this.sessionid_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_ResponseOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_ResponseOrBuilder
            public long getSessionid() {
                return this.sessionid_;
            }

            public Builder setSessionid(long j) {
                this.sessionid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.bitField0_ &= -2;
                this.sessionid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_CreateSession_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_CreateSession_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_CreateSession_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_CreateSession_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_DeleteSession_Request extends GeneratedMessage implements CGameNotifications_DeleteSession_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        private static final CGameNotifications_DeleteSession_Request DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_DeleteSession_Request> PARSER;
        public static final int SESSIONID_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long sessionid_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_DeleteSession_Request.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_DeleteSession_Request();
            PARSER = new AbstractParser<CGameNotifications_DeleteSession_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_Request.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_DeleteSession_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_DeleteSession_Request.newBuilder();
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

        private CGameNotifications_DeleteSession_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionid_ = 0L;
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_DeleteSession_Request() {
            this.sessionid_ = 0L;
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_DeleteSession_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
        public long getSessionid() {
            return this.sessionid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
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
                codedOutputStream.writeUInt64(1, this.sessionid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.sessionid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeFixed64Size(3, this.steamid_);
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
            if (!(obj instanceof CGameNotifications_DeleteSession_Request)) {
                return super.equals(obj);
            }
            CGameNotifications_DeleteSession_Request cGameNotifications_DeleteSession_Request = (CGameNotifications_DeleteSession_Request) obj;
            if (hasSessionid() != cGameNotifications_DeleteSession_Request.hasSessionid()) {
                return false;
            }
            if ((hasSessionid() && getSessionid() != cGameNotifications_DeleteSession_Request.getSessionid()) || hasAppid() != cGameNotifications_DeleteSession_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cGameNotifications_DeleteSession_Request.getAppid()) && hasSteamid() == cGameNotifications_DeleteSession_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cGameNotifications_DeleteSession_Request.getSteamid()) && getUnknownFields().equals(cGameNotifications_DeleteSession_Request.getUnknownFields());
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
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionid());
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppid();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_DeleteSession_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_DeleteSession_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_DeleteSession_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_DeleteSession_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_DeleteSession_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_DeleteSession_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_DeleteSession_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_DeleteSession_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_DeleteSession_Request cGameNotifications_DeleteSession_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_DeleteSession_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_DeleteSession_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long sessionid_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_DeleteSession_Request.class, Builder.class);
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
                this.sessionid_ = 0L;
                this.appid_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_DeleteSession_Request getDefaultInstanceForType() {
                return CGameNotifications_DeleteSession_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_DeleteSession_Request build() {
                CGameNotifications_DeleteSession_Request cGameNotifications_DeleteSession_RequestBuildPartial = buildPartial();
                if (cGameNotifications_DeleteSession_RequestBuildPartial.isInitialized()) {
                    return cGameNotifications_DeleteSession_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_DeleteSession_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_DeleteSession_Request buildPartial() {
                CGameNotifications_DeleteSession_Request cGameNotifications_DeleteSession_Request = new CGameNotifications_DeleteSession_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_DeleteSession_Request);
                }
                onBuilt();
                return cGameNotifications_DeleteSession_Request;
            }

            private void buildPartial0(CGameNotifications_DeleteSession_Request cGameNotifications_DeleteSession_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_DeleteSession_Request.sessionid_ = this.sessionid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_DeleteSession_Request.appid_ = this.appid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cGameNotifications_DeleteSession_Request.steamid_ = this.steamid_;
                    i |= 4;
                }
                cGameNotifications_DeleteSession_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_DeleteSession_Request) {
                    return mergeFrom((CGameNotifications_DeleteSession_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_DeleteSession_Request cGameNotifications_DeleteSession_Request) {
                if (cGameNotifications_DeleteSession_Request == CGameNotifications_DeleteSession_Request.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_DeleteSession_Request.hasSessionid()) {
                    setSessionid(cGameNotifications_DeleteSession_Request.getSessionid());
                }
                if (cGameNotifications_DeleteSession_Request.hasAppid()) {
                    setAppid(cGameNotifications_DeleteSession_Request.getAppid());
                }
                if (cGameNotifications_DeleteSession_Request.hasSteamid()) {
                    setSteamid(cGameNotifications_DeleteSession_Request.getSteamid());
                }
                mergeUnknownFields(cGameNotifications_DeleteSession_Request.getUnknownFields());
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
                                    this.sessionid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
            public long getSessionid() {
                return this.sessionid_;
            }

            public Builder setSessionid(long j) {
                this.sessionid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.bitField0_ &= -2;
                this.sessionid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -3;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -5;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_DeleteSession_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_DeleteSession_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_DeleteSession_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_DeleteSession_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_DeleteSession_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CGameNotifications_DeleteSession_Response DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_DeleteSession_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_DeleteSession_Response.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_DeleteSession_Response();
            PARSER = new AbstractParser<CGameNotifications_DeleteSession_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_Response.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_DeleteSession_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_DeleteSession_Response.newBuilder();
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

        private CGameNotifications_DeleteSession_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_DeleteSession_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_DeleteSession_Response.class, Builder.class);
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
            if (obj instanceof CGameNotifications_DeleteSession_Response) {
                return getUnknownFields().equals(((CGameNotifications_DeleteSession_Response) obj).getUnknownFields());
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

        public static CGameNotifications_DeleteSession_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_DeleteSession_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_DeleteSession_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_DeleteSession_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_DeleteSession_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_DeleteSession_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_DeleteSession_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_DeleteSession_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_DeleteSession_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_DeleteSession_Response cGameNotifications_DeleteSession_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_DeleteSession_Response);
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
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_DeleteSession_Response.class, Builder.class);
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
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_DeleteSession_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_DeleteSession_Response getDefaultInstanceForType() {
                return CGameNotifications_DeleteSession_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_DeleteSession_Response build() {
                CGameNotifications_DeleteSession_Response cGameNotifications_DeleteSession_ResponseBuildPartial = buildPartial();
                if (cGameNotifications_DeleteSession_ResponseBuildPartial.isInitialized()) {
                    return cGameNotifications_DeleteSession_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_DeleteSession_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_DeleteSession_Response buildPartial() {
                CGameNotifications_DeleteSession_Response cGameNotifications_DeleteSession_Response = new CGameNotifications_DeleteSession_Response(this);
                onBuilt();
                return cGameNotifications_DeleteSession_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_DeleteSession_Response) {
                    return mergeFrom((CGameNotifications_DeleteSession_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_DeleteSession_Response cGameNotifications_DeleteSession_Response) {
                if (cGameNotifications_DeleteSession_Response == CGameNotifications_DeleteSession_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cGameNotifications_DeleteSession_Response.getUnknownFields());
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

        public static CGameNotifications_DeleteSession_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_DeleteSession_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_DeleteSession_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_DeleteSession_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_UpdateSession_Request extends GeneratedMessage implements CGameNotifications_UpdateSession_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        private static final CGameNotifications_UpdateSession_Request DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_UpdateSession_Request> PARSER;
        public static final int SESSIONID_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 6;
        public static final int TITLE_FIELD_NUMBER = 3;
        public static final int USERS_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long sessionid_;
        private long steamid_;
        private CGameNotifications_LocalizedText title_;
        private List<CGameNotifications_UserStatus> users_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_UpdateSession_Request.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_UpdateSession_Request();
            PARSER = new AbstractParser<CGameNotifications_UpdateSession_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_Request.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_UpdateSession_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_UpdateSession_Request.newBuilder();
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

        private CGameNotifications_UpdateSession_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionid_ = 0L;
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_UpdateSession_Request() {
            this.sessionid_ = 0L;
            this.appid_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.users_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateSession_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public long getSessionid() {
            return this.sessionid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public boolean hasTitle() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public CGameNotifications_LocalizedText getTitle() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public List<CGameNotifications_UserStatus> getUsersList() {
            return this.users_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public List<? extends CGameNotifications_UserStatusOrBuilder> getUsersOrBuilderList() {
            return this.users_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public int getUsersCount() {
            return this.users_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public CGameNotifications_UserStatus getUsers(int i) {
            return this.users_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public CGameNotifications_UserStatusOrBuilder getUsersOrBuilder(int i) {
            return this.users_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
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
                codedOutputStream.writeUInt64(1, this.sessionid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeMessage(3, getTitle());
            }
            for (int i = 0; i < this.users_.size(); i++) {
                codedOutputStream.writeMessage(4, this.users_.get(i));
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(6, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.sessionid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(3, getTitle());
            }
            for (int i2 = 0; i2 < this.users_.size(); i2++) {
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(4, this.users_.get(i2));
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeFixed64Size(6, this.steamid_);
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
            if (!(obj instanceof CGameNotifications_UpdateSession_Request)) {
                return super.equals(obj);
            }
            CGameNotifications_UpdateSession_Request cGameNotifications_UpdateSession_Request = (CGameNotifications_UpdateSession_Request) obj;
            if (hasSessionid() != cGameNotifications_UpdateSession_Request.hasSessionid()) {
                return false;
            }
            if ((hasSessionid() && getSessionid() != cGameNotifications_UpdateSession_Request.getSessionid()) || hasAppid() != cGameNotifications_UpdateSession_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cGameNotifications_UpdateSession_Request.getAppid()) || hasTitle() != cGameNotifications_UpdateSession_Request.hasTitle()) {
                return false;
            }
            if ((!hasTitle() || getTitle().equals(cGameNotifications_UpdateSession_Request.getTitle())) && getUsersList().equals(cGameNotifications_UpdateSession_Request.getUsersList()) && hasSteamid() == cGameNotifications_UpdateSession_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cGameNotifications_UpdateSession_Request.getSteamid()) && getUnknownFields().equals(cGameNotifications_UpdateSession_Request.getUnknownFields());
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
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionid());
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppid();
            }
            if (hasTitle()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTitle().hashCode();
            }
            if (getUsersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getUsersList().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateSession_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateSession_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateSession_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateSession_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateSession_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_UpdateSession_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_UpdateSession_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateSession_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_UpdateSession_Request cGameNotifications_UpdateSession_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_UpdateSession_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_UpdateSession_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long sessionid_;
            private long steamid_;
            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> titleBuilder_;
            private CGameNotifications_LocalizedText title_;
            private RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> usersBuilder_;
            private List<CGameNotifications_UserStatus> users_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateSession_Request.class, Builder.class);
            }

            private Builder() {
                this.users_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.users_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetTitleFieldBuilder();
                    internalGetUsersFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.sessionid_ = 0L;
                this.appid_ = 0;
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.users_ = Collections.emptyList();
                } else {
                    this.users_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_UpdateSession_Request getDefaultInstanceForType() {
                return CGameNotifications_UpdateSession_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateSession_Request build() {
                CGameNotifications_UpdateSession_Request cGameNotifications_UpdateSession_RequestBuildPartial = buildPartial();
                if (cGameNotifications_UpdateSession_RequestBuildPartial.isInitialized()) {
                    return cGameNotifications_UpdateSession_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_UpdateSession_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateSession_Request buildPartial() {
                CGameNotifications_UpdateSession_Request cGameNotifications_UpdateSession_Request = new CGameNotifications_UpdateSession_Request(this);
                buildPartialRepeatedFields(cGameNotifications_UpdateSession_Request);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_UpdateSession_Request);
                }
                onBuilt();
                return cGameNotifications_UpdateSession_Request;
            }

            private void buildPartialRepeatedFields(CGameNotifications_UpdateSession_Request cGameNotifications_UpdateSession_Request) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0) {
                        this.users_ = Collections.unmodifiableList(this.users_);
                        this.bitField0_ &= -9;
                    }
                    cGameNotifications_UpdateSession_Request.users_ = this.users_;
                    return;
                }
                cGameNotifications_UpdateSession_Request.users_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CGameNotifications_UpdateSession_Request cGameNotifications_UpdateSession_Request) {
                int i;
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_UpdateSession_Request.sessionid_ = this.sessionid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_UpdateSession_Request.appid_ = this.appid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                    if (singleFieldBuilder == null) {
                        cGameNotifications_LocalizedText = this.title_;
                    } else {
                        cGameNotifications_LocalizedText = (CGameNotifications_LocalizedText) singleFieldBuilder.build();
                    }
                    cGameNotifications_UpdateSession_Request.title_ = cGameNotifications_LocalizedText;
                    i |= 4;
                }
                if ((i2 & 16) != 0) {
                    cGameNotifications_UpdateSession_Request.steamid_ = this.steamid_;
                    i |= 8;
                }
                cGameNotifications_UpdateSession_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_UpdateSession_Request) {
                    return mergeFrom((CGameNotifications_UpdateSession_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_UpdateSession_Request cGameNotifications_UpdateSession_Request) {
                if (cGameNotifications_UpdateSession_Request == CGameNotifications_UpdateSession_Request.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_UpdateSession_Request.hasSessionid()) {
                    setSessionid(cGameNotifications_UpdateSession_Request.getSessionid());
                }
                if (cGameNotifications_UpdateSession_Request.hasAppid()) {
                    setAppid(cGameNotifications_UpdateSession_Request.getAppid());
                }
                if (cGameNotifications_UpdateSession_Request.hasTitle()) {
                    mergeTitle(cGameNotifications_UpdateSession_Request.getTitle());
                }
                if (this.usersBuilder_ == null) {
                    if (!cGameNotifications_UpdateSession_Request.users_.isEmpty()) {
                        if (this.users_.isEmpty()) {
                            this.users_ = cGameNotifications_UpdateSession_Request.users_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureUsersIsMutable();
                            this.users_.addAll(cGameNotifications_UpdateSession_Request.users_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_UpdateSession_Request.users_.isEmpty()) {
                    if (this.usersBuilder_.isEmpty()) {
                        this.usersBuilder_.dispose();
                        this.usersBuilder_ = null;
                        this.users_ = cGameNotifications_UpdateSession_Request.users_;
                        this.bitField0_ &= -9;
                        this.usersBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetUsersFieldBuilder() : null;
                    } else {
                        this.usersBuilder_.addAllMessages(cGameNotifications_UpdateSession_Request.users_);
                    }
                }
                if (cGameNotifications_UpdateSession_Request.hasSteamid()) {
                    setSteamid(cGameNotifications_UpdateSession_Request.getSteamid());
                }
                mergeUnknownFields(cGameNotifications_UpdateSession_Request.getUnknownFields());
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
                                    this.sessionid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetTitleFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    CGameNotifications_UserStatus cGameNotifications_UserStatus = (CGameNotifications_UserStatus) codedInputStream.readMessage(CGameNotifications_UserStatus.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureUsersIsMutable();
                                        this.users_.add(cGameNotifications_UserStatus);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cGameNotifications_UserStatus);
                                    }
                                } else if (tag == 49) {
                                    this.steamid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public long getSessionid() {
                return this.sessionid_;
            }

            public Builder setSessionid(long j) {
                this.sessionid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.bitField0_ &= -2;
                this.sessionid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -3;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public boolean hasTitle() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public CGameNotifications_LocalizedText getTitle() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                    return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
                }
                return (CGameNotifications_LocalizedText) singleFieldBuilder.getMessage();
            }

            public Builder setTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    cGameNotifications_LocalizedText.getClass();
                    this.title_ = cGameNotifications_LocalizedText;
                } else {
                    singleFieldBuilder.setMessage(cGameNotifications_LocalizedText);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setTitle(CGameNotifications_LocalizedText.Builder builder) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    this.title_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText2;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (cGameNotifications_LocalizedText2 = this.title_) != null && cGameNotifications_LocalizedText2 != CGameNotifications_LocalizedText.getDefaultInstance()) {
                        getTitleBuilder().mergeFrom(cGameNotifications_LocalizedText);
                    } else {
                        this.title_ = cGameNotifications_LocalizedText;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cGameNotifications_LocalizedText);
                }
                if (this.title_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearTitle() {
                this.bitField0_ &= -5;
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CGameNotifications_LocalizedText.Builder getTitleBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (CGameNotifications_LocalizedText.Builder) internalGetTitleFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    return (CGameNotifications_LocalizedTextOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
            }

            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> internalGetTitleFieldBuilder() {
                if (this.titleBuilder_ == null) {
                    this.titleBuilder_ = new SingleFieldBuilder<>(getTitle(), getParentForChildren(), isClean());
                    this.title_ = null;
                }
                return this.titleBuilder_;
            }

            private void ensureUsersIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.users_ = new ArrayList(this.users_);
                    this.bitField0_ |= 8;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public List<CGameNotifications_UserStatus> getUsersList() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.users_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public int getUsersCount() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.users_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public CGameNotifications_UserStatus getUsers(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.users_.get(i);
                }
                return (CGameNotifications_UserStatus) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setUsers(int i, CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUsersIsMutable();
                    this.users_.set(i, cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder setUsers(int i, CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUsers(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUsersIsMutable();
                    this.users_.add(cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder addUsers(int i, CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUsersIsMutable();
                    this.users_.add(i, cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder addUsers(CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUsers(int i, CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUsers(Iterable<? extends CGameNotifications_UserStatus> iterable) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.users_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUsers() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.users_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeUsers(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsersIsMutable();
                    this.users_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CGameNotifications_UserStatus.Builder getUsersBuilder(int i) {
                return (CGameNotifications_UserStatus.Builder) internalGetUsersFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public CGameNotifications_UserStatusOrBuilder getUsersOrBuilder(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.users_.get(i);
                }
                return (CGameNotifications_UserStatusOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public List<? extends CGameNotifications_UserStatusOrBuilder> getUsersOrBuilderList() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.usersBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.users_);
            }

            public CGameNotifications_UserStatus.Builder addUsersBuilder() {
                return (CGameNotifications_UserStatus.Builder) internalGetUsersFieldBuilder().addBuilder(CGameNotifications_UserStatus.getDefaultInstance());
            }

            public CGameNotifications_UserStatus.Builder addUsersBuilder(int i) {
                return (CGameNotifications_UserStatus.Builder) internalGetUsersFieldBuilder().addBuilder(i, CGameNotifications_UserStatus.getDefaultInstance());
            }

            public List<CGameNotifications_UserStatus.Builder> getUsersBuilderList() {
                return internalGetUsersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> internalGetUsersFieldBuilder() {
                if (this.usersBuilder_ == null) {
                    this.usersBuilder_ = new RepeatedFieldBuilder<>(this.users_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                    this.users_ = null;
                }
                return this.usersBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_RequestOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -17;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_UpdateSession_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_UpdateSession_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_UpdateSession_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_UpdateSession_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_UpdateSession_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CGameNotifications_UpdateSession_Response DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_UpdateSession_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_UpdateSession_Response.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_UpdateSession_Response();
            PARSER = new AbstractParser<CGameNotifications_UpdateSession_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_Response.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_UpdateSession_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_UpdateSession_Response.newBuilder();
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

        private CGameNotifications_UpdateSession_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_UpdateSession_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateSession_Response.class, Builder.class);
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
            if (obj instanceof CGameNotifications_UpdateSession_Response) {
                return getUnknownFields().equals(((CGameNotifications_UpdateSession_Response) obj).getUnknownFields());
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

        public static CGameNotifications_UpdateSession_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateSession_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateSession_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateSession_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateSession_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateSession_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_UpdateSession_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_UpdateSession_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateSession_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_UpdateSession_Response cGameNotifications_UpdateSession_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_UpdateSession_Response);
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
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateSession_Response.class, Builder.class);
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
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateSession_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_UpdateSession_Response getDefaultInstanceForType() {
                return CGameNotifications_UpdateSession_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateSession_Response build() {
                CGameNotifications_UpdateSession_Response cGameNotifications_UpdateSession_ResponseBuildPartial = buildPartial();
                if (cGameNotifications_UpdateSession_ResponseBuildPartial.isInitialized()) {
                    return cGameNotifications_UpdateSession_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_UpdateSession_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateSession_Response buildPartial() {
                CGameNotifications_UpdateSession_Response cGameNotifications_UpdateSession_Response = new CGameNotifications_UpdateSession_Response(this);
                onBuilt();
                return cGameNotifications_UpdateSession_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_UpdateSession_Response) {
                    return mergeFrom((CGameNotifications_UpdateSession_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_UpdateSession_Response cGameNotifications_UpdateSession_Response) {
                if (cGameNotifications_UpdateSession_Response == CGameNotifications_UpdateSession_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cGameNotifications_UpdateSession_Response.getUnknownFields());
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

        public static CGameNotifications_UpdateSession_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_UpdateSession_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_UpdateSession_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_UpdateSession_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_EnumerateSessions_Request extends GeneratedMessage implements CGameNotifications_EnumerateSessions_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CGameNotifications_EnumerateSessions_Request DEFAULT_INSTANCE;
        public static final int INCLUDE_ALL_USER_MESSAGES_FIELD_NUMBER = 3;
        public static final int INCLUDE_AUTH_USER_MESSAGE_FIELD_NUMBER = 4;
        public static final int LANGUAGE_FIELD_NUMBER = 5;
        private static final Parser<CGameNotifications_EnumerateSessions_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private boolean includeAllUserMessages_;
        private boolean includeAuthUserMessage_;
        private volatile Object language_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_EnumerateSessions_Request.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_EnumerateSessions_Request();
            PARSER = new AbstractParser<CGameNotifications_EnumerateSessions_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_Request.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_EnumerateSessions_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_EnumerateSessions_Request.newBuilder();
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

        private CGameNotifications_EnumerateSessions_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.includeAllUserMessages_ = false;
            this.includeAuthUserMessage_ = false;
            this.language_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_EnumerateSessions_Request() {
            this.appid_ = 0;
            this.includeAllUserMessages_ = false;
            this.includeAuthUserMessage_ = false;
            this.language_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.language_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_EnumerateSessions_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public boolean hasIncludeAllUserMessages() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public boolean getIncludeAllUserMessages() {
            return this.includeAllUserMessages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public boolean hasIncludeAuthUserMessage() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public boolean getIncludeAuthUserMessage() {
            return this.includeAuthUserMessage_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public String getLanguage() {
            Object obj = this.language_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.language_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
        public ByteString getLanguageBytes() {
            Object obj = this.language_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.language_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeBool(3, this.includeAllUserMessages_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(4, this.includeAuthUserMessage_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.language_);
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
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.includeAllUserMessages_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(4, this.includeAuthUserMessage_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(5, this.language_);
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
            if (!(obj instanceof CGameNotifications_EnumerateSessions_Request)) {
                return super.equals(obj);
            }
            CGameNotifications_EnumerateSessions_Request cGameNotifications_EnumerateSessions_Request = (CGameNotifications_EnumerateSessions_Request) obj;
            if (hasAppid() != cGameNotifications_EnumerateSessions_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cGameNotifications_EnumerateSessions_Request.getAppid()) || hasIncludeAllUserMessages() != cGameNotifications_EnumerateSessions_Request.hasIncludeAllUserMessages()) {
                return false;
            }
            if ((hasIncludeAllUserMessages() && getIncludeAllUserMessages() != cGameNotifications_EnumerateSessions_Request.getIncludeAllUserMessages()) || hasIncludeAuthUserMessage() != cGameNotifications_EnumerateSessions_Request.hasIncludeAuthUserMessage()) {
                return false;
            }
            if ((!hasIncludeAuthUserMessage() || getIncludeAuthUserMessage() == cGameNotifications_EnumerateSessions_Request.getIncludeAuthUserMessage()) && hasLanguage() == cGameNotifications_EnumerateSessions_Request.hasLanguage()) {
                return (!hasLanguage() || getLanguage().equals(cGameNotifications_EnumerateSessions_Request.getLanguage())) && getUnknownFields().equals(cGameNotifications_EnumerateSessions_Request.getUnknownFields());
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
            if (hasIncludeAllUserMessages()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getIncludeAllUserMessages());
            }
            if (hasIncludeAuthUserMessage()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getIncludeAuthUserMessage());
            }
            if (hasLanguage()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getLanguage().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_EnumerateSessions_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_EnumerateSessions_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_EnumerateSessions_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_EnumerateSessions_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_EnumerateSessions_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_EnumerateSessions_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_EnumerateSessions_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_EnumerateSessions_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_EnumerateSessions_Request cGameNotifications_EnumerateSessions_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_EnumerateSessions_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_EnumerateSessions_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private boolean includeAllUserMessages_;
            private boolean includeAuthUserMessage_;
            private Object language_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_EnumerateSessions_Request.class, Builder.class);
            }

            private Builder() {
                this.language_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.language_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.appid_ = 0;
                this.includeAllUserMessages_ = false;
                this.includeAuthUserMessage_ = false;
                this.language_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_EnumerateSessions_Request getDefaultInstanceForType() {
                return CGameNotifications_EnumerateSessions_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_EnumerateSessions_Request build() {
                CGameNotifications_EnumerateSessions_Request cGameNotifications_EnumerateSessions_RequestBuildPartial = buildPartial();
                if (cGameNotifications_EnumerateSessions_RequestBuildPartial.isInitialized()) {
                    return cGameNotifications_EnumerateSessions_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_EnumerateSessions_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_EnumerateSessions_Request buildPartial() {
                CGameNotifications_EnumerateSessions_Request cGameNotifications_EnumerateSessions_Request = new CGameNotifications_EnumerateSessions_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_EnumerateSessions_Request);
                }
                onBuilt();
                return cGameNotifications_EnumerateSessions_Request;
            }

            private void buildPartial0(CGameNotifications_EnumerateSessions_Request cGameNotifications_EnumerateSessions_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_EnumerateSessions_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_EnumerateSessions_Request.includeAllUserMessages_ = this.includeAllUserMessages_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cGameNotifications_EnumerateSessions_Request.includeAuthUserMessage_ = this.includeAuthUserMessage_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cGameNotifications_EnumerateSessions_Request.language_ = this.language_;
                    i |= 8;
                }
                cGameNotifications_EnumerateSessions_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_EnumerateSessions_Request) {
                    return mergeFrom((CGameNotifications_EnumerateSessions_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_EnumerateSessions_Request cGameNotifications_EnumerateSessions_Request) {
                if (cGameNotifications_EnumerateSessions_Request == CGameNotifications_EnumerateSessions_Request.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_EnumerateSessions_Request.hasAppid()) {
                    setAppid(cGameNotifications_EnumerateSessions_Request.getAppid());
                }
                if (cGameNotifications_EnumerateSessions_Request.hasIncludeAllUserMessages()) {
                    setIncludeAllUserMessages(cGameNotifications_EnumerateSessions_Request.getIncludeAllUserMessages());
                }
                if (cGameNotifications_EnumerateSessions_Request.hasIncludeAuthUserMessage()) {
                    setIncludeAuthUserMessage(cGameNotifications_EnumerateSessions_Request.getIncludeAuthUserMessage());
                }
                if (cGameNotifications_EnumerateSessions_Request.hasLanguage()) {
                    this.language_ = cGameNotifications_EnumerateSessions_Request.language_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                mergeUnknownFields(cGameNotifications_EnumerateSessions_Request.getUnknownFields());
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
                                } else if (tag == 24) {
                                    this.includeAllUserMessages_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2;
                                } else if (tag == 32) {
                                    this.includeAuthUserMessage_ = codedInputStream.readBool();
                                    this.bitField0_ |= 4;
                                } else if (tag == 42) {
                                    this.language_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public boolean hasIncludeAllUserMessages() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public boolean getIncludeAllUserMessages() {
                return this.includeAllUserMessages_;
            }

            public Builder setIncludeAllUserMessages(boolean z) {
                this.includeAllUserMessages_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearIncludeAllUserMessages() {
                this.bitField0_ &= -3;
                this.includeAllUserMessages_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public boolean hasIncludeAuthUserMessage() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public boolean getIncludeAuthUserMessage() {
                return this.includeAuthUserMessage_;
            }

            public Builder setIncludeAuthUserMessage(boolean z) {
                this.includeAuthUserMessage_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearIncludeAuthUserMessage() {
                this.bitField0_ &= -5;
                this.includeAuthUserMessage_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public String getLanguage() {
                Object obj = this.language_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.language_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_RequestOrBuilder
            public ByteString getLanguageBytes() {
                Object obj = this.language_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.language_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setLanguage(String str) {
                str.getClass();
                this.language_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.language_ = CGameNotifications_EnumerateSessions_Request.getDefaultInstance().getLanguage();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setLanguageBytes(ByteString byteString) {
                byteString.getClass();
                this.language_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_EnumerateSessions_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_EnumerateSessions_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_EnumerateSessions_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_EnumerateSessions_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_Session extends GeneratedMessage implements CGameNotifications_SessionOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        public static final int CONTEXT_FIELD_NUMBER = 3;
        private static final CGameNotifications_Session DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_Session> PARSER;
        public static final int SESSIONID_FIELD_NUMBER = 1;
        public static final int TIME_CREATED_FIELD_NUMBER = 5;
        public static final int TIME_UPDATED_FIELD_NUMBER = 6;
        public static final int TITLE_FIELD_NUMBER = 4;
        public static final int USER_STATUS_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private long appid_;
        private int bitField0_;
        private long context_;
        private byte memoizedIsInitialized;
        private long sessionid_;
        private int timeCreated_;
        private int timeUpdated_;
        private CGameNotifications_LocalizedText title_;
        private List<CGameNotifications_UserStatus> userStatus_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_Session.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_Session();
            PARSER = new AbstractParser<CGameNotifications_Session>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_Session.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_Session parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_Session.newBuilder();
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

        private CGameNotifications_Session(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionid_ = 0L;
            this.appid_ = 0L;
            this.context_ = 0L;
            this.timeCreated_ = 0;
            this.timeUpdated_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_Session() {
            this.sessionid_ = 0L;
            this.appid_ = 0L;
            this.context_ = 0L;
            this.timeCreated_ = 0;
            this.timeUpdated_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.userStatus_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Session_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Session_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_Session.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public long getSessionid() {
            return this.sessionid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public long getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public boolean hasContext() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public long getContext() {
            return this.context_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public boolean hasTitle() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public CGameNotifications_LocalizedText getTitle() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
            CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
            return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public boolean hasTimeCreated() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public int getTimeCreated() {
            return this.timeCreated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public boolean hasTimeUpdated() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public int getTimeUpdated() {
            return this.timeUpdated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public List<CGameNotifications_UserStatus> getUserStatusList() {
            return this.userStatus_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public List<? extends CGameNotifications_UserStatusOrBuilder> getUserStatusOrBuilderList() {
            return this.userStatus_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public int getUserStatusCount() {
            return this.userStatus_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public CGameNotifications_UserStatus getUserStatus(int i) {
            return this.userStatus_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
        public CGameNotifications_UserStatusOrBuilder getUserStatusOrBuilder(int i) {
            return this.userStatus_.get(i);
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
                codedOutputStream.writeUInt64(1, this.sessionid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.context_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeMessage(4, getTitle());
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.timeCreated_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.timeUpdated_);
            }
            for (int i = 0; i < this.userStatus_.size(); i++) {
                codedOutputStream.writeMessage(7, this.userStatus_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.sessionid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(3, this.context_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(4, getTitle());
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(5, this.timeCreated_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(6, this.timeUpdated_);
            }
            for (int i2 = 0; i2 < this.userStatus_.size(); i2++) {
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(7, this.userStatus_.get(i2));
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
            if (!(obj instanceof CGameNotifications_Session)) {
                return super.equals(obj);
            }
            CGameNotifications_Session cGameNotifications_Session = (CGameNotifications_Session) obj;
            if (hasSessionid() != cGameNotifications_Session.hasSessionid()) {
                return false;
            }
            if ((hasSessionid() && getSessionid() != cGameNotifications_Session.getSessionid()) || hasAppid() != cGameNotifications_Session.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cGameNotifications_Session.getAppid()) || hasContext() != cGameNotifications_Session.hasContext()) {
                return false;
            }
            if ((hasContext() && getContext() != cGameNotifications_Session.getContext()) || hasTitle() != cGameNotifications_Session.hasTitle()) {
                return false;
            }
            if ((hasTitle() && !getTitle().equals(cGameNotifications_Session.getTitle())) || hasTimeCreated() != cGameNotifications_Session.hasTimeCreated()) {
                return false;
            }
            if ((!hasTimeCreated() || getTimeCreated() == cGameNotifications_Session.getTimeCreated()) && hasTimeUpdated() == cGameNotifications_Session.hasTimeUpdated()) {
                return (!hasTimeUpdated() || getTimeUpdated() == cGameNotifications_Session.getTimeUpdated()) && getUserStatusList().equals(cGameNotifications_Session.getUserStatusList()) && getUnknownFields().equals(cGameNotifications_Session.getUnknownFields());
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
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionid());
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getAppid());
            }
            if (hasContext()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getContext());
            }
            if (hasTitle()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getTitle().hashCode();
            }
            if (hasTimeCreated()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getTimeCreated();
            }
            if (hasTimeUpdated()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getTimeUpdated();
            }
            if (getUserStatusCount() > 0) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getUserStatusList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_Session parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_Session parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_Session parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_Session parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_Session parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_Session parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_Session parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_Session) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_Session parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_Session) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_Session parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_Session) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_Session parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_Session) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_Session parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_Session) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_Session parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_Session) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_Session cGameNotifications_Session) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_Session);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_SessionOrBuilder {
            private long appid_;
            private int bitField0_;
            private long context_;
            private long sessionid_;
            private int timeCreated_;
            private int timeUpdated_;
            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> titleBuilder_;
            private CGameNotifications_LocalizedText title_;
            private RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> userStatusBuilder_;
            private List<CGameNotifications_UserStatus> userStatus_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Session_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Session_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_Session.class, Builder.class);
            }

            private Builder() {
                this.userStatus_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.userStatus_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetTitleFieldBuilder();
                    internalGetUserStatusFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.sessionid_ = 0L;
                this.appid_ = 0L;
                this.context_ = 0L;
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                this.timeCreated_ = 0;
                this.timeUpdated_ = 0;
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.userStatus_ = Collections.emptyList();
                } else {
                    this.userStatus_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_Session_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_Session getDefaultInstanceForType() {
                return CGameNotifications_Session.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_Session build() {
                CGameNotifications_Session cGameNotifications_SessionBuildPartial = buildPartial();
                if (cGameNotifications_SessionBuildPartial.isInitialized()) {
                    return cGameNotifications_SessionBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_SessionBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_Session buildPartial() {
                CGameNotifications_Session cGameNotifications_Session = new CGameNotifications_Session(this);
                buildPartialRepeatedFields(cGameNotifications_Session);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_Session);
                }
                onBuilt();
                return cGameNotifications_Session;
            }

            private void buildPartialRepeatedFields(CGameNotifications_Session cGameNotifications_Session) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 64) != 0) {
                        this.userStatus_ = Collections.unmodifiableList(this.userStatus_);
                        this.bitField0_ &= -65;
                    }
                    cGameNotifications_Session.userStatus_ = this.userStatus_;
                    return;
                }
                cGameNotifications_Session.userStatus_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CGameNotifications_Session cGameNotifications_Session) {
                int i;
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_Session.sessionid_ = this.sessionid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_Session.appid_ = this.appid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cGameNotifications_Session.context_ = this.context_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                    if (singleFieldBuilder == null) {
                        cGameNotifications_LocalizedText = this.title_;
                    } else {
                        cGameNotifications_LocalizedText = (CGameNotifications_LocalizedText) singleFieldBuilder.build();
                    }
                    cGameNotifications_Session.title_ = cGameNotifications_LocalizedText;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cGameNotifications_Session.timeCreated_ = this.timeCreated_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cGameNotifications_Session.timeUpdated_ = this.timeUpdated_;
                    i |= 32;
                }
                cGameNotifications_Session.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_Session) {
                    return mergeFrom((CGameNotifications_Session) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_Session cGameNotifications_Session) {
                if (cGameNotifications_Session == CGameNotifications_Session.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_Session.hasSessionid()) {
                    setSessionid(cGameNotifications_Session.getSessionid());
                }
                if (cGameNotifications_Session.hasAppid()) {
                    setAppid(cGameNotifications_Session.getAppid());
                }
                if (cGameNotifications_Session.hasContext()) {
                    setContext(cGameNotifications_Session.getContext());
                }
                if (cGameNotifications_Session.hasTitle()) {
                    mergeTitle(cGameNotifications_Session.getTitle());
                }
                if (cGameNotifications_Session.hasTimeCreated()) {
                    setTimeCreated(cGameNotifications_Session.getTimeCreated());
                }
                if (cGameNotifications_Session.hasTimeUpdated()) {
                    setTimeUpdated(cGameNotifications_Session.getTimeUpdated());
                }
                if (this.userStatusBuilder_ == null) {
                    if (!cGameNotifications_Session.userStatus_.isEmpty()) {
                        if (this.userStatus_.isEmpty()) {
                            this.userStatus_ = cGameNotifications_Session.userStatus_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureUserStatusIsMutable();
                            this.userStatus_.addAll(cGameNotifications_Session.userStatus_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_Session.userStatus_.isEmpty()) {
                    if (this.userStatusBuilder_.isEmpty()) {
                        this.userStatusBuilder_.dispose();
                        this.userStatusBuilder_ = null;
                        this.userStatus_ = cGameNotifications_Session.userStatus_;
                        this.bitField0_ &= -65;
                        this.userStatusBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetUserStatusFieldBuilder() : null;
                    } else {
                        this.userStatusBuilder_.addAllMessages(cGameNotifications_Session.userStatus_);
                    }
                }
                mergeUnknownFields(cGameNotifications_Session.getUnknownFields());
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
                                    this.sessionid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.appid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.context_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    codedInputStream.readMessage(internalGetTitleFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.timeCreated_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.timeUpdated_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 58) {
                                    CGameNotifications_UserStatus cGameNotifications_UserStatus = (CGameNotifications_UserStatus) codedInputStream.readMessage(CGameNotifications_UserStatus.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureUserStatusIsMutable();
                                        this.userStatus_.add(cGameNotifications_UserStatus);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cGameNotifications_UserStatus);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public long getSessionid() {
                return this.sessionid_;
            }

            public Builder setSessionid(long j) {
                this.sessionid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.bitField0_ &= -2;
                this.sessionid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public long getAppid() {
                return this.appid_;
            }

            public Builder setAppid(long j) {
                this.appid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -3;
                this.appid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public boolean hasContext() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public long getContext() {
                return this.context_;
            }

            public Builder setContext(long j) {
                this.context_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearContext() {
                this.bitField0_ &= -5;
                this.context_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public boolean hasTitle() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public CGameNotifications_LocalizedText getTitle() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                    return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
                }
                return (CGameNotifications_LocalizedText) singleFieldBuilder.getMessage();
            }

            public Builder setTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    cGameNotifications_LocalizedText.getClass();
                    this.title_ = cGameNotifications_LocalizedText;
                } else {
                    singleFieldBuilder.setMessage(cGameNotifications_LocalizedText);
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder setTitle(CGameNotifications_LocalizedText.Builder builder) {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    this.title_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder mergeTitle(CGameNotifications_LocalizedText cGameNotifications_LocalizedText) {
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText2;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0 && (cGameNotifications_LocalizedText2 = this.title_) != null && cGameNotifications_LocalizedText2 != CGameNotifications_LocalizedText.getDefaultInstance()) {
                        getTitleBuilder().mergeFrom(cGameNotifications_LocalizedText);
                    } else {
                        this.title_ = cGameNotifications_LocalizedText;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cGameNotifications_LocalizedText);
                }
                if (this.title_ != null) {
                    this.bitField0_ |= 8;
                    onChanged();
                }
                return this;
            }

            public Builder clearTitle() {
                this.bitField0_ &= -9;
                this.title_ = null;
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.titleBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CGameNotifications_LocalizedText.Builder getTitleBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (CGameNotifications_LocalizedText.Builder) internalGetTitleFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public CGameNotifications_LocalizedTextOrBuilder getTitleOrBuilder() {
                SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> singleFieldBuilder = this.titleBuilder_;
                if (singleFieldBuilder != null) {
                    return (CGameNotifications_LocalizedTextOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CGameNotifications_LocalizedText cGameNotifications_LocalizedText = this.title_;
                return cGameNotifications_LocalizedText == null ? CGameNotifications_LocalizedText.getDefaultInstance() : cGameNotifications_LocalizedText;
            }

            private SingleFieldBuilder<CGameNotifications_LocalizedText, CGameNotifications_LocalizedText.Builder, CGameNotifications_LocalizedTextOrBuilder> internalGetTitleFieldBuilder() {
                if (this.titleBuilder_ == null) {
                    this.titleBuilder_ = new SingleFieldBuilder<>(getTitle(), getParentForChildren(), isClean());
                    this.title_ = null;
                }
                return this.titleBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public boolean hasTimeCreated() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public int getTimeCreated() {
                return this.timeCreated_;
            }

            public Builder setTimeCreated(int i) {
                this.timeCreated_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearTimeCreated() {
                this.bitField0_ &= -17;
                this.timeCreated_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public boolean hasTimeUpdated() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public int getTimeUpdated() {
                return this.timeUpdated_;
            }

            public Builder setTimeUpdated(int i) {
                this.timeUpdated_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearTimeUpdated() {
                this.bitField0_ &= -33;
                this.timeUpdated_ = 0;
                onChanged();
                return this;
            }

            private void ensureUserStatusIsMutable() {
                if ((this.bitField0_ & 64) == 0) {
                    this.userStatus_ = new ArrayList(this.userStatus_);
                    this.bitField0_ |= 64;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public List<CGameNotifications_UserStatus> getUserStatusList() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.userStatus_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public int getUserStatusCount() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.userStatus_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public CGameNotifications_UserStatus getUserStatus(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.userStatus_.get(i);
                }
                return (CGameNotifications_UserStatus) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setUserStatus(int i, CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUserStatusIsMutable();
                    this.userStatus_.set(i, cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder setUserStatus(int i, CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUserStatusIsMutable();
                    this.userStatus_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUserStatus(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUserStatusIsMutable();
                    this.userStatus_.add(cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder addUserStatus(int i, CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    ensureUserStatusIsMutable();
                    this.userStatus_.add(i, cGameNotifications_UserStatus);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cGameNotifications_UserStatus);
                }
                return this;
            }

            public Builder addUserStatus(CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUserStatusIsMutable();
                    this.userStatus_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUserStatus(int i, CGameNotifications_UserStatus.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUserStatusIsMutable();
                    this.userStatus_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUserStatus(Iterable<? extends CGameNotifications_UserStatus> iterable) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUserStatusIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.userStatus_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUserStatus() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.userStatus_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeUserStatus(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUserStatusIsMutable();
                    this.userStatus_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CGameNotifications_UserStatus.Builder getUserStatusBuilder(int i) {
                return (CGameNotifications_UserStatus.Builder) internalGetUserStatusFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public CGameNotifications_UserStatusOrBuilder getUserStatusOrBuilder(int i) {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.userStatus_.get(i);
                }
                return (CGameNotifications_UserStatusOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_SessionOrBuilder
            public List<? extends CGameNotifications_UserStatusOrBuilder> getUserStatusOrBuilderList() {
                RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> repeatedFieldBuilder = this.userStatusBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.userStatus_);
            }

            public CGameNotifications_UserStatus.Builder addUserStatusBuilder() {
                return (CGameNotifications_UserStatus.Builder) internalGetUserStatusFieldBuilder().addBuilder(CGameNotifications_UserStatus.getDefaultInstance());
            }

            public CGameNotifications_UserStatus.Builder addUserStatusBuilder(int i) {
                return (CGameNotifications_UserStatus.Builder) internalGetUserStatusFieldBuilder().addBuilder(i, CGameNotifications_UserStatus.getDefaultInstance());
            }

            public List<CGameNotifications_UserStatus.Builder> getUserStatusBuilderList() {
                return internalGetUserStatusFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> internalGetUserStatusFieldBuilder() {
                if (this.userStatusBuilder_ == null) {
                    this.userStatusBuilder_ = new RepeatedFieldBuilder<>(this.userStatus_, (this.bitField0_ & 64) != 0, getParentForChildren(), isClean());
                    this.userStatus_ = null;
                }
                return this.userStatusBuilder_;
            }
        }

        public static CGameNotifications_Session getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_Session> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_Session> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_Session getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_EnumerateSessions_Response extends GeneratedMessage implements CGameNotifications_EnumerateSessions_ResponseOrBuilder {
        private static final CGameNotifications_EnumerateSessions_Response DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_EnumerateSessions_Response> PARSER;
        public static final int SESSIONS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<CGameNotifications_Session> sessions_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_EnumerateSessions_Response.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_EnumerateSessions_Response();
            PARSER = new AbstractParser<CGameNotifications_EnumerateSessions_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_Response.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_EnumerateSessions_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_EnumerateSessions_Response.newBuilder();
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

        private CGameNotifications_EnumerateSessions_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_EnumerateSessions_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.sessions_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_EnumerateSessions_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
        public List<CGameNotifications_Session> getSessionsList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
        public List<? extends CGameNotifications_SessionOrBuilder> getSessionsOrBuilderList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
        public int getSessionsCount() {
            return this.sessions_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
        public CGameNotifications_Session getSessions(int i) {
            return this.sessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
        public CGameNotifications_SessionOrBuilder getSessionsOrBuilder(int i) {
            return this.sessions_.get(i);
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
            for (int i = 0; i < this.sessions_.size(); i++) {
                codedOutputStream.writeMessage(1, this.sessions_.get(i));
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
            for (int i2 = 0; i2 < this.sessions_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.sessions_.get(i2));
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
            if (!(obj instanceof CGameNotifications_EnumerateSessions_Response)) {
                return super.equals(obj);
            }
            CGameNotifications_EnumerateSessions_Response cGameNotifications_EnumerateSessions_Response = (CGameNotifications_EnumerateSessions_Response) obj;
            return getSessionsList().equals(cGameNotifications_EnumerateSessions_Response.getSessionsList()) && getUnknownFields().equals(cGameNotifications_EnumerateSessions_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getSessionsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSessionsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_EnumerateSessions_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_EnumerateSessions_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_EnumerateSessions_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_EnumerateSessions_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_EnumerateSessions_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_EnumerateSessions_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_EnumerateSessions_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_EnumerateSessions_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_EnumerateSessions_Response cGameNotifications_EnumerateSessions_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_EnumerateSessions_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_EnumerateSessions_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> sessionsBuilder_;
            private List<CGameNotifications_Session> sessions_;

            private void buildPartial0(CGameNotifications_EnumerateSessions_Response cGameNotifications_EnumerateSessions_Response) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_EnumerateSessions_Response.class, Builder.class);
            }

            private Builder() {
                this.sessions_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.sessions_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.sessions_ = Collections.emptyList();
                } else {
                    this.sessions_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_EnumerateSessions_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_EnumerateSessions_Response getDefaultInstanceForType() {
                return CGameNotifications_EnumerateSessions_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_EnumerateSessions_Response build() {
                CGameNotifications_EnumerateSessions_Response cGameNotifications_EnumerateSessions_ResponseBuildPartial = buildPartial();
                if (cGameNotifications_EnumerateSessions_ResponseBuildPartial.isInitialized()) {
                    return cGameNotifications_EnumerateSessions_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_EnumerateSessions_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_EnumerateSessions_Response buildPartial() {
                CGameNotifications_EnumerateSessions_Response cGameNotifications_EnumerateSessions_Response = new CGameNotifications_EnumerateSessions_Response(this);
                buildPartialRepeatedFields(cGameNotifications_EnumerateSessions_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_EnumerateSessions_Response);
                }
                onBuilt();
                return cGameNotifications_EnumerateSessions_Response;
            }

            private void buildPartialRepeatedFields(CGameNotifications_EnumerateSessions_Response cGameNotifications_EnumerateSessions_Response) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.sessions_ = Collections.unmodifiableList(this.sessions_);
                        this.bitField0_ &= -2;
                    }
                    cGameNotifications_EnumerateSessions_Response.sessions_ = this.sessions_;
                    return;
                }
                cGameNotifications_EnumerateSessions_Response.sessions_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_EnumerateSessions_Response) {
                    return mergeFrom((CGameNotifications_EnumerateSessions_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_EnumerateSessions_Response cGameNotifications_EnumerateSessions_Response) {
                if (cGameNotifications_EnumerateSessions_Response == CGameNotifications_EnumerateSessions_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.sessionsBuilder_ == null) {
                    if (!cGameNotifications_EnumerateSessions_Response.sessions_.isEmpty()) {
                        if (this.sessions_.isEmpty()) {
                            this.sessions_ = cGameNotifications_EnumerateSessions_Response.sessions_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureSessionsIsMutable();
                            this.sessions_.addAll(cGameNotifications_EnumerateSessions_Response.sessions_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_EnumerateSessions_Response.sessions_.isEmpty()) {
                    if (this.sessionsBuilder_.isEmpty()) {
                        this.sessionsBuilder_.dispose();
                        this.sessionsBuilder_ = null;
                        this.sessions_ = cGameNotifications_EnumerateSessions_Response.sessions_;
                        this.bitField0_ &= -2;
                        this.sessionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetSessionsFieldBuilder() : null;
                    } else {
                        this.sessionsBuilder_.addAllMessages(cGameNotifications_EnumerateSessions_Response.sessions_);
                    }
                }
                mergeUnknownFields(cGameNotifications_EnumerateSessions_Response.getUnknownFields());
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
                                    CGameNotifications_Session cGameNotifications_Session = (CGameNotifications_Session) codedInputStream.readMessage(CGameNotifications_Session.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureSessionsIsMutable();
                                        this.sessions_.add(cGameNotifications_Session);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cGameNotifications_Session);
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

            private void ensureSessionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.sessions_ = new ArrayList(this.sessions_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
            public List<CGameNotifications_Session> getSessionsList() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.sessions_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
            public int getSessionsCount() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
            public CGameNotifications_Session getSessions(int i) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (CGameNotifications_Session) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setSessions(int i, CGameNotifications_Session cGameNotifications_Session) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, cGameNotifications_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cGameNotifications_Session);
                }
                return this;
            }

            public Builder setSessions(int i, CGameNotifications_Session.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addSessions(CGameNotifications_Session cGameNotifications_Session) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(cGameNotifications_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cGameNotifications_Session);
                }
                return this;
            }

            public Builder addSessions(int i, CGameNotifications_Session cGameNotifications_Session) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, cGameNotifications_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cGameNotifications_Session);
                }
                return this;
            }

            public Builder addSessions(CGameNotifications_Session.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addSessions(int i, CGameNotifications_Session.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllSessions(Iterable<? extends CGameNotifications_Session> iterable) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.sessions_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearSessions() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.sessions_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeSessions(int i) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CGameNotifications_Session.Builder getSessionsBuilder(int i) {
                return (CGameNotifications_Session.Builder) internalGetSessionsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
            public CGameNotifications_SessionOrBuilder getSessionsOrBuilder(int i) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (CGameNotifications_SessionOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_ResponseOrBuilder
            public List<? extends CGameNotifications_SessionOrBuilder> getSessionsOrBuilderList() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.sessions_);
            }

            public CGameNotifications_Session.Builder addSessionsBuilder() {
                return (CGameNotifications_Session.Builder) internalGetSessionsFieldBuilder().addBuilder(CGameNotifications_Session.getDefaultInstance());
            }

            public CGameNotifications_Session.Builder addSessionsBuilder(int i) {
                return (CGameNotifications_Session.Builder) internalGetSessionsFieldBuilder().addBuilder(i, CGameNotifications_Session.getDefaultInstance());
            }

            public List<CGameNotifications_Session.Builder> getSessionsBuilderList() {
                return internalGetSessionsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> internalGetSessionsFieldBuilder() {
                if (this.sessionsBuilder_ == null) {
                    this.sessionsBuilder_ = new RepeatedFieldBuilder<>(this.sessions_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.sessions_ = null;
                }
                return this.sessionsBuilder_;
            }
        }

        public static CGameNotifications_EnumerateSessions_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_EnumerateSessions_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_EnumerateSessions_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_EnumerateSessions_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_GetSessionDetails_Request extends GeneratedMessage implements CGameNotifications_GetSessionDetails_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        private static final CGameNotifications_GetSessionDetails_Request DEFAULT_INSTANCE;
        public static final int LANGUAGE_FIELD_NUMBER = 3;
        private static final Parser<CGameNotifications_GetSessionDetails_Request> PARSER;
        public static final int SESSIONS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private volatile Object language_;
        private byte memoizedIsInitialized;
        private List<RequestedSession> sessions_;

        public interface RequestedSessionOrBuilder extends MessageOrBuilder {
            boolean getIncludeAuthUserMessage();

            long getSessionid();

            boolean hasIncludeAuthUserMessage();

            boolean hasSessionid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_GetSessionDetails_Request.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_GetSessionDetails_Request();
            PARSER = new AbstractParser<CGameNotifications_GetSessionDetails_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_GetSessionDetails_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_GetSessionDetails_Request.newBuilder();
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

        private CGameNotifications_GetSessionDetails_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.language_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_GetSessionDetails_Request() {
            this.appid_ = 0;
            this.language_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.sessions_ = Collections.emptyList();
            this.language_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_GetSessionDetails_Request.class, Builder.class);
        }

        public static final class RequestedSession extends GeneratedMessage implements RequestedSessionOrBuilder {
            private static final RequestedSession DEFAULT_INSTANCE;
            public static final int INCLUDE_AUTH_USER_MESSAGE_FIELD_NUMBER = 3;
            private static final Parser<RequestedSession> PARSER;
            public static final int SESSIONID_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private boolean includeAuthUserMessage_;
            private byte memoizedIsInitialized;
            private long sessionid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", RequestedSession.class.getName());
                DEFAULT_INSTANCE = new RequestedSession();
                PARSER = new AbstractParser<RequestedSession>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSession.1
                    @Override // com.google.protobuf.Parser
                    public RequestedSession parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = RequestedSession.newBuilder();
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

            private RequestedSession(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.sessionid_ = 0L;
                this.includeAuthUserMessage_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            private RequestedSession() {
                this.sessionid_ = 0L;
                this.includeAuthUserMessage_ = false;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestedSession.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
            public long getSessionid() {
                return this.sessionid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
            public boolean hasIncludeAuthUserMessage() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
            public boolean getIncludeAuthUserMessage() {
                return this.includeAuthUserMessage_;
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
                    codedOutputStream.writeUInt64(1, this.sessionid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeBool(3, this.includeAuthUserMessage_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.sessionid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt64Size += CodedOutputStream.computeBoolSize(3, this.includeAuthUserMessage_);
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
                if (!(obj instanceof RequestedSession)) {
                    return super.equals(obj);
                }
                RequestedSession requestedSession = (RequestedSession) obj;
                if (hasSessionid() != requestedSession.hasSessionid()) {
                    return false;
                }
                if ((!hasSessionid() || getSessionid() == requestedSession.getSessionid()) && hasIncludeAuthUserMessage() == requestedSession.hasIncludeAuthUserMessage()) {
                    return (!hasIncludeAuthUserMessage() || getIncludeAuthUserMessage() == requestedSession.getIncludeAuthUserMessage()) && getUnknownFields().equals(requestedSession.getUnknownFields());
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
                if (hasSessionid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSessionid());
                }
                if (hasIncludeAuthUserMessage()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getIncludeAuthUserMessage());
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static RequestedSession parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static RequestedSession parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static RequestedSession parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static RequestedSession parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static RequestedSession parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static RequestedSession parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static RequestedSession parseFrom(InputStream inputStream) throws IOException {
                return (RequestedSession) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static RequestedSession parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (RequestedSession) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static RequestedSession parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (RequestedSession) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static RequestedSession parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (RequestedSession) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static RequestedSession parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (RequestedSession) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static RequestedSession parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (RequestedSession) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(RequestedSession requestedSession) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(requestedSession);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements RequestedSessionOrBuilder {
                private int bitField0_;
                private boolean includeAuthUserMessage_;
                private long sessionid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestedSession.class, Builder.class);
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
                    this.sessionid_ = 0L;
                    this.includeAuthUserMessage_ = false;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_RequestedSession_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public RequestedSession getDefaultInstanceForType() {
                    return RequestedSession.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public RequestedSession build() {
                    RequestedSession requestedSessionBuildPartial = buildPartial();
                    if (requestedSessionBuildPartial.isInitialized()) {
                        return requestedSessionBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) requestedSessionBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public RequestedSession buildPartial() {
                    RequestedSession requestedSession = new RequestedSession(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(requestedSession);
                    }
                    onBuilt();
                    return requestedSession;
                }

                private void buildPartial0(RequestedSession requestedSession) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        requestedSession.sessionid_ = this.sessionid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        requestedSession.includeAuthUserMessage_ = this.includeAuthUserMessage_;
                        i |= 2;
                    }
                    requestedSession.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof RequestedSession) {
                        return mergeFrom((RequestedSession) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(RequestedSession requestedSession) {
                    if (requestedSession == RequestedSession.getDefaultInstance()) {
                        return this;
                    }
                    if (requestedSession.hasSessionid()) {
                        setSessionid(requestedSession.getSessionid());
                    }
                    if (requestedSession.hasIncludeAuthUserMessage()) {
                        setIncludeAuthUserMessage(requestedSession.getIncludeAuthUserMessage());
                    }
                    mergeUnknownFields(requestedSession.getUnknownFields());
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
                                        this.sessionid_ = codedInputStream.readUInt64();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 24) {
                                        this.includeAuthUserMessage_ = codedInputStream.readBool();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
                public boolean hasSessionid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
                public long getSessionid() {
                    return this.sessionid_;
                }

                public Builder setSessionid(long j) {
                    this.sessionid_ = j;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearSessionid() {
                    this.bitField0_ &= -2;
                    this.sessionid_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
                public boolean hasIncludeAuthUserMessage() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request.RequestedSessionOrBuilder
                public boolean getIncludeAuthUserMessage() {
                    return this.includeAuthUserMessage_;
                }

                public Builder setIncludeAuthUserMessage(boolean z) {
                    this.includeAuthUserMessage_ = z;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearIncludeAuthUserMessage() {
                    this.bitField0_ &= -3;
                    this.includeAuthUserMessage_ = false;
                    onChanged();
                    return this;
                }
            }

            public static RequestedSession getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<RequestedSession> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<RequestedSession> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public RequestedSession getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public List<RequestedSession> getSessionsList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public List<? extends RequestedSessionOrBuilder> getSessionsOrBuilderList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public int getSessionsCount() {
            return this.sessions_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public RequestedSession getSessions(int i) {
            return this.sessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public RequestedSessionOrBuilder getSessionsOrBuilder(int i) {
            return this.sessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public String getLanguage() {
            Object obj = this.language_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.language_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
        public ByteString getLanguageBytes() {
            Object obj = this.language_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.language_ = byteStringCopyFromUtf8;
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
            for (int i = 0; i < this.sessions_.size(); i++) {
                codedOutputStream.writeMessage(1, this.sessions_.get(i));
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.language_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = 0;
            for (int i2 = 0; i2 < this.sessions_.size(); i2++) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(1, this.sessions_.get(i2));
            }
            if ((this.bitField0_ & 1) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(3, this.language_);
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
            if (!(obj instanceof CGameNotifications_GetSessionDetails_Request)) {
                return super.equals(obj);
            }
            CGameNotifications_GetSessionDetails_Request cGameNotifications_GetSessionDetails_Request = (CGameNotifications_GetSessionDetails_Request) obj;
            if (!getSessionsList().equals(cGameNotifications_GetSessionDetails_Request.getSessionsList()) || hasAppid() != cGameNotifications_GetSessionDetails_Request.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == cGameNotifications_GetSessionDetails_Request.getAppid()) && hasLanguage() == cGameNotifications_GetSessionDetails_Request.hasLanguage()) {
                return (!hasLanguage() || getLanguage().equals(cGameNotifications_GetSessionDetails_Request.getLanguage())) && getUnknownFields().equals(cGameNotifications_GetSessionDetails_Request.getUnknownFields());
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
            if (getSessionsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSessionsList().hashCode();
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppid();
            }
            if (hasLanguage()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getLanguage().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_GetSessionDetails_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_GetSessionDetails_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_GetSessionDetails_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_GetSessionDetails_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_GetSessionDetails_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_GetSessionDetails_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_GetSessionDetails_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_GetSessionDetails_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_GetSessionDetails_Request cGameNotifications_GetSessionDetails_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_GetSessionDetails_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_GetSessionDetails_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object language_;
            private RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> sessionsBuilder_;
            private List<RequestedSession> sessions_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_GetSessionDetails_Request.class, Builder.class);
            }

            private Builder() {
                this.sessions_ = Collections.emptyList();
                this.language_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.sessions_ = Collections.emptyList();
                this.language_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.sessions_ = Collections.emptyList();
                } else {
                    this.sessions_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                this.appid_ = 0;
                this.language_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_GetSessionDetails_Request getDefaultInstanceForType() {
                return CGameNotifications_GetSessionDetails_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_GetSessionDetails_Request build() {
                CGameNotifications_GetSessionDetails_Request cGameNotifications_GetSessionDetails_RequestBuildPartial = buildPartial();
                if (cGameNotifications_GetSessionDetails_RequestBuildPartial.isInitialized()) {
                    return cGameNotifications_GetSessionDetails_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_GetSessionDetails_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_GetSessionDetails_Request buildPartial() {
                CGameNotifications_GetSessionDetails_Request cGameNotifications_GetSessionDetails_Request = new CGameNotifications_GetSessionDetails_Request(this);
                buildPartialRepeatedFields(cGameNotifications_GetSessionDetails_Request);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_GetSessionDetails_Request);
                }
                onBuilt();
                return cGameNotifications_GetSessionDetails_Request;
            }

            private void buildPartialRepeatedFields(CGameNotifications_GetSessionDetails_Request cGameNotifications_GetSessionDetails_Request) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.sessions_ = Collections.unmodifiableList(this.sessions_);
                        this.bitField0_ &= -2;
                    }
                    cGameNotifications_GetSessionDetails_Request.sessions_ = this.sessions_;
                    return;
                }
                cGameNotifications_GetSessionDetails_Request.sessions_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CGameNotifications_GetSessionDetails_Request cGameNotifications_GetSessionDetails_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 2) != 0) {
                    cGameNotifications_GetSessionDetails_Request.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 4) != 0) {
                    cGameNotifications_GetSessionDetails_Request.language_ = this.language_;
                    i |= 2;
                }
                cGameNotifications_GetSessionDetails_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_GetSessionDetails_Request) {
                    return mergeFrom((CGameNotifications_GetSessionDetails_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_GetSessionDetails_Request cGameNotifications_GetSessionDetails_Request) {
                if (cGameNotifications_GetSessionDetails_Request == CGameNotifications_GetSessionDetails_Request.getDefaultInstance()) {
                    return this;
                }
                if (this.sessionsBuilder_ == null) {
                    if (!cGameNotifications_GetSessionDetails_Request.sessions_.isEmpty()) {
                        if (this.sessions_.isEmpty()) {
                            this.sessions_ = cGameNotifications_GetSessionDetails_Request.sessions_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureSessionsIsMutable();
                            this.sessions_.addAll(cGameNotifications_GetSessionDetails_Request.sessions_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_GetSessionDetails_Request.sessions_.isEmpty()) {
                    if (this.sessionsBuilder_.isEmpty()) {
                        this.sessionsBuilder_.dispose();
                        this.sessionsBuilder_ = null;
                        this.sessions_ = cGameNotifications_GetSessionDetails_Request.sessions_;
                        this.bitField0_ &= -2;
                        this.sessionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetSessionsFieldBuilder() : null;
                    } else {
                        this.sessionsBuilder_.addAllMessages(cGameNotifications_GetSessionDetails_Request.sessions_);
                    }
                }
                if (cGameNotifications_GetSessionDetails_Request.hasAppid()) {
                    setAppid(cGameNotifications_GetSessionDetails_Request.getAppid());
                }
                if (cGameNotifications_GetSessionDetails_Request.hasLanguage()) {
                    this.language_ = cGameNotifications_GetSessionDetails_Request.language_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cGameNotifications_GetSessionDetails_Request.getUnknownFields());
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
                                    RequestedSession requestedSession = (RequestedSession) codedInputStream.readMessage(RequestedSession.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureSessionsIsMutable();
                                        this.sessions_.add(requestedSession);
                                    } else {
                                        repeatedFieldBuilder.addMessage(requestedSession);
                                    }
                                } else if (tag == 16) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.language_ = codedInputStream.readBytes();
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

            private void ensureSessionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.sessions_ = new ArrayList(this.sessions_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public List<RequestedSession> getSessionsList() {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.sessions_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public int getSessionsCount() {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public RequestedSession getSessions(int i) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (RequestedSession) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setSessions(int i, RequestedSession requestedSession) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    requestedSession.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, requestedSession);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, requestedSession);
                }
                return this;
            }

            public Builder setSessions(int i, RequestedSession.Builder builder) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addSessions(RequestedSession requestedSession) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    requestedSession.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(requestedSession);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(requestedSession);
                }
                return this;
            }

            public Builder addSessions(int i, RequestedSession requestedSession) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    requestedSession.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, requestedSession);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, requestedSession);
                }
                return this;
            }

            public Builder addSessions(RequestedSession.Builder builder) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addSessions(int i, RequestedSession.Builder builder) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllSessions(Iterable<? extends RequestedSession> iterable) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.sessions_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearSessions() {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.sessions_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeSessions(int i) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public RequestedSession.Builder getSessionsBuilder(int i) {
                return (RequestedSession.Builder) internalGetSessionsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public RequestedSessionOrBuilder getSessionsOrBuilder(int i) {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (RequestedSessionOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public List<? extends RequestedSessionOrBuilder> getSessionsOrBuilderList() {
                RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.sessions_);
            }

            public RequestedSession.Builder addSessionsBuilder() {
                return (RequestedSession.Builder) internalGetSessionsFieldBuilder().addBuilder(RequestedSession.getDefaultInstance());
            }

            public RequestedSession.Builder addSessionsBuilder(int i) {
                return (RequestedSession.Builder) internalGetSessionsFieldBuilder().addBuilder(i, RequestedSession.getDefaultInstance());
            }

            public List<RequestedSession.Builder> getSessionsBuilderList() {
                return internalGetSessionsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<RequestedSession, RequestedSession.Builder, RequestedSessionOrBuilder> internalGetSessionsFieldBuilder() {
                if (this.sessionsBuilder_ == null) {
                    this.sessionsBuilder_ = new RepeatedFieldBuilder<>(this.sessions_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.sessions_ = null;
                }
                return this.sessionsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -3;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public String getLanguage() {
                Object obj = this.language_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.language_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_RequestOrBuilder
            public ByteString getLanguageBytes() {
                Object obj = this.language_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.language_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setLanguage(String str) {
                str.getClass();
                this.language_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.language_ = CGameNotifications_GetSessionDetails_Request.getDefaultInstance().getLanguage();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setLanguageBytes(ByteString byteString) {
                byteString.getClass();
                this.language_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_GetSessionDetails_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_GetSessionDetails_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_GetSessionDetails_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_GetSessionDetails_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_GetSessionDetails_Response extends GeneratedMessage implements CGameNotifications_GetSessionDetails_ResponseOrBuilder {
        private static final CGameNotifications_GetSessionDetails_Response DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_GetSessionDetails_Response> PARSER;
        public static final int SESSIONS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<CGameNotifications_Session> sessions_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_GetSessionDetails_Response.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_GetSessionDetails_Response();
            PARSER = new AbstractParser<CGameNotifications_GetSessionDetails_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Response.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_GetSessionDetails_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_GetSessionDetails_Response.newBuilder();
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

        private CGameNotifications_GetSessionDetails_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_GetSessionDetails_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.sessions_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_GetSessionDetails_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
        public List<CGameNotifications_Session> getSessionsList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
        public List<? extends CGameNotifications_SessionOrBuilder> getSessionsOrBuilderList() {
            return this.sessions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
        public int getSessionsCount() {
            return this.sessions_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
        public CGameNotifications_Session getSessions(int i) {
            return this.sessions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
        public CGameNotifications_SessionOrBuilder getSessionsOrBuilder(int i) {
            return this.sessions_.get(i);
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
            for (int i = 0; i < this.sessions_.size(); i++) {
                codedOutputStream.writeMessage(1, this.sessions_.get(i));
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
            for (int i2 = 0; i2 < this.sessions_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.sessions_.get(i2));
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
            if (!(obj instanceof CGameNotifications_GetSessionDetails_Response)) {
                return super.equals(obj);
            }
            CGameNotifications_GetSessionDetails_Response cGameNotifications_GetSessionDetails_Response = (CGameNotifications_GetSessionDetails_Response) obj;
            return getSessionsList().equals(cGameNotifications_GetSessionDetails_Response.getSessionsList()) && getUnknownFields().equals(cGameNotifications_GetSessionDetails_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getSessionsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSessionsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_GetSessionDetails_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_GetSessionDetails_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_GetSessionDetails_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_GetSessionDetails_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_GetSessionDetails_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_GetSessionDetails_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_GetSessionDetails_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_GetSessionDetails_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_GetSessionDetails_Response cGameNotifications_GetSessionDetails_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_GetSessionDetails_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_GetSessionDetails_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> sessionsBuilder_;
            private List<CGameNotifications_Session> sessions_;

            private void buildPartial0(CGameNotifications_GetSessionDetails_Response cGameNotifications_GetSessionDetails_Response) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_GetSessionDetails_Response.class, Builder.class);
            }

            private Builder() {
                this.sessions_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.sessions_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.sessions_ = Collections.emptyList();
                } else {
                    this.sessions_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_GetSessionDetails_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_GetSessionDetails_Response getDefaultInstanceForType() {
                return CGameNotifications_GetSessionDetails_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_GetSessionDetails_Response build() {
                CGameNotifications_GetSessionDetails_Response cGameNotifications_GetSessionDetails_ResponseBuildPartial = buildPartial();
                if (cGameNotifications_GetSessionDetails_ResponseBuildPartial.isInitialized()) {
                    return cGameNotifications_GetSessionDetails_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_GetSessionDetails_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_GetSessionDetails_Response buildPartial() {
                CGameNotifications_GetSessionDetails_Response cGameNotifications_GetSessionDetails_Response = new CGameNotifications_GetSessionDetails_Response(this);
                buildPartialRepeatedFields(cGameNotifications_GetSessionDetails_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_GetSessionDetails_Response);
                }
                onBuilt();
                return cGameNotifications_GetSessionDetails_Response;
            }

            private void buildPartialRepeatedFields(CGameNotifications_GetSessionDetails_Response cGameNotifications_GetSessionDetails_Response) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.sessions_ = Collections.unmodifiableList(this.sessions_);
                        this.bitField0_ &= -2;
                    }
                    cGameNotifications_GetSessionDetails_Response.sessions_ = this.sessions_;
                    return;
                }
                cGameNotifications_GetSessionDetails_Response.sessions_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_GetSessionDetails_Response) {
                    return mergeFrom((CGameNotifications_GetSessionDetails_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_GetSessionDetails_Response cGameNotifications_GetSessionDetails_Response) {
                if (cGameNotifications_GetSessionDetails_Response == CGameNotifications_GetSessionDetails_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.sessionsBuilder_ == null) {
                    if (!cGameNotifications_GetSessionDetails_Response.sessions_.isEmpty()) {
                        if (this.sessions_.isEmpty()) {
                            this.sessions_ = cGameNotifications_GetSessionDetails_Response.sessions_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureSessionsIsMutable();
                            this.sessions_.addAll(cGameNotifications_GetSessionDetails_Response.sessions_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_GetSessionDetails_Response.sessions_.isEmpty()) {
                    if (this.sessionsBuilder_.isEmpty()) {
                        this.sessionsBuilder_.dispose();
                        this.sessionsBuilder_ = null;
                        this.sessions_ = cGameNotifications_GetSessionDetails_Response.sessions_;
                        this.bitField0_ &= -2;
                        this.sessionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetSessionsFieldBuilder() : null;
                    } else {
                        this.sessionsBuilder_.addAllMessages(cGameNotifications_GetSessionDetails_Response.sessions_);
                    }
                }
                mergeUnknownFields(cGameNotifications_GetSessionDetails_Response.getUnknownFields());
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
                                    CGameNotifications_Session cGameNotifications_Session = (CGameNotifications_Session) codedInputStream.readMessage(CGameNotifications_Session.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureSessionsIsMutable();
                                        this.sessions_.add(cGameNotifications_Session);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cGameNotifications_Session);
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

            private void ensureSessionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.sessions_ = new ArrayList(this.sessions_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
            public List<CGameNotifications_Session> getSessionsList() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.sessions_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
            public int getSessionsCount() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
            public CGameNotifications_Session getSessions(int i) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (CGameNotifications_Session) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setSessions(int i, CGameNotifications_Session cGameNotifications_Session) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, cGameNotifications_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cGameNotifications_Session);
                }
                return this;
            }

            public Builder setSessions(int i, CGameNotifications_Session.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addSessions(CGameNotifications_Session cGameNotifications_Session) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(cGameNotifications_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cGameNotifications_Session);
                }
                return this;
            }

            public Builder addSessions(int i, CGameNotifications_Session cGameNotifications_Session) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    cGameNotifications_Session.getClass();
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, cGameNotifications_Session);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cGameNotifications_Session);
                }
                return this;
            }

            public Builder addSessions(CGameNotifications_Session.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addSessions(int i, CGameNotifications_Session.Builder builder) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllSessions(Iterable<? extends CGameNotifications_Session> iterable) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.sessions_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearSessions() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.sessions_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeSessions(int i) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureSessionsIsMutable();
                    this.sessions_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CGameNotifications_Session.Builder getSessionsBuilder(int i) {
                return (CGameNotifications_Session.Builder) internalGetSessionsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
            public CGameNotifications_SessionOrBuilder getSessionsOrBuilder(int i) {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.sessions_.get(i);
                }
                return (CGameNotifications_SessionOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_ResponseOrBuilder
            public List<? extends CGameNotifications_SessionOrBuilder> getSessionsOrBuilderList() {
                RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> repeatedFieldBuilder = this.sessionsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.sessions_);
            }

            public CGameNotifications_Session.Builder addSessionsBuilder() {
                return (CGameNotifications_Session.Builder) internalGetSessionsFieldBuilder().addBuilder(CGameNotifications_Session.getDefaultInstance());
            }

            public CGameNotifications_Session.Builder addSessionsBuilder(int i) {
                return (CGameNotifications_Session.Builder) internalGetSessionsFieldBuilder().addBuilder(i, CGameNotifications_Session.getDefaultInstance());
            }

            public List<CGameNotifications_Session.Builder> getSessionsBuilderList() {
                return internalGetSessionsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CGameNotifications_Session, CGameNotifications_Session.Builder, CGameNotifications_SessionOrBuilder> internalGetSessionsFieldBuilder() {
                if (this.sessionsBuilder_ == null) {
                    this.sessionsBuilder_ = new RepeatedFieldBuilder<>(this.sessions_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.sessions_ = null;
                }
                return this.sessionsBuilder_;
            }
        }

        public static CGameNotifications_GetSessionDetails_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_GetSessionDetails_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_GetSessionDetails_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_GetSessionDetails_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class GameNotificationSettings extends GeneratedMessage implements GameNotificationSettingsOrBuilder {
        public static final int ALLOW_NOTIFICATIONS_FIELD_NUMBER = 2;
        public static final int APPID_FIELD_NUMBER = 1;
        private static final GameNotificationSettings DEFAULT_INSTANCE;
        private static final Parser<GameNotificationSettings> PARSER;
        private static final long serialVersionUID = 0;
        private boolean allowNotifications_;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", GameNotificationSettings.class.getName());
            DEFAULT_INSTANCE = new GameNotificationSettings();
            PARSER = new AbstractParser<GameNotificationSettings>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettings.1
                @Override // com.google.protobuf.Parser
                public GameNotificationSettings parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = GameNotificationSettings.newBuilder();
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

        private GameNotificationSettings(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.allowNotifications_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private GameNotificationSettings() {
            this.appid_ = 0;
            this.allowNotifications_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_GameNotificationSettings_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_GameNotificationSettings_fieldAccessorTable.ensureFieldAccessorsInitialized(GameNotificationSettings.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
        public boolean hasAllowNotifications() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
        public boolean getAllowNotifications() {
            return this.allowNotifications_;
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
                codedOutputStream.writeBool(2, this.allowNotifications_);
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
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(2, this.allowNotifications_);
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
            if (!(obj instanceof GameNotificationSettings)) {
                return super.equals(obj);
            }
            GameNotificationSettings gameNotificationSettings = (GameNotificationSettings) obj;
            if (hasAppid() != gameNotificationSettings.hasAppid()) {
                return false;
            }
            if ((!hasAppid() || getAppid() == gameNotificationSettings.getAppid()) && hasAllowNotifications() == gameNotificationSettings.hasAllowNotifications()) {
                return (!hasAllowNotifications() || getAllowNotifications() == gameNotificationSettings.getAllowNotifications()) && getUnknownFields().equals(gameNotificationSettings.getUnknownFields());
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
            if (hasAllowNotifications()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getAllowNotifications());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static GameNotificationSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static GameNotificationSettings parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static GameNotificationSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static GameNotificationSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static GameNotificationSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static GameNotificationSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static GameNotificationSettings parseFrom(InputStream inputStream) throws IOException {
            return (GameNotificationSettings) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static GameNotificationSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GameNotificationSettings) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static GameNotificationSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GameNotificationSettings) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static GameNotificationSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GameNotificationSettings) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static GameNotificationSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (GameNotificationSettings) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static GameNotificationSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GameNotificationSettings) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(GameNotificationSettings gameNotificationSettings) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(gameNotificationSettings);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements GameNotificationSettingsOrBuilder {
            private boolean allowNotifications_;
            private int appid_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_GameNotificationSettings_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_GameNotificationSettings_fieldAccessorTable.ensureFieldAccessorsInitialized(GameNotificationSettings.class, Builder.class);
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
                this.allowNotifications_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_GameNotificationSettings_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public GameNotificationSettings getDefaultInstanceForType() {
                return GameNotificationSettings.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public GameNotificationSettings build() {
                GameNotificationSettings gameNotificationSettingsBuildPartial = buildPartial();
                if (gameNotificationSettingsBuildPartial.isInitialized()) {
                    return gameNotificationSettingsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) gameNotificationSettingsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public GameNotificationSettings buildPartial() {
                GameNotificationSettings gameNotificationSettings = new GameNotificationSettings(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(gameNotificationSettings);
                }
                onBuilt();
                return gameNotificationSettings;
            }

            private void buildPartial0(GameNotificationSettings gameNotificationSettings) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    gameNotificationSettings.appid_ = this.appid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    gameNotificationSettings.allowNotifications_ = this.allowNotifications_;
                    i |= 2;
                }
                gameNotificationSettings.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof GameNotificationSettings) {
                    return mergeFrom((GameNotificationSettings) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(GameNotificationSettings gameNotificationSettings) {
                if (gameNotificationSettings == GameNotificationSettings.getDefaultInstance()) {
                    return this;
                }
                if (gameNotificationSettings.hasAppid()) {
                    setAppid(gameNotificationSettings.getAppid());
                }
                if (gameNotificationSettings.hasAllowNotifications()) {
                    setAllowNotifications(gameNotificationSettings.getAllowNotifications());
                }
                mergeUnknownFields(gameNotificationSettings.getUnknownFields());
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
                                    this.allowNotifications_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
            public boolean hasAllowNotifications() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.GameNotificationSettingsOrBuilder
            public boolean getAllowNotifications() {
                return this.allowNotifications_;
            }

            public Builder setAllowNotifications(boolean z) {
                this.allowNotifications_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAllowNotifications() {
                this.bitField0_ &= -3;
                this.allowNotifications_ = false;
                onChanged();
                return this;
            }
        }

        public static GameNotificationSettings getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<GameNotificationSettings> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<GameNotificationSettings> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public GameNotificationSettings getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_UpdateNotificationSettings_Request extends GeneratedMessage implements CGameNotifications_UpdateNotificationSettings_RequestOrBuilder {
        private static final CGameNotifications_UpdateNotificationSettings_Request DEFAULT_INSTANCE;
        public static final int GAME_NOTIFICATION_SETTINGS_FIELD_NUMBER = 1;
        private static final Parser<CGameNotifications_UpdateNotificationSettings_Request> PARSER;
        private static final long serialVersionUID = 0;
        private List<GameNotificationSettings> gameNotificationSettings_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_UpdateNotificationSettings_Request.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_UpdateNotificationSettings_Request();
            PARSER = new AbstractParser<CGameNotifications_UpdateNotificationSettings_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_Request.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_UpdateNotificationSettings_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_UpdateNotificationSettings_Request.newBuilder();
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

        private CGameNotifications_UpdateNotificationSettings_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_UpdateNotificationSettings_Request() {
            this.memoizedIsInitialized = (byte) -1;
            this.gameNotificationSettings_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateNotificationSettings_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
        public List<GameNotificationSettings> getGameNotificationSettingsList() {
            return this.gameNotificationSettings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
        public List<? extends GameNotificationSettingsOrBuilder> getGameNotificationSettingsOrBuilderList() {
            return this.gameNotificationSettings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
        public int getGameNotificationSettingsCount() {
            return this.gameNotificationSettings_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
        public GameNotificationSettings getGameNotificationSettings(int i) {
            return this.gameNotificationSettings_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
        public GameNotificationSettingsOrBuilder getGameNotificationSettingsOrBuilder(int i) {
            return this.gameNotificationSettings_.get(i);
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
            for (int i = 0; i < this.gameNotificationSettings_.size(); i++) {
                codedOutputStream.writeMessage(1, this.gameNotificationSettings_.get(i));
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
            for (int i2 = 0; i2 < this.gameNotificationSettings_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.gameNotificationSettings_.get(i2));
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
            if (!(obj instanceof CGameNotifications_UpdateNotificationSettings_Request)) {
                return super.equals(obj);
            }
            CGameNotifications_UpdateNotificationSettings_Request cGameNotifications_UpdateNotificationSettings_Request = (CGameNotifications_UpdateNotificationSettings_Request) obj;
            return getGameNotificationSettingsList().equals(cGameNotifications_UpdateNotificationSettings_Request.getGameNotificationSettingsList()) && getUnknownFields().equals(cGameNotifications_UpdateNotificationSettings_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getGameNotificationSettingsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getGameNotificationSettingsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_UpdateNotificationSettings_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_UpdateNotificationSettings_Request cGameNotifications_UpdateNotificationSettings_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_UpdateNotificationSettings_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_UpdateNotificationSettings_RequestOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> gameNotificationSettingsBuilder_;
            private List<GameNotificationSettings> gameNotificationSettings_;

            private void buildPartial0(CGameNotifications_UpdateNotificationSettings_Request cGameNotifications_UpdateNotificationSettings_Request) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateNotificationSettings_Request.class, Builder.class);
            }

            private Builder() {
                this.gameNotificationSettings_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.gameNotificationSettings_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.gameNotificationSettings_ = Collections.emptyList();
                } else {
                    this.gameNotificationSettings_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_UpdateNotificationSettings_Request getDefaultInstanceForType() {
                return CGameNotifications_UpdateNotificationSettings_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateNotificationSettings_Request build() {
                CGameNotifications_UpdateNotificationSettings_Request cGameNotifications_UpdateNotificationSettings_RequestBuildPartial = buildPartial();
                if (cGameNotifications_UpdateNotificationSettings_RequestBuildPartial.isInitialized()) {
                    return cGameNotifications_UpdateNotificationSettings_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_UpdateNotificationSettings_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateNotificationSettings_Request buildPartial() {
                CGameNotifications_UpdateNotificationSettings_Request cGameNotifications_UpdateNotificationSettings_Request = new CGameNotifications_UpdateNotificationSettings_Request(this);
                buildPartialRepeatedFields(cGameNotifications_UpdateNotificationSettings_Request);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_UpdateNotificationSettings_Request);
                }
                onBuilt();
                return cGameNotifications_UpdateNotificationSettings_Request;
            }

            private void buildPartialRepeatedFields(CGameNotifications_UpdateNotificationSettings_Request cGameNotifications_UpdateNotificationSettings_Request) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.gameNotificationSettings_ = Collections.unmodifiableList(this.gameNotificationSettings_);
                        this.bitField0_ &= -2;
                    }
                    cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_ = this.gameNotificationSettings_;
                    return;
                }
                cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_UpdateNotificationSettings_Request) {
                    return mergeFrom((CGameNotifications_UpdateNotificationSettings_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_UpdateNotificationSettings_Request cGameNotifications_UpdateNotificationSettings_Request) {
                if (cGameNotifications_UpdateNotificationSettings_Request == CGameNotifications_UpdateNotificationSettings_Request.getDefaultInstance()) {
                    return this;
                }
                if (this.gameNotificationSettingsBuilder_ == null) {
                    if (!cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_.isEmpty()) {
                        if (this.gameNotificationSettings_.isEmpty()) {
                            this.gameNotificationSettings_ = cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureGameNotificationSettingsIsMutable();
                            this.gameNotificationSettings_.addAll(cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_);
                        }
                        onChanged();
                    }
                } else if (!cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_.isEmpty()) {
                    if (this.gameNotificationSettingsBuilder_.isEmpty()) {
                        this.gameNotificationSettingsBuilder_.dispose();
                        this.gameNotificationSettingsBuilder_ = null;
                        this.gameNotificationSettings_ = cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_;
                        this.bitField0_ &= -2;
                        this.gameNotificationSettingsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetGameNotificationSettingsFieldBuilder() : null;
                    } else {
                        this.gameNotificationSettingsBuilder_.addAllMessages(cGameNotifications_UpdateNotificationSettings_Request.gameNotificationSettings_);
                    }
                }
                mergeUnknownFields(cGameNotifications_UpdateNotificationSettings_Request.getUnknownFields());
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
                                    GameNotificationSettings gameNotificationSettings = (GameNotificationSettings) codedInputStream.readMessage(GameNotificationSettings.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureGameNotificationSettingsIsMutable();
                                        this.gameNotificationSettings_.add(gameNotificationSettings);
                                    } else {
                                        repeatedFieldBuilder.addMessage(gameNotificationSettings);
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

            private void ensureGameNotificationSettingsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.gameNotificationSettings_ = new ArrayList(this.gameNotificationSettings_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
            public List<GameNotificationSettings> getGameNotificationSettingsList() {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.gameNotificationSettings_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
            public int getGameNotificationSettingsCount() {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.gameNotificationSettings_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
            public GameNotificationSettings getGameNotificationSettings(int i) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.gameNotificationSettings_.get(i);
                }
                return (GameNotificationSettings) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setGameNotificationSettings(int i, GameNotificationSettings gameNotificationSettings) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    gameNotificationSettings.getClass();
                    ensureGameNotificationSettingsIsMutable();
                    this.gameNotificationSettings_.set(i, gameNotificationSettings);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, gameNotificationSettings);
                }
                return this;
            }

            public Builder setGameNotificationSettings(int i, GameNotificationSettings.Builder builder) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureGameNotificationSettingsIsMutable();
                    this.gameNotificationSettings_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addGameNotificationSettings(GameNotificationSettings gameNotificationSettings) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    gameNotificationSettings.getClass();
                    ensureGameNotificationSettingsIsMutable();
                    this.gameNotificationSettings_.add(gameNotificationSettings);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(gameNotificationSettings);
                }
                return this;
            }

            public Builder addGameNotificationSettings(int i, GameNotificationSettings gameNotificationSettings) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    gameNotificationSettings.getClass();
                    ensureGameNotificationSettingsIsMutable();
                    this.gameNotificationSettings_.add(i, gameNotificationSettings);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, gameNotificationSettings);
                }
                return this;
            }

            public Builder addGameNotificationSettings(GameNotificationSettings.Builder builder) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureGameNotificationSettingsIsMutable();
                    this.gameNotificationSettings_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addGameNotificationSettings(int i, GameNotificationSettings.Builder builder) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureGameNotificationSettingsIsMutable();
                    this.gameNotificationSettings_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllGameNotificationSettings(Iterable<? extends GameNotificationSettings> iterable) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureGameNotificationSettingsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.gameNotificationSettings_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearGameNotificationSettings() {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.gameNotificationSettings_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeGameNotificationSettings(int i) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureGameNotificationSettingsIsMutable();
                    this.gameNotificationSettings_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public GameNotificationSettings.Builder getGameNotificationSettingsBuilder(int i) {
                return (GameNotificationSettings.Builder) internalGetGameNotificationSettingsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
            public GameNotificationSettingsOrBuilder getGameNotificationSettingsOrBuilder(int i) {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.gameNotificationSettings_.get(i);
                }
                return (GameNotificationSettingsOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_RequestOrBuilder
            public List<? extends GameNotificationSettingsOrBuilder> getGameNotificationSettingsOrBuilderList() {
                RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> repeatedFieldBuilder = this.gameNotificationSettingsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.gameNotificationSettings_);
            }

            public GameNotificationSettings.Builder addGameNotificationSettingsBuilder() {
                return (GameNotificationSettings.Builder) internalGetGameNotificationSettingsFieldBuilder().addBuilder(GameNotificationSettings.getDefaultInstance());
            }

            public GameNotificationSettings.Builder addGameNotificationSettingsBuilder(int i) {
                return (GameNotificationSettings.Builder) internalGetGameNotificationSettingsFieldBuilder().addBuilder(i, GameNotificationSettings.getDefaultInstance());
            }

            public List<GameNotificationSettings.Builder> getGameNotificationSettingsBuilderList() {
                return internalGetGameNotificationSettingsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<GameNotificationSettings, GameNotificationSettings.Builder, GameNotificationSettingsOrBuilder> internalGetGameNotificationSettingsFieldBuilder() {
                if (this.gameNotificationSettingsBuilder_ == null) {
                    this.gameNotificationSettingsBuilder_ = new RepeatedFieldBuilder<>(this.gameNotificationSettings_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.gameNotificationSettings_ = null;
                }
                return this.gameNotificationSettingsBuilder_;
            }
        }

        public static CGameNotifications_UpdateNotificationSettings_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_UpdateNotificationSettings_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_UpdateNotificationSettings_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_UpdateNotificationSettings_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_UpdateNotificationSettings_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CGameNotifications_UpdateNotificationSettings_Response DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_UpdateNotificationSettings_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_UpdateNotificationSettings_Response.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_UpdateNotificationSettings_Response();
            PARSER = new AbstractParser<CGameNotifications_UpdateNotificationSettings_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_Response.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_UpdateNotificationSettings_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_UpdateNotificationSettings_Response.newBuilder();
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

        private CGameNotifications_UpdateNotificationSettings_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_UpdateNotificationSettings_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateNotificationSettings_Response.class, Builder.class);
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
            if (obj instanceof CGameNotifications_UpdateNotificationSettings_Response) {
                return getUnknownFields().equals(((CGameNotifications_UpdateNotificationSettings_Response) obj).getUnknownFields());
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

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_UpdateNotificationSettings_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_UpdateNotificationSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_UpdateNotificationSettings_Response cGameNotifications_UpdateNotificationSettings_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_UpdateNotificationSettings_Response);
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
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_UpdateNotificationSettings_Response.class, Builder.class);
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
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_UpdateNotificationSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_UpdateNotificationSettings_Response getDefaultInstanceForType() {
                return CGameNotifications_UpdateNotificationSettings_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateNotificationSettings_Response build() {
                CGameNotifications_UpdateNotificationSettings_Response cGameNotifications_UpdateNotificationSettings_ResponseBuildPartial = buildPartial();
                if (cGameNotifications_UpdateNotificationSettings_ResponseBuildPartial.isInitialized()) {
                    return cGameNotifications_UpdateNotificationSettings_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_UpdateNotificationSettings_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_UpdateNotificationSettings_Response buildPartial() {
                CGameNotifications_UpdateNotificationSettings_Response cGameNotifications_UpdateNotificationSettings_Response = new CGameNotifications_UpdateNotificationSettings_Response(this);
                onBuilt();
                return cGameNotifications_UpdateNotificationSettings_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_UpdateNotificationSettings_Response) {
                    return mergeFrom((CGameNotifications_UpdateNotificationSettings_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_UpdateNotificationSettings_Response cGameNotifications_UpdateNotificationSettings_Response) {
                if (cGameNotifications_UpdateNotificationSettings_Response == CGameNotifications_UpdateNotificationSettings_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cGameNotifications_UpdateNotificationSettings_Response.getUnknownFields());
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

        public static CGameNotifications_UpdateNotificationSettings_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_UpdateNotificationSettings_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_UpdateNotificationSettings_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_UpdateNotificationSettings_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_OnNotificationsRequested_Notification extends GeneratedMessage implements CGameNotifications_OnNotificationsRequested_NotificationOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        private static final CGameNotifications_OnNotificationsRequested_Notification DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_OnNotificationsRequested_Notification> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_OnNotificationsRequested_Notification.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_OnNotificationsRequested_Notification();
            PARSER = new AbstractParser<CGameNotifications_OnNotificationsRequested_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_Notification.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_OnNotificationsRequested_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_OnNotificationsRequested_Notification.newBuilder();
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

        private CGameNotifications_OnNotificationsRequested_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_OnNotificationsRequested_Notification() {
            this.steamid_ = 0L;
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnNotificationsRequested_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnNotificationsRequested_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_OnNotificationsRequested_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
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
                codedOutputStream.writeFixed64(1, this.steamid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.appid_);
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
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.appid_);
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
            if (!(obj instanceof CGameNotifications_OnNotificationsRequested_Notification)) {
                return super.equals(obj);
            }
            CGameNotifications_OnNotificationsRequested_Notification cGameNotifications_OnNotificationsRequested_Notification = (CGameNotifications_OnNotificationsRequested_Notification) obj;
            if (hasSteamid() != cGameNotifications_OnNotificationsRequested_Notification.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cGameNotifications_OnNotificationsRequested_Notification.getSteamid()) && hasAppid() == cGameNotifications_OnNotificationsRequested_Notification.hasAppid()) {
                return (!hasAppid() || getAppid() == cGameNotifications_OnNotificationsRequested_Notification.getAppid()) && getUnknownFields().equals(cGameNotifications_OnNotificationsRequested_Notification.getUnknownFields());
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
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppid();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_OnNotificationsRequested_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_OnNotificationsRequested_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_OnNotificationsRequested_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_OnNotificationsRequested_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_OnNotificationsRequested_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_OnNotificationsRequested_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_OnNotificationsRequested_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_OnNotificationsRequested_Notification cGameNotifications_OnNotificationsRequested_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_OnNotificationsRequested_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_OnNotificationsRequested_NotificationOrBuilder {
            private int appid_;
            private int bitField0_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnNotificationsRequested_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnNotificationsRequested_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_OnNotificationsRequested_Notification.class, Builder.class);
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
                this.appid_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnNotificationsRequested_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_OnNotificationsRequested_Notification getDefaultInstanceForType() {
                return CGameNotifications_OnNotificationsRequested_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_OnNotificationsRequested_Notification build() {
                CGameNotifications_OnNotificationsRequested_Notification cGameNotifications_OnNotificationsRequested_NotificationBuildPartial = buildPartial();
                if (cGameNotifications_OnNotificationsRequested_NotificationBuildPartial.isInitialized()) {
                    return cGameNotifications_OnNotificationsRequested_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_OnNotificationsRequested_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_OnNotificationsRequested_Notification buildPartial() {
                CGameNotifications_OnNotificationsRequested_Notification cGameNotifications_OnNotificationsRequested_Notification = new CGameNotifications_OnNotificationsRequested_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_OnNotificationsRequested_Notification);
                }
                onBuilt();
                return cGameNotifications_OnNotificationsRequested_Notification;
            }

            private void buildPartial0(CGameNotifications_OnNotificationsRequested_Notification cGameNotifications_OnNotificationsRequested_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_OnNotificationsRequested_Notification.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_OnNotificationsRequested_Notification.appid_ = this.appid_;
                    i |= 2;
                }
                cGameNotifications_OnNotificationsRequested_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_OnNotificationsRequested_Notification) {
                    return mergeFrom((CGameNotifications_OnNotificationsRequested_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_OnNotificationsRequested_Notification cGameNotifications_OnNotificationsRequested_Notification) {
                if (cGameNotifications_OnNotificationsRequested_Notification == CGameNotifications_OnNotificationsRequested_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_OnNotificationsRequested_Notification.hasSteamid()) {
                    setSteamid(cGameNotifications_OnNotificationsRequested_Notification.getSteamid());
                }
                if (cGameNotifications_OnNotificationsRequested_Notification.hasAppid()) {
                    setAppid(cGameNotifications_OnNotificationsRequested_Notification.getAppid());
                }
                mergeUnknownFields(cGameNotifications_OnNotificationsRequested_Notification.getUnknownFields());
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
                                    this.appid_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_NotificationOrBuilder
            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.appid_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -3;
                this.appid_ = 0;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_OnNotificationsRequested_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_OnNotificationsRequested_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_OnNotificationsRequested_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_OnNotificationsRequested_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CGameNotifications_OnUserStatusChanged_Notification extends GeneratedMessage implements CGameNotifications_OnUserStatusChanged_NotificationOrBuilder {
        public static final int APPID_FIELD_NUMBER = 3;
        private static final CGameNotifications_OnUserStatusChanged_Notification DEFAULT_INSTANCE;
        private static final Parser<CGameNotifications_OnUserStatusChanged_Notification> PARSER;
        public static final int REMOVED_FIELD_NUMBER = 5;
        public static final int SESSIONID_FIELD_NUMBER = 2;
        public static final int STATUS_FIELD_NUMBER = 4;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean removed_;
        private long sessionid_;
        private CGameNotifications_UserStatus status_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CGameNotifications_OnUserStatusChanged_Notification.class.getName());
            DEFAULT_INSTANCE = new CGameNotifications_OnUserStatusChanged_Notification();
            PARSER = new AbstractParser<CGameNotifications_OnUserStatusChanged_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_Notification.1
                @Override // com.google.protobuf.Parser
                public CGameNotifications_OnUserStatusChanged_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CGameNotifications_OnUserStatusChanged_Notification.newBuilder();
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

        private CGameNotifications_OnUserStatusChanged_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.sessionid_ = 0L;
            this.appid_ = 0;
            this.removed_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CGameNotifications_OnUserStatusChanged_Notification() {
            this.steamid_ = 0L;
            this.sessionid_ = 0L;
            this.appid_ = 0;
            this.removed_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnUserStatusChanged_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnUserStatusChanged_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_OnUserStatusChanged_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public long getSessionid() {
            return this.sessionid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public boolean hasStatus() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public CGameNotifications_UserStatus getStatus() {
            CGameNotifications_UserStatus cGameNotifications_UserStatus = this.status_;
            return cGameNotifications_UserStatus == null ? CGameNotifications_UserStatus.getDefaultInstance() : cGameNotifications_UserStatus;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public CGameNotifications_UserStatusOrBuilder getStatusOrBuilder() {
            CGameNotifications_UserStatus cGameNotifications_UserStatus = this.status_;
            return cGameNotifications_UserStatus == null ? CGameNotifications_UserStatus.getDefaultInstance() : cGameNotifications_UserStatus;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public boolean hasRemoved() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
        public boolean getRemoved() {
            return this.removed_;
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
                codedOutputStream.writeUInt64(2, this.sessionid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.appid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeMessage(4, getStatus());
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.removed_);
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
                iComputeFixed64Size += CodedOutputStream.computeUInt64Size(2, this.sessionid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.appid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeMessageSize(4, getStatus());
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(5, this.removed_);
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
            if (!(obj instanceof CGameNotifications_OnUserStatusChanged_Notification)) {
                return super.equals(obj);
            }
            CGameNotifications_OnUserStatusChanged_Notification cGameNotifications_OnUserStatusChanged_Notification = (CGameNotifications_OnUserStatusChanged_Notification) obj;
            if (hasSteamid() != cGameNotifications_OnUserStatusChanged_Notification.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cGameNotifications_OnUserStatusChanged_Notification.getSteamid()) || hasSessionid() != cGameNotifications_OnUserStatusChanged_Notification.hasSessionid()) {
                return false;
            }
            if ((hasSessionid() && getSessionid() != cGameNotifications_OnUserStatusChanged_Notification.getSessionid()) || hasAppid() != cGameNotifications_OnUserStatusChanged_Notification.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cGameNotifications_OnUserStatusChanged_Notification.getAppid()) || hasStatus() != cGameNotifications_OnUserStatusChanged_Notification.hasStatus()) {
                return false;
            }
            if ((!hasStatus() || getStatus().equals(cGameNotifications_OnUserStatusChanged_Notification.getStatus())) && hasRemoved() == cGameNotifications_OnUserStatusChanged_Notification.hasRemoved()) {
                return (!hasRemoved() || getRemoved() == cGameNotifications_OnUserStatusChanged_Notification.getRemoved()) && getUnknownFields().equals(cGameNotifications_OnUserStatusChanged_Notification.getUnknownFields());
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
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSessionid());
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getAppid();
            }
            if (hasStatus()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getStatus().hashCode();
            }
            if (hasRemoved()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getRemoved());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_OnUserStatusChanged_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_OnUserStatusChanged_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CGameNotifications_OnUserStatusChanged_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_OnUserStatusChanged_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CGameNotifications_OnUserStatusChanged_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CGameNotifications_OnUserStatusChanged_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CGameNotifications_OnUserStatusChanged_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CGameNotifications_OnUserStatusChanged_Notification cGameNotifications_OnUserStatusChanged_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cGameNotifications_OnUserStatusChanged_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CGameNotifications_OnUserStatusChanged_NotificationOrBuilder {
            private int appid_;
            private int bitField0_;
            private boolean removed_;
            private long sessionid_;
            private SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> statusBuilder_;
            private CGameNotifications_UserStatus status_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnUserStatusChanged_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnUserStatusChanged_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CGameNotifications_OnUserStatusChanged_Notification.class, Builder.class);
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
                    internalGetStatusFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.sessionid_ = 0L;
                this.appid_ = 0;
                this.status_ = null;
                SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.statusBuilder_ = null;
                }
                this.removed_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesGamenotificationsSteamclient.internal_static_CGameNotifications_OnUserStatusChanged_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CGameNotifications_OnUserStatusChanged_Notification getDefaultInstanceForType() {
                return CGameNotifications_OnUserStatusChanged_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_OnUserStatusChanged_Notification build() {
                CGameNotifications_OnUserStatusChanged_Notification cGameNotifications_OnUserStatusChanged_NotificationBuildPartial = buildPartial();
                if (cGameNotifications_OnUserStatusChanged_NotificationBuildPartial.isInitialized()) {
                    return cGameNotifications_OnUserStatusChanged_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cGameNotifications_OnUserStatusChanged_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CGameNotifications_OnUserStatusChanged_Notification buildPartial() {
                CGameNotifications_OnUserStatusChanged_Notification cGameNotifications_OnUserStatusChanged_Notification = new CGameNotifications_OnUserStatusChanged_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cGameNotifications_OnUserStatusChanged_Notification);
                }
                onBuilt();
                return cGameNotifications_OnUserStatusChanged_Notification;
            }

            private void buildPartial0(CGameNotifications_OnUserStatusChanged_Notification cGameNotifications_OnUserStatusChanged_Notification) {
                int i;
                CGameNotifications_UserStatus cGameNotifications_UserStatus;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cGameNotifications_OnUserStatusChanged_Notification.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cGameNotifications_OnUserStatusChanged_Notification.sessionid_ = this.sessionid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cGameNotifications_OnUserStatusChanged_Notification.appid_ = this.appid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                    if (singleFieldBuilder == null) {
                        cGameNotifications_UserStatus = this.status_;
                    } else {
                        cGameNotifications_UserStatus = (CGameNotifications_UserStatus) singleFieldBuilder.build();
                    }
                    cGameNotifications_OnUserStatusChanged_Notification.status_ = cGameNotifications_UserStatus;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cGameNotifications_OnUserStatusChanged_Notification.removed_ = this.removed_;
                    i |= 16;
                }
                cGameNotifications_OnUserStatusChanged_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CGameNotifications_OnUserStatusChanged_Notification) {
                    return mergeFrom((CGameNotifications_OnUserStatusChanged_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CGameNotifications_OnUserStatusChanged_Notification cGameNotifications_OnUserStatusChanged_Notification) {
                if (cGameNotifications_OnUserStatusChanged_Notification == CGameNotifications_OnUserStatusChanged_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cGameNotifications_OnUserStatusChanged_Notification.hasSteamid()) {
                    setSteamid(cGameNotifications_OnUserStatusChanged_Notification.getSteamid());
                }
                if (cGameNotifications_OnUserStatusChanged_Notification.hasSessionid()) {
                    setSessionid(cGameNotifications_OnUserStatusChanged_Notification.getSessionid());
                }
                if (cGameNotifications_OnUserStatusChanged_Notification.hasAppid()) {
                    setAppid(cGameNotifications_OnUserStatusChanged_Notification.getAppid());
                }
                if (cGameNotifications_OnUserStatusChanged_Notification.hasStatus()) {
                    mergeStatus(cGameNotifications_OnUserStatusChanged_Notification.getStatus());
                }
                if (cGameNotifications_OnUserStatusChanged_Notification.hasRemoved()) {
                    setRemoved(cGameNotifications_OnUserStatusChanged_Notification.getRemoved());
                }
                mergeUnknownFields(cGameNotifications_OnUserStatusChanged_Notification.getUnknownFields());
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
                                    this.sessionid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    codedInputStream.readMessage(internalGetStatusFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.removed_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public long getSessionid() {
                return this.sessionid_;
            }

            public Builder setSessionid(long j) {
                this.sessionid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.bitField0_ &= -3;
                this.sessionid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public boolean hasStatus() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public CGameNotifications_UserStatus getStatus() {
                SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                if (singleFieldBuilder == null) {
                    CGameNotifications_UserStatus cGameNotifications_UserStatus = this.status_;
                    return cGameNotifications_UserStatus == null ? CGameNotifications_UserStatus.getDefaultInstance() : cGameNotifications_UserStatus;
                }
                return (CGameNotifications_UserStatus) singleFieldBuilder.getMessage();
            }

            public Builder setStatus(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                if (singleFieldBuilder == null) {
                    cGameNotifications_UserStatus.getClass();
                    this.status_ = cGameNotifications_UserStatus;
                } else {
                    singleFieldBuilder.setMessage(cGameNotifications_UserStatus);
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder setStatus(CGameNotifications_UserStatus.Builder builder) {
                SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                if (singleFieldBuilder == null) {
                    this.status_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder mergeStatus(CGameNotifications_UserStatus cGameNotifications_UserStatus) {
                CGameNotifications_UserStatus cGameNotifications_UserStatus2;
                SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 0 && (cGameNotifications_UserStatus2 = this.status_) != null && cGameNotifications_UserStatus2 != CGameNotifications_UserStatus.getDefaultInstance()) {
                        getStatusBuilder().mergeFrom(cGameNotifications_UserStatus);
                    } else {
                        this.status_ = cGameNotifications_UserStatus;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cGameNotifications_UserStatus);
                }
                if (this.status_ != null) {
                    this.bitField0_ |= 8;
                    onChanged();
                }
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -9;
                this.status_ = null;
                SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.statusBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CGameNotifications_UserStatus.Builder getStatusBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (CGameNotifications_UserStatus.Builder) internalGetStatusFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public CGameNotifications_UserStatusOrBuilder getStatusOrBuilder() {
                SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> singleFieldBuilder = this.statusBuilder_;
                if (singleFieldBuilder != null) {
                    return (CGameNotifications_UserStatusOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CGameNotifications_UserStatus cGameNotifications_UserStatus = this.status_;
                return cGameNotifications_UserStatus == null ? CGameNotifications_UserStatus.getDefaultInstance() : cGameNotifications_UserStatus;
            }

            private SingleFieldBuilder<CGameNotifications_UserStatus, CGameNotifications_UserStatus.Builder, CGameNotifications_UserStatusOrBuilder> internalGetStatusFieldBuilder() {
                if (this.statusBuilder_ == null) {
                    this.statusBuilder_ = new SingleFieldBuilder<>(getStatus(), getParentForChildren(), isClean());
                    this.status_ = null;
                }
                return this.statusBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public boolean hasRemoved() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_NotificationOrBuilder
            public boolean getRemoved() {
                return this.removed_;
            }

            public Builder setRemoved(boolean z) {
                this.removed_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearRemoved() {
                this.bitField0_ &= -17;
                this.removed_ = false;
                onChanged();
                return this;
            }
        }

        public static CGameNotifications_OnUserStatusChanged_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CGameNotifications_OnUserStatusChanged_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CGameNotifications_OnUserStatusChanged_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CGameNotifications_OnUserStatusChanged_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
