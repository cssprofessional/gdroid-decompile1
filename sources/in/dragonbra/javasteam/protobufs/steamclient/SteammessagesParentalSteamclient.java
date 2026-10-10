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
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesParentalSteamclient {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CParental_ApproveFeatureAccess_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ApproveFeatureAccess_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ApproveFeatureAccess_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ApproveFeatureAccess_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ApprovePlaytime_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ApprovePlaytime_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ApprovePlaytime_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ApprovePlaytime_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_DisableParentalSettings_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_DisableParentalSettings_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_DisableParentalSettings_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_DisableParentalSettings_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_DisableWithRecoveryCode_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_DisableWithRecoveryCode_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_DisableWithRecoveryCode_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_DisableWithRecoveryCode_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_EnableParentalSettings_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_EnableParentalSettings_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_EnableParentalSettings_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_EnableParentalSettings_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_GetParentalSettings_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_GetParentalSettings_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_GetParentalSettings_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_GetParentalSettings_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_GetRequests_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_GetRequests_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_GetRequests_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_GetRequests_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_GetSignedParentalSettings_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_GetSignedParentalSettings_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_GetSignedParentalSettings_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_GetSignedParentalSettings_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_LockClient_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_LockClient_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_LockClient_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_LockClient_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ParentalLock_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ParentalLock_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ParentalSettingsChange_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ParentalSettingsChange_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ParentalUnlock_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ParentalUnlock_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_PlaytimeUsed_Notification_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_PlaytimeUsed_Notification_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ReportPlaytimeAndNotify_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ReportPlaytimeAndNotify_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ReportPlaytimeAndNotify_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ReportPlaytimeAndNotify_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_RequestFeatureAccess_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_RequestFeatureAccess_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_RequestFeatureAccess_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_RequestFeatureAccess_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_RequestPlaytime_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_RequestPlaytime_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_RequestPlaytime_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_RequestPlaytime_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_RequestRecoveryCode_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_RequestRecoveryCode_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_RequestRecoveryCode_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_RequestRecoveryCode_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_SetParentalSettings_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_SetParentalSettings_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_SetParentalSettings_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_SetParentalSettings_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ValidatePassword_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ValidatePassword_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ValidatePassword_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ValidatePassword_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ValidateToken_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ValidateToken_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CParental_ValidateToken_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CParental_ValidateToken_Response_fieldAccessorTable;

    public interface CParental_ApproveFeatureAccess_RequestOrBuilder extends MessageOrBuilder {
        boolean getApprove();

        int getDuration();

        int getFeatures();

        long getRequestid();

        long getSteamid();

        boolean hasApprove();

        boolean hasDuration();

        boolean hasFeatures();

        boolean hasRequestid();

        boolean hasSteamid();
    }

    public interface CParental_ApprovePlaytime_RequestOrBuilder extends MessageOrBuilder {
        boolean getApprove();

        long getRequestid();

        SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions getRestrictionsApproved();

        SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder getRestrictionsApprovedOrBuilder();

        long getSteamid();

        boolean hasApprove();

        boolean hasRequestid();

        boolean hasRestrictionsApproved();

        boolean hasSteamid();
    }

    public interface CParental_DisableParentalSettings_RequestOrBuilder extends MessageOrBuilder {
        String getPassword();

        ByteString getPasswordBytes();

        long getSteamid();

        boolean hasPassword();

        boolean hasSteamid();
    }

    public interface CParental_DisableWithRecoveryCode_RequestOrBuilder extends MessageOrBuilder {
        int getRecoveryCode();

        long getSteamid();

        boolean hasRecoveryCode();

        boolean hasSteamid();
    }

    public interface CParental_EnableParentalSettings_RequestOrBuilder extends MessageOrBuilder {
        int getEnablecode();

        String getPassword();

        ByteString getPasswordBytes();

        String getSessionid();

        ByteString getSessionidBytes();

        SteammessagesParentalObjects.ParentalSettings getSettings();

        SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder();

        long getSteamid();

        boolean hasEnablecode();

        boolean hasPassword();

        boolean hasSessionid();

        boolean hasSettings();

        boolean hasSteamid();
    }

    public interface CParental_GetParentalSettings_RequestOrBuilder extends MessageOrBuilder {
        long getSteamid();

        boolean hasSteamid();
    }

    public interface CParental_GetParentalSettings_ResponseOrBuilder extends MessageOrBuilder {
        SteammessagesParentalObjects.ParentalSettings getSettings();

        SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder();

        boolean hasSettings();
    }

    public interface CParental_GetRequests_RequestOrBuilder extends MessageOrBuilder {
        long getFamilyGroupid();

        int getRtIncludeCompletedSince();

        boolean hasFamilyGroupid();

        boolean hasRtIncludeCompletedSince();
    }

    public interface CParental_GetRequests_ResponseOrBuilder extends MessageOrBuilder {
        SteammessagesParentalObjects.ParentalFeatureRequest getFeatureRequests(int i);

        int getFeatureRequestsCount();

        List<SteammessagesParentalObjects.ParentalFeatureRequest> getFeatureRequestsList();

        SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder getFeatureRequestsOrBuilder(int i);

        List<? extends SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> getFeatureRequestsOrBuilderList();

        SteammessagesParentalObjects.ParentalPlaytimeRequest getPlaytimeRequests(int i);

        int getPlaytimeRequestsCount();

        List<SteammessagesParentalObjects.ParentalPlaytimeRequest> getPlaytimeRequestsList();

        SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder getPlaytimeRequestsOrBuilder(int i);

        List<? extends SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> getPlaytimeRequestsOrBuilderList();
    }

    public interface CParental_GetSignedParentalSettings_RequestOrBuilder extends MessageOrBuilder {
        int getPriority();

        boolean hasPriority();
    }

    public interface CParental_GetSignedParentalSettings_ResponseOrBuilder extends MessageOrBuilder {
        ByteString getSerializedSettings();

        ByteString getSignature();

        boolean hasSerializedSettings();

        boolean hasSignature();
    }

    public interface CParental_LockClient_RequestOrBuilder extends MessageOrBuilder {
        String getSession();

        ByteString getSessionBytes();

        boolean hasSession();
    }

    public interface CParental_ParentalLock_NotificationOrBuilder extends MessageOrBuilder {
        String getSessionid();

        ByteString getSessionidBytes();

        boolean hasSessionid();
    }

    public interface CParental_ParentalSettingsChange_NotificationOrBuilder extends MessageOrBuilder {
        String getPassword();

        ByteString getPasswordBytes();

        ByteString getSerializedSettings();

        String getSessionid();

        ByteString getSessionidBytes();

        ByteString getSignature();

        boolean hasPassword();

        boolean hasSerializedSettings();

        boolean hasSessionid();

        boolean hasSignature();
    }

    public interface CParental_ParentalUnlock_NotificationOrBuilder extends MessageOrBuilder {
        String getPassword();

        ByteString getPasswordBytes();

        String getSessionid();

        ByteString getSessionidBytes();

        boolean hasPassword();

        boolean hasSessionid();
    }

    public interface CParental_PlaytimeUsed_NotificationOrBuilder extends MessageOrBuilder {
        int getDayOfWeek();

        int getMinutesUsed();

        boolean hasDayOfWeek();

        boolean hasMinutesUsed();
    }

    public interface CParental_ReportPlaytimeAndNotify_RequestOrBuilder extends MessageOrBuilder {
        int getDayOfWeek();

        int getMinutesUsed();

        long getSteamid();

        boolean hasDayOfWeek();

        boolean hasMinutesUsed();

        boolean hasSteamid();
    }

    public interface CParental_RequestFeatureAccess_RequestOrBuilder extends MessageOrBuilder {
        int getFeatures();

        long getSteamid();

        boolean hasFeatures();

        boolean hasSteamid();
    }

    public interface CParental_RequestFeatureAccess_ResponseOrBuilder extends MessageOrBuilder {
        long getRequestid();

        boolean hasRequestid();
    }

    public interface CParental_RequestPlaytime_RequestOrBuilder extends MessageOrBuilder {
        SteammessagesParentalObjects.ParentalPlaytimeDay getCurrentPlaytimeRestrictions();

        SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder getCurrentPlaytimeRestrictionsOrBuilder();

        long getSteamid();

        int getTimeExpires();

        boolean hasCurrentPlaytimeRestrictions();

        boolean hasSteamid();

        boolean hasTimeExpires();
    }

    public interface CParental_RequestPlaytime_ResponseOrBuilder extends MessageOrBuilder {
        long getRequestid();

        boolean hasRequestid();
    }

    public interface CParental_SetParentalSettings_RequestOrBuilder extends MessageOrBuilder {
        String getNewPassword();

        ByteString getNewPasswordBytes();

        String getPassword();

        ByteString getPasswordBytes();

        String getSessionid();

        ByteString getSessionidBytes();

        SteammessagesParentalObjects.ParentalSettings getSettings();

        SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder();

        long getSteamid();

        boolean hasNewPassword();

        boolean hasPassword();

        boolean hasSessionid();

        boolean hasSettings();

        boolean hasSteamid();
    }

    public interface CParental_ValidatePassword_RequestOrBuilder extends MessageOrBuilder {
        String getPassword();

        ByteString getPasswordBytes();

        boolean getSendUnlockOnSuccess();

        String getSession();

        ByteString getSessionBytes();

        boolean hasPassword();

        boolean hasSendUnlockOnSuccess();

        boolean hasSession();
    }

    public interface CParental_ValidatePassword_ResponseOrBuilder extends MessageOrBuilder {
        String getToken();

        ByteString getTokenBytes();

        boolean hasToken();
    }

    public interface CParental_ValidateToken_RequestOrBuilder extends MessageOrBuilder {
        String getUnlockToken();

        ByteString getUnlockTokenBytes();

        boolean hasUnlockToken();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesParentalSteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesParentalSteamclient.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nUin/dragonbra/javasteam/protobufs/steamclient/steammessages_parental.steamclient.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001aYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\u001aQin/dragonbra/javasteam/protobufs/steamclient/steammessages_parental_objects.proto\"\u0099\u0001\n(CParental_EnableParentalSettings_Request\u0012\u0010\n\bpassword\u0018\u0001 \u0001(\t\u0012#\n\bsettings\u0018\u0002 \u0001(\u000b2\u0011.ParentalSettings\u0012\u0011\n\tsessionid\u0018\u0003 \u0001(\t\u0012\u0012\n\nenablecode\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\"+\n)CParental_EnableParentalSettings_Response\"N\n)CParental_DisableParentalSettings_Request\u0012\u0010\n\bpassword\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\",\n*CParental_DisableParentalSettings_Response\"8\n%CParental_GetParentalSettings_Request\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\"M\n&CParental_GetParentalSettings_Response\u0012#\n\bsettings\u0018\u0001 \u0001(\u000b2\u0011.ParentalSettings\"?\n+CParental_GetSignedParentalSettings_Request\u0012\u0010\n\bpriority\u0018\u0001 \u0001(\r\"^\n,CParental_GetSignedParentalSettings_Response\u0012\u001b\n\u0013serialized_settings\u0018\u0001 \u0001(\f\u0012\u0011\n\tsignature\u0018\u0002 \u0001(\f\"\u0098\u0001\n%CParental_SetParentalSettings_Request\u0012\u0010\n\bpassword\u0018\u0001 \u0001(\t\u0012#\n\bsettings\u0018\u0002 \u0001(\u000b2\u0011.ParentalSettings\u0012\u0014\n\fnew_password\u0018\u0003 \u0001(\t\u0012\u0011\n\tsessionid\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\"(\n&CParental_SetParentalSettings_Response\"7\n\u001fCParental_ValidateToken_Request\u0012\u0014\n\funlock_token\u0018\u0001 \u0001(\t\"\"\n CParental_ValidateToken_Response\"g\n\"CParental_ValidatePassword_Request\u0012\u0010\n\bpassword\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007session\u0018\u0002 \u0001(\t\u0012\u001e\n\u0016send_unlock_on_success\u0018\u0003 \u0001(\b\"4\n#CParental_ValidatePassword_Response\u0012\r\n\u0005token\u0018\u0001 \u0001(\t\"/\n\u001cCParental_LockClient_Request\u0012\u000f\n\u0007session\u0018\u0001 \u0001(\t\"\u001f\n\u001dCParental_LockClient_Response\"'\n%CParental_RequestRecoveryCode_Request\"(\n&CParental_RequestRecoveryCode_Response\"S\n)CParental_DisableWithRecoveryCode_Request\u0012\u0015\n\rrecovery_code\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\",\n*CParental_DisableWithRecoveryCode_Response\"K\n&CParental_RequestFeatureAccess_Request\u0012\u0010\n\bfeatures\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\"<\n'CParental_RequestFeatureAccess_Response\u0012\u0011\n\trequestid\u0018\u0001 \u0001(\u0006\"\u0081\u0001\n&CParental_ApproveFeatureAccess_Request\u0012\u000f\n\u0007approve\u0018\u0001 \u0001(\b\u0012\u0011\n\trequestid\u0018\u0002 \u0001(\u0006\u0012\u0010\n\bfeatures\u0018\u0003 \u0001(\r\u0012\u0010\n\bduration\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\")\n'CParental_ApproveFeatureAccess_Response\"\u0087\u0001\n!CParental_RequestPlaytime_Request\u0012\u0014\n\ftime_expires\u0018\u0001 \u0001(\r\u0012;\n\u001dcurrent_playtime_restrictions\u0018\u0002 \u0001(\u000b2\u0014.ParentalPlaytimeDay\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\"7\n\"CParental_RequestPlaytime_Response\u0012\u0011\n\trequestid\u0018\u0001 \u0001(\u0006\"\u009f\u0001\n!CParental_ApprovePlaytime_Request\u0012\u000f\n\u0007approve\u0018\u0001 \u0001(\b\u0012\u0011\n\trequestid\u0018\u0002 \u0001(\u0006\u0012E\n\u0015restrictions_approved\u0018\u0003 \u0001(\u000b2&.ParentalTemporaryPlaytimeRestrictions\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\"$\n\"CParental_ApprovePlaytime_Response\"[\n\u001dCParental_GetRequests_Request\u0012\"\n\u001art_include_completed_since\u0018\u0001 \u0001(\r\u0012\u0016\n\u000efamily_groupid\u0018\u0002 \u0001(\u0006\"\u0088\u0001\n\u001eCParental_GetRequests_Response\u00121\n\u0010feature_requests\u0018\u0001 \u0003(\u000b2\u0017.ParentalFeatureRequest\u00123\n\u0011playtime_requests\u0018\u0002 \u0003(\u000b2\u0018.ParentalPlaytimeRequest\"g\n)CParental_ReportPlaytimeAndNotify_Request\u0012\u0013\n\u000bday_of_week\u0018\u0001 \u0001(\r\u0012\u0014\n\fminutes_used\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007steamid\u0018\n \u0001(\u0006\",\n*CParental_ReportPlaytimeAndNotify_Response\"\u0084\u0001\n-CParental_ParentalSettingsChange_Notification\u0012\u001b\n\u0013serialized_settings\u0018\u0001 \u0001(\f\u0012\u0011\n\tsignature\u0018\u0002 \u0001(\f\u0012\u0010\n\bpassword\u0018\u0003 \u0001(\t\u0012\u0011\n\tsessionid\u0018\u0004 \u0001(\t\"L\n%CParental_ParentalUnlock_Notification\u0012\u0010\n\bpassword\u0018\u0001 \u0001(\t\u0012\u0011\n\tsessionid\u0018\u0002 \u0001(\t\"8\n#CParental_ParentalLock_Notification\u0012\u0011\n\tsessionid\u0018\u0001 \u0001(\t\"P\n#CParental_PlaytimeUsed_Notification\u0012\u0013\n\u000bday_of_week\u0018\u0001 \u0001(\r\u0012\u0014\n\fminutes_used\u0018\u0002 \u0001(\r2é\f\n\bParental\u0012o\n\u0016EnableParentalSettings\u0012).CParental_EnableParentalSettings_Request\u001a*.CParental_EnableParentalSettings_Response\u0012r\n\u0017DisableParentalSettings\u0012*.CParental_DisableParentalSettings_Request\u001a+.CParental_DisableParentalSettings_Response\u0012f\n\u0013GetParentalSettings\u0012&.CParental_GetParentalSettings_Request\u001a'.CParental_GetParentalSettings_Response\u0012x\n\u0019GetSignedParentalSettings\u0012,.CParental_GetSignedParentalSettings_Request\u001a-.CParental_GetSignedParentalSettings_Response\u0012f\n\u0013SetParentalSettings\u0012&.CParental_SetParentalSettings_Request\u001a'.CParental_SetParentalSettings_Response\u0012T\n\rValidateToken\u0012 .CParental_ValidateToken_Request\u001a!.CParental_ValidateToken_Response\u0012]\n\u0010ValidatePassword\u0012#.CParental_ValidatePassword_Request\u001a$.CParental_ValidatePassword_Response\u0012K\n\nLockClient\u0012\u001d.CParental_LockClient_Request\u001a\u001e.CParental_LockClient_Response\u0012f\n\u0013RequestRecoveryCode\u0012&.CParental_RequestRecoveryCode_Request\u001a'.CParental_RequestRecoveryCode_Response\u0012r\n\u0017DisableWithRecoveryCode\u0012*.CParental_DisableWithRecoveryCode_Request\u001a+.CParental_DisableWithRecoveryCode_Response\u0012i\n\u0014RequestFeatureAccess\u0012'.CParental_RequestFeatureAccess_Request\u001a(.CParental_RequestFeatureAccess_Response\u0012i\n\u0014ApproveFeatureAccess\u0012'.CParental_ApproveFeatureAccess_Request\u001a(.CParental_ApproveFeatureAccess_Response\u0012Z\n\u000fRequestPlaytime\u0012\".CParental_RequestPlaytime_Request\u001a#.CParental_RequestPlaytime_Response\u0012Z\n\u000fApprovePlaytime\u0012\".CParental_ApprovePlaytime_Request\u001a#.CParental_ApprovePlaytime_Response\u0012N\n\u000bGetRequests\u0012\u001e.CParental_GetRequests_Request\u001a\u001f.CParental_GetRequests_Response\u0012r\n\u0017ReportPlaytimeAndNotify\u0012*.CParental_ReportPlaytimeAndNotify_Request\u001a+.CParental_ReportPlaytimeAndNotify_Response2º\u0002\n\u000eParentalClient\u0012S\n\u0014NotifySettingsChange\u0012..CParental_ParentalSettingsChange_Notification\u001a\u000b.NoResponse\u0012C\n\fNotifyUnlock\u0012&.CParental_ParentalUnlock_Notification\u001a\u000b.NoResponse\u0012?\n\nNotifyLock\u0012$.CParental_ParentalLock_Notification\u001a\u000b.NoResponse\u0012G\n\u0012NotifyPlaytimeUsed\u0012$.CParental_PlaytimeUsed_Notification\u001a\u000b.NoResponse\u001a\u0004Àµ\u0018\u0002B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor(), SteammessagesUnifiedBaseSteamclient.getDescriptor(), SteammessagesParentalObjects.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CParental_EnableParentalSettings_Request_descriptor = descriptor2;
        internal_static_CParental_EnableParentalSettings_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Password", "Settings", "Sessionid", "Enablecode", "Steamid"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CParental_EnableParentalSettings_Response_descriptor = descriptor3;
        internal_static_CParental_EnableParentalSettings_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[0]);
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CParental_DisableParentalSettings_Request_descriptor = descriptor4;
        internal_static_CParental_DisableParentalSettings_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Password", "Steamid"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CParental_DisableParentalSettings_Response_descriptor = descriptor5;
        internal_static_CParental_DisableParentalSettings_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[0]);
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CParental_GetParentalSettings_Request_descriptor = descriptor6;
        internal_static_CParental_GetParentalSettings_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Steamid"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CParental_GetParentalSettings_Response_descriptor = descriptor7;
        internal_static_CParental_GetParentalSettings_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Settings"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CParental_GetSignedParentalSettings_Request_descriptor = descriptor8;
        internal_static_CParental_GetSignedParentalSettings_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Priority"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CParental_GetSignedParentalSettings_Response_descriptor = descriptor9;
        internal_static_CParental_GetSignedParentalSettings_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"SerializedSettings", "Signature"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_CParental_SetParentalSettings_Request_descriptor = descriptor10;
        internal_static_CParental_SetParentalSettings_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Password", "Settings", "NewPassword", "Sessionid", "Steamid"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_CParental_SetParentalSettings_Response_descriptor = descriptor11;
        internal_static_CParental_SetParentalSettings_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[0]);
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_CParental_ValidateToken_Request_descriptor = descriptor12;
        internal_static_CParental_ValidateToken_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"UnlockToken"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_CParental_ValidateToken_Response_descriptor = descriptor13;
        internal_static_CParental_ValidateToken_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[0]);
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_CParental_ValidatePassword_Request_descriptor = descriptor14;
        internal_static_CParental_ValidatePassword_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Password", "Session", "SendUnlockOnSuccess"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(13);
        internal_static_CParental_ValidatePassword_Response_descriptor = descriptor15;
        internal_static_CParental_ValidatePassword_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Token"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(14);
        internal_static_CParental_LockClient_Request_descriptor = descriptor16;
        internal_static_CParental_LockClient_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Session"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(15);
        internal_static_CParental_LockClient_Response_descriptor = descriptor17;
        internal_static_CParental_LockClient_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[0]);
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(16);
        internal_static_CParental_RequestRecoveryCode_Request_descriptor = descriptor18;
        internal_static_CParental_RequestRecoveryCode_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[0]);
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(17);
        internal_static_CParental_RequestRecoveryCode_Response_descriptor = descriptor19;
        internal_static_CParental_RequestRecoveryCode_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[0]);
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(18);
        internal_static_CParental_DisableWithRecoveryCode_Request_descriptor = descriptor20;
        internal_static_CParental_DisableWithRecoveryCode_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"RecoveryCode", "Steamid"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(19);
        internal_static_CParental_DisableWithRecoveryCode_Response_descriptor = descriptor21;
        internal_static_CParental_DisableWithRecoveryCode_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[0]);
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(20);
        internal_static_CParental_RequestFeatureAccess_Request_descriptor = descriptor22;
        internal_static_CParental_RequestFeatureAccess_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"Features", "Steamid"});
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(21);
        internal_static_CParental_RequestFeatureAccess_Response_descriptor = descriptor23;
        internal_static_CParental_RequestFeatureAccess_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"Requestid"});
        Descriptors.Descriptor descriptor24 = getDescriptor().getMessageTypes().get(22);
        internal_static_CParental_ApproveFeatureAccess_Request_descriptor = descriptor24;
        internal_static_CParental_ApproveFeatureAccess_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"Approve", "Requestid", "Features", "Duration", "Steamid"});
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(23);
        internal_static_CParental_ApproveFeatureAccess_Response_descriptor = descriptor25;
        internal_static_CParental_ApproveFeatureAccess_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[0]);
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(24);
        internal_static_CParental_RequestPlaytime_Request_descriptor = descriptor26;
        internal_static_CParental_RequestPlaytime_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[]{"TimeExpires", "CurrentPlaytimeRestrictions", "Steamid"});
        Descriptors.Descriptor descriptor27 = getDescriptor().getMessageTypes().get(25);
        internal_static_CParental_RequestPlaytime_Response_descriptor = descriptor27;
        internal_static_CParental_RequestPlaytime_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"Requestid"});
        Descriptors.Descriptor descriptor28 = getDescriptor().getMessageTypes().get(26);
        internal_static_CParental_ApprovePlaytime_Request_descriptor = descriptor28;
        internal_static_CParental_ApprovePlaytime_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor28, new String[]{"Approve", "Requestid", "RestrictionsApproved", "Steamid"});
        Descriptors.Descriptor descriptor29 = getDescriptor().getMessageTypes().get(27);
        internal_static_CParental_ApprovePlaytime_Response_descriptor = descriptor29;
        internal_static_CParental_ApprovePlaytime_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor29, new String[0]);
        Descriptors.Descriptor descriptor30 = getDescriptor().getMessageTypes().get(28);
        internal_static_CParental_GetRequests_Request_descriptor = descriptor30;
        internal_static_CParental_GetRequests_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor30, new String[]{"RtIncludeCompletedSince", "FamilyGroupid"});
        Descriptors.Descriptor descriptor31 = getDescriptor().getMessageTypes().get(29);
        internal_static_CParental_GetRequests_Response_descriptor = descriptor31;
        internal_static_CParental_GetRequests_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor31, new String[]{"FeatureRequests", "PlaytimeRequests"});
        Descriptors.Descriptor descriptor32 = getDescriptor().getMessageTypes().get(30);
        internal_static_CParental_ReportPlaytimeAndNotify_Request_descriptor = descriptor32;
        internal_static_CParental_ReportPlaytimeAndNotify_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor32, new String[]{"DayOfWeek", "MinutesUsed", "Steamid"});
        Descriptors.Descriptor descriptor33 = getDescriptor().getMessageTypes().get(31);
        internal_static_CParental_ReportPlaytimeAndNotify_Response_descriptor = descriptor33;
        internal_static_CParental_ReportPlaytimeAndNotify_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor33, new String[0]);
        Descriptors.Descriptor descriptor34 = getDescriptor().getMessageTypes().get(32);
        internal_static_CParental_ParentalSettingsChange_Notification_descriptor = descriptor34;
        internal_static_CParental_ParentalSettingsChange_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor34, new String[]{"SerializedSettings", "Signature", "Password", "Sessionid"});
        Descriptors.Descriptor descriptor35 = getDescriptor().getMessageTypes().get(33);
        internal_static_CParental_ParentalUnlock_Notification_descriptor = descriptor35;
        internal_static_CParental_ParentalUnlock_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor35, new String[]{"Password", "Sessionid"});
        Descriptors.Descriptor descriptor36 = getDescriptor().getMessageTypes().get(34);
        internal_static_CParental_ParentalLock_Notification_descriptor = descriptor36;
        internal_static_CParental_ParentalLock_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor36, new String[]{"Sessionid"});
        Descriptors.Descriptor descriptor37 = getDescriptor().getMessageTypes().get(35);
        internal_static_CParental_PlaytimeUsed_Notification_descriptor = descriptor37;
        internal_static_CParental_PlaytimeUsed_Notification_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor37, new String[]{"DayOfWeek", "MinutesUsed"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        SteammessagesUnifiedBaseSteamclient.getDescriptor();
        SteammessagesParentalObjects.getDescriptor();
        ExtensionRegistry extensionRegistryNewInstance = ExtensionRegistry.newInstance();
        extensionRegistryNewInstance.add((GeneratedMessage.GeneratedExtension<?, ?>) SteammessagesUnifiedBaseSteamclient.serviceExecutionSite);
        Descriptors.FileDescriptor.internalUpdateFileDescriptor(descriptor, extensionRegistryNewInstance);
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CParental_EnableParentalSettings_Request extends GeneratedMessage implements CParental_EnableParentalSettings_RequestOrBuilder {
        private static final CParental_EnableParentalSettings_Request DEFAULT_INSTANCE;
        public static final int ENABLECODE_FIELD_NUMBER = 4;
        private static final Parser<CParental_EnableParentalSettings_Request> PARSER;
        public static final int PASSWORD_FIELD_NUMBER = 1;
        public static final int SESSIONID_FIELD_NUMBER = 3;
        public static final int SETTINGS_FIELD_NUMBER = 2;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int enablecode_;
        private byte memoizedIsInitialized;
        private volatile Object password_;
        private volatile Object sessionid_;
        private SteammessagesParentalObjects.ParentalSettings settings_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_EnableParentalSettings_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_EnableParentalSettings_Request();
            PARSER = new AbstractParser<CParental_EnableParentalSettings_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_EnableParentalSettings_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_EnableParentalSettings_Request.newBuilder();
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

        private CParental_EnableParentalSettings_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.password_ = "";
            this.sessionid_ = "";
            this.enablecode_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_EnableParentalSettings_Request() {
            this.password_ = "";
            this.sessionid_ = "";
            this.enablecode_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.password_ = "";
            this.sessionid_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_EnableParentalSettings_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public boolean hasPassword() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.password_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public boolean hasSettings() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalSettings getSettings() {
            SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
            return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder() {
            SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
            return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public String getSessionid() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sessionid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public ByteString getSessionidBytes() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public boolean hasEnablecode() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public int getEnablecode() {
            return this.enablecode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.password_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(2, getSettings());
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.sessionid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.enablecode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.password_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(2, getSettings());
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(3, this.sessionid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(4, this.enablecode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_EnableParentalSettings_Request)) {
                return super.equals(obj);
            }
            CParental_EnableParentalSettings_Request cParental_EnableParentalSettings_Request = (CParental_EnableParentalSettings_Request) obj;
            if (hasPassword() != cParental_EnableParentalSettings_Request.hasPassword()) {
                return false;
            }
            if ((hasPassword() && !getPassword().equals(cParental_EnableParentalSettings_Request.getPassword())) || hasSettings() != cParental_EnableParentalSettings_Request.hasSettings()) {
                return false;
            }
            if ((hasSettings() && !getSettings().equals(cParental_EnableParentalSettings_Request.getSettings())) || hasSessionid() != cParental_EnableParentalSettings_Request.hasSessionid()) {
                return false;
            }
            if ((hasSessionid() && !getSessionid().equals(cParental_EnableParentalSettings_Request.getSessionid())) || hasEnablecode() != cParental_EnableParentalSettings_Request.hasEnablecode()) {
                return false;
            }
            if ((!hasEnablecode() || getEnablecode() == cParental_EnableParentalSettings_Request.getEnablecode()) && hasSteamid() == cParental_EnableParentalSettings_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_EnableParentalSettings_Request.getSteamid()) && getUnknownFields().equals(cParental_EnableParentalSettings_Request.getUnknownFields());
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
            if (hasPassword()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPassword().hashCode();
            }
            if (hasSettings()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSettings().hashCode();
            }
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getSessionid().hashCode();
            }
            if (hasEnablecode()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getEnablecode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_EnableParentalSettings_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_EnableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_EnableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_EnableParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_EnableParentalSettings_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_EnableParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_EnableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_EnableParentalSettings_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_EnableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_EnableParentalSettings_Request cParental_EnableParentalSettings_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_EnableParentalSettings_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_EnableParentalSettings_RequestOrBuilder {
            private int bitField0_;
            private int enablecode_;
            private Object password_;
            private Object sessionid_;
            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> settingsBuilder_;
            private SteammessagesParentalObjects.ParentalSettings settings_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_EnableParentalSettings_Request.class, Builder.class);
            }

            private Builder() {
                this.password_ = "";
                this.sessionid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.password_ = "";
                this.sessionid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetSettingsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.password_ = "";
                this.settings_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.settingsBuilder_ = null;
                }
                this.sessionid_ = "";
                this.enablecode_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_EnableParentalSettings_Request getDefaultInstanceForType() {
                return CParental_EnableParentalSettings_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_EnableParentalSettings_Request build() {
                CParental_EnableParentalSettings_Request cParental_EnableParentalSettings_RequestBuildPartial = buildPartial();
                if (cParental_EnableParentalSettings_RequestBuildPartial.isInitialized()) {
                    return cParental_EnableParentalSettings_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_EnableParentalSettings_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_EnableParentalSettings_Request buildPartial() {
                CParental_EnableParentalSettings_Request cParental_EnableParentalSettings_Request = new CParental_EnableParentalSettings_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_EnableParentalSettings_Request);
                }
                onBuilt();
                return cParental_EnableParentalSettings_Request;
            }

            private void buildPartial0(CParental_EnableParentalSettings_Request cParental_EnableParentalSettings_Request) {
                int i;
                SteammessagesParentalObjects.ParentalSettings parentalSettings;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_EnableParentalSettings_Request.password_ = this.password_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalSettings = this.settings_;
                    } else {
                        parentalSettings = (SteammessagesParentalObjects.ParentalSettings) singleFieldBuilder.build();
                    }
                    cParental_EnableParentalSettings_Request.settings_ = parentalSettings;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cParental_EnableParentalSettings_Request.sessionid_ = this.sessionid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cParental_EnableParentalSettings_Request.enablecode_ = this.enablecode_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cParental_EnableParentalSettings_Request.steamid_ = this.steamid_;
                    i |= 16;
                }
                cParental_EnableParentalSettings_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_EnableParentalSettings_Request) {
                    return mergeFrom((CParental_EnableParentalSettings_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_EnableParentalSettings_Request cParental_EnableParentalSettings_Request) {
                if (cParental_EnableParentalSettings_Request == CParental_EnableParentalSettings_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_EnableParentalSettings_Request.hasPassword()) {
                    this.password_ = cParental_EnableParentalSettings_Request.password_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cParental_EnableParentalSettings_Request.hasSettings()) {
                    mergeSettings(cParental_EnableParentalSettings_Request.getSettings());
                }
                if (cParental_EnableParentalSettings_Request.hasSessionid()) {
                    this.sessionid_ = cParental_EnableParentalSettings_Request.sessionid_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cParental_EnableParentalSettings_Request.hasEnablecode()) {
                    setEnablecode(cParental_EnableParentalSettings_Request.getEnablecode());
                }
                if (cParental_EnableParentalSettings_Request.hasSteamid()) {
                    setSteamid(cParental_EnableParentalSettings_Request.getSteamid());
                }
                mergeUnknownFields(cParental_EnableParentalSettings_Request.getUnknownFields());
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
                                    this.password_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    codedInputStream.readMessage(internalGetSettingsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.sessionid_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.enablecode_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public boolean hasPassword() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public String getPassword() {
                Object obj = this.password_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.password_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public ByteString getPasswordBytes() {
                Object obj = this.password_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.password_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPassword(String str) {
                str.getClass();
                this.password_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPassword() {
                this.password_ = CParental_EnableParentalSettings_Request.getDefaultInstance().getPassword();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.password_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public boolean hasSettings() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalSettings getSettings() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
                    return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
                }
                return (SteammessagesParentalObjects.ParentalSettings) singleFieldBuilder.getMessage();
            }

            public Builder setSettings(SteammessagesParentalObjects.ParentalSettings parentalSettings) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalSettings.getClass();
                    this.settings_ = parentalSettings;
                } else {
                    singleFieldBuilder.setMessage(parentalSettings);
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setSettings(SteammessagesParentalObjects.ParentalSettings.Builder builder) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    this.settings_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder mergeSettings(SteammessagesParentalObjects.ParentalSettings parentalSettings) {
                SteammessagesParentalObjects.ParentalSettings parentalSettings2;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0 && (parentalSettings2 = this.settings_) != null && parentalSettings2 != SteammessagesParentalObjects.ParentalSettings.getDefaultInstance()) {
                        getSettingsBuilder().mergeFrom(parentalSettings);
                    } else {
                        this.settings_ = parentalSettings;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalSettings);
                }
                if (this.settings_ != null) {
                    this.bitField0_ |= 2;
                    onChanged();
                }
                return this;
            }

            public Builder clearSettings() {
                this.bitField0_ &= -3;
                this.settings_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.settingsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesParentalObjects.ParentalSettings.Builder getSettingsBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (SteammessagesParentalObjects.ParentalSettings.Builder) internalGetSettingsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesParentalObjects.ParentalSettingsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
                return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
            }

            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> internalGetSettingsFieldBuilder() {
                if (this.settingsBuilder_ == null) {
                    this.settingsBuilder_ = new SingleFieldBuilder<>(getSettings(), getParentForChildren(), isClean());
                    this.settings_ = null;
                }
                return this.settingsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public String getSessionid() {
                Object obj = this.sessionid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sessionid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public ByteString getSessionidBytes() {
                Object obj = this.sessionid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sessionid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSessionid(String str) {
                str.getClass();
                this.sessionid_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.sessionid_ = CParental_EnableParentalSettings_Request.getDefaultInstance().getSessionid();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setSessionidBytes(ByteString byteString) {
                byteString.getClass();
                this.sessionid_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public boolean hasEnablecode() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public int getEnablecode() {
                return this.enablecode_;
            }

            public Builder setEnablecode(int i) {
                this.enablecode_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearEnablecode() {
                this.bitField0_ &= -9;
                this.enablecode_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_RequestOrBuilder
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

        public static CParental_EnableParentalSettings_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_EnableParentalSettings_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_EnableParentalSettings_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_EnableParentalSettings_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_EnableParentalSettings_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_EnableParentalSettings_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_EnableParentalSettings_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_EnableParentalSettings_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_EnableParentalSettings_Response();
            PARSER = new AbstractParser<CParental_EnableParentalSettings_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_EnableParentalSettings_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_EnableParentalSettings_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_EnableParentalSettings_Response.newBuilder();
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

        private CParental_EnableParentalSettings_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_EnableParentalSettings_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_EnableParentalSettings_Response.class, Builder.class);
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
            if (obj instanceof CParental_EnableParentalSettings_Response) {
                return getUnknownFields().equals(((CParental_EnableParentalSettings_Response) obj).getUnknownFields());
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

        public static CParental_EnableParentalSettings_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_EnableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_EnableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_EnableParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_EnableParentalSettings_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_EnableParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_EnableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_EnableParentalSettings_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_EnableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_EnableParentalSettings_Response cParental_EnableParentalSettings_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_EnableParentalSettings_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_EnableParentalSettings_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_EnableParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_EnableParentalSettings_Response getDefaultInstanceForType() {
                return CParental_EnableParentalSettings_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_EnableParentalSettings_Response build() {
                CParental_EnableParentalSettings_Response cParental_EnableParentalSettings_ResponseBuildPartial = buildPartial();
                if (cParental_EnableParentalSettings_ResponseBuildPartial.isInitialized()) {
                    return cParental_EnableParentalSettings_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_EnableParentalSettings_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_EnableParentalSettings_Response buildPartial() {
                CParental_EnableParentalSettings_Response cParental_EnableParentalSettings_Response = new CParental_EnableParentalSettings_Response(this);
                onBuilt();
                return cParental_EnableParentalSettings_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_EnableParentalSettings_Response) {
                    return mergeFrom((CParental_EnableParentalSettings_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_EnableParentalSettings_Response cParental_EnableParentalSettings_Response) {
                if (cParental_EnableParentalSettings_Response == CParental_EnableParentalSettings_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_EnableParentalSettings_Response.getUnknownFields());
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

        public static CParental_EnableParentalSettings_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_EnableParentalSettings_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_EnableParentalSettings_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_EnableParentalSettings_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_DisableParentalSettings_Request extends GeneratedMessage implements CParental_DisableParentalSettings_RequestOrBuilder {
        private static final CParental_DisableParentalSettings_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_DisableParentalSettings_Request> PARSER;
        public static final int PASSWORD_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object password_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_DisableParentalSettings_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_DisableParentalSettings_Request();
            PARSER = new AbstractParser<CParental_DisableParentalSettings_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_DisableParentalSettings_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_DisableParentalSettings_Request.newBuilder();
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

        private CParental_DisableParentalSettings_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.password_ = "";
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_DisableParentalSettings_Request() {
            this.password_ = "";
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.password_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableParentalSettings_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
        public boolean hasPassword() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.password_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.password_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.password_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_DisableParentalSettings_Request)) {
                return super.equals(obj);
            }
            CParental_DisableParentalSettings_Request cParental_DisableParentalSettings_Request = (CParental_DisableParentalSettings_Request) obj;
            if (hasPassword() != cParental_DisableParentalSettings_Request.hasPassword()) {
                return false;
            }
            if ((!hasPassword() || getPassword().equals(cParental_DisableParentalSettings_Request.getPassword())) && hasSteamid() == cParental_DisableParentalSettings_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_DisableParentalSettings_Request.getSteamid()) && getUnknownFields().equals(cParental_DisableParentalSettings_Request.getUnknownFields());
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
            if (hasPassword()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPassword().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_DisableParentalSettings_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableParentalSettings_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_DisableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_DisableParentalSettings_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_DisableParentalSettings_Request cParental_DisableParentalSettings_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_DisableParentalSettings_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_DisableParentalSettings_RequestOrBuilder {
            private int bitField0_;
            private Object password_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableParentalSettings_Request.class, Builder.class);
            }

            private Builder() {
                this.password_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.password_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.password_ = "";
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_DisableParentalSettings_Request getDefaultInstanceForType() {
                return CParental_DisableParentalSettings_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableParentalSettings_Request build() {
                CParental_DisableParentalSettings_Request cParental_DisableParentalSettings_RequestBuildPartial = buildPartial();
                if (cParental_DisableParentalSettings_RequestBuildPartial.isInitialized()) {
                    return cParental_DisableParentalSettings_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_DisableParentalSettings_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableParentalSettings_Request buildPartial() {
                CParental_DisableParentalSettings_Request cParental_DisableParentalSettings_Request = new CParental_DisableParentalSettings_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_DisableParentalSettings_Request);
                }
                onBuilt();
                return cParental_DisableParentalSettings_Request;
            }

            private void buildPartial0(CParental_DisableParentalSettings_Request cParental_DisableParentalSettings_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_DisableParentalSettings_Request.password_ = this.password_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_DisableParentalSettings_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                cParental_DisableParentalSettings_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_DisableParentalSettings_Request) {
                    return mergeFrom((CParental_DisableParentalSettings_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_DisableParentalSettings_Request cParental_DisableParentalSettings_Request) {
                if (cParental_DisableParentalSettings_Request == CParental_DisableParentalSettings_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_DisableParentalSettings_Request.hasPassword()) {
                    this.password_ = cParental_DisableParentalSettings_Request.password_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cParental_DisableParentalSettings_Request.hasSteamid()) {
                    setSteamid(cParental_DisableParentalSettings_Request.getSteamid());
                }
                mergeUnknownFields(cParental_DisableParentalSettings_Request.getUnknownFields());
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
                                    this.password_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
            public boolean hasPassword() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
            public String getPassword() {
                Object obj = this.password_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.password_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
            public ByteString getPasswordBytes() {
                Object obj = this.password_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.password_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPassword(String str) {
                str.getClass();
                this.password_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPassword() {
                this.password_ = CParental_DisableParentalSettings_Request.getDefaultInstance().getPassword();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.password_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_RequestOrBuilder
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

        public static CParental_DisableParentalSettings_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_DisableParentalSettings_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_DisableParentalSettings_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_DisableParentalSettings_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_DisableParentalSettings_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_DisableParentalSettings_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_DisableParentalSettings_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_DisableParentalSettings_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_DisableParentalSettings_Response();
            PARSER = new AbstractParser<CParental_DisableParentalSettings_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableParentalSettings_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_DisableParentalSettings_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_DisableParentalSettings_Response.newBuilder();
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

        private CParental_DisableParentalSettings_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_DisableParentalSettings_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableParentalSettings_Response.class, Builder.class);
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
            if (obj instanceof CParental_DisableParentalSettings_Response) {
                return getUnknownFields().equals(((CParental_DisableParentalSettings_Response) obj).getUnknownFields());
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

        public static CParental_DisableParentalSettings_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableParentalSettings_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_DisableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_DisableParentalSettings_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_DisableParentalSettings_Response cParental_DisableParentalSettings_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_DisableParentalSettings_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableParentalSettings_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_DisableParentalSettings_Response getDefaultInstanceForType() {
                return CParental_DisableParentalSettings_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableParentalSettings_Response build() {
                CParental_DisableParentalSettings_Response cParental_DisableParentalSettings_ResponseBuildPartial = buildPartial();
                if (cParental_DisableParentalSettings_ResponseBuildPartial.isInitialized()) {
                    return cParental_DisableParentalSettings_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_DisableParentalSettings_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableParentalSettings_Response buildPartial() {
                CParental_DisableParentalSettings_Response cParental_DisableParentalSettings_Response = new CParental_DisableParentalSettings_Response(this);
                onBuilt();
                return cParental_DisableParentalSettings_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_DisableParentalSettings_Response) {
                    return mergeFrom((CParental_DisableParentalSettings_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_DisableParentalSettings_Response cParental_DisableParentalSettings_Response) {
                if (cParental_DisableParentalSettings_Response == CParental_DisableParentalSettings_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_DisableParentalSettings_Response.getUnknownFields());
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

        public static CParental_DisableParentalSettings_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_DisableParentalSettings_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_DisableParentalSettings_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_DisableParentalSettings_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_GetParentalSettings_Request extends GeneratedMessage implements CParental_GetParentalSettings_RequestOrBuilder {
        private static final CParental_GetParentalSettings_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_GetParentalSettings_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_GetParentalSettings_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_GetParentalSettings_Request();
            PARSER = new AbstractParser<CParental_GetParentalSettings_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_GetParentalSettings_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_GetParentalSettings_Request.newBuilder();
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

        private CParental_GetParentalSettings_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_GetParentalSettings_Request() {
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetParentalSettings_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_RequestOrBuilder
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
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(10, this.steamid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_GetParentalSettings_Request)) {
                return super.equals(obj);
            }
            CParental_GetParentalSettings_Request cParental_GetParentalSettings_Request = (CParental_GetParentalSettings_Request) obj;
            if (hasSteamid() != cParental_GetParentalSettings_Request.hasSteamid()) {
                return false;
            }
            return (!hasSteamid() || getSteamid() == cParental_GetParentalSettings_Request.getSteamid()) && getUnknownFields().equals(cParental_GetParentalSettings_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_GetParentalSettings_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_GetParentalSettings_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_GetParentalSettings_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_GetParentalSettings_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_GetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_GetParentalSettings_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_GetParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_GetParentalSettings_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_GetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_GetParentalSettings_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_GetParentalSettings_Request cParental_GetParentalSettings_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_GetParentalSettings_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_GetParentalSettings_RequestOrBuilder {
            private int bitField0_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetParentalSettings_Request.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_GetParentalSettings_Request getDefaultInstanceForType() {
                return CParental_GetParentalSettings_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetParentalSettings_Request build() {
                CParental_GetParentalSettings_Request cParental_GetParentalSettings_RequestBuildPartial = buildPartial();
                if (cParental_GetParentalSettings_RequestBuildPartial.isInitialized()) {
                    return cParental_GetParentalSettings_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_GetParentalSettings_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetParentalSettings_Request buildPartial() {
                CParental_GetParentalSettings_Request cParental_GetParentalSettings_Request = new CParental_GetParentalSettings_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_GetParentalSettings_Request);
                }
                onBuilt();
                return cParental_GetParentalSettings_Request;
            }

            private void buildPartial0(CParental_GetParentalSettings_Request cParental_GetParentalSettings_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_GetParentalSettings_Request.steamid_ = this.steamid_;
                } else {
                    i = 0;
                }
                cParental_GetParentalSettings_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_GetParentalSettings_Request) {
                    return mergeFrom((CParental_GetParentalSettings_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_GetParentalSettings_Request cParental_GetParentalSettings_Request) {
                if (cParental_GetParentalSettings_Request == CParental_GetParentalSettings_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_GetParentalSettings_Request.hasSteamid()) {
                    setSteamid(cParental_GetParentalSettings_Request.getSteamid());
                }
                mergeUnknownFields(cParental_GetParentalSettings_Request.getUnknownFields());
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
                                if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_RequestOrBuilder
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

        public static CParental_GetParentalSettings_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_GetParentalSettings_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_GetParentalSettings_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_GetParentalSettings_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_GetParentalSettings_Response extends GeneratedMessage implements CParental_GetParentalSettings_ResponseOrBuilder {
        private static final CParental_GetParentalSettings_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_GetParentalSettings_Response> PARSER;
        public static final int SETTINGS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private SteammessagesParentalObjects.ParentalSettings settings_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_GetParentalSettings_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_GetParentalSettings_Response();
            PARSER = new AbstractParser<CParental_GetParentalSettings_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_GetParentalSettings_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_GetParentalSettings_Response.newBuilder();
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

        private CParental_GetParentalSettings_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_GetParentalSettings_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetParentalSettings_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_ResponseOrBuilder
        public boolean hasSettings() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_ResponseOrBuilder
        public SteammessagesParentalObjects.ParentalSettings getSettings() {
            SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
            return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_ResponseOrBuilder
        public SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder() {
            SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
            return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
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
                codedOutputStream.writeMessage(1, getSettings());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeMessageSize(1, getSettings()) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeMessageSize;
            return iComputeMessageSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_GetParentalSettings_Response)) {
                return super.equals(obj);
            }
            CParental_GetParentalSettings_Response cParental_GetParentalSettings_Response = (CParental_GetParentalSettings_Response) obj;
            if (hasSettings() != cParental_GetParentalSettings_Response.hasSettings()) {
                return false;
            }
            return (!hasSettings() || getSettings().equals(cParental_GetParentalSettings_Response.getSettings())) && getUnknownFields().equals(cParental_GetParentalSettings_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSettings()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSettings().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_GetParentalSettings_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_GetParentalSettings_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_GetParentalSettings_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_GetParentalSettings_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_GetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_GetParentalSettings_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_GetParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_GetParentalSettings_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetParentalSettings_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_GetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_GetParentalSettings_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_GetParentalSettings_Response cParental_GetParentalSettings_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_GetParentalSettings_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_GetParentalSettings_ResponseOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> settingsBuilder_;
            private SteammessagesParentalObjects.ParentalSettings settings_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetParentalSettings_Response.class, Builder.class);
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
                    internalGetSettingsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.settings_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.settingsBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_GetParentalSettings_Response getDefaultInstanceForType() {
                return CParental_GetParentalSettings_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetParentalSettings_Response build() {
                CParental_GetParentalSettings_Response cParental_GetParentalSettings_ResponseBuildPartial = buildPartial();
                if (cParental_GetParentalSettings_ResponseBuildPartial.isInitialized()) {
                    return cParental_GetParentalSettings_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_GetParentalSettings_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetParentalSettings_Response buildPartial() {
                CParental_GetParentalSettings_Response cParental_GetParentalSettings_Response = new CParental_GetParentalSettings_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_GetParentalSettings_Response);
                }
                onBuilt();
                return cParental_GetParentalSettings_Response;
            }

            private void buildPartial0(CParental_GetParentalSettings_Response cParental_GetParentalSettings_Response) {
                SteammessagesParentalObjects.ParentalSettings parentalSettings;
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalSettings = this.settings_;
                    } else {
                        parentalSettings = (SteammessagesParentalObjects.ParentalSettings) singleFieldBuilder.build();
                    }
                    cParental_GetParentalSettings_Response.settings_ = parentalSettings;
                } else {
                    i = 0;
                }
                cParental_GetParentalSettings_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_GetParentalSettings_Response) {
                    return mergeFrom((CParental_GetParentalSettings_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_GetParentalSettings_Response cParental_GetParentalSettings_Response) {
                if (cParental_GetParentalSettings_Response == CParental_GetParentalSettings_Response.getDefaultInstance()) {
                    return this;
                }
                if (cParental_GetParentalSettings_Response.hasSettings()) {
                    mergeSettings(cParental_GetParentalSettings_Response.getSettings());
                }
                mergeUnknownFields(cParental_GetParentalSettings_Response.getUnknownFields());
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
                                    codedInputStream.readMessage(internalGetSettingsFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_ResponseOrBuilder
            public boolean hasSettings() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_ResponseOrBuilder
            public SteammessagesParentalObjects.ParentalSettings getSettings() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
                    return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
                }
                return (SteammessagesParentalObjects.ParentalSettings) singleFieldBuilder.getMessage();
            }

            public Builder setSettings(SteammessagesParentalObjects.ParentalSettings parentalSettings) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalSettings.getClass();
                    this.settings_ = parentalSettings;
                } else {
                    singleFieldBuilder.setMessage(parentalSettings);
                }
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder setSettings(SteammessagesParentalObjects.ParentalSettings.Builder builder) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    this.settings_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder mergeSettings(SteammessagesParentalObjects.ParentalSettings parentalSettings) {
                SteammessagesParentalObjects.ParentalSettings parentalSettings2;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0 && (parentalSettings2 = this.settings_) != null && parentalSettings2 != SteammessagesParentalObjects.ParentalSettings.getDefaultInstance()) {
                        getSettingsBuilder().mergeFrom(parentalSettings);
                    } else {
                        this.settings_ = parentalSettings;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalSettings);
                }
                if (this.settings_ != null) {
                    this.bitField0_ |= 1;
                    onChanged();
                }
                return this;
            }

            public Builder clearSettings() {
                this.bitField0_ &= -2;
                this.settings_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.settingsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesParentalObjects.ParentalSettings.Builder getSettingsBuilder() {
                this.bitField0_ |= 1;
                onChanged();
                return (SteammessagesParentalObjects.ParentalSettings.Builder) internalGetSettingsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetParentalSettings_ResponseOrBuilder
            public SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesParentalObjects.ParentalSettingsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
                return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
            }

            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> internalGetSettingsFieldBuilder() {
                if (this.settingsBuilder_ == null) {
                    this.settingsBuilder_ = new SingleFieldBuilder<>(getSettings(), getParentForChildren(), isClean());
                    this.settings_ = null;
                }
                return this.settingsBuilder_;
            }
        }

        public static CParental_GetParentalSettings_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_GetParentalSettings_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_GetParentalSettings_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_GetParentalSettings_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_GetSignedParentalSettings_Request extends GeneratedMessage implements CParental_GetSignedParentalSettings_RequestOrBuilder {
        private static final CParental_GetSignedParentalSettings_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_GetSignedParentalSettings_Request> PARSER;
        public static final int PRIORITY_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int priority_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_GetSignedParentalSettings_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_GetSignedParentalSettings_Request();
            PARSER = new AbstractParser<CParental_GetSignedParentalSettings_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_GetSignedParentalSettings_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_GetSignedParentalSettings_Request.newBuilder();
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

        private CParental_GetSignedParentalSettings_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.priority_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_GetSignedParentalSettings_Request() {
            this.priority_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetSignedParentalSettings_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_RequestOrBuilder
        public boolean hasPriority() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_RequestOrBuilder
        public int getPriority() {
            return this.priority_;
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
                codedOutputStream.writeUInt32(1, this.priority_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.priority_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_GetSignedParentalSettings_Request)) {
                return super.equals(obj);
            }
            CParental_GetSignedParentalSettings_Request cParental_GetSignedParentalSettings_Request = (CParental_GetSignedParentalSettings_Request) obj;
            if (hasPriority() != cParental_GetSignedParentalSettings_Request.hasPriority()) {
                return false;
            }
            return (!hasPriority() || getPriority() == cParental_GetSignedParentalSettings_Request.getPriority()) && getUnknownFields().equals(cParental_GetSignedParentalSettings_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasPriority()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPriority();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_GetSignedParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetSignedParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_GetSignedParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_GetSignedParentalSettings_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetSignedParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_GetSignedParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_GetSignedParentalSettings_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetSignedParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_GetSignedParentalSettings_Request cParental_GetSignedParentalSettings_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_GetSignedParentalSettings_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_GetSignedParentalSettings_RequestOrBuilder {
            private int bitField0_;
            private int priority_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetSignedParentalSettings_Request.class, Builder.class);
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
                this.priority_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_GetSignedParentalSettings_Request getDefaultInstanceForType() {
                return CParental_GetSignedParentalSettings_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetSignedParentalSettings_Request build() {
                CParental_GetSignedParentalSettings_Request cParental_GetSignedParentalSettings_RequestBuildPartial = buildPartial();
                if (cParental_GetSignedParentalSettings_RequestBuildPartial.isInitialized()) {
                    return cParental_GetSignedParentalSettings_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_GetSignedParentalSettings_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetSignedParentalSettings_Request buildPartial() {
                CParental_GetSignedParentalSettings_Request cParental_GetSignedParentalSettings_Request = new CParental_GetSignedParentalSettings_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_GetSignedParentalSettings_Request);
                }
                onBuilt();
                return cParental_GetSignedParentalSettings_Request;
            }

            private void buildPartial0(CParental_GetSignedParentalSettings_Request cParental_GetSignedParentalSettings_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_GetSignedParentalSettings_Request.priority_ = this.priority_;
                } else {
                    i = 0;
                }
                cParental_GetSignedParentalSettings_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_GetSignedParentalSettings_Request) {
                    return mergeFrom((CParental_GetSignedParentalSettings_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_GetSignedParentalSettings_Request cParental_GetSignedParentalSettings_Request) {
                if (cParental_GetSignedParentalSettings_Request == CParental_GetSignedParentalSettings_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_GetSignedParentalSettings_Request.hasPriority()) {
                    setPriority(cParental_GetSignedParentalSettings_Request.getPriority());
                }
                mergeUnknownFields(cParental_GetSignedParentalSettings_Request.getUnknownFields());
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
                                    this.priority_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_RequestOrBuilder
            public boolean hasPriority() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_RequestOrBuilder
            public int getPriority() {
                return this.priority_;
            }

            public Builder setPriority(int i) {
                this.priority_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPriority() {
                this.bitField0_ &= -2;
                this.priority_ = 0;
                onChanged();
                return this;
            }
        }

        public static CParental_GetSignedParentalSettings_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_GetSignedParentalSettings_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_GetSignedParentalSettings_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_GetSignedParentalSettings_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_GetSignedParentalSettings_Response extends GeneratedMessage implements CParental_GetSignedParentalSettings_ResponseOrBuilder {
        private static final CParental_GetSignedParentalSettings_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_GetSignedParentalSettings_Response> PARSER;
        public static final int SERIALIZED_SETTINGS_FIELD_NUMBER = 1;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ByteString serializedSettings_;
        private ByteString signature_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_GetSignedParentalSettings_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_GetSignedParentalSettings_Response();
            PARSER = new AbstractParser<CParental_GetSignedParentalSettings_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_GetSignedParentalSettings_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_GetSignedParentalSettings_Response.newBuilder();
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

        private CParental_GetSignedParentalSettings_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            ByteString byteString = ByteString.EMPTY;
            this.serializedSettings_ = byteString;
            this.signature_ = byteString;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_GetSignedParentalSettings_Response() {
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.serializedSettings_ = byteString;
            this.signature_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetSignedParentalSettings_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
        public boolean hasSerializedSettings() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
        public ByteString getSerializedSettings() {
            return this.serializedSettings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
        public boolean hasSignature() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
        public ByteString getSignature() {
            return this.signature_;
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
                codedOutputStream.writeBytes(1, this.serializedSettings_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBytes(2, this.signature_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBytesSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBytesSize(1, this.serializedSettings_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBytesSize += CodedOutputStream.computeBytesSize(2, this.signature_);
            }
            int serializedSize = iComputeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_GetSignedParentalSettings_Response)) {
                return super.equals(obj);
            }
            CParental_GetSignedParentalSettings_Response cParental_GetSignedParentalSettings_Response = (CParental_GetSignedParentalSettings_Response) obj;
            if (hasSerializedSettings() != cParental_GetSignedParentalSettings_Response.hasSerializedSettings()) {
                return false;
            }
            if ((!hasSerializedSettings() || getSerializedSettings().equals(cParental_GetSignedParentalSettings_Response.getSerializedSettings())) && hasSignature() == cParental_GetSignedParentalSettings_Response.hasSignature()) {
                return (!hasSignature() || getSignature().equals(cParental_GetSignedParentalSettings_Response.getSignature())) && getUnknownFields().equals(cParental_GetSignedParentalSettings_Response.getUnknownFields());
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
            if (hasSerializedSettings()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSerializedSettings().hashCode();
            }
            if (hasSignature()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSignature().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_GetSignedParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetSignedParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_GetSignedParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_GetSignedParentalSettings_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetSignedParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_GetSignedParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_GetSignedParentalSettings_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetSignedParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_GetSignedParentalSettings_Response cParental_GetSignedParentalSettings_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_GetSignedParentalSettings_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_GetSignedParentalSettings_ResponseOrBuilder {
            private int bitField0_;
            private ByteString serializedSettings_;
            private ByteString signature_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetSignedParentalSettings_Response.class, Builder.class);
            }

            private Builder() {
                ByteString byteString = ByteString.EMPTY;
                this.serializedSettings_ = byteString;
                this.signature_ = byteString;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                ByteString byteString = ByteString.EMPTY;
                this.serializedSettings_ = byteString;
                this.signature_ = byteString;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.serializedSettings_ = byteString;
                this.signature_ = byteString;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetSignedParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_GetSignedParentalSettings_Response getDefaultInstanceForType() {
                return CParental_GetSignedParentalSettings_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetSignedParentalSettings_Response build() {
                CParental_GetSignedParentalSettings_Response cParental_GetSignedParentalSettings_ResponseBuildPartial = buildPartial();
                if (cParental_GetSignedParentalSettings_ResponseBuildPartial.isInitialized()) {
                    return cParental_GetSignedParentalSettings_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_GetSignedParentalSettings_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetSignedParentalSettings_Response buildPartial() {
                CParental_GetSignedParentalSettings_Response cParental_GetSignedParentalSettings_Response = new CParental_GetSignedParentalSettings_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_GetSignedParentalSettings_Response);
                }
                onBuilt();
                return cParental_GetSignedParentalSettings_Response;
            }

            private void buildPartial0(CParental_GetSignedParentalSettings_Response cParental_GetSignedParentalSettings_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_GetSignedParentalSettings_Response.serializedSettings_ = this.serializedSettings_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_GetSignedParentalSettings_Response.signature_ = this.signature_;
                    i |= 2;
                }
                cParental_GetSignedParentalSettings_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_GetSignedParentalSettings_Response) {
                    return mergeFrom((CParental_GetSignedParentalSettings_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_GetSignedParentalSettings_Response cParental_GetSignedParentalSettings_Response) {
                if (cParental_GetSignedParentalSettings_Response == CParental_GetSignedParentalSettings_Response.getDefaultInstance()) {
                    return this;
                }
                if (cParental_GetSignedParentalSettings_Response.hasSerializedSettings()) {
                    setSerializedSettings(cParental_GetSignedParentalSettings_Response.getSerializedSettings());
                }
                if (cParental_GetSignedParentalSettings_Response.hasSignature()) {
                    setSignature(cParental_GetSignedParentalSettings_Response.getSignature());
                }
                mergeUnknownFields(cParental_GetSignedParentalSettings_Response.getUnknownFields());
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
                                    this.serializedSettings_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.signature_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
            public boolean hasSerializedSettings() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
            public ByteString getSerializedSettings() {
                return this.serializedSettings_;
            }

            public Builder setSerializedSettings(ByteString byteString) {
                byteString.getClass();
                this.serializedSettings_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSerializedSettings() {
                this.bitField0_ &= -2;
                this.serializedSettings_ = CParental_GetSignedParentalSettings_Response.getDefaultInstance().getSerializedSettings();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
            public boolean hasSignature() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_ResponseOrBuilder
            public ByteString getSignature() {
                return this.signature_;
            }

            public Builder setSignature(ByteString byteString) {
                byteString.getClass();
                this.signature_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSignature() {
                this.bitField0_ &= -3;
                this.signature_ = CParental_GetSignedParentalSettings_Response.getDefaultInstance().getSignature();
                onChanged();
                return this;
            }
        }

        public static CParental_GetSignedParentalSettings_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_GetSignedParentalSettings_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_GetSignedParentalSettings_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_GetSignedParentalSettings_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_SetParentalSettings_Request extends GeneratedMessage implements CParental_SetParentalSettings_RequestOrBuilder {
        private static final CParental_SetParentalSettings_Request DEFAULT_INSTANCE;
        public static final int NEW_PASSWORD_FIELD_NUMBER = 3;
        private static final Parser<CParental_SetParentalSettings_Request> PARSER;
        public static final int PASSWORD_FIELD_NUMBER = 1;
        public static final int SESSIONID_FIELD_NUMBER = 4;
        public static final int SETTINGS_FIELD_NUMBER = 2;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object newPassword_;
        private volatile Object password_;
        private volatile Object sessionid_;
        private SteammessagesParentalObjects.ParentalSettings settings_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_SetParentalSettings_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_SetParentalSettings_Request();
            PARSER = new AbstractParser<CParental_SetParentalSettings_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_SetParentalSettings_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_SetParentalSettings_Request.newBuilder();
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

        private CParental_SetParentalSettings_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.password_ = "";
            this.newPassword_ = "";
            this.sessionid_ = "";
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_SetParentalSettings_Request() {
            this.password_ = "";
            this.newPassword_ = "";
            this.sessionid_ = "";
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.password_ = "";
            this.newPassword_ = "";
            this.sessionid_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_SetParentalSettings_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public boolean hasPassword() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.password_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public boolean hasSettings() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalSettings getSettings() {
            SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
            return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder() {
            SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
            return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public boolean hasNewPassword() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public String getNewPassword() {
            Object obj = this.newPassword_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.newPassword_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public ByteString getNewPasswordBytes() {
            Object obj = this.newPassword_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.newPassword_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public String getSessionid() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sessionid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public ByteString getSessionidBytes() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.password_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(2, getSettings());
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.newPassword_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.sessionid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.password_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeMessageSize(2, getSettings());
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(3, this.newPassword_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(4, this.sessionid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_SetParentalSettings_Request)) {
                return super.equals(obj);
            }
            CParental_SetParentalSettings_Request cParental_SetParentalSettings_Request = (CParental_SetParentalSettings_Request) obj;
            if (hasPassword() != cParental_SetParentalSettings_Request.hasPassword()) {
                return false;
            }
            if ((hasPassword() && !getPassword().equals(cParental_SetParentalSettings_Request.getPassword())) || hasSettings() != cParental_SetParentalSettings_Request.hasSettings()) {
                return false;
            }
            if ((hasSettings() && !getSettings().equals(cParental_SetParentalSettings_Request.getSettings())) || hasNewPassword() != cParental_SetParentalSettings_Request.hasNewPassword()) {
                return false;
            }
            if ((hasNewPassword() && !getNewPassword().equals(cParental_SetParentalSettings_Request.getNewPassword())) || hasSessionid() != cParental_SetParentalSettings_Request.hasSessionid()) {
                return false;
            }
            if ((!hasSessionid() || getSessionid().equals(cParental_SetParentalSettings_Request.getSessionid())) && hasSteamid() == cParental_SetParentalSettings_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_SetParentalSettings_Request.getSteamid()) && getUnknownFields().equals(cParental_SetParentalSettings_Request.getUnknownFields());
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
            if (hasPassword()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPassword().hashCode();
            }
            if (hasSettings()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSettings().hashCode();
            }
            if (hasNewPassword()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getNewPassword().hashCode();
            }
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getSessionid().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_SetParentalSettings_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_SetParentalSettings_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_SetParentalSettings_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_SetParentalSettings_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_SetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_SetParentalSettings_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_SetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_SetParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_SetParentalSettings_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_SetParentalSettings_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_SetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_SetParentalSettings_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_SetParentalSettings_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_SetParentalSettings_Request cParental_SetParentalSettings_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_SetParentalSettings_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_SetParentalSettings_RequestOrBuilder {
            private int bitField0_;
            private Object newPassword_;
            private Object password_;
            private Object sessionid_;
            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> settingsBuilder_;
            private SteammessagesParentalObjects.ParentalSettings settings_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_SetParentalSettings_Request.class, Builder.class);
            }

            private Builder() {
                this.password_ = "";
                this.newPassword_ = "";
                this.sessionid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.password_ = "";
                this.newPassword_ = "";
                this.sessionid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetSettingsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.password_ = "";
                this.settings_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.settingsBuilder_ = null;
                }
                this.newPassword_ = "";
                this.sessionid_ = "";
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_SetParentalSettings_Request getDefaultInstanceForType() {
                return CParental_SetParentalSettings_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_SetParentalSettings_Request build() {
                CParental_SetParentalSettings_Request cParental_SetParentalSettings_RequestBuildPartial = buildPartial();
                if (cParental_SetParentalSettings_RequestBuildPartial.isInitialized()) {
                    return cParental_SetParentalSettings_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_SetParentalSettings_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_SetParentalSettings_Request buildPartial() {
                CParental_SetParentalSettings_Request cParental_SetParentalSettings_Request = new CParental_SetParentalSettings_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_SetParentalSettings_Request);
                }
                onBuilt();
                return cParental_SetParentalSettings_Request;
            }

            private void buildPartial0(CParental_SetParentalSettings_Request cParental_SetParentalSettings_Request) {
                int i;
                SteammessagesParentalObjects.ParentalSettings parentalSettings;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_SetParentalSettings_Request.password_ = this.password_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalSettings = this.settings_;
                    } else {
                        parentalSettings = (SteammessagesParentalObjects.ParentalSettings) singleFieldBuilder.build();
                    }
                    cParental_SetParentalSettings_Request.settings_ = parentalSettings;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cParental_SetParentalSettings_Request.newPassword_ = this.newPassword_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cParental_SetParentalSettings_Request.sessionid_ = this.sessionid_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cParental_SetParentalSettings_Request.steamid_ = this.steamid_;
                    i |= 16;
                }
                cParental_SetParentalSettings_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_SetParentalSettings_Request) {
                    return mergeFrom((CParental_SetParentalSettings_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_SetParentalSettings_Request cParental_SetParentalSettings_Request) {
                if (cParental_SetParentalSettings_Request == CParental_SetParentalSettings_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_SetParentalSettings_Request.hasPassword()) {
                    this.password_ = cParental_SetParentalSettings_Request.password_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cParental_SetParentalSettings_Request.hasSettings()) {
                    mergeSettings(cParental_SetParentalSettings_Request.getSettings());
                }
                if (cParental_SetParentalSettings_Request.hasNewPassword()) {
                    this.newPassword_ = cParental_SetParentalSettings_Request.newPassword_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cParental_SetParentalSettings_Request.hasSessionid()) {
                    this.sessionid_ = cParental_SetParentalSettings_Request.sessionid_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cParental_SetParentalSettings_Request.hasSteamid()) {
                    setSteamid(cParental_SetParentalSettings_Request.getSteamid());
                }
                mergeUnknownFields(cParental_SetParentalSettings_Request.getUnknownFields());
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
                                    this.password_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    codedInputStream.readMessage(internalGetSettingsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.newPassword_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.sessionid_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public boolean hasPassword() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public String getPassword() {
                Object obj = this.password_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.password_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public ByteString getPasswordBytes() {
                Object obj = this.password_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.password_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPassword(String str) {
                str.getClass();
                this.password_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPassword() {
                this.password_ = CParental_SetParentalSettings_Request.getDefaultInstance().getPassword();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.password_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public boolean hasSettings() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalSettings getSettings() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
                    return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
                }
                return (SteammessagesParentalObjects.ParentalSettings) singleFieldBuilder.getMessage();
            }

            public Builder setSettings(SteammessagesParentalObjects.ParentalSettings parentalSettings) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalSettings.getClass();
                    this.settings_ = parentalSettings;
                } else {
                    singleFieldBuilder.setMessage(parentalSettings);
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setSettings(SteammessagesParentalObjects.ParentalSettings.Builder builder) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    this.settings_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder mergeSettings(SteammessagesParentalObjects.ParentalSettings parentalSettings) {
                SteammessagesParentalObjects.ParentalSettings parentalSettings2;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0 && (parentalSettings2 = this.settings_) != null && parentalSettings2 != SteammessagesParentalObjects.ParentalSettings.getDefaultInstance()) {
                        getSettingsBuilder().mergeFrom(parentalSettings);
                    } else {
                        this.settings_ = parentalSettings;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalSettings);
                }
                if (this.settings_ != null) {
                    this.bitField0_ |= 2;
                    onChanged();
                }
                return this;
            }

            public Builder clearSettings() {
                this.bitField0_ &= -3;
                this.settings_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.settingsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesParentalObjects.ParentalSettings.Builder getSettingsBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (SteammessagesParentalObjects.ParentalSettings.Builder) internalGetSettingsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalSettingsOrBuilder getSettingsOrBuilder() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> singleFieldBuilder = this.settingsBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesParentalObjects.ParentalSettingsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesParentalObjects.ParentalSettings parentalSettings = this.settings_;
                return parentalSettings == null ? SteammessagesParentalObjects.ParentalSettings.getDefaultInstance() : parentalSettings;
            }

            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalSettings, SteammessagesParentalObjects.ParentalSettings.Builder, SteammessagesParentalObjects.ParentalSettingsOrBuilder> internalGetSettingsFieldBuilder() {
                if (this.settingsBuilder_ == null) {
                    this.settingsBuilder_ = new SingleFieldBuilder<>(getSettings(), getParentForChildren(), isClean());
                    this.settings_ = null;
                }
                return this.settingsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public boolean hasNewPassword() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public String getNewPassword() {
                Object obj = this.newPassword_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.newPassword_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public ByteString getNewPasswordBytes() {
                Object obj = this.newPassword_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.newPassword_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setNewPassword(String str) {
                str.getClass();
                this.newPassword_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearNewPassword() {
                this.newPassword_ = CParental_SetParentalSettings_Request.getDefaultInstance().getNewPassword();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setNewPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.newPassword_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public String getSessionid() {
                Object obj = this.sessionid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sessionid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public ByteString getSessionidBytes() {
                Object obj = this.sessionid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sessionid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSessionid(String str) {
                str.getClass();
                this.sessionid_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.sessionid_ = CParental_SetParentalSettings_Request.getDefaultInstance().getSessionid();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setSessionidBytes(ByteString byteString) {
                byteString.getClass();
                this.sessionid_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_RequestOrBuilder
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

        public static CParental_SetParentalSettings_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_SetParentalSettings_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_SetParentalSettings_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_SetParentalSettings_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_SetParentalSettings_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_SetParentalSettings_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_SetParentalSettings_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_SetParentalSettings_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_SetParentalSettings_Response();
            PARSER = new AbstractParser<CParental_SetParentalSettings_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_SetParentalSettings_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_SetParentalSettings_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_SetParentalSettings_Response.newBuilder();
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

        private CParental_SetParentalSettings_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_SetParentalSettings_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_SetParentalSettings_Response.class, Builder.class);
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
            if (obj instanceof CParental_SetParentalSettings_Response) {
                return getUnknownFields().equals(((CParental_SetParentalSettings_Response) obj).getUnknownFields());
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

        public static CParental_SetParentalSettings_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_SetParentalSettings_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_SetParentalSettings_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_SetParentalSettings_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_SetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_SetParentalSettings_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_SetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_SetParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_SetParentalSettings_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_SetParentalSettings_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_SetParentalSettings_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_SetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_SetParentalSettings_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_SetParentalSettings_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_SetParentalSettings_Response cParental_SetParentalSettings_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_SetParentalSettings_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_SetParentalSettings_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_SetParentalSettings_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_SetParentalSettings_Response getDefaultInstanceForType() {
                return CParental_SetParentalSettings_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_SetParentalSettings_Response build() {
                CParental_SetParentalSettings_Response cParental_SetParentalSettings_ResponseBuildPartial = buildPartial();
                if (cParental_SetParentalSettings_ResponseBuildPartial.isInitialized()) {
                    return cParental_SetParentalSettings_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_SetParentalSettings_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_SetParentalSettings_Response buildPartial() {
                CParental_SetParentalSettings_Response cParental_SetParentalSettings_Response = new CParental_SetParentalSettings_Response(this);
                onBuilt();
                return cParental_SetParentalSettings_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_SetParentalSettings_Response) {
                    return mergeFrom((CParental_SetParentalSettings_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_SetParentalSettings_Response cParental_SetParentalSettings_Response) {
                if (cParental_SetParentalSettings_Response == CParental_SetParentalSettings_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_SetParentalSettings_Response.getUnknownFields());
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

        public static CParental_SetParentalSettings_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_SetParentalSettings_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_SetParentalSettings_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_SetParentalSettings_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ValidateToken_Request extends GeneratedMessage implements CParental_ValidateToken_RequestOrBuilder {
        private static final CParental_ValidateToken_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_ValidateToken_Request> PARSER;
        public static final int UNLOCK_TOKEN_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object unlockToken_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ValidateToken_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_ValidateToken_Request();
            PARSER = new AbstractParser<CParental_ValidateToken_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_ValidateToken_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ValidateToken_Request.newBuilder();
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

        private CParental_ValidateToken_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unlockToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ValidateToken_Request() {
            this.unlockToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.unlockToken_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidateToken_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_RequestOrBuilder
        public boolean hasUnlockToken() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_RequestOrBuilder
        public String getUnlockToken() {
            Object obj = this.unlockToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.unlockToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_RequestOrBuilder
        public ByteString getUnlockTokenBytes() {
            Object obj = this.unlockToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.unlockToken_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.unlockToken_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.unlockToken_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_ValidateToken_Request)) {
                return super.equals(obj);
            }
            CParental_ValidateToken_Request cParental_ValidateToken_Request = (CParental_ValidateToken_Request) obj;
            if (hasUnlockToken() != cParental_ValidateToken_Request.hasUnlockToken()) {
                return false;
            }
            return (!hasUnlockToken() || getUnlockToken().equals(cParental_ValidateToken_Request.getUnlockToken())) && getUnknownFields().equals(cParental_ValidateToken_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasUnlockToken()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getUnlockToken().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ValidateToken_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ValidateToken_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ValidateToken_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ValidateToken_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidateToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidateToken_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidateToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidateToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidateToken_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidateToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ValidateToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ValidateToken_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidateToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ValidateToken_Request cParental_ValidateToken_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ValidateToken_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ValidateToken_RequestOrBuilder {
            private int bitField0_;
            private Object unlockToken_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidateToken_Request.class, Builder.class);
            }

            private Builder() {
                this.unlockToken_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.unlockToken_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.unlockToken_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ValidateToken_Request getDefaultInstanceForType() {
                return CParental_ValidateToken_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidateToken_Request build() {
                CParental_ValidateToken_Request cParental_ValidateToken_RequestBuildPartial = buildPartial();
                if (cParental_ValidateToken_RequestBuildPartial.isInitialized()) {
                    return cParental_ValidateToken_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ValidateToken_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidateToken_Request buildPartial() {
                CParental_ValidateToken_Request cParental_ValidateToken_Request = new CParental_ValidateToken_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ValidateToken_Request);
                }
                onBuilt();
                return cParental_ValidateToken_Request;
            }

            private void buildPartial0(CParental_ValidateToken_Request cParental_ValidateToken_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_ValidateToken_Request.unlockToken_ = this.unlockToken_;
                } else {
                    i = 0;
                }
                cParental_ValidateToken_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ValidateToken_Request) {
                    return mergeFrom((CParental_ValidateToken_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ValidateToken_Request cParental_ValidateToken_Request) {
                if (cParental_ValidateToken_Request == CParental_ValidateToken_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ValidateToken_Request.hasUnlockToken()) {
                    this.unlockToken_ = cParental_ValidateToken_Request.unlockToken_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cParental_ValidateToken_Request.getUnknownFields());
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
                                    this.unlockToken_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_RequestOrBuilder
            public boolean hasUnlockToken() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_RequestOrBuilder
            public String getUnlockToken() {
                Object obj = this.unlockToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.unlockToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_RequestOrBuilder
            public ByteString getUnlockTokenBytes() {
                Object obj = this.unlockToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.unlockToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUnlockToken(String str) {
                str.getClass();
                this.unlockToken_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearUnlockToken() {
                this.unlockToken_ = CParental_ValidateToken_Request.getDefaultInstance().getUnlockToken();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setUnlockTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.unlockToken_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CParental_ValidateToken_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ValidateToken_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ValidateToken_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ValidateToken_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ValidateToken_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_ValidateToken_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_ValidateToken_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ValidateToken_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_ValidateToken_Response();
            PARSER = new AbstractParser<CParental_ValidateToken_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidateToken_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_ValidateToken_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ValidateToken_Response.newBuilder();
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

        private CParental_ValidateToken_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ValidateToken_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidateToken_Response.class, Builder.class);
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
            if (obj instanceof CParental_ValidateToken_Response) {
                return getUnknownFields().equals(((CParental_ValidateToken_Response) obj).getUnknownFields());
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

        public static CParental_ValidateToken_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ValidateToken_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ValidateToken_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ValidateToken_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidateToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidateToken_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidateToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidateToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidateToken_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidateToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidateToken_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ValidateToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ValidateToken_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidateToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ValidateToken_Response cParental_ValidateToken_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ValidateToken_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidateToken_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidateToken_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ValidateToken_Response getDefaultInstanceForType() {
                return CParental_ValidateToken_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidateToken_Response build() {
                CParental_ValidateToken_Response cParental_ValidateToken_ResponseBuildPartial = buildPartial();
                if (cParental_ValidateToken_ResponseBuildPartial.isInitialized()) {
                    return cParental_ValidateToken_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ValidateToken_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidateToken_Response buildPartial() {
                CParental_ValidateToken_Response cParental_ValidateToken_Response = new CParental_ValidateToken_Response(this);
                onBuilt();
                return cParental_ValidateToken_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ValidateToken_Response) {
                    return mergeFrom((CParental_ValidateToken_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ValidateToken_Response cParental_ValidateToken_Response) {
                if (cParental_ValidateToken_Response == CParental_ValidateToken_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_ValidateToken_Response.getUnknownFields());
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

        public static CParental_ValidateToken_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ValidateToken_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ValidateToken_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ValidateToken_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ValidatePassword_Request extends GeneratedMessage implements CParental_ValidatePassword_RequestOrBuilder {
        private static final CParental_ValidatePassword_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_ValidatePassword_Request> PARSER;
        public static final int PASSWORD_FIELD_NUMBER = 1;
        public static final int SEND_UNLOCK_ON_SUCCESS_FIELD_NUMBER = 3;
        public static final int SESSION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object password_;
        private boolean sendUnlockOnSuccess_;
        private volatile Object session_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ValidatePassword_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_ValidatePassword_Request();
            PARSER = new AbstractParser<CParental_ValidatePassword_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_ValidatePassword_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ValidatePassword_Request.newBuilder();
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

        private CParental_ValidatePassword_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.password_ = "";
            this.session_ = "";
            this.sendUnlockOnSuccess_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ValidatePassword_Request() {
            this.password_ = "";
            this.session_ = "";
            this.sendUnlockOnSuccess_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.password_ = "";
            this.session_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidatePassword_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public boolean hasPassword() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.password_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public boolean hasSession() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public String getSession() {
            Object obj = this.session_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.session_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public ByteString getSessionBytes() {
            Object obj = this.session_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.session_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public boolean hasSendUnlockOnSuccess() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
        public boolean getSendUnlockOnSuccess() {
            return this.sendUnlockOnSuccess_;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.password_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.session_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.sendUnlockOnSuccess_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.password_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(2, this.session_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(3, this.sendUnlockOnSuccess_);
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
            if (!(obj instanceof CParental_ValidatePassword_Request)) {
                return super.equals(obj);
            }
            CParental_ValidatePassword_Request cParental_ValidatePassword_Request = (CParental_ValidatePassword_Request) obj;
            if (hasPassword() != cParental_ValidatePassword_Request.hasPassword()) {
                return false;
            }
            if ((hasPassword() && !getPassword().equals(cParental_ValidatePassword_Request.getPassword())) || hasSession() != cParental_ValidatePassword_Request.hasSession()) {
                return false;
            }
            if ((!hasSession() || getSession().equals(cParental_ValidatePassword_Request.getSession())) && hasSendUnlockOnSuccess() == cParental_ValidatePassword_Request.hasSendUnlockOnSuccess()) {
                return (!hasSendUnlockOnSuccess() || getSendUnlockOnSuccess() == cParental_ValidatePassword_Request.getSendUnlockOnSuccess()) && getUnknownFields().equals(cParental_ValidatePassword_Request.getUnknownFields());
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
            if (hasPassword()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPassword().hashCode();
            }
            if (hasSession()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSession().hashCode();
            }
            if (hasSendUnlockOnSuccess()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getSendUnlockOnSuccess());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ValidatePassword_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ValidatePassword_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ValidatePassword_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ValidatePassword_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidatePassword_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidatePassword_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidatePassword_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidatePassword_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidatePassword_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidatePassword_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ValidatePassword_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ValidatePassword_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidatePassword_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ValidatePassword_Request cParental_ValidatePassword_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ValidatePassword_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ValidatePassword_RequestOrBuilder {
            private int bitField0_;
            private Object password_;
            private boolean sendUnlockOnSuccess_;
            private Object session_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidatePassword_Request.class, Builder.class);
            }

            private Builder() {
                this.password_ = "";
                this.session_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.password_ = "";
                this.session_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.password_ = "";
                this.session_ = "";
                this.sendUnlockOnSuccess_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ValidatePassword_Request getDefaultInstanceForType() {
                return CParental_ValidatePassword_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidatePassword_Request build() {
                CParental_ValidatePassword_Request cParental_ValidatePassword_RequestBuildPartial = buildPartial();
                if (cParental_ValidatePassword_RequestBuildPartial.isInitialized()) {
                    return cParental_ValidatePassword_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ValidatePassword_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidatePassword_Request buildPartial() {
                CParental_ValidatePassword_Request cParental_ValidatePassword_Request = new CParental_ValidatePassword_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ValidatePassword_Request);
                }
                onBuilt();
                return cParental_ValidatePassword_Request;
            }

            private void buildPartial0(CParental_ValidatePassword_Request cParental_ValidatePassword_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_ValidatePassword_Request.password_ = this.password_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_ValidatePassword_Request.session_ = this.session_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cParental_ValidatePassword_Request.sendUnlockOnSuccess_ = this.sendUnlockOnSuccess_;
                    i |= 4;
                }
                cParental_ValidatePassword_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ValidatePassword_Request) {
                    return mergeFrom((CParental_ValidatePassword_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ValidatePassword_Request cParental_ValidatePassword_Request) {
                if (cParental_ValidatePassword_Request == CParental_ValidatePassword_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ValidatePassword_Request.hasPassword()) {
                    this.password_ = cParental_ValidatePassword_Request.password_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cParental_ValidatePassword_Request.hasSession()) {
                    this.session_ = cParental_ValidatePassword_Request.session_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cParental_ValidatePassword_Request.hasSendUnlockOnSuccess()) {
                    setSendUnlockOnSuccess(cParental_ValidatePassword_Request.getSendUnlockOnSuccess());
                }
                mergeUnknownFields(cParental_ValidatePassword_Request.getUnknownFields());
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
                                    this.password_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.session_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.sendUnlockOnSuccess_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public boolean hasPassword() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public String getPassword() {
                Object obj = this.password_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.password_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public ByteString getPasswordBytes() {
                Object obj = this.password_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.password_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPassword(String str) {
                str.getClass();
                this.password_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPassword() {
                this.password_ = CParental_ValidatePassword_Request.getDefaultInstance().getPassword();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.password_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public boolean hasSession() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public String getSession() {
                Object obj = this.session_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.session_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public ByteString getSessionBytes() {
                Object obj = this.session_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.session_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSession(String str) {
                str.getClass();
                this.session_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSession() {
                this.session_ = CParental_ValidatePassword_Request.getDefaultInstance().getSession();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setSessionBytes(ByteString byteString) {
                byteString.getClass();
                this.session_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public boolean hasSendUnlockOnSuccess() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_RequestOrBuilder
            public boolean getSendUnlockOnSuccess() {
                return this.sendUnlockOnSuccess_;
            }

            public Builder setSendUnlockOnSuccess(boolean z) {
                this.sendUnlockOnSuccess_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSendUnlockOnSuccess() {
                this.bitField0_ &= -5;
                this.sendUnlockOnSuccess_ = false;
                onChanged();
                return this;
            }
        }

        public static CParental_ValidatePassword_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ValidatePassword_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ValidatePassword_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ValidatePassword_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ValidatePassword_Response extends GeneratedMessage implements CParental_ValidatePassword_ResponseOrBuilder {
        private static final CParental_ValidatePassword_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_ValidatePassword_Response> PARSER;
        public static final int TOKEN_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object token_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ValidatePassword_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_ValidatePassword_Response();
            PARSER = new AbstractParser<CParental_ValidatePassword_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_ValidatePassword_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ValidatePassword_Response.newBuilder();
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

        private CParental_ValidatePassword_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.token_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ValidatePassword_Response() {
            this.token_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.token_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidatePassword_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_ResponseOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_ResponseOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_ResponseOrBuilder
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = byteStringCopyFromUtf8;
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
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.token_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_ValidatePassword_Response)) {
                return super.equals(obj);
            }
            CParental_ValidatePassword_Response cParental_ValidatePassword_Response = (CParental_ValidatePassword_Response) obj;
            if (hasToken() != cParental_ValidatePassword_Response.hasToken()) {
                return false;
            }
            return (!hasToken() || getToken().equals(cParental_ValidatePassword_Response.getToken())) && getUnknownFields().equals(cParental_ValidatePassword_Response.getUnknownFields());
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
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ValidatePassword_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ValidatePassword_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ValidatePassword_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ValidatePassword_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidatePassword_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidatePassword_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidatePassword_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ValidatePassword_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ValidatePassword_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidatePassword_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ValidatePassword_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ValidatePassword_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ValidatePassword_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ValidatePassword_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ValidatePassword_Response cParental_ValidatePassword_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ValidatePassword_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ValidatePassword_ResponseOrBuilder {
            private int bitField0_;
            private Object token_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ValidatePassword_Response.class, Builder.class);
            }

            private Builder() {
                this.token_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.token_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.token_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ValidatePassword_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ValidatePassword_Response getDefaultInstanceForType() {
                return CParental_ValidatePassword_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidatePassword_Response build() {
                CParental_ValidatePassword_Response cParental_ValidatePassword_ResponseBuildPartial = buildPartial();
                if (cParental_ValidatePassword_ResponseBuildPartial.isInitialized()) {
                    return cParental_ValidatePassword_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ValidatePassword_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ValidatePassword_Response buildPartial() {
                CParental_ValidatePassword_Response cParental_ValidatePassword_Response = new CParental_ValidatePassword_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ValidatePassword_Response);
                }
                onBuilt();
                return cParental_ValidatePassword_Response;
            }

            private void buildPartial0(CParental_ValidatePassword_Response cParental_ValidatePassword_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_ValidatePassword_Response.token_ = this.token_;
                } else {
                    i = 0;
                }
                cParental_ValidatePassword_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ValidatePassword_Response) {
                    return mergeFrom((CParental_ValidatePassword_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ValidatePassword_Response cParental_ValidatePassword_Response) {
                if (cParental_ValidatePassword_Response == CParental_ValidatePassword_Response.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ValidatePassword_Response.hasToken()) {
                    this.token_ = cParental_ValidatePassword_Response.token_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cParental_ValidatePassword_Response.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_ResponseOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ValidatePassword_ResponseOrBuilder
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
                this.token_ = CParental_ValidatePassword_Response.getDefaultInstance().getToken();
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
        }

        public static CParental_ValidatePassword_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ValidatePassword_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ValidatePassword_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ValidatePassword_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_LockClient_Request extends GeneratedMessage implements CParental_LockClient_RequestOrBuilder {
        private static final CParental_LockClient_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_LockClient_Request> PARSER;
        public static final int SESSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object session_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_LockClient_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_LockClient_Request();
            PARSER = new AbstractParser<CParental_LockClient_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_LockClient_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_LockClient_Request.newBuilder();
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

        private CParental_LockClient_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.session_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_LockClient_Request() {
            this.session_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.session_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_LockClient_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_RequestOrBuilder
        public boolean hasSession() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_RequestOrBuilder
        public String getSession() {
            Object obj = this.session_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.session_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_RequestOrBuilder
        public ByteString getSessionBytes() {
            Object obj = this.session_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.session_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.session_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.session_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_LockClient_Request)) {
                return super.equals(obj);
            }
            CParental_LockClient_Request cParental_LockClient_Request = (CParental_LockClient_Request) obj;
            if (hasSession() != cParental_LockClient_Request.hasSession()) {
                return false;
            }
            return (!hasSession() || getSession().equals(cParental_LockClient_Request.getSession())) && getUnknownFields().equals(cParental_LockClient_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSession()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSession().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_LockClient_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_LockClient_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_LockClient_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_LockClient_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_LockClient_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_LockClient_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_LockClient_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_LockClient_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_LockClient_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_LockClient_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_LockClient_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_LockClient_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_LockClient_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_LockClient_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_LockClient_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_LockClient_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_LockClient_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_LockClient_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_LockClient_Request cParental_LockClient_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_LockClient_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_LockClient_RequestOrBuilder {
            private int bitField0_;
            private Object session_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_LockClient_Request.class, Builder.class);
            }

            private Builder() {
                this.session_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.session_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.session_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_LockClient_Request getDefaultInstanceForType() {
                return CParental_LockClient_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_LockClient_Request build() {
                CParental_LockClient_Request cParental_LockClient_RequestBuildPartial = buildPartial();
                if (cParental_LockClient_RequestBuildPartial.isInitialized()) {
                    return cParental_LockClient_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_LockClient_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_LockClient_Request buildPartial() {
                CParental_LockClient_Request cParental_LockClient_Request = new CParental_LockClient_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_LockClient_Request);
                }
                onBuilt();
                return cParental_LockClient_Request;
            }

            private void buildPartial0(CParental_LockClient_Request cParental_LockClient_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_LockClient_Request.session_ = this.session_;
                } else {
                    i = 0;
                }
                cParental_LockClient_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_LockClient_Request) {
                    return mergeFrom((CParental_LockClient_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_LockClient_Request cParental_LockClient_Request) {
                if (cParental_LockClient_Request == CParental_LockClient_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_LockClient_Request.hasSession()) {
                    this.session_ = cParental_LockClient_Request.session_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cParental_LockClient_Request.getUnknownFields());
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
                                    this.session_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_RequestOrBuilder
            public boolean hasSession() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_RequestOrBuilder
            public String getSession() {
                Object obj = this.session_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.session_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_RequestOrBuilder
            public ByteString getSessionBytes() {
                Object obj = this.session_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.session_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSession(String str) {
                str.getClass();
                this.session_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSession() {
                this.session_ = CParental_LockClient_Request.getDefaultInstance().getSession();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setSessionBytes(ByteString byteString) {
                byteString.getClass();
                this.session_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CParental_LockClient_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_LockClient_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_LockClient_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_LockClient_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_LockClient_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_LockClient_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_LockClient_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_LockClient_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_LockClient_Response();
            PARSER = new AbstractParser<CParental_LockClient_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_LockClient_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_LockClient_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_LockClient_Response.newBuilder();
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

        private CParental_LockClient_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_LockClient_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_LockClient_Response.class, Builder.class);
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
            if (obj instanceof CParental_LockClient_Response) {
                return getUnknownFields().equals(((CParental_LockClient_Response) obj).getUnknownFields());
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

        public static CParental_LockClient_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_LockClient_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_LockClient_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_LockClient_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_LockClient_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_LockClient_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_LockClient_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_LockClient_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_LockClient_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_LockClient_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_LockClient_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_LockClient_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_LockClient_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_LockClient_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_LockClient_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_LockClient_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_LockClient_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_LockClient_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_LockClient_Response cParental_LockClient_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_LockClient_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_LockClient_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_LockClient_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_LockClient_Response getDefaultInstanceForType() {
                return CParental_LockClient_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_LockClient_Response build() {
                CParental_LockClient_Response cParental_LockClient_ResponseBuildPartial = buildPartial();
                if (cParental_LockClient_ResponseBuildPartial.isInitialized()) {
                    return cParental_LockClient_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_LockClient_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_LockClient_Response buildPartial() {
                CParental_LockClient_Response cParental_LockClient_Response = new CParental_LockClient_Response(this);
                onBuilt();
                return cParental_LockClient_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_LockClient_Response) {
                    return mergeFrom((CParental_LockClient_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_LockClient_Response cParental_LockClient_Response) {
                if (cParental_LockClient_Response == CParental_LockClient_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_LockClient_Response.getUnknownFields());
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

        public static CParental_LockClient_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_LockClient_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_LockClient_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_LockClient_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_RequestRecoveryCode_Request extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_RequestRecoveryCode_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_RequestRecoveryCode_Request> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_RequestRecoveryCode_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_RequestRecoveryCode_Request();
            PARSER = new AbstractParser<CParental_RequestRecoveryCode_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestRecoveryCode_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_RequestRecoveryCode_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_RequestRecoveryCode_Request.newBuilder();
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

        private CParental_RequestRecoveryCode_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_RequestRecoveryCode_Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestRecoveryCode_Request.class, Builder.class);
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
            if (obj instanceof CParental_RequestRecoveryCode_Request) {
                return getUnknownFields().equals(((CParental_RequestRecoveryCode_Request) obj).getUnknownFields());
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

        public static CParental_RequestRecoveryCode_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestRecoveryCode_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestRecoveryCode_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestRecoveryCode_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_RequestRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_RequestRecoveryCode_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_RequestRecoveryCode_Request cParental_RequestRecoveryCode_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_RequestRecoveryCode_Request);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestRecoveryCode_Request.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_RequestRecoveryCode_Request getDefaultInstanceForType() {
                return CParental_RequestRecoveryCode_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestRecoveryCode_Request build() {
                CParental_RequestRecoveryCode_Request cParental_RequestRecoveryCode_RequestBuildPartial = buildPartial();
                if (cParental_RequestRecoveryCode_RequestBuildPartial.isInitialized()) {
                    return cParental_RequestRecoveryCode_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_RequestRecoveryCode_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestRecoveryCode_Request buildPartial() {
                CParental_RequestRecoveryCode_Request cParental_RequestRecoveryCode_Request = new CParental_RequestRecoveryCode_Request(this);
                onBuilt();
                return cParental_RequestRecoveryCode_Request;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_RequestRecoveryCode_Request) {
                    return mergeFrom((CParental_RequestRecoveryCode_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_RequestRecoveryCode_Request cParental_RequestRecoveryCode_Request) {
                if (cParental_RequestRecoveryCode_Request == CParental_RequestRecoveryCode_Request.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_RequestRecoveryCode_Request.getUnknownFields());
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

        public static CParental_RequestRecoveryCode_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_RequestRecoveryCode_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_RequestRecoveryCode_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_RequestRecoveryCode_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_RequestRecoveryCode_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_RequestRecoveryCode_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_RequestRecoveryCode_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_RequestRecoveryCode_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_RequestRecoveryCode_Response();
            PARSER = new AbstractParser<CParental_RequestRecoveryCode_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestRecoveryCode_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_RequestRecoveryCode_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_RequestRecoveryCode_Response.newBuilder();
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

        private CParental_RequestRecoveryCode_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_RequestRecoveryCode_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestRecoveryCode_Response.class, Builder.class);
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
            if (obj instanceof CParental_RequestRecoveryCode_Response) {
                return getUnknownFields().equals(((CParental_RequestRecoveryCode_Response) obj).getUnknownFields());
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

        public static CParental_RequestRecoveryCode_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestRecoveryCode_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestRecoveryCode_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestRecoveryCode_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_RequestRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_RequestRecoveryCode_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_RequestRecoveryCode_Response cParental_RequestRecoveryCode_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_RequestRecoveryCode_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestRecoveryCode_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestRecoveryCode_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_RequestRecoveryCode_Response getDefaultInstanceForType() {
                return CParental_RequestRecoveryCode_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestRecoveryCode_Response build() {
                CParental_RequestRecoveryCode_Response cParental_RequestRecoveryCode_ResponseBuildPartial = buildPartial();
                if (cParental_RequestRecoveryCode_ResponseBuildPartial.isInitialized()) {
                    return cParental_RequestRecoveryCode_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_RequestRecoveryCode_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestRecoveryCode_Response buildPartial() {
                CParental_RequestRecoveryCode_Response cParental_RequestRecoveryCode_Response = new CParental_RequestRecoveryCode_Response(this);
                onBuilt();
                return cParental_RequestRecoveryCode_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_RequestRecoveryCode_Response) {
                    return mergeFrom((CParental_RequestRecoveryCode_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_RequestRecoveryCode_Response cParental_RequestRecoveryCode_Response) {
                if (cParental_RequestRecoveryCode_Response == CParental_RequestRecoveryCode_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_RequestRecoveryCode_Response.getUnknownFields());
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

        public static CParental_RequestRecoveryCode_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_RequestRecoveryCode_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_RequestRecoveryCode_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_RequestRecoveryCode_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_DisableWithRecoveryCode_Request extends GeneratedMessage implements CParental_DisableWithRecoveryCode_RequestOrBuilder {
        private static final CParental_DisableWithRecoveryCode_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_DisableWithRecoveryCode_Request> PARSER;
        public static final int RECOVERY_CODE_FIELD_NUMBER = 1;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int recoveryCode_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_DisableWithRecoveryCode_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_DisableWithRecoveryCode_Request();
            PARSER = new AbstractParser<CParental_DisableWithRecoveryCode_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_DisableWithRecoveryCode_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_DisableWithRecoveryCode_Request.newBuilder();
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

        private CParental_DisableWithRecoveryCode_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.recoveryCode_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_DisableWithRecoveryCode_Request() {
            this.recoveryCode_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableWithRecoveryCode_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
        public boolean hasRecoveryCode() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
        public int getRecoveryCode() {
            return this.recoveryCode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
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
                codedOutputStream.writeUInt32(1, this.recoveryCode_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.recoveryCode_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_DisableWithRecoveryCode_Request)) {
                return super.equals(obj);
            }
            CParental_DisableWithRecoveryCode_Request cParental_DisableWithRecoveryCode_Request = (CParental_DisableWithRecoveryCode_Request) obj;
            if (hasRecoveryCode() != cParental_DisableWithRecoveryCode_Request.hasRecoveryCode()) {
                return false;
            }
            if ((!hasRecoveryCode() || getRecoveryCode() == cParental_DisableWithRecoveryCode_Request.getRecoveryCode()) && hasSteamid() == cParental_DisableWithRecoveryCode_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_DisableWithRecoveryCode_Request.getSteamid()) && getUnknownFields().equals(cParental_DisableWithRecoveryCode_Request.getUnknownFields());
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
            if (hasRecoveryCode()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getRecoveryCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableWithRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableWithRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableWithRecoveryCode_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableWithRecoveryCode_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableWithRecoveryCode_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_DisableWithRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_DisableWithRecoveryCode_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableWithRecoveryCode_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_DisableWithRecoveryCode_Request cParental_DisableWithRecoveryCode_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_DisableWithRecoveryCode_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_DisableWithRecoveryCode_RequestOrBuilder {
            private int bitField0_;
            private int recoveryCode_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableWithRecoveryCode_Request.class, Builder.class);
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
                this.recoveryCode_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_DisableWithRecoveryCode_Request getDefaultInstanceForType() {
                return CParental_DisableWithRecoveryCode_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableWithRecoveryCode_Request build() {
                CParental_DisableWithRecoveryCode_Request cParental_DisableWithRecoveryCode_RequestBuildPartial = buildPartial();
                if (cParental_DisableWithRecoveryCode_RequestBuildPartial.isInitialized()) {
                    return cParental_DisableWithRecoveryCode_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_DisableWithRecoveryCode_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableWithRecoveryCode_Request buildPartial() {
                CParental_DisableWithRecoveryCode_Request cParental_DisableWithRecoveryCode_Request = new CParental_DisableWithRecoveryCode_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_DisableWithRecoveryCode_Request);
                }
                onBuilt();
                return cParental_DisableWithRecoveryCode_Request;
            }

            private void buildPartial0(CParental_DisableWithRecoveryCode_Request cParental_DisableWithRecoveryCode_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_DisableWithRecoveryCode_Request.recoveryCode_ = this.recoveryCode_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_DisableWithRecoveryCode_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                cParental_DisableWithRecoveryCode_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_DisableWithRecoveryCode_Request) {
                    return mergeFrom((CParental_DisableWithRecoveryCode_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_DisableWithRecoveryCode_Request cParental_DisableWithRecoveryCode_Request) {
                if (cParental_DisableWithRecoveryCode_Request == CParental_DisableWithRecoveryCode_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_DisableWithRecoveryCode_Request.hasRecoveryCode()) {
                    setRecoveryCode(cParental_DisableWithRecoveryCode_Request.getRecoveryCode());
                }
                if (cParental_DisableWithRecoveryCode_Request.hasSteamid()) {
                    setSteamid(cParental_DisableWithRecoveryCode_Request.getSteamid());
                }
                mergeUnknownFields(cParental_DisableWithRecoveryCode_Request.getUnknownFields());
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
                                    this.recoveryCode_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
            public boolean hasRecoveryCode() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
            public int getRecoveryCode() {
                return this.recoveryCode_;
            }

            public Builder setRecoveryCode(int i) {
                this.recoveryCode_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRecoveryCode() {
                this.bitField0_ &= -2;
                this.recoveryCode_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_RequestOrBuilder
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

        public static CParental_DisableWithRecoveryCode_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_DisableWithRecoveryCode_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_DisableWithRecoveryCode_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_DisableWithRecoveryCode_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_DisableWithRecoveryCode_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_DisableWithRecoveryCode_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_DisableWithRecoveryCode_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_DisableWithRecoveryCode_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_DisableWithRecoveryCode_Response();
            PARSER = new AbstractParser<CParental_DisableWithRecoveryCode_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_DisableWithRecoveryCode_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_DisableWithRecoveryCode_Response.newBuilder();
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

        private CParental_DisableWithRecoveryCode_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_DisableWithRecoveryCode_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableWithRecoveryCode_Response.class, Builder.class);
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
            if (obj instanceof CParental_DisableWithRecoveryCode_Response) {
                return getUnknownFields().equals(((CParental_DisableWithRecoveryCode_Response) obj).getUnknownFields());
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

        public static CParental_DisableWithRecoveryCode_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableWithRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableWithRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_DisableWithRecoveryCode_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_DisableWithRecoveryCode_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableWithRecoveryCode_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_DisableWithRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_DisableWithRecoveryCode_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_DisableWithRecoveryCode_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_DisableWithRecoveryCode_Response cParental_DisableWithRecoveryCode_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_DisableWithRecoveryCode_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_DisableWithRecoveryCode_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_DisableWithRecoveryCode_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_DisableWithRecoveryCode_Response getDefaultInstanceForType() {
                return CParental_DisableWithRecoveryCode_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableWithRecoveryCode_Response build() {
                CParental_DisableWithRecoveryCode_Response cParental_DisableWithRecoveryCode_ResponseBuildPartial = buildPartial();
                if (cParental_DisableWithRecoveryCode_ResponseBuildPartial.isInitialized()) {
                    return cParental_DisableWithRecoveryCode_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_DisableWithRecoveryCode_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_DisableWithRecoveryCode_Response buildPartial() {
                CParental_DisableWithRecoveryCode_Response cParental_DisableWithRecoveryCode_Response = new CParental_DisableWithRecoveryCode_Response(this);
                onBuilt();
                return cParental_DisableWithRecoveryCode_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_DisableWithRecoveryCode_Response) {
                    return mergeFrom((CParental_DisableWithRecoveryCode_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_DisableWithRecoveryCode_Response cParental_DisableWithRecoveryCode_Response) {
                if (cParental_DisableWithRecoveryCode_Response == CParental_DisableWithRecoveryCode_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_DisableWithRecoveryCode_Response.getUnknownFields());
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

        public static CParental_DisableWithRecoveryCode_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_DisableWithRecoveryCode_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_DisableWithRecoveryCode_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_DisableWithRecoveryCode_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_RequestFeatureAccess_Request extends GeneratedMessage implements CParental_RequestFeatureAccess_RequestOrBuilder {
        private static final CParental_RequestFeatureAccess_Request DEFAULT_INSTANCE;
        public static final int FEATURES_FIELD_NUMBER = 1;
        private static final Parser<CParental_RequestFeatureAccess_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int features_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_RequestFeatureAccess_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_RequestFeatureAccess_Request();
            PARSER = new AbstractParser<CParental_RequestFeatureAccess_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_RequestFeatureAccess_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_RequestFeatureAccess_Request.newBuilder();
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

        private CParental_RequestFeatureAccess_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.features_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_RequestFeatureAccess_Request() {
            this.features_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestFeatureAccess_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
        public boolean hasFeatures() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
        public int getFeatures() {
            return this.features_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
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
                codedOutputStream.writeUInt32(1, this.features_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.features_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_RequestFeatureAccess_Request)) {
                return super.equals(obj);
            }
            CParental_RequestFeatureAccess_Request cParental_RequestFeatureAccess_Request = (CParental_RequestFeatureAccess_Request) obj;
            if (hasFeatures() != cParental_RequestFeatureAccess_Request.hasFeatures()) {
                return false;
            }
            if ((!hasFeatures() || getFeatures() == cParental_RequestFeatureAccess_Request.getFeatures()) && hasSteamid() == cParental_RequestFeatureAccess_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_RequestFeatureAccess_Request.getSteamid()) && getUnknownFields().equals(cParental_RequestFeatureAccess_Request.getUnknownFields());
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
            if (hasFeatures()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getFeatures();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestFeatureAccess_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestFeatureAccess_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestFeatureAccess_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_RequestFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_RequestFeatureAccess_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_RequestFeatureAccess_Request cParental_RequestFeatureAccess_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_RequestFeatureAccess_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_RequestFeatureAccess_RequestOrBuilder {
            private int bitField0_;
            private int features_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestFeatureAccess_Request.class, Builder.class);
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
                this.features_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_RequestFeatureAccess_Request getDefaultInstanceForType() {
                return CParental_RequestFeatureAccess_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestFeatureAccess_Request build() {
                CParental_RequestFeatureAccess_Request cParental_RequestFeatureAccess_RequestBuildPartial = buildPartial();
                if (cParental_RequestFeatureAccess_RequestBuildPartial.isInitialized()) {
                    return cParental_RequestFeatureAccess_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_RequestFeatureAccess_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestFeatureAccess_Request buildPartial() {
                CParental_RequestFeatureAccess_Request cParental_RequestFeatureAccess_Request = new CParental_RequestFeatureAccess_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_RequestFeatureAccess_Request);
                }
                onBuilt();
                return cParental_RequestFeatureAccess_Request;
            }

            private void buildPartial0(CParental_RequestFeatureAccess_Request cParental_RequestFeatureAccess_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_RequestFeatureAccess_Request.features_ = this.features_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_RequestFeatureAccess_Request.steamid_ = this.steamid_;
                    i |= 2;
                }
                cParental_RequestFeatureAccess_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_RequestFeatureAccess_Request) {
                    return mergeFrom((CParental_RequestFeatureAccess_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_RequestFeatureAccess_Request cParental_RequestFeatureAccess_Request) {
                if (cParental_RequestFeatureAccess_Request == CParental_RequestFeatureAccess_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_RequestFeatureAccess_Request.hasFeatures()) {
                    setFeatures(cParental_RequestFeatureAccess_Request.getFeatures());
                }
                if (cParental_RequestFeatureAccess_Request.hasSteamid()) {
                    setSteamid(cParental_RequestFeatureAccess_Request.getSteamid());
                }
                mergeUnknownFields(cParental_RequestFeatureAccess_Request.getUnknownFields());
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
                                    this.features_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
            public boolean hasFeatures() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
            public int getFeatures() {
                return this.features_;
            }

            public Builder setFeatures(int i) {
                this.features_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearFeatures() {
                this.bitField0_ &= -2;
                this.features_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_RequestOrBuilder
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

        public static CParental_RequestFeatureAccess_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_RequestFeatureAccess_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_RequestFeatureAccess_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_RequestFeatureAccess_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_RequestFeatureAccess_Response extends GeneratedMessage implements CParental_RequestFeatureAccess_ResponseOrBuilder {
        private static final CParental_RequestFeatureAccess_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_RequestFeatureAccess_Response> PARSER;
        public static final int REQUESTID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long requestid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_RequestFeatureAccess_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_RequestFeatureAccess_Response();
            PARSER = new AbstractParser<CParental_RequestFeatureAccess_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_RequestFeatureAccess_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_RequestFeatureAccess_Response.newBuilder();
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

        private CParental_RequestFeatureAccess_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.requestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_RequestFeatureAccess_Response() {
            this.requestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestFeatureAccess_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_ResponseOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_ResponseOrBuilder
        public long getRequestid() {
            return this.requestid_;
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
                codedOutputStream.writeFixed64(1, this.requestid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.requestid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_RequestFeatureAccess_Response)) {
                return super.equals(obj);
            }
            CParental_RequestFeatureAccess_Response cParental_RequestFeatureAccess_Response = (CParental_RequestFeatureAccess_Response) obj;
            if (hasRequestid() != cParental_RequestFeatureAccess_Response.hasRequestid()) {
                return false;
            }
            return (!hasRequestid() || getRequestid() == cParental_RequestFeatureAccess_Response.getRequestid()) && getUnknownFields().equals(cParental_RequestFeatureAccess_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRequestid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestFeatureAccess_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestFeatureAccess_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestFeatureAccess_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_RequestFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_RequestFeatureAccess_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_RequestFeatureAccess_Response cParental_RequestFeatureAccess_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_RequestFeatureAccess_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_RequestFeatureAccess_ResponseOrBuilder {
            private int bitField0_;
            private long requestid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestFeatureAccess_Response.class, Builder.class);
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
                this.requestid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestFeatureAccess_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_RequestFeatureAccess_Response getDefaultInstanceForType() {
                return CParental_RequestFeatureAccess_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestFeatureAccess_Response build() {
                CParental_RequestFeatureAccess_Response cParental_RequestFeatureAccess_ResponseBuildPartial = buildPartial();
                if (cParental_RequestFeatureAccess_ResponseBuildPartial.isInitialized()) {
                    return cParental_RequestFeatureAccess_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_RequestFeatureAccess_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestFeatureAccess_Response buildPartial() {
                CParental_RequestFeatureAccess_Response cParental_RequestFeatureAccess_Response = new CParental_RequestFeatureAccess_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_RequestFeatureAccess_Response);
                }
                onBuilt();
                return cParental_RequestFeatureAccess_Response;
            }

            private void buildPartial0(CParental_RequestFeatureAccess_Response cParental_RequestFeatureAccess_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_RequestFeatureAccess_Response.requestid_ = this.requestid_;
                } else {
                    i = 0;
                }
                cParental_RequestFeatureAccess_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_RequestFeatureAccess_Response) {
                    return mergeFrom((CParental_RequestFeatureAccess_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_RequestFeatureAccess_Response cParental_RequestFeatureAccess_Response) {
                if (cParental_RequestFeatureAccess_Response == CParental_RequestFeatureAccess_Response.getDefaultInstance()) {
                    return this;
                }
                if (cParental_RequestFeatureAccess_Response.hasRequestid()) {
                    setRequestid(cParental_RequestFeatureAccess_Response.getRequestid());
                }
                mergeUnknownFields(cParental_RequestFeatureAccess_Response.getUnknownFields());
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
                                    this.requestid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_ResponseOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_ResponseOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -2;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CParental_RequestFeatureAccess_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_RequestFeatureAccess_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_RequestFeatureAccess_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_RequestFeatureAccess_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ApproveFeatureAccess_Request extends GeneratedMessage implements CParental_ApproveFeatureAccess_RequestOrBuilder {
        public static final int APPROVE_FIELD_NUMBER = 1;
        private static final CParental_ApproveFeatureAccess_Request DEFAULT_INSTANCE;
        public static final int DURATION_FIELD_NUMBER = 4;
        public static final int FEATURES_FIELD_NUMBER = 3;
        private static final Parser<CParental_ApproveFeatureAccess_Request> PARSER;
        public static final int REQUESTID_FIELD_NUMBER = 2;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private boolean approve_;
        private int bitField0_;
        private int duration_;
        private int features_;
        private byte memoizedIsInitialized;
        private long requestid_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ApproveFeatureAccess_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_ApproveFeatureAccess_Request();
            PARSER = new AbstractParser<CParental_ApproveFeatureAccess_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_ApproveFeatureAccess_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ApproveFeatureAccess_Request.newBuilder();
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

        private CParental_ApproveFeatureAccess_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.approve_ = false;
            this.requestid_ = 0L;
            this.features_ = 0;
            this.duration_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ApproveFeatureAccess_Request() {
            this.approve_ = false;
            this.requestid_ = 0L;
            this.features_ = 0;
            this.duration_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApproveFeatureAccess_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public boolean hasApprove() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public boolean getApprove() {
            return this.approve_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public long getRequestid() {
            return this.requestid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public boolean hasFeatures() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public int getFeatures() {
            return this.features_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public boolean hasDuration() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public int getDuration() {
            return this.duration_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
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
                codedOutputStream.writeBool(1, this.approve_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.requestid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.features_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.duration_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.approve_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeFixed64Size(2, this.requestid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(3, this.features_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(4, this.duration_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeBoolSize += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_ApproveFeatureAccess_Request)) {
                return super.equals(obj);
            }
            CParental_ApproveFeatureAccess_Request cParental_ApproveFeatureAccess_Request = (CParental_ApproveFeatureAccess_Request) obj;
            if (hasApprove() != cParental_ApproveFeatureAccess_Request.hasApprove()) {
                return false;
            }
            if ((hasApprove() && getApprove() != cParental_ApproveFeatureAccess_Request.getApprove()) || hasRequestid() != cParental_ApproveFeatureAccess_Request.hasRequestid()) {
                return false;
            }
            if ((hasRequestid() && getRequestid() != cParental_ApproveFeatureAccess_Request.getRequestid()) || hasFeatures() != cParental_ApproveFeatureAccess_Request.hasFeatures()) {
                return false;
            }
            if ((hasFeatures() && getFeatures() != cParental_ApproveFeatureAccess_Request.getFeatures()) || hasDuration() != cParental_ApproveFeatureAccess_Request.hasDuration()) {
                return false;
            }
            if ((!hasDuration() || getDuration() == cParental_ApproveFeatureAccess_Request.getDuration()) && hasSteamid() == cParental_ApproveFeatureAccess_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_ApproveFeatureAccess_Request.getSteamid()) && getUnknownFields().equals(cParental_ApproveFeatureAccess_Request.getUnknownFields());
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
            if (hasApprove()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getApprove());
            }
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getRequestid());
            }
            if (hasFeatures()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getFeatures();
            }
            if (hasDuration()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getDuration();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ApproveFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApproveFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ApproveFeatureAccess_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ApproveFeatureAccess_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApproveFeatureAccess_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ApproveFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ApproveFeatureAccess_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApproveFeatureAccess_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ApproveFeatureAccess_Request cParental_ApproveFeatureAccess_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ApproveFeatureAccess_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ApproveFeatureAccess_RequestOrBuilder {
            private boolean approve_;
            private int bitField0_;
            private int duration_;
            private int features_;
            private long requestid_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApproveFeatureAccess_Request.class, Builder.class);
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
                this.approve_ = false;
                this.requestid_ = 0L;
                this.features_ = 0;
                this.duration_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ApproveFeatureAccess_Request getDefaultInstanceForType() {
                return CParental_ApproveFeatureAccess_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApproveFeatureAccess_Request build() {
                CParental_ApproveFeatureAccess_Request cParental_ApproveFeatureAccess_RequestBuildPartial = buildPartial();
                if (cParental_ApproveFeatureAccess_RequestBuildPartial.isInitialized()) {
                    return cParental_ApproveFeatureAccess_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ApproveFeatureAccess_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApproveFeatureAccess_Request buildPartial() {
                CParental_ApproveFeatureAccess_Request cParental_ApproveFeatureAccess_Request = new CParental_ApproveFeatureAccess_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ApproveFeatureAccess_Request);
                }
                onBuilt();
                return cParental_ApproveFeatureAccess_Request;
            }

            private void buildPartial0(CParental_ApproveFeatureAccess_Request cParental_ApproveFeatureAccess_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_ApproveFeatureAccess_Request.approve_ = this.approve_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_ApproveFeatureAccess_Request.requestid_ = this.requestid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cParental_ApproveFeatureAccess_Request.features_ = this.features_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cParental_ApproveFeatureAccess_Request.duration_ = this.duration_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cParental_ApproveFeatureAccess_Request.steamid_ = this.steamid_;
                    i |= 16;
                }
                cParental_ApproveFeatureAccess_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ApproveFeatureAccess_Request) {
                    return mergeFrom((CParental_ApproveFeatureAccess_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ApproveFeatureAccess_Request cParental_ApproveFeatureAccess_Request) {
                if (cParental_ApproveFeatureAccess_Request == CParental_ApproveFeatureAccess_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ApproveFeatureAccess_Request.hasApprove()) {
                    setApprove(cParental_ApproveFeatureAccess_Request.getApprove());
                }
                if (cParental_ApproveFeatureAccess_Request.hasRequestid()) {
                    setRequestid(cParental_ApproveFeatureAccess_Request.getRequestid());
                }
                if (cParental_ApproveFeatureAccess_Request.hasFeatures()) {
                    setFeatures(cParental_ApproveFeatureAccess_Request.getFeatures());
                }
                if (cParental_ApproveFeatureAccess_Request.hasDuration()) {
                    setDuration(cParental_ApproveFeatureAccess_Request.getDuration());
                }
                if (cParental_ApproveFeatureAccess_Request.hasSteamid()) {
                    setSteamid(cParental_ApproveFeatureAccess_Request.getSteamid());
                }
                mergeUnknownFields(cParental_ApproveFeatureAccess_Request.getUnknownFields());
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
                                    this.approve_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.requestid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.features_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.duration_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public boolean hasApprove() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public boolean getApprove() {
                return this.approve_;
            }

            public Builder setApprove(boolean z) {
                this.approve_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearApprove() {
                this.bitField0_ &= -2;
                this.approve_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -3;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public boolean hasFeatures() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public int getFeatures() {
                return this.features_;
            }

            public Builder setFeatures(int i) {
                this.features_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearFeatures() {
                this.bitField0_ &= -5;
                this.features_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public boolean hasDuration() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public int getDuration() {
                return this.duration_;
            }

            public Builder setDuration(int i) {
                this.duration_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearDuration() {
                this.bitField0_ &= -9;
                this.duration_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_RequestOrBuilder
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

        public static CParental_ApproveFeatureAccess_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ApproveFeatureAccess_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ApproveFeatureAccess_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ApproveFeatureAccess_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ApproveFeatureAccess_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_ApproveFeatureAccess_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_ApproveFeatureAccess_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ApproveFeatureAccess_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_ApproveFeatureAccess_Response();
            PARSER = new AbstractParser<CParental_ApproveFeatureAccess_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_ApproveFeatureAccess_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ApproveFeatureAccess_Response.newBuilder();
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

        private CParental_ApproveFeatureAccess_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ApproveFeatureAccess_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApproveFeatureAccess_Response.class, Builder.class);
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
            if (obj instanceof CParental_ApproveFeatureAccess_Response) {
                return getUnknownFields().equals(((CParental_ApproveFeatureAccess_Response) obj).getUnknownFields());
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

        public static CParental_ApproveFeatureAccess_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ApproveFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApproveFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ApproveFeatureAccess_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ApproveFeatureAccess_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApproveFeatureAccess_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ApproveFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ApproveFeatureAccess_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApproveFeatureAccess_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ApproveFeatureAccess_Response cParental_ApproveFeatureAccess_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ApproveFeatureAccess_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApproveFeatureAccess_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ApproveFeatureAccess_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ApproveFeatureAccess_Response getDefaultInstanceForType() {
                return CParental_ApproveFeatureAccess_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApproveFeatureAccess_Response build() {
                CParental_ApproveFeatureAccess_Response cParental_ApproveFeatureAccess_ResponseBuildPartial = buildPartial();
                if (cParental_ApproveFeatureAccess_ResponseBuildPartial.isInitialized()) {
                    return cParental_ApproveFeatureAccess_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ApproveFeatureAccess_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApproveFeatureAccess_Response buildPartial() {
                CParental_ApproveFeatureAccess_Response cParental_ApproveFeatureAccess_Response = new CParental_ApproveFeatureAccess_Response(this);
                onBuilt();
                return cParental_ApproveFeatureAccess_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ApproveFeatureAccess_Response) {
                    return mergeFrom((CParental_ApproveFeatureAccess_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ApproveFeatureAccess_Response cParental_ApproveFeatureAccess_Response) {
                if (cParental_ApproveFeatureAccess_Response == CParental_ApproveFeatureAccess_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_ApproveFeatureAccess_Response.getUnknownFields());
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

        public static CParental_ApproveFeatureAccess_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ApproveFeatureAccess_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ApproveFeatureAccess_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ApproveFeatureAccess_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_RequestPlaytime_Request extends GeneratedMessage implements CParental_RequestPlaytime_RequestOrBuilder {
        public static final int CURRENT_PLAYTIME_RESTRICTIONS_FIELD_NUMBER = 2;
        private static final CParental_RequestPlaytime_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_RequestPlaytime_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 10;
        public static final int TIME_EXPIRES_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private SteammessagesParentalObjects.ParentalPlaytimeDay currentPlaytimeRestrictions_;
        private byte memoizedIsInitialized;
        private long steamid_;
        private int timeExpires_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_RequestPlaytime_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_RequestPlaytime_Request();
            PARSER = new AbstractParser<CParental_RequestPlaytime_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_RequestPlaytime_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_RequestPlaytime_Request.newBuilder();
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

        private CParental_RequestPlaytime_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.timeExpires_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_RequestPlaytime_Request() {
            this.timeExpires_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestPlaytime_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
        public boolean hasTimeExpires() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
        public int getTimeExpires() {
            return this.timeExpires_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
        public boolean hasCurrentPlaytimeRestrictions() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalPlaytimeDay getCurrentPlaytimeRestrictions() {
            SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
            return parentalPlaytimeDay == null ? SteammessagesParentalObjects.ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder getCurrentPlaytimeRestrictionsOrBuilder() {
            SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
            return parentalPlaytimeDay == null ? SteammessagesParentalObjects.ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
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
                codedOutputStream.writeUInt32(1, this.timeExpires_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(2, getCurrentPlaytimeRestrictions());
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.timeExpires_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(2, getCurrentPlaytimeRestrictions());
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_RequestPlaytime_Request)) {
                return super.equals(obj);
            }
            CParental_RequestPlaytime_Request cParental_RequestPlaytime_Request = (CParental_RequestPlaytime_Request) obj;
            if (hasTimeExpires() != cParental_RequestPlaytime_Request.hasTimeExpires()) {
                return false;
            }
            if ((hasTimeExpires() && getTimeExpires() != cParental_RequestPlaytime_Request.getTimeExpires()) || hasCurrentPlaytimeRestrictions() != cParental_RequestPlaytime_Request.hasCurrentPlaytimeRestrictions()) {
                return false;
            }
            if ((!hasCurrentPlaytimeRestrictions() || getCurrentPlaytimeRestrictions().equals(cParental_RequestPlaytime_Request.getCurrentPlaytimeRestrictions())) && hasSteamid() == cParental_RequestPlaytime_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_RequestPlaytime_Request.getSteamid()) && getUnknownFields().equals(cParental_RequestPlaytime_Request.getUnknownFields());
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
            if (hasTimeExpires()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getTimeExpires();
            }
            if (hasCurrentPlaytimeRestrictions()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getCurrentPlaytimeRestrictions().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_RequestPlaytime_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_RequestPlaytime_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_RequestPlaytime_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_RequestPlaytime_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestPlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestPlaytime_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestPlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestPlaytime_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestPlaytime_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestPlaytime_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_RequestPlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_RequestPlaytime_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestPlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_RequestPlaytime_Request cParental_RequestPlaytime_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_RequestPlaytime_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_RequestPlaytime_RequestOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> currentPlaytimeRestrictionsBuilder_;
            private SteammessagesParentalObjects.ParentalPlaytimeDay currentPlaytimeRestrictions_;
            private long steamid_;
            private int timeExpires_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestPlaytime_Request.class, Builder.class);
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
                    internalGetCurrentPlaytimeRestrictionsFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.timeExpires_ = 0;
                this.currentPlaytimeRestrictions_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.currentPlaytimeRestrictionsBuilder_ = null;
                }
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_RequestPlaytime_Request getDefaultInstanceForType() {
                return CParental_RequestPlaytime_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestPlaytime_Request build() {
                CParental_RequestPlaytime_Request cParental_RequestPlaytime_RequestBuildPartial = buildPartial();
                if (cParental_RequestPlaytime_RequestBuildPartial.isInitialized()) {
                    return cParental_RequestPlaytime_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_RequestPlaytime_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestPlaytime_Request buildPartial() {
                CParental_RequestPlaytime_Request cParental_RequestPlaytime_Request = new CParental_RequestPlaytime_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_RequestPlaytime_Request);
                }
                onBuilt();
                return cParental_RequestPlaytime_Request;
            }

            private void buildPartial0(CParental_RequestPlaytime_Request cParental_RequestPlaytime_Request) {
                int i;
                SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_RequestPlaytime_Request.timeExpires_ = this.timeExpires_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
                    } else {
                        parentalPlaytimeDay = (SteammessagesParentalObjects.ParentalPlaytimeDay) singleFieldBuilder.build();
                    }
                    cParental_RequestPlaytime_Request.currentPlaytimeRestrictions_ = parentalPlaytimeDay;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cParental_RequestPlaytime_Request.steamid_ = this.steamid_;
                    i |= 4;
                }
                cParental_RequestPlaytime_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_RequestPlaytime_Request) {
                    return mergeFrom((CParental_RequestPlaytime_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_RequestPlaytime_Request cParental_RequestPlaytime_Request) {
                if (cParental_RequestPlaytime_Request == CParental_RequestPlaytime_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_RequestPlaytime_Request.hasTimeExpires()) {
                    setTimeExpires(cParental_RequestPlaytime_Request.getTimeExpires());
                }
                if (cParental_RequestPlaytime_Request.hasCurrentPlaytimeRestrictions()) {
                    mergeCurrentPlaytimeRestrictions(cParental_RequestPlaytime_Request.getCurrentPlaytimeRestrictions());
                }
                if (cParental_RequestPlaytime_Request.hasSteamid()) {
                    setSteamid(cParental_RequestPlaytime_Request.getSteamid());
                }
                mergeUnknownFields(cParental_RequestPlaytime_Request.getUnknownFields());
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
                                    this.timeExpires_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    codedInputStream.readMessage(internalGetCurrentPlaytimeRestrictionsFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 2;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
            public boolean hasTimeExpires() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
            public int getTimeExpires() {
                return this.timeExpires_;
            }

            public Builder setTimeExpires(int i) {
                this.timeExpires_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearTimeExpires() {
                this.bitField0_ &= -2;
                this.timeExpires_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
            public boolean hasCurrentPlaytimeRestrictions() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalPlaytimeDay getCurrentPlaytimeRestrictions() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
                    return parentalPlaytimeDay == null ? SteammessagesParentalObjects.ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
                }
                return (SteammessagesParentalObjects.ParentalPlaytimeDay) singleFieldBuilder.getMessage();
            }

            public Builder setCurrentPlaytimeRestrictions(SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    parentalPlaytimeDay.getClass();
                    this.currentPlaytimeRestrictions_ = parentalPlaytimeDay;
                } else {
                    singleFieldBuilder.setMessage(parentalPlaytimeDay);
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setCurrentPlaytimeRestrictions(SteammessagesParentalObjects.ParentalPlaytimeDay.Builder builder) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    this.currentPlaytimeRestrictions_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder mergeCurrentPlaytimeRestrictions(SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay) {
                SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay2;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0 && (parentalPlaytimeDay2 = this.currentPlaytimeRestrictions_) != null && parentalPlaytimeDay2 != SteammessagesParentalObjects.ParentalPlaytimeDay.getDefaultInstance()) {
                        getCurrentPlaytimeRestrictionsBuilder().mergeFrom(parentalPlaytimeDay);
                    } else {
                        this.currentPlaytimeRestrictions_ = parentalPlaytimeDay;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalPlaytimeDay);
                }
                if (this.currentPlaytimeRestrictions_ != null) {
                    this.bitField0_ |= 2;
                    onChanged();
                }
                return this;
            }

            public Builder clearCurrentPlaytimeRestrictions() {
                this.bitField0_ &= -3;
                this.currentPlaytimeRestrictions_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.currentPlaytimeRestrictionsBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesParentalObjects.ParentalPlaytimeDay.Builder getCurrentPlaytimeRestrictionsBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (SteammessagesParentalObjects.ParentalPlaytimeDay.Builder) internalGetCurrentPlaytimeRestrictionsFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder getCurrentPlaytimeRestrictionsOrBuilder() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> singleFieldBuilder = this.currentPlaytimeRestrictionsBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesParentalObjects.ParentalPlaytimeDay parentalPlaytimeDay = this.currentPlaytimeRestrictions_;
                return parentalPlaytimeDay == null ? SteammessagesParentalObjects.ParentalPlaytimeDay.getDefaultInstance() : parentalPlaytimeDay;
            }

            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeDay, SteammessagesParentalObjects.ParentalPlaytimeDay.Builder, SteammessagesParentalObjects.ParentalPlaytimeDayOrBuilder> internalGetCurrentPlaytimeRestrictionsFieldBuilder() {
                if (this.currentPlaytimeRestrictionsBuilder_ == null) {
                    this.currentPlaytimeRestrictionsBuilder_ = new SingleFieldBuilder<>(getCurrentPlaytimeRestrictions(), getParentForChildren(), isClean());
                    this.currentPlaytimeRestrictions_ = null;
                }
                return this.currentPlaytimeRestrictionsBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_RequestOrBuilder
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

        public static CParental_RequestPlaytime_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_RequestPlaytime_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_RequestPlaytime_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_RequestPlaytime_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_RequestPlaytime_Response extends GeneratedMessage implements CParental_RequestPlaytime_ResponseOrBuilder {
        private static final CParental_RequestPlaytime_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_RequestPlaytime_Response> PARSER;
        public static final int REQUESTID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long requestid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_RequestPlaytime_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_RequestPlaytime_Response();
            PARSER = new AbstractParser<CParental_RequestPlaytime_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_RequestPlaytime_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_RequestPlaytime_Response.newBuilder();
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

        private CParental_RequestPlaytime_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.requestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_RequestPlaytime_Response() {
            this.requestid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestPlaytime_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_ResponseOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_ResponseOrBuilder
        public long getRequestid() {
            return this.requestid_;
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
                codedOutputStream.writeFixed64(1, this.requestid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeFixed64Size(1, this.requestid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeFixed64Size;
            return iComputeFixed64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_RequestPlaytime_Response)) {
                return super.equals(obj);
            }
            CParental_RequestPlaytime_Response cParental_RequestPlaytime_Response = (CParental_RequestPlaytime_Response) obj;
            if (hasRequestid() != cParental_RequestPlaytime_Response.hasRequestid()) {
                return false;
            }
            return (!hasRequestid() || getRequestid() == cParental_RequestPlaytime_Response.getRequestid()) && getUnknownFields().equals(cParental_RequestPlaytime_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getRequestid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_RequestPlaytime_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_RequestPlaytime_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_RequestPlaytime_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_RequestPlaytime_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestPlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestPlaytime_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestPlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_RequestPlaytime_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_RequestPlaytime_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestPlaytime_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_RequestPlaytime_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_RequestPlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_RequestPlaytime_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_RequestPlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_RequestPlaytime_Response cParental_RequestPlaytime_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_RequestPlaytime_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_RequestPlaytime_ResponseOrBuilder {
            private int bitField0_;
            private long requestid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_RequestPlaytime_Response.class, Builder.class);
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
                this.requestid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_RequestPlaytime_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_RequestPlaytime_Response getDefaultInstanceForType() {
                return CParental_RequestPlaytime_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestPlaytime_Response build() {
                CParental_RequestPlaytime_Response cParental_RequestPlaytime_ResponseBuildPartial = buildPartial();
                if (cParental_RequestPlaytime_ResponseBuildPartial.isInitialized()) {
                    return cParental_RequestPlaytime_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_RequestPlaytime_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_RequestPlaytime_Response buildPartial() {
                CParental_RequestPlaytime_Response cParental_RequestPlaytime_Response = new CParental_RequestPlaytime_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_RequestPlaytime_Response);
                }
                onBuilt();
                return cParental_RequestPlaytime_Response;
            }

            private void buildPartial0(CParental_RequestPlaytime_Response cParental_RequestPlaytime_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_RequestPlaytime_Response.requestid_ = this.requestid_;
                } else {
                    i = 0;
                }
                cParental_RequestPlaytime_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_RequestPlaytime_Response) {
                    return mergeFrom((CParental_RequestPlaytime_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_RequestPlaytime_Response cParental_RequestPlaytime_Response) {
                if (cParental_RequestPlaytime_Response == CParental_RequestPlaytime_Response.getDefaultInstance()) {
                    return this;
                }
                if (cParental_RequestPlaytime_Response.hasRequestid()) {
                    setRequestid(cParental_RequestPlaytime_Response.getRequestid());
                }
                mergeUnknownFields(cParental_RequestPlaytime_Response.getUnknownFields());
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
                                    this.requestid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_ResponseOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_RequestPlaytime_ResponseOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -2;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CParental_RequestPlaytime_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_RequestPlaytime_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_RequestPlaytime_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_RequestPlaytime_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ApprovePlaytime_Request extends GeneratedMessage implements CParental_ApprovePlaytime_RequestOrBuilder {
        public static final int APPROVE_FIELD_NUMBER = 1;
        private static final CParental_ApprovePlaytime_Request DEFAULT_INSTANCE;
        private static final Parser<CParental_ApprovePlaytime_Request> PARSER;
        public static final int REQUESTID_FIELD_NUMBER = 2;
        public static final int RESTRICTIONS_APPROVED_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private boolean approve_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long requestid_;
        private SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions restrictionsApproved_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ApprovePlaytime_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_ApprovePlaytime_Request();
            PARSER = new AbstractParser<CParental_ApprovePlaytime_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_ApprovePlaytime_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ApprovePlaytime_Request.newBuilder();
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

        private CParental_ApprovePlaytime_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.approve_ = false;
            this.requestid_ = 0L;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ApprovePlaytime_Request() {
            this.approve_ = false;
            this.requestid_ = 0L;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApprovePlaytime_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public boolean hasApprove() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public boolean getApprove() {
            return this.approve_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public boolean hasRequestid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public long getRequestid() {
            return this.requestid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public boolean hasRestrictionsApproved() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions getRestrictionsApproved() {
            SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
            return parentalTemporaryPlaytimeRestrictions == null ? SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder getRestrictionsApprovedOrBuilder() {
            SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
            return parentalTemporaryPlaytimeRestrictions == null ? SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
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
                codedOutputStream.writeBool(1, this.approve_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.requestid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeMessage(3, getRestrictionsApproved());
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.approve_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeFixed64Size(2, this.requestid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(3, getRestrictionsApproved());
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBoolSize += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_ApprovePlaytime_Request)) {
                return super.equals(obj);
            }
            CParental_ApprovePlaytime_Request cParental_ApprovePlaytime_Request = (CParental_ApprovePlaytime_Request) obj;
            if (hasApprove() != cParental_ApprovePlaytime_Request.hasApprove()) {
                return false;
            }
            if ((hasApprove() && getApprove() != cParental_ApprovePlaytime_Request.getApprove()) || hasRequestid() != cParental_ApprovePlaytime_Request.hasRequestid()) {
                return false;
            }
            if ((hasRequestid() && getRequestid() != cParental_ApprovePlaytime_Request.getRequestid()) || hasRestrictionsApproved() != cParental_ApprovePlaytime_Request.hasRestrictionsApproved()) {
                return false;
            }
            if ((!hasRestrictionsApproved() || getRestrictionsApproved().equals(cParental_ApprovePlaytime_Request.getRestrictionsApproved())) && hasSteamid() == cParental_ApprovePlaytime_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_ApprovePlaytime_Request.getSteamid()) && getUnknownFields().equals(cParental_ApprovePlaytime_Request.getUnknownFields());
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
            if (hasApprove()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getApprove());
            }
            if (hasRequestid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getRequestid());
            }
            if (hasRestrictionsApproved()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRestrictionsApproved().hashCode();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ApprovePlaytime_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ApprovePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApprovePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ApprovePlaytime_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ApprovePlaytime_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApprovePlaytime_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ApprovePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ApprovePlaytime_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApprovePlaytime_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ApprovePlaytime_Request cParental_ApprovePlaytime_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ApprovePlaytime_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ApprovePlaytime_RequestOrBuilder {
            private boolean approve_;
            private int bitField0_;
            private long requestid_;
            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> restrictionsApprovedBuilder_;
            private SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions restrictionsApproved_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApprovePlaytime_Request.class, Builder.class);
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
                    internalGetRestrictionsApprovedFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.approve_ = false;
                this.requestid_ = 0L;
                this.restrictionsApproved_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.restrictionsApprovedBuilder_ = null;
                }
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ApprovePlaytime_Request getDefaultInstanceForType() {
                return CParental_ApprovePlaytime_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApprovePlaytime_Request build() {
                CParental_ApprovePlaytime_Request cParental_ApprovePlaytime_RequestBuildPartial = buildPartial();
                if (cParental_ApprovePlaytime_RequestBuildPartial.isInitialized()) {
                    return cParental_ApprovePlaytime_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ApprovePlaytime_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApprovePlaytime_Request buildPartial() {
                CParental_ApprovePlaytime_Request cParental_ApprovePlaytime_Request = new CParental_ApprovePlaytime_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ApprovePlaytime_Request);
                }
                onBuilt();
                return cParental_ApprovePlaytime_Request;
            }

            private void buildPartial0(CParental_ApprovePlaytime_Request cParental_ApprovePlaytime_Request) {
                int i;
                SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_ApprovePlaytime_Request.approve_ = this.approve_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_ApprovePlaytime_Request.requestid_ = this.requestid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                    if (singleFieldBuilder == null) {
                        parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
                    } else {
                        parentalTemporaryPlaytimeRestrictions = (SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions) singleFieldBuilder.build();
                    }
                    cParental_ApprovePlaytime_Request.restrictionsApproved_ = parentalTemporaryPlaytimeRestrictions;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cParental_ApprovePlaytime_Request.steamid_ = this.steamid_;
                    i |= 8;
                }
                cParental_ApprovePlaytime_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ApprovePlaytime_Request) {
                    return mergeFrom((CParental_ApprovePlaytime_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ApprovePlaytime_Request cParental_ApprovePlaytime_Request) {
                if (cParental_ApprovePlaytime_Request == CParental_ApprovePlaytime_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ApprovePlaytime_Request.hasApprove()) {
                    setApprove(cParental_ApprovePlaytime_Request.getApprove());
                }
                if (cParental_ApprovePlaytime_Request.hasRequestid()) {
                    setRequestid(cParental_ApprovePlaytime_Request.getRequestid());
                }
                if (cParental_ApprovePlaytime_Request.hasRestrictionsApproved()) {
                    mergeRestrictionsApproved(cParental_ApprovePlaytime_Request.getRestrictionsApproved());
                }
                if (cParental_ApprovePlaytime_Request.hasSteamid()) {
                    setSteamid(cParental_ApprovePlaytime_Request.getSteamid());
                }
                mergeUnknownFields(cParental_ApprovePlaytime_Request.getUnknownFields());
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
                                    this.approve_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.requestid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    codedInputStream.readMessage(internalGetRestrictionsApprovedFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 4;
                                } else if (tag == 81) {
                                    this.steamid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public boolean hasApprove() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public boolean getApprove() {
                return this.approve_;
            }

            public Builder setApprove(boolean z) {
                this.approve_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearApprove() {
                this.bitField0_ &= -2;
                this.approve_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public boolean hasRequestid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public long getRequestid() {
                return this.requestid_;
            }

            public Builder setRequestid(long j) {
                this.requestid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearRequestid() {
                this.bitField0_ &= -3;
                this.requestid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public boolean hasRestrictionsApproved() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions getRestrictionsApproved() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
                    return parentalTemporaryPlaytimeRestrictions == null ? SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
                }
                return (SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions) singleFieldBuilder.getMessage();
            }

            public Builder setRestrictionsApproved(SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    parentalTemporaryPlaytimeRestrictions.getClass();
                    this.restrictionsApproved_ = parentalTemporaryPlaytimeRestrictions;
                } else {
                    singleFieldBuilder.setMessage(parentalTemporaryPlaytimeRestrictions);
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder setRestrictionsApproved(SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder builder) {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    this.restrictionsApproved_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder mergeRestrictionsApproved(SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions) {
                SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions2;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 0 && (parentalTemporaryPlaytimeRestrictions2 = this.restrictionsApproved_) != null && parentalTemporaryPlaytimeRestrictions2 != SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.getDefaultInstance()) {
                        getRestrictionsApprovedBuilder().mergeFrom(parentalTemporaryPlaytimeRestrictions);
                    } else {
                        this.restrictionsApproved_ = parentalTemporaryPlaytimeRestrictions;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(parentalTemporaryPlaytimeRestrictions);
                }
                if (this.restrictionsApproved_ != null) {
                    this.bitField0_ |= 4;
                    onChanged();
                }
                return this;
            }

            public Builder clearRestrictionsApproved() {
                this.bitField0_ &= -5;
                this.restrictionsApproved_ = null;
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.restrictionsApprovedBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder getRestrictionsApprovedBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder) internalGetRestrictionsApprovedFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder getRestrictionsApprovedOrBuilder() {
                SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> singleFieldBuilder = this.restrictionsApprovedBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions parentalTemporaryPlaytimeRestrictions = this.restrictionsApproved_;
                return parentalTemporaryPlaytimeRestrictions == null ? SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.getDefaultInstance() : parentalTemporaryPlaytimeRestrictions;
            }

            private SingleFieldBuilder<SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictions.Builder, SteammessagesParentalObjects.ParentalTemporaryPlaytimeRestrictionsOrBuilder> internalGetRestrictionsApprovedFieldBuilder() {
                if (this.restrictionsApprovedBuilder_ == null) {
                    this.restrictionsApprovedBuilder_ = new SingleFieldBuilder<>(getRestrictionsApproved(), getParentForChildren(), isClean());
                    this.restrictionsApproved_ = null;
                }
                return this.restrictionsApprovedBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_RequestOrBuilder
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
        }

        public static CParental_ApprovePlaytime_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ApprovePlaytime_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ApprovePlaytime_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ApprovePlaytime_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ApprovePlaytime_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_ApprovePlaytime_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_ApprovePlaytime_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ApprovePlaytime_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_ApprovePlaytime_Response();
            PARSER = new AbstractParser<CParental_ApprovePlaytime_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ApprovePlaytime_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_ApprovePlaytime_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ApprovePlaytime_Response.newBuilder();
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

        private CParental_ApprovePlaytime_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ApprovePlaytime_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApprovePlaytime_Response.class, Builder.class);
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
            if (obj instanceof CParental_ApprovePlaytime_Response) {
                return getUnknownFields().equals(((CParental_ApprovePlaytime_Response) obj).getUnknownFields());
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

        public static CParental_ApprovePlaytime_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ApprovePlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApprovePlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ApprovePlaytime_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ApprovePlaytime_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApprovePlaytime_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ApprovePlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ApprovePlaytime_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ApprovePlaytime_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ApprovePlaytime_Response cParental_ApprovePlaytime_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ApprovePlaytime_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ApprovePlaytime_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ApprovePlaytime_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ApprovePlaytime_Response getDefaultInstanceForType() {
                return CParental_ApprovePlaytime_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApprovePlaytime_Response build() {
                CParental_ApprovePlaytime_Response cParental_ApprovePlaytime_ResponseBuildPartial = buildPartial();
                if (cParental_ApprovePlaytime_ResponseBuildPartial.isInitialized()) {
                    return cParental_ApprovePlaytime_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ApprovePlaytime_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ApprovePlaytime_Response buildPartial() {
                CParental_ApprovePlaytime_Response cParental_ApprovePlaytime_Response = new CParental_ApprovePlaytime_Response(this);
                onBuilt();
                return cParental_ApprovePlaytime_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ApprovePlaytime_Response) {
                    return mergeFrom((CParental_ApprovePlaytime_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ApprovePlaytime_Response cParental_ApprovePlaytime_Response) {
                if (cParental_ApprovePlaytime_Response == CParental_ApprovePlaytime_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_ApprovePlaytime_Response.getUnknownFields());
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

        public static CParental_ApprovePlaytime_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ApprovePlaytime_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ApprovePlaytime_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ApprovePlaytime_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_GetRequests_Request extends GeneratedMessage implements CParental_GetRequests_RequestOrBuilder {
        private static final CParental_GetRequests_Request DEFAULT_INSTANCE;
        public static final int FAMILY_GROUPID_FIELD_NUMBER = 2;
        private static final Parser<CParental_GetRequests_Request> PARSER;
        public static final int RT_INCLUDE_COMPLETED_SINCE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long familyGroupid_;
        private byte memoizedIsInitialized;
        private int rtIncludeCompletedSince_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_GetRequests_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_GetRequests_Request();
            PARSER = new AbstractParser<CParental_GetRequests_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_GetRequests_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_GetRequests_Request.newBuilder();
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

        private CParental_GetRequests_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.rtIncludeCompletedSince_ = 0;
            this.familyGroupid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_GetRequests_Request() {
            this.rtIncludeCompletedSince_ = 0;
            this.familyGroupid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetRequests_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
        public boolean hasRtIncludeCompletedSince() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
        public int getRtIncludeCompletedSince() {
            return this.rtIncludeCompletedSince_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
        public boolean hasFamilyGroupid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
        public long getFamilyGroupid() {
            return this.familyGroupid_;
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
                codedOutputStream.writeUInt32(1, this.rtIncludeCompletedSince_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.familyGroupid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.rtIncludeCompletedSince_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(2, this.familyGroupid_);
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
            if (!(obj instanceof CParental_GetRequests_Request)) {
                return super.equals(obj);
            }
            CParental_GetRequests_Request cParental_GetRequests_Request = (CParental_GetRequests_Request) obj;
            if (hasRtIncludeCompletedSince() != cParental_GetRequests_Request.hasRtIncludeCompletedSince()) {
                return false;
            }
            if ((!hasRtIncludeCompletedSince() || getRtIncludeCompletedSince() == cParental_GetRequests_Request.getRtIncludeCompletedSince()) && hasFamilyGroupid() == cParental_GetRequests_Request.hasFamilyGroupid()) {
                return (!hasFamilyGroupid() || getFamilyGroupid() == cParental_GetRequests_Request.getFamilyGroupid()) && getUnknownFields().equals(cParental_GetRequests_Request.getUnknownFields());
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
            if (hasRtIncludeCompletedSince()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getRtIncludeCompletedSince();
            }
            if (hasFamilyGroupid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getFamilyGroupid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_GetRequests_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_GetRequests_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_GetRequests_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_GetRequests_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_GetRequests_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_GetRequests_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_GetRequests_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_GetRequests_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_GetRequests_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetRequests_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetRequests_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_GetRequests_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_GetRequests_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetRequests_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetRequests_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_GetRequests_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_GetRequests_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetRequests_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_GetRequests_Request cParental_GetRequests_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_GetRequests_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_GetRequests_RequestOrBuilder {
            private int bitField0_;
            private long familyGroupid_;
            private int rtIncludeCompletedSince_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetRequests_Request.class, Builder.class);
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
                this.rtIncludeCompletedSince_ = 0;
                this.familyGroupid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_GetRequests_Request getDefaultInstanceForType() {
                return CParental_GetRequests_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetRequests_Request build() {
                CParental_GetRequests_Request cParental_GetRequests_RequestBuildPartial = buildPartial();
                if (cParental_GetRequests_RequestBuildPartial.isInitialized()) {
                    return cParental_GetRequests_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_GetRequests_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetRequests_Request buildPartial() {
                CParental_GetRequests_Request cParental_GetRequests_Request = new CParental_GetRequests_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_GetRequests_Request);
                }
                onBuilt();
                return cParental_GetRequests_Request;
            }

            private void buildPartial0(CParental_GetRequests_Request cParental_GetRequests_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_GetRequests_Request.rtIncludeCompletedSince_ = this.rtIncludeCompletedSince_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_GetRequests_Request.familyGroupid_ = this.familyGroupid_;
                    i |= 2;
                }
                cParental_GetRequests_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_GetRequests_Request) {
                    return mergeFrom((CParental_GetRequests_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_GetRequests_Request cParental_GetRequests_Request) {
                if (cParental_GetRequests_Request == CParental_GetRequests_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_GetRequests_Request.hasRtIncludeCompletedSince()) {
                    setRtIncludeCompletedSince(cParental_GetRequests_Request.getRtIncludeCompletedSince());
                }
                if (cParental_GetRequests_Request.hasFamilyGroupid()) {
                    setFamilyGroupid(cParental_GetRequests_Request.getFamilyGroupid());
                }
                mergeUnknownFields(cParental_GetRequests_Request.getUnknownFields());
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
                                    this.rtIncludeCompletedSince_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 17) {
                                    this.familyGroupid_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
            public boolean hasRtIncludeCompletedSince() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
            public int getRtIncludeCompletedSince() {
                return this.rtIncludeCompletedSince_;
            }

            public Builder setRtIncludeCompletedSince(int i) {
                this.rtIncludeCompletedSince_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRtIncludeCompletedSince() {
                this.bitField0_ &= -2;
                this.rtIncludeCompletedSince_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
            public boolean hasFamilyGroupid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_RequestOrBuilder
            public long getFamilyGroupid() {
                return this.familyGroupid_;
            }

            public Builder setFamilyGroupid(long j) {
                this.familyGroupid_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearFamilyGroupid() {
                this.bitField0_ &= -3;
                this.familyGroupid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CParental_GetRequests_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_GetRequests_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_GetRequests_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_GetRequests_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_GetRequests_Response extends GeneratedMessage implements CParental_GetRequests_ResponseOrBuilder {
        private static final CParental_GetRequests_Response DEFAULT_INSTANCE;
        public static final int FEATURE_REQUESTS_FIELD_NUMBER = 1;
        private static final Parser<CParental_GetRequests_Response> PARSER;
        public static final int PLAYTIME_REQUESTS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private List<SteammessagesParentalObjects.ParentalFeatureRequest> featureRequests_;
        private byte memoizedIsInitialized;
        private List<SteammessagesParentalObjects.ParentalPlaytimeRequest> playtimeRequests_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_GetRequests_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_GetRequests_Response();
            PARSER = new AbstractParser<CParental_GetRequests_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_GetRequests_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_GetRequests_Response.newBuilder();
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

        private CParental_GetRequests_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_GetRequests_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.featureRequests_ = Collections.emptyList();
            this.playtimeRequests_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetRequests_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public List<SteammessagesParentalObjects.ParentalFeatureRequest> getFeatureRequestsList() {
            return this.featureRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public List<? extends SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> getFeatureRequestsOrBuilderList() {
            return this.featureRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public int getFeatureRequestsCount() {
            return this.featureRequests_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public SteammessagesParentalObjects.ParentalFeatureRequest getFeatureRequests(int i) {
            return this.featureRequests_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder getFeatureRequestsOrBuilder(int i) {
            return this.featureRequests_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public List<SteammessagesParentalObjects.ParentalPlaytimeRequest> getPlaytimeRequestsList() {
            return this.playtimeRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public List<? extends SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> getPlaytimeRequestsOrBuilderList() {
            return this.playtimeRequests_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public int getPlaytimeRequestsCount() {
            return this.playtimeRequests_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public SteammessagesParentalObjects.ParentalPlaytimeRequest getPlaytimeRequests(int i) {
            return this.playtimeRequests_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
        public SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder getPlaytimeRequestsOrBuilder(int i) {
            return this.playtimeRequests_.get(i);
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
            for (int i = 0; i < this.featureRequests_.size(); i++) {
                codedOutputStream.writeMessage(1, this.featureRequests_.get(i));
            }
            for (int i2 = 0; i2 < this.playtimeRequests_.size(); i2++) {
                codedOutputStream.writeMessage(2, this.playtimeRequests_.get(i2));
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
            for (int i2 = 0; i2 < this.featureRequests_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.featureRequests_.get(i2));
            }
            for (int i3 = 0; i3 < this.playtimeRequests_.size(); i3++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, this.playtimeRequests_.get(i3));
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
            if (!(obj instanceof CParental_GetRequests_Response)) {
                return super.equals(obj);
            }
            CParental_GetRequests_Response cParental_GetRequests_Response = (CParental_GetRequests_Response) obj;
            return getFeatureRequestsList().equals(cParental_GetRequests_Response.getFeatureRequestsList()) && getPlaytimeRequestsList().equals(cParental_GetRequests_Response.getPlaytimeRequestsList()) && getUnknownFields().equals(cParental_GetRequests_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getFeatureRequestsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getFeatureRequestsList().hashCode();
            }
            if (getPlaytimeRequestsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getPlaytimeRequestsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_GetRequests_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_GetRequests_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_GetRequests_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_GetRequests_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_GetRequests_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_GetRequests_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_GetRequests_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_GetRequests_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_GetRequests_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetRequests_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetRequests_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_GetRequests_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_GetRequests_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetRequests_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_GetRequests_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_GetRequests_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_GetRequests_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_GetRequests_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_GetRequests_Response cParental_GetRequests_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_GetRequests_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_GetRequests_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> featureRequestsBuilder_;
            private List<SteammessagesParentalObjects.ParentalFeatureRequest> featureRequests_;
            private RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> playtimeRequestsBuilder_;
            private List<SteammessagesParentalObjects.ParentalPlaytimeRequest> playtimeRequests_;

            private void buildPartial0(CParental_GetRequests_Response cParental_GetRequests_Response) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_GetRequests_Response.class, Builder.class);
            }

            private Builder() {
                this.featureRequests_ = Collections.emptyList();
                this.playtimeRequests_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.featureRequests_ = Collections.emptyList();
                this.playtimeRequests_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.featureRequests_ = Collections.emptyList();
                } else {
                    this.featureRequests_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder2 = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    this.playtimeRequests_ = Collections.emptyList();
                } else {
                    this.playtimeRequests_ = null;
                    repeatedFieldBuilder2.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_GetRequests_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_GetRequests_Response getDefaultInstanceForType() {
                return CParental_GetRequests_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetRequests_Response build() {
                CParental_GetRequests_Response cParental_GetRequests_ResponseBuildPartial = buildPartial();
                if (cParental_GetRequests_ResponseBuildPartial.isInitialized()) {
                    return cParental_GetRequests_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_GetRequests_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_GetRequests_Response buildPartial() {
                CParental_GetRequests_Response cParental_GetRequests_Response = new CParental_GetRequests_Response(this);
                buildPartialRepeatedFields(cParental_GetRequests_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_GetRequests_Response);
                }
                onBuilt();
                return cParental_GetRequests_Response;
            }

            private void buildPartialRepeatedFields(CParental_GetRequests_Response cParental_GetRequests_Response) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.featureRequests_ = Collections.unmodifiableList(this.featureRequests_);
                        this.bitField0_ &= -2;
                    }
                    cParental_GetRequests_Response.featureRequests_ = this.featureRequests_;
                } else {
                    cParental_GetRequests_Response.featureRequests_ = repeatedFieldBuilder.build();
                }
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder2 = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder2 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.playtimeRequests_ = Collections.unmodifiableList(this.playtimeRequests_);
                        this.bitField0_ &= -3;
                    }
                    cParental_GetRequests_Response.playtimeRequests_ = this.playtimeRequests_;
                    return;
                }
                cParental_GetRequests_Response.playtimeRequests_ = repeatedFieldBuilder2.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_GetRequests_Response) {
                    return mergeFrom((CParental_GetRequests_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_GetRequests_Response cParental_GetRequests_Response) {
                if (cParental_GetRequests_Response == CParental_GetRequests_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.featureRequestsBuilder_ == null) {
                    if (!cParental_GetRequests_Response.featureRequests_.isEmpty()) {
                        if (this.featureRequests_.isEmpty()) {
                            this.featureRequests_ = cParental_GetRequests_Response.featureRequests_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureFeatureRequestsIsMutable();
                            this.featureRequests_.addAll(cParental_GetRequests_Response.featureRequests_);
                        }
                        onChanged();
                    }
                } else if (!cParental_GetRequests_Response.featureRequests_.isEmpty()) {
                    if (this.featureRequestsBuilder_.isEmpty()) {
                        this.featureRequestsBuilder_.dispose();
                        this.featureRequestsBuilder_ = null;
                        this.featureRequests_ = cParental_GetRequests_Response.featureRequests_;
                        this.bitField0_ &= -2;
                        this.featureRequestsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetFeatureRequestsFieldBuilder() : null;
                    } else {
                        this.featureRequestsBuilder_.addAllMessages(cParental_GetRequests_Response.featureRequests_);
                    }
                }
                if (this.playtimeRequestsBuilder_ == null) {
                    if (!cParental_GetRequests_Response.playtimeRequests_.isEmpty()) {
                        if (this.playtimeRequests_.isEmpty()) {
                            this.playtimeRequests_ = cParental_GetRequests_Response.playtimeRequests_;
                            this.bitField0_ &= -3;
                        } else {
                            ensurePlaytimeRequestsIsMutable();
                            this.playtimeRequests_.addAll(cParental_GetRequests_Response.playtimeRequests_);
                        }
                        onChanged();
                    }
                } else if (!cParental_GetRequests_Response.playtimeRequests_.isEmpty()) {
                    if (this.playtimeRequestsBuilder_.isEmpty()) {
                        this.playtimeRequestsBuilder_.dispose();
                        this.playtimeRequestsBuilder_ = null;
                        this.playtimeRequests_ = cParental_GetRequests_Response.playtimeRequests_;
                        this.bitField0_ &= -3;
                        this.playtimeRequestsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPlaytimeRequestsFieldBuilder() : null;
                    } else {
                        this.playtimeRequestsBuilder_.addAllMessages(cParental_GetRequests_Response.playtimeRequests_);
                    }
                }
                mergeUnknownFields(cParental_GetRequests_Response.getUnknownFields());
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
                                    SteammessagesParentalObjects.ParentalFeatureRequest parentalFeatureRequest = (SteammessagesParentalObjects.ParentalFeatureRequest) codedInputStream.readMessage(SteammessagesParentalObjects.ParentalFeatureRequest.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureFeatureRequestsIsMutable();
                                        this.featureRequests_.add(parentalFeatureRequest);
                                    } else {
                                        repeatedFieldBuilder.addMessage(parentalFeatureRequest);
                                    }
                                } else if (tag == 18) {
                                    SteammessagesParentalObjects.ParentalPlaytimeRequest parentalPlaytimeRequest = (SteammessagesParentalObjects.ParentalPlaytimeRequest) codedInputStream.readMessage(SteammessagesParentalObjects.ParentalPlaytimeRequest.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder2 = this.playtimeRequestsBuilder_;
                                    if (repeatedFieldBuilder2 == null) {
                                        ensurePlaytimeRequestsIsMutable();
                                        this.playtimeRequests_.add(parentalPlaytimeRequest);
                                    } else {
                                        repeatedFieldBuilder2.addMessage(parentalPlaytimeRequest);
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

            private void ensureFeatureRequestsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.featureRequests_ = new ArrayList(this.featureRequests_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public List<SteammessagesParentalObjects.ParentalFeatureRequest> getFeatureRequestsList() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.featureRequests_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public int getFeatureRequestsCount() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.featureRequests_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public SteammessagesParentalObjects.ParentalFeatureRequest getFeatureRequests(int i) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.featureRequests_.get(i);
                }
                return (SteammessagesParentalObjects.ParentalFeatureRequest) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setFeatureRequests(int i, SteammessagesParentalObjects.ParentalFeatureRequest parentalFeatureRequest) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalFeatureRequest.getClass();
                    ensureFeatureRequestsIsMutable();
                    this.featureRequests_.set(i, parentalFeatureRequest);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, parentalFeatureRequest);
                }
                return this;
            }

            public Builder setFeatureRequests(int i, SteammessagesParentalObjects.ParentalFeatureRequest.Builder builder) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFeatureRequestsIsMutable();
                    this.featureRequests_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addFeatureRequests(SteammessagesParentalObjects.ParentalFeatureRequest parentalFeatureRequest) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalFeatureRequest.getClass();
                    ensureFeatureRequestsIsMutable();
                    this.featureRequests_.add(parentalFeatureRequest);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(parentalFeatureRequest);
                }
                return this;
            }

            public Builder addFeatureRequests(int i, SteammessagesParentalObjects.ParentalFeatureRequest parentalFeatureRequest) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalFeatureRequest.getClass();
                    ensureFeatureRequestsIsMutable();
                    this.featureRequests_.add(i, parentalFeatureRequest);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, parentalFeatureRequest);
                }
                return this;
            }

            public Builder addFeatureRequests(SteammessagesParentalObjects.ParentalFeatureRequest.Builder builder) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFeatureRequestsIsMutable();
                    this.featureRequests_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addFeatureRequests(int i, SteammessagesParentalObjects.ParentalFeatureRequest.Builder builder) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFeatureRequestsIsMutable();
                    this.featureRequests_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllFeatureRequests(Iterable<? extends SteammessagesParentalObjects.ParentalFeatureRequest> iterable) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFeatureRequestsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.featureRequests_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearFeatureRequests() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.featureRequests_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeFeatureRequests(int i) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureFeatureRequestsIsMutable();
                    this.featureRequests_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public SteammessagesParentalObjects.ParentalFeatureRequest.Builder getFeatureRequestsBuilder(int i) {
                return (SteammessagesParentalObjects.ParentalFeatureRequest.Builder) internalGetFeatureRequestsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder getFeatureRequestsOrBuilder(int i) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.featureRequests_.get(i);
                }
                return (SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public List<? extends SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> getFeatureRequestsOrBuilderList() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> repeatedFieldBuilder = this.featureRequestsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.featureRequests_);
            }

            public SteammessagesParentalObjects.ParentalFeatureRequest.Builder addFeatureRequestsBuilder() {
                return (SteammessagesParentalObjects.ParentalFeatureRequest.Builder) internalGetFeatureRequestsFieldBuilder().addBuilder(SteammessagesParentalObjects.ParentalFeatureRequest.getDefaultInstance());
            }

            public SteammessagesParentalObjects.ParentalFeatureRequest.Builder addFeatureRequestsBuilder(int i) {
                return (SteammessagesParentalObjects.ParentalFeatureRequest.Builder) internalGetFeatureRequestsFieldBuilder().addBuilder(i, SteammessagesParentalObjects.ParentalFeatureRequest.getDefaultInstance());
            }

            public List<SteammessagesParentalObjects.ParentalFeatureRequest.Builder> getFeatureRequestsBuilderList() {
                return internalGetFeatureRequestsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalFeatureRequest, SteammessagesParentalObjects.ParentalFeatureRequest.Builder, SteammessagesParentalObjects.ParentalFeatureRequestOrBuilder> internalGetFeatureRequestsFieldBuilder() {
                if (this.featureRequestsBuilder_ == null) {
                    this.featureRequestsBuilder_ = new RepeatedFieldBuilder<>(this.featureRequests_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.featureRequests_ = null;
                }
                return this.featureRequestsBuilder_;
            }

            private void ensurePlaytimeRequestsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.playtimeRequests_ = new ArrayList(this.playtimeRequests_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public List<SteammessagesParentalObjects.ParentalPlaytimeRequest> getPlaytimeRequestsList() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.playtimeRequests_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public int getPlaytimeRequestsCount() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.playtimeRequests_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public SteammessagesParentalObjects.ParentalPlaytimeRequest getPlaytimeRequests(int i) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.playtimeRequests_.get(i);
                }
                return (SteammessagesParentalObjects.ParentalPlaytimeRequest) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPlaytimeRequests(int i, SteammessagesParentalObjects.ParentalPlaytimeRequest parentalPlaytimeRequest) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalPlaytimeRequest.getClass();
                    ensurePlaytimeRequestsIsMutable();
                    this.playtimeRequests_.set(i, parentalPlaytimeRequest);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, parentalPlaytimeRequest);
                }
                return this;
            }

            public Builder setPlaytimeRequests(int i, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder builder) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeRequestsIsMutable();
                    this.playtimeRequests_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPlaytimeRequests(SteammessagesParentalObjects.ParentalPlaytimeRequest parentalPlaytimeRequest) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalPlaytimeRequest.getClass();
                    ensurePlaytimeRequestsIsMutable();
                    this.playtimeRequests_.add(parentalPlaytimeRequest);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(parentalPlaytimeRequest);
                }
                return this;
            }

            public Builder addPlaytimeRequests(int i, SteammessagesParentalObjects.ParentalPlaytimeRequest parentalPlaytimeRequest) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    parentalPlaytimeRequest.getClass();
                    ensurePlaytimeRequestsIsMutable();
                    this.playtimeRequests_.add(i, parentalPlaytimeRequest);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, parentalPlaytimeRequest);
                }
                return this;
            }

            public Builder addPlaytimeRequests(SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder builder) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeRequestsIsMutable();
                    this.playtimeRequests_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPlaytimeRequests(int i, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder builder) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeRequestsIsMutable();
                    this.playtimeRequests_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPlaytimeRequests(Iterable<? extends SteammessagesParentalObjects.ParentalPlaytimeRequest> iterable) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeRequestsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.playtimeRequests_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPlaytimeRequests() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.playtimeRequests_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePlaytimeRequests(int i) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePlaytimeRequestsIsMutable();
                    this.playtimeRequests_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder getPlaytimeRequestsBuilder(int i) {
                return (SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder) internalGetPlaytimeRequestsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder getPlaytimeRequestsOrBuilder(int i) {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.playtimeRequests_.get(i);
                }
                return (SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_GetRequests_ResponseOrBuilder
            public List<? extends SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> getPlaytimeRequestsOrBuilderList() {
                RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> repeatedFieldBuilder = this.playtimeRequestsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.playtimeRequests_);
            }

            public SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder addPlaytimeRequestsBuilder() {
                return (SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder) internalGetPlaytimeRequestsFieldBuilder().addBuilder(SteammessagesParentalObjects.ParentalPlaytimeRequest.getDefaultInstance());
            }

            public SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder addPlaytimeRequestsBuilder(int i) {
                return (SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder) internalGetPlaytimeRequestsFieldBuilder().addBuilder(i, SteammessagesParentalObjects.ParentalPlaytimeRequest.getDefaultInstance());
            }

            public List<SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder> getPlaytimeRequestsBuilderList() {
                return internalGetPlaytimeRequestsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<SteammessagesParentalObjects.ParentalPlaytimeRequest, SteammessagesParentalObjects.ParentalPlaytimeRequest.Builder, SteammessagesParentalObjects.ParentalPlaytimeRequestOrBuilder> internalGetPlaytimeRequestsFieldBuilder() {
                if (this.playtimeRequestsBuilder_ == null) {
                    this.playtimeRequestsBuilder_ = new RepeatedFieldBuilder<>(this.playtimeRequests_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.playtimeRequests_ = null;
                }
                return this.playtimeRequestsBuilder_;
            }
        }

        public static CParental_GetRequests_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_GetRequests_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_GetRequests_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_GetRequests_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ReportPlaytimeAndNotify_Request extends GeneratedMessage implements CParental_ReportPlaytimeAndNotify_RequestOrBuilder {
        public static final int DAY_OF_WEEK_FIELD_NUMBER = 1;
        private static final CParental_ReportPlaytimeAndNotify_Request DEFAULT_INSTANCE;
        public static final int MINUTES_USED_FIELD_NUMBER = 2;
        private static final Parser<CParental_ReportPlaytimeAndNotify_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 10;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int dayOfWeek_;
        private byte memoizedIsInitialized;
        private int minutesUsed_;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ReportPlaytimeAndNotify_Request.class.getName());
            DEFAULT_INSTANCE = new CParental_ReportPlaytimeAndNotify_Request();
            PARSER = new AbstractParser<CParental_ReportPlaytimeAndNotify_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_Request.1
                @Override // com.google.protobuf.Parser
                public CParental_ReportPlaytimeAndNotify_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ReportPlaytimeAndNotify_Request.newBuilder();
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

        private CParental_ReportPlaytimeAndNotify_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.dayOfWeek_ = 0;
            this.minutesUsed_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ReportPlaytimeAndNotify_Request() {
            this.dayOfWeek_ = 0;
            this.minutesUsed_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ReportPlaytimeAndNotify_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
        public boolean hasDayOfWeek() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
        public int getDayOfWeek() {
            return this.dayOfWeek_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
        public boolean hasMinutesUsed() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
        public int getMinutesUsed() {
            return this.minutesUsed_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
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
                codedOutputStream.writeUInt32(1, this.dayOfWeek_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.minutesUsed_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(10, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.dayOfWeek_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.minutesUsed_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(10, this.steamid_);
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
            if (!(obj instanceof CParental_ReportPlaytimeAndNotify_Request)) {
                return super.equals(obj);
            }
            CParental_ReportPlaytimeAndNotify_Request cParental_ReportPlaytimeAndNotify_Request = (CParental_ReportPlaytimeAndNotify_Request) obj;
            if (hasDayOfWeek() != cParental_ReportPlaytimeAndNotify_Request.hasDayOfWeek()) {
                return false;
            }
            if ((hasDayOfWeek() && getDayOfWeek() != cParental_ReportPlaytimeAndNotify_Request.getDayOfWeek()) || hasMinutesUsed() != cParental_ReportPlaytimeAndNotify_Request.hasMinutesUsed()) {
                return false;
            }
            if ((!hasMinutesUsed() || getMinutesUsed() == cParental_ReportPlaytimeAndNotify_Request.getMinutesUsed()) && hasSteamid() == cParental_ReportPlaytimeAndNotify_Request.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cParental_ReportPlaytimeAndNotify_Request.getSteamid()) && getUnknownFields().equals(cParental_ReportPlaytimeAndNotify_Request.getUnknownFields());
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
            if (hasDayOfWeek()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getDayOfWeek();
            }
            if (hasMinutesUsed()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMinutesUsed();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ReportPlaytimeAndNotify_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ReportPlaytimeAndNotify_Request cParental_ReportPlaytimeAndNotify_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ReportPlaytimeAndNotify_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ReportPlaytimeAndNotify_RequestOrBuilder {
            private int bitField0_;
            private int dayOfWeek_;
            private int minutesUsed_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ReportPlaytimeAndNotify_Request.class, Builder.class);
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
                this.dayOfWeek_ = 0;
                this.minutesUsed_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ReportPlaytimeAndNotify_Request getDefaultInstanceForType() {
                return CParental_ReportPlaytimeAndNotify_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ReportPlaytimeAndNotify_Request build() {
                CParental_ReportPlaytimeAndNotify_Request cParental_ReportPlaytimeAndNotify_RequestBuildPartial = buildPartial();
                if (cParental_ReportPlaytimeAndNotify_RequestBuildPartial.isInitialized()) {
                    return cParental_ReportPlaytimeAndNotify_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ReportPlaytimeAndNotify_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ReportPlaytimeAndNotify_Request buildPartial() {
                CParental_ReportPlaytimeAndNotify_Request cParental_ReportPlaytimeAndNotify_Request = new CParental_ReportPlaytimeAndNotify_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ReportPlaytimeAndNotify_Request);
                }
                onBuilt();
                return cParental_ReportPlaytimeAndNotify_Request;
            }

            private void buildPartial0(CParental_ReportPlaytimeAndNotify_Request cParental_ReportPlaytimeAndNotify_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_ReportPlaytimeAndNotify_Request.dayOfWeek_ = this.dayOfWeek_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_ReportPlaytimeAndNotify_Request.minutesUsed_ = this.minutesUsed_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cParental_ReportPlaytimeAndNotify_Request.steamid_ = this.steamid_;
                    i |= 4;
                }
                cParental_ReportPlaytimeAndNotify_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ReportPlaytimeAndNotify_Request) {
                    return mergeFrom((CParental_ReportPlaytimeAndNotify_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ReportPlaytimeAndNotify_Request cParental_ReportPlaytimeAndNotify_Request) {
                if (cParental_ReportPlaytimeAndNotify_Request == CParental_ReportPlaytimeAndNotify_Request.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ReportPlaytimeAndNotify_Request.hasDayOfWeek()) {
                    setDayOfWeek(cParental_ReportPlaytimeAndNotify_Request.getDayOfWeek());
                }
                if (cParental_ReportPlaytimeAndNotify_Request.hasMinutesUsed()) {
                    setMinutesUsed(cParental_ReportPlaytimeAndNotify_Request.getMinutesUsed());
                }
                if (cParental_ReportPlaytimeAndNotify_Request.hasSteamid()) {
                    setSteamid(cParental_ReportPlaytimeAndNotify_Request.getSteamid());
                }
                mergeUnknownFields(cParental_ReportPlaytimeAndNotify_Request.getUnknownFields());
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
                                    this.dayOfWeek_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.minutesUsed_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 81) {
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
            public boolean hasDayOfWeek() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
            public int getDayOfWeek() {
                return this.dayOfWeek_;
            }

            public Builder setDayOfWeek(int i) {
                this.dayOfWeek_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearDayOfWeek() {
                this.bitField0_ &= -2;
                this.dayOfWeek_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
            public boolean hasMinutesUsed() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
            public int getMinutesUsed() {
                return this.minutesUsed_;
            }

            public Builder setMinutesUsed(int i) {
                this.minutesUsed_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMinutesUsed() {
                this.bitField0_ &= -3;
                this.minutesUsed_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_RequestOrBuilder
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

        public static CParental_ReportPlaytimeAndNotify_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ReportPlaytimeAndNotify_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ReportPlaytimeAndNotify_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ReportPlaytimeAndNotify_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ReportPlaytimeAndNotify_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CParental_ReportPlaytimeAndNotify_Response DEFAULT_INSTANCE;
        private static final Parser<CParental_ReportPlaytimeAndNotify_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ReportPlaytimeAndNotify_Response.class.getName());
            DEFAULT_INSTANCE = new CParental_ReportPlaytimeAndNotify_Response();
            PARSER = new AbstractParser<CParental_ReportPlaytimeAndNotify_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_Response.1
                @Override // com.google.protobuf.Parser
                public CParental_ReportPlaytimeAndNotify_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ReportPlaytimeAndNotify_Response.newBuilder();
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

        private CParental_ReportPlaytimeAndNotify_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ReportPlaytimeAndNotify_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ReportPlaytimeAndNotify_Response.class, Builder.class);
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
            if (obj instanceof CParental_ReportPlaytimeAndNotify_Response) {
                return getUnknownFields().equals(((CParental_ReportPlaytimeAndNotify_Response) obj).getUnknownFields());
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

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ReportPlaytimeAndNotify_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ReportPlaytimeAndNotify_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ReportPlaytimeAndNotify_Response cParental_ReportPlaytimeAndNotify_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ReportPlaytimeAndNotify_Response);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ReportPlaytimeAndNotify_Response.class, Builder.class);
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
                return SteammessagesParentalSteamclient.internal_static_CParental_ReportPlaytimeAndNotify_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ReportPlaytimeAndNotify_Response getDefaultInstanceForType() {
                return CParental_ReportPlaytimeAndNotify_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ReportPlaytimeAndNotify_Response build() {
                CParental_ReportPlaytimeAndNotify_Response cParental_ReportPlaytimeAndNotify_ResponseBuildPartial = buildPartial();
                if (cParental_ReportPlaytimeAndNotify_ResponseBuildPartial.isInitialized()) {
                    return cParental_ReportPlaytimeAndNotify_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ReportPlaytimeAndNotify_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ReportPlaytimeAndNotify_Response buildPartial() {
                CParental_ReportPlaytimeAndNotify_Response cParental_ReportPlaytimeAndNotify_Response = new CParental_ReportPlaytimeAndNotify_Response(this);
                onBuilt();
                return cParental_ReportPlaytimeAndNotify_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ReportPlaytimeAndNotify_Response) {
                    return mergeFrom((CParental_ReportPlaytimeAndNotify_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ReportPlaytimeAndNotify_Response cParental_ReportPlaytimeAndNotify_Response) {
                if (cParental_ReportPlaytimeAndNotify_Response == CParental_ReportPlaytimeAndNotify_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cParental_ReportPlaytimeAndNotify_Response.getUnknownFields());
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

        public static CParental_ReportPlaytimeAndNotify_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ReportPlaytimeAndNotify_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ReportPlaytimeAndNotify_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ReportPlaytimeAndNotify_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ParentalSettingsChange_Notification extends GeneratedMessage implements CParental_ParentalSettingsChange_NotificationOrBuilder {
        private static final CParental_ParentalSettingsChange_Notification DEFAULT_INSTANCE;
        private static final Parser<CParental_ParentalSettingsChange_Notification> PARSER;
        public static final int PASSWORD_FIELD_NUMBER = 3;
        public static final int SERIALIZED_SETTINGS_FIELD_NUMBER = 1;
        public static final int SESSIONID_FIELD_NUMBER = 4;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object password_;
        private ByteString serializedSettings_;
        private volatile Object sessionid_;
        private ByteString signature_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ParentalSettingsChange_Notification.class.getName());
            DEFAULT_INSTANCE = new CParental_ParentalSettingsChange_Notification();
            PARSER = new AbstractParser<CParental_ParentalSettingsChange_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_Notification.1
                @Override // com.google.protobuf.Parser
                public CParental_ParentalSettingsChange_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ParentalSettingsChange_Notification.newBuilder();
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

        private CParental_ParentalSettingsChange_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            ByteString byteString = ByteString.EMPTY;
            this.serializedSettings_ = byteString;
            this.signature_ = byteString;
            this.password_ = "";
            this.sessionid_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ParentalSettingsChange_Notification() {
            ByteString byteString = ByteString.EMPTY;
            this.serializedSettings_ = byteString;
            this.signature_ = byteString;
            this.password_ = "";
            this.sessionid_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.serializedSettings_ = byteString;
            this.signature_ = byteString;
            this.password_ = "";
            this.sessionid_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ParentalSettingsChange_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ParentalSettingsChange_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ParentalSettingsChange_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public boolean hasSerializedSettings() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public ByteString getSerializedSettings() {
            return this.serializedSettings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public boolean hasSignature() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public ByteString getSignature() {
            return this.signature_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public boolean hasPassword() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.password_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public String getSessionid() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sessionid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
        public ByteString getSessionidBytes() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionid_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeBytes(1, this.serializedSettings_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBytes(2, this.signature_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.password_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.sessionid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBytesSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBytesSize(1, this.serializedSettings_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBytesSize += CodedOutputStream.computeBytesSize(2, this.signature_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(3, this.password_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(4, this.sessionid_);
            }
            int serializedSize = iComputeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_ParentalSettingsChange_Notification)) {
                return super.equals(obj);
            }
            CParental_ParentalSettingsChange_Notification cParental_ParentalSettingsChange_Notification = (CParental_ParentalSettingsChange_Notification) obj;
            if (hasSerializedSettings() != cParental_ParentalSettingsChange_Notification.hasSerializedSettings()) {
                return false;
            }
            if ((hasSerializedSettings() && !getSerializedSettings().equals(cParental_ParentalSettingsChange_Notification.getSerializedSettings())) || hasSignature() != cParental_ParentalSettingsChange_Notification.hasSignature()) {
                return false;
            }
            if ((hasSignature() && !getSignature().equals(cParental_ParentalSettingsChange_Notification.getSignature())) || hasPassword() != cParental_ParentalSettingsChange_Notification.hasPassword()) {
                return false;
            }
            if ((!hasPassword() || getPassword().equals(cParental_ParentalSettingsChange_Notification.getPassword())) && hasSessionid() == cParental_ParentalSettingsChange_Notification.hasSessionid()) {
                return (!hasSessionid() || getSessionid().equals(cParental_ParentalSettingsChange_Notification.getSessionid())) && getUnknownFields().equals(cParental_ParentalSettingsChange_Notification.getUnknownFields());
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
            if (hasSerializedSettings()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSerializedSettings().hashCode();
            }
            if (hasSignature()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSignature().hashCode();
            }
            if (hasPassword()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getPassword().hashCode();
            }
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getSessionid().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ParentalSettingsChange_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalSettingsChange_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ParentalSettingsChange_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ParentalSettingsChange_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ParentalSettingsChange_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalSettingsChange_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ParentalSettingsChange_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ParentalSettingsChange_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalSettingsChange_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ParentalSettingsChange_Notification cParental_ParentalSettingsChange_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ParentalSettingsChange_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ParentalSettingsChange_NotificationOrBuilder {
            private int bitField0_;
            private Object password_;
            private ByteString serializedSettings_;
            private Object sessionid_;
            private ByteString signature_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalSettingsChange_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalSettingsChange_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ParentalSettingsChange_Notification.class, Builder.class);
            }

            private Builder() {
                ByteString byteString = ByteString.EMPTY;
                this.serializedSettings_ = byteString;
                this.signature_ = byteString;
                this.password_ = "";
                this.sessionid_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                ByteString byteString = ByteString.EMPTY;
                this.serializedSettings_ = byteString;
                this.signature_ = byteString;
                this.password_ = "";
                this.sessionid_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.serializedSettings_ = byteString;
                this.signature_ = byteString;
                this.password_ = "";
                this.sessionid_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalSettingsChange_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ParentalSettingsChange_Notification getDefaultInstanceForType() {
                return CParental_ParentalSettingsChange_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ParentalSettingsChange_Notification build() {
                CParental_ParentalSettingsChange_Notification cParental_ParentalSettingsChange_NotificationBuildPartial = buildPartial();
                if (cParental_ParentalSettingsChange_NotificationBuildPartial.isInitialized()) {
                    return cParental_ParentalSettingsChange_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ParentalSettingsChange_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ParentalSettingsChange_Notification buildPartial() {
                CParental_ParentalSettingsChange_Notification cParental_ParentalSettingsChange_Notification = new CParental_ParentalSettingsChange_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ParentalSettingsChange_Notification);
                }
                onBuilt();
                return cParental_ParentalSettingsChange_Notification;
            }

            private void buildPartial0(CParental_ParentalSettingsChange_Notification cParental_ParentalSettingsChange_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_ParentalSettingsChange_Notification.serializedSettings_ = this.serializedSettings_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_ParentalSettingsChange_Notification.signature_ = this.signature_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cParental_ParentalSettingsChange_Notification.password_ = this.password_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cParental_ParentalSettingsChange_Notification.sessionid_ = this.sessionid_;
                    i |= 8;
                }
                cParental_ParentalSettingsChange_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ParentalSettingsChange_Notification) {
                    return mergeFrom((CParental_ParentalSettingsChange_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ParentalSettingsChange_Notification cParental_ParentalSettingsChange_Notification) {
                if (cParental_ParentalSettingsChange_Notification == CParental_ParentalSettingsChange_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ParentalSettingsChange_Notification.hasSerializedSettings()) {
                    setSerializedSettings(cParental_ParentalSettingsChange_Notification.getSerializedSettings());
                }
                if (cParental_ParentalSettingsChange_Notification.hasSignature()) {
                    setSignature(cParental_ParentalSettingsChange_Notification.getSignature());
                }
                if (cParental_ParentalSettingsChange_Notification.hasPassword()) {
                    this.password_ = cParental_ParentalSettingsChange_Notification.password_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cParental_ParentalSettingsChange_Notification.hasSessionid()) {
                    this.sessionid_ = cParental_ParentalSettingsChange_Notification.sessionid_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                mergeUnknownFields(cParental_ParentalSettingsChange_Notification.getUnknownFields());
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
                                    this.serializedSettings_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.signature_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.password_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.sessionid_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public boolean hasSerializedSettings() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public ByteString getSerializedSettings() {
                return this.serializedSettings_;
            }

            public Builder setSerializedSettings(ByteString byteString) {
                byteString.getClass();
                this.serializedSettings_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSerializedSettings() {
                this.bitField0_ &= -2;
                this.serializedSettings_ = CParental_ParentalSettingsChange_Notification.getDefaultInstance().getSerializedSettings();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public boolean hasSignature() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public ByteString getSignature() {
                return this.signature_;
            }

            public Builder setSignature(ByteString byteString) {
                byteString.getClass();
                this.signature_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSignature() {
                this.bitField0_ &= -3;
                this.signature_ = CParental_ParentalSettingsChange_Notification.getDefaultInstance().getSignature();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public boolean hasPassword() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public String getPassword() {
                Object obj = this.password_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.password_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public ByteString getPasswordBytes() {
                Object obj = this.password_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.password_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPassword(String str) {
                str.getClass();
                this.password_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPassword() {
                this.password_ = CParental_ParentalSettingsChange_Notification.getDefaultInstance().getPassword();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.password_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public String getSessionid() {
                Object obj = this.sessionid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sessionid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_NotificationOrBuilder
            public ByteString getSessionidBytes() {
                Object obj = this.sessionid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sessionid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSessionid(String str) {
                str.getClass();
                this.sessionid_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.sessionid_ = CParental_ParentalSettingsChange_Notification.getDefaultInstance().getSessionid();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setSessionidBytes(ByteString byteString) {
                byteString.getClass();
                this.sessionid_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }
        }

        public static CParental_ParentalSettingsChange_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ParentalSettingsChange_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ParentalSettingsChange_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ParentalSettingsChange_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ParentalUnlock_Notification extends GeneratedMessage implements CParental_ParentalUnlock_NotificationOrBuilder {
        private static final CParental_ParentalUnlock_Notification DEFAULT_INSTANCE;
        private static final Parser<CParental_ParentalUnlock_Notification> PARSER;
        public static final int PASSWORD_FIELD_NUMBER = 1;
        public static final int SESSIONID_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object password_;
        private volatile Object sessionid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ParentalUnlock_Notification.class.getName());
            DEFAULT_INSTANCE = new CParental_ParentalUnlock_Notification();
            PARSER = new AbstractParser<CParental_ParentalUnlock_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_Notification.1
                @Override // com.google.protobuf.Parser
                public CParental_ParentalUnlock_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ParentalUnlock_Notification.newBuilder();
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

        private CParental_ParentalUnlock_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.password_ = "";
            this.sessionid_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ParentalUnlock_Notification() {
            this.password_ = "";
            this.sessionid_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.password_ = "";
            this.sessionid_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ParentalUnlock_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ParentalUnlock_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ParentalUnlock_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
        public boolean hasPassword() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.password_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
        public String getSessionid() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sessionid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
        public ByteString getSessionidBytes() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionid_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.password_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.sessionid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.password_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(2, this.sessionid_);
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
            if (!(obj instanceof CParental_ParentalUnlock_Notification)) {
                return super.equals(obj);
            }
            CParental_ParentalUnlock_Notification cParental_ParentalUnlock_Notification = (CParental_ParentalUnlock_Notification) obj;
            if (hasPassword() != cParental_ParentalUnlock_Notification.hasPassword()) {
                return false;
            }
            if ((!hasPassword() || getPassword().equals(cParental_ParentalUnlock_Notification.getPassword())) && hasSessionid() == cParental_ParentalUnlock_Notification.hasSessionid()) {
                return (!hasSessionid() || getSessionid().equals(cParental_ParentalUnlock_Notification.getSessionid())) && getUnknownFields().equals(cParental_ParentalUnlock_Notification.getUnknownFields());
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
            if (hasPassword()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPassword().hashCode();
            }
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getSessionid().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ParentalUnlock_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ParentalUnlock_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalUnlock_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ParentalUnlock_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ParentalUnlock_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ParentalUnlock_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalUnlock_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ParentalUnlock_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ParentalUnlock_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalUnlock_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ParentalUnlock_Notification cParental_ParentalUnlock_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ParentalUnlock_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ParentalUnlock_NotificationOrBuilder {
            private int bitField0_;
            private Object password_;
            private Object sessionid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalUnlock_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalUnlock_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ParentalUnlock_Notification.class, Builder.class);
            }

            private Builder() {
                this.password_ = "";
                this.sessionid_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.password_ = "";
                this.sessionid_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.password_ = "";
                this.sessionid_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalUnlock_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ParentalUnlock_Notification getDefaultInstanceForType() {
                return CParental_ParentalUnlock_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ParentalUnlock_Notification build() {
                CParental_ParentalUnlock_Notification cParental_ParentalUnlock_NotificationBuildPartial = buildPartial();
                if (cParental_ParentalUnlock_NotificationBuildPartial.isInitialized()) {
                    return cParental_ParentalUnlock_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ParentalUnlock_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ParentalUnlock_Notification buildPartial() {
                CParental_ParentalUnlock_Notification cParental_ParentalUnlock_Notification = new CParental_ParentalUnlock_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ParentalUnlock_Notification);
                }
                onBuilt();
                return cParental_ParentalUnlock_Notification;
            }

            private void buildPartial0(CParental_ParentalUnlock_Notification cParental_ParentalUnlock_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_ParentalUnlock_Notification.password_ = this.password_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_ParentalUnlock_Notification.sessionid_ = this.sessionid_;
                    i |= 2;
                }
                cParental_ParentalUnlock_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ParentalUnlock_Notification) {
                    return mergeFrom((CParental_ParentalUnlock_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ParentalUnlock_Notification cParental_ParentalUnlock_Notification) {
                if (cParental_ParentalUnlock_Notification == CParental_ParentalUnlock_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ParentalUnlock_Notification.hasPassword()) {
                    this.password_ = cParental_ParentalUnlock_Notification.password_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cParental_ParentalUnlock_Notification.hasSessionid()) {
                    this.sessionid_ = cParental_ParentalUnlock_Notification.sessionid_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cParental_ParentalUnlock_Notification.getUnknownFields());
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
                                    this.password_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.sessionid_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
            public boolean hasPassword() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
            public String getPassword() {
                Object obj = this.password_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.password_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
            public ByteString getPasswordBytes() {
                Object obj = this.password_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.password_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPassword(String str) {
                str.getClass();
                this.password_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPassword() {
                this.password_ = CParental_ParentalUnlock_Notification.getDefaultInstance().getPassword();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.password_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
            public String getSessionid() {
                Object obj = this.sessionid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sessionid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalUnlock_NotificationOrBuilder
            public ByteString getSessionidBytes() {
                Object obj = this.sessionid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sessionid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSessionid(String str) {
                str.getClass();
                this.sessionid_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.sessionid_ = CParental_ParentalUnlock_Notification.getDefaultInstance().getSessionid();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setSessionidBytes(ByteString byteString) {
                byteString.getClass();
                this.sessionid_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CParental_ParentalUnlock_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ParentalUnlock_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ParentalUnlock_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ParentalUnlock_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_ParentalLock_Notification extends GeneratedMessage implements CParental_ParentalLock_NotificationOrBuilder {
        private static final CParental_ParentalLock_Notification DEFAULT_INSTANCE;
        private static final Parser<CParental_ParentalLock_Notification> PARSER;
        public static final int SESSIONID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object sessionid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_ParentalLock_Notification.class.getName());
            DEFAULT_INSTANCE = new CParental_ParentalLock_Notification();
            PARSER = new AbstractParser<CParental_ParentalLock_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalLock_Notification.1
                @Override // com.google.protobuf.Parser
                public CParental_ParentalLock_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_ParentalLock_Notification.newBuilder();
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

        private CParental_ParentalLock_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sessionid_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_ParentalLock_Notification() {
            this.sessionid_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.sessionid_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ParentalLock_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_ParentalLock_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ParentalLock_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalLock_NotificationOrBuilder
        public boolean hasSessionid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalLock_NotificationOrBuilder
        public String getSessionid() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sessionid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalLock_NotificationOrBuilder
        public ByteString getSessionidBytes() {
            Object obj = this.sessionid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionid_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.sessionid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.sessionid_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CParental_ParentalLock_Notification)) {
                return super.equals(obj);
            }
            CParental_ParentalLock_Notification cParental_ParentalLock_Notification = (CParental_ParentalLock_Notification) obj;
            if (hasSessionid() != cParental_ParentalLock_Notification.hasSessionid()) {
                return false;
            }
            return (!hasSessionid() || getSessionid().equals(cParental_ParentalLock_Notification.getSessionid())) && getUnknownFields().equals(cParental_ParentalLock_Notification.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSessionid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSessionid().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_ParentalLock_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_ParentalLock_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_ParentalLock_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_ParentalLock_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_ParentalLock_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_ParentalLock_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_ParentalLock_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CParental_ParentalLock_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_ParentalLock_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalLock_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ParentalLock_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_ParentalLock_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_ParentalLock_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalLock_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_ParentalLock_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_ParentalLock_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_ParentalLock_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_ParentalLock_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_ParentalLock_Notification cParental_ParentalLock_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_ParentalLock_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_ParentalLock_NotificationOrBuilder {
            private int bitField0_;
            private Object sessionid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalLock_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalLock_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_ParentalLock_Notification.class, Builder.class);
            }

            private Builder() {
                this.sessionid_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.sessionid_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.sessionid_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_ParentalLock_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_ParentalLock_Notification getDefaultInstanceForType() {
                return CParental_ParentalLock_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ParentalLock_Notification build() {
                CParental_ParentalLock_Notification cParental_ParentalLock_NotificationBuildPartial = buildPartial();
                if (cParental_ParentalLock_NotificationBuildPartial.isInitialized()) {
                    return cParental_ParentalLock_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_ParentalLock_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_ParentalLock_Notification buildPartial() {
                CParental_ParentalLock_Notification cParental_ParentalLock_Notification = new CParental_ParentalLock_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_ParentalLock_Notification);
                }
                onBuilt();
                return cParental_ParentalLock_Notification;
            }

            private void buildPartial0(CParental_ParentalLock_Notification cParental_ParentalLock_Notification) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cParental_ParentalLock_Notification.sessionid_ = this.sessionid_;
                } else {
                    i = 0;
                }
                cParental_ParentalLock_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_ParentalLock_Notification) {
                    return mergeFrom((CParental_ParentalLock_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_ParentalLock_Notification cParental_ParentalLock_Notification) {
                if (cParental_ParentalLock_Notification == CParental_ParentalLock_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cParental_ParentalLock_Notification.hasSessionid()) {
                    this.sessionid_ = cParental_ParentalLock_Notification.sessionid_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cParental_ParentalLock_Notification.getUnknownFields());
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
                                    this.sessionid_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalLock_NotificationOrBuilder
            public boolean hasSessionid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalLock_NotificationOrBuilder
            public String getSessionid() {
                Object obj = this.sessionid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sessionid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_ParentalLock_NotificationOrBuilder
            public ByteString getSessionidBytes() {
                Object obj = this.sessionid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sessionid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSessionid(String str) {
                str.getClass();
                this.sessionid_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSessionid() {
                this.sessionid_ = CParental_ParentalLock_Notification.getDefaultInstance().getSessionid();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setSessionidBytes(ByteString byteString) {
                byteString.getClass();
                this.sessionid_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CParental_ParentalLock_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_ParentalLock_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_ParentalLock_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_ParentalLock_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CParental_PlaytimeUsed_Notification extends GeneratedMessage implements CParental_PlaytimeUsed_NotificationOrBuilder {
        public static final int DAY_OF_WEEK_FIELD_NUMBER = 1;
        private static final CParental_PlaytimeUsed_Notification DEFAULT_INSTANCE;
        public static final int MINUTES_USED_FIELD_NUMBER = 2;
        private static final Parser<CParental_PlaytimeUsed_Notification> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int dayOfWeek_;
        private byte memoizedIsInitialized;
        private int minutesUsed_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CParental_PlaytimeUsed_Notification.class.getName());
            DEFAULT_INSTANCE = new CParental_PlaytimeUsed_Notification();
            PARSER = new AbstractParser<CParental_PlaytimeUsed_Notification>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_Notification.1
                @Override // com.google.protobuf.Parser
                public CParental_PlaytimeUsed_Notification parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CParental_PlaytimeUsed_Notification.newBuilder();
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

        private CParental_PlaytimeUsed_Notification(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.dayOfWeek_ = 0;
            this.minutesUsed_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CParental_PlaytimeUsed_Notification() {
            this.dayOfWeek_ = 0;
            this.minutesUsed_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesParentalSteamclient.internal_static_CParental_PlaytimeUsed_Notification_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesParentalSteamclient.internal_static_CParental_PlaytimeUsed_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_PlaytimeUsed_Notification.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
        public boolean hasDayOfWeek() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
        public int getDayOfWeek() {
            return this.dayOfWeek_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
        public boolean hasMinutesUsed() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
        public int getMinutesUsed() {
            return this.minutesUsed_;
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
                codedOutputStream.writeUInt32(1, this.dayOfWeek_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.minutesUsed_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.dayOfWeek_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.minutesUsed_);
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
            if (!(obj instanceof CParental_PlaytimeUsed_Notification)) {
                return super.equals(obj);
            }
            CParental_PlaytimeUsed_Notification cParental_PlaytimeUsed_Notification = (CParental_PlaytimeUsed_Notification) obj;
            if (hasDayOfWeek() != cParental_PlaytimeUsed_Notification.hasDayOfWeek()) {
                return false;
            }
            if ((!hasDayOfWeek() || getDayOfWeek() == cParental_PlaytimeUsed_Notification.getDayOfWeek()) && hasMinutesUsed() == cParental_PlaytimeUsed_Notification.hasMinutesUsed()) {
                return (!hasMinutesUsed() || getMinutesUsed() == cParental_PlaytimeUsed_Notification.getMinutesUsed()) && getUnknownFields().equals(cParental_PlaytimeUsed_Notification.getUnknownFields());
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
            if (hasDayOfWeek()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getDayOfWeek();
            }
            if (hasMinutesUsed()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMinutesUsed();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(InputStream inputStream) throws IOException {
            return (CParental_PlaytimeUsed_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_PlaytimeUsed_Notification) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_PlaytimeUsed_Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CParental_PlaytimeUsed_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CParental_PlaytimeUsed_Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_PlaytimeUsed_Notification) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CParental_PlaytimeUsed_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CParental_PlaytimeUsed_Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CParental_PlaytimeUsed_Notification) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CParental_PlaytimeUsed_Notification cParental_PlaytimeUsed_Notification) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cParental_PlaytimeUsed_Notification);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CParental_PlaytimeUsed_NotificationOrBuilder {
            private int bitField0_;
            private int dayOfWeek_;
            private int minutesUsed_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesParentalSteamclient.internal_static_CParental_PlaytimeUsed_Notification_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesParentalSteamclient.internal_static_CParental_PlaytimeUsed_Notification_fieldAccessorTable.ensureFieldAccessorsInitialized(CParental_PlaytimeUsed_Notification.class, Builder.class);
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
                this.dayOfWeek_ = 0;
                this.minutesUsed_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesParentalSteamclient.internal_static_CParental_PlaytimeUsed_Notification_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CParental_PlaytimeUsed_Notification getDefaultInstanceForType() {
                return CParental_PlaytimeUsed_Notification.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_PlaytimeUsed_Notification build() {
                CParental_PlaytimeUsed_Notification cParental_PlaytimeUsed_NotificationBuildPartial = buildPartial();
                if (cParental_PlaytimeUsed_NotificationBuildPartial.isInitialized()) {
                    return cParental_PlaytimeUsed_NotificationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cParental_PlaytimeUsed_NotificationBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CParental_PlaytimeUsed_Notification buildPartial() {
                CParental_PlaytimeUsed_Notification cParental_PlaytimeUsed_Notification = new CParental_PlaytimeUsed_Notification(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cParental_PlaytimeUsed_Notification);
                }
                onBuilt();
                return cParental_PlaytimeUsed_Notification;
            }

            private void buildPartial0(CParental_PlaytimeUsed_Notification cParental_PlaytimeUsed_Notification) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cParental_PlaytimeUsed_Notification.dayOfWeek_ = this.dayOfWeek_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cParental_PlaytimeUsed_Notification.minutesUsed_ = this.minutesUsed_;
                    i |= 2;
                }
                cParental_PlaytimeUsed_Notification.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CParental_PlaytimeUsed_Notification) {
                    return mergeFrom((CParental_PlaytimeUsed_Notification) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CParental_PlaytimeUsed_Notification cParental_PlaytimeUsed_Notification) {
                if (cParental_PlaytimeUsed_Notification == CParental_PlaytimeUsed_Notification.getDefaultInstance()) {
                    return this;
                }
                if (cParental_PlaytimeUsed_Notification.hasDayOfWeek()) {
                    setDayOfWeek(cParental_PlaytimeUsed_Notification.getDayOfWeek());
                }
                if (cParental_PlaytimeUsed_Notification.hasMinutesUsed()) {
                    setMinutesUsed(cParental_PlaytimeUsed_Notification.getMinutesUsed());
                }
                mergeUnknownFields(cParental_PlaytimeUsed_Notification.getUnknownFields());
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
                                    this.dayOfWeek_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.minutesUsed_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
            public boolean hasDayOfWeek() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
            public int getDayOfWeek() {
                return this.dayOfWeek_;
            }

            public Builder setDayOfWeek(int i) {
                this.dayOfWeek_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearDayOfWeek() {
                this.bitField0_ &= -2;
                this.dayOfWeek_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
            public boolean hasMinutesUsed() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient.CParental_PlaytimeUsed_NotificationOrBuilder
            public int getMinutesUsed() {
                return this.minutesUsed_;
            }

            public Builder setMinutesUsed(int i) {
                this.minutesUsed_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMinutesUsed() {
                this.bitField0_ &= -3;
                this.minutesUsed_ = 0;
                onChanged();
                return this;
            }
        }

        public static CParental_PlaytimeUsed_Notification getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CParental_PlaytimeUsed_Notification> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CParental_PlaytimeUsed_Notification> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CParental_PlaytimeUsed_Notification getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
