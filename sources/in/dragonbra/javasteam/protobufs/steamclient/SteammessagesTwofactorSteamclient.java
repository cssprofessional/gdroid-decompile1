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
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesTwofactorSteamclient {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_AddAuthenticator_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_AddAuthenticator_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_AddAuthenticator_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_AddAuthenticator_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_RemoveAuthenticator_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_RemoveAuthenticator_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_RemoveAuthenticator_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_RemoveAuthenticator_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_Status_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_Status_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_Status_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_Status_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_Time_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_Time_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_Time_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_Time_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_UpdateTokenVersion_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_UpdateTokenVersion_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_UpdateTokenVersion_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_UpdateTokenVersion_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CTwoFactor_UsageEvent_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CTwoFactor_UsageEvent_fieldAccessorTable;

    public interface CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder extends MessageOrBuilder {
        String getAccountName();

        ByteString getAccountNameBytes();

        ByteString getIdentitySecret();

        String getRevocationCode();

        ByteString getRevocationCodeBytes();

        ByteString getSecret1();

        long getSerialNumber();

        long getServerTime();

        ByteString getSharedSecret();

        int getStatus();

        int getSteamguardScheme();

        long getSteamid();

        String getTokenGid();

        ByteString getTokenGidBytes();

        String getUri();

        ByteString getUriBytes();

        boolean hasAccountName();

        boolean hasIdentitySecret();

        boolean hasRevocationCode();

        boolean hasSecret1();

        boolean hasSerialNumber();

        boolean hasServerTime();

        boolean hasSharedSecret();

        boolean hasStatus();

        boolean hasSteamguardScheme();

        boolean hasSteamid();

        boolean hasTokenGid();

        boolean hasUri();
    }

    public interface CTwoFactor_AddAuthenticator_RequestOrBuilder extends MessageOrBuilder {
        long getAuthenticatorTime();

        int getAuthenticatorType();

        String getDeviceIdentifier();

        ByteString getDeviceIdentifierBytes();

        String getHttpHeaders(int i);

        ByteString getHttpHeadersBytes(int i);

        int getHttpHeadersCount();

        List<String> getHttpHeadersList();

        long getSerialNumber();

        long getSteamid();

        int getVersion();

        boolean hasAuthenticatorTime();

        boolean hasAuthenticatorType();

        boolean hasDeviceIdentifier();

        boolean hasSerialNumber();

        boolean hasSteamid();

        boolean hasVersion();
    }

    public interface CTwoFactor_AddAuthenticator_ResponseOrBuilder extends MessageOrBuilder {
        String getAccountName();

        ByteString getAccountNameBytes();

        int getConfirmType();

        ByteString getIdentitySecret();

        String getPhoneNumberHint();

        ByteString getPhoneNumberHintBytes();

        String getRevocationCode();

        ByteString getRevocationCodeBytes();

        ByteString getSecret1();

        long getSerialNumber();

        long getServerTime();

        ByteString getSharedSecret();

        int getStatus();

        String getTokenGid();

        ByteString getTokenGidBytes();

        String getUri();

        ByteString getUriBytes();

        boolean hasAccountName();

        boolean hasConfirmType();

        boolean hasIdentitySecret();

        boolean hasPhoneNumberHint();

        boolean hasRevocationCode();

        boolean hasSecret1();

        boolean hasSerialNumber();

        boolean hasServerTime();

        boolean hasSharedSecret();

        boolean hasStatus();

        boolean hasTokenGid();

        boolean hasUri();
    }

    public interface CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder extends MessageOrBuilder {
        String getActivationCode();

        ByteString getActivationCodeBytes();

        String getAuthenticatorCode();

        ByteString getAuthenticatorCodeBytes();

        long getAuthenticatorTime();

        String getHttpHeaders(int i);

        ByteString getHttpHeadersBytes(int i);

        int getHttpHeadersCount();

        List<String> getHttpHeadersList();

        long getSteamid();

        boolean getValidateSmsCode();

        boolean hasActivationCode();

        boolean hasAuthenticatorCode();

        boolean hasAuthenticatorTime();

        boolean hasSteamid();

        boolean hasValidateSmsCode();
    }

    public interface CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder extends MessageOrBuilder {
        long getServerTime();

        int getStatus();

        boolean getSuccess();

        boolean hasServerTime();

        boolean hasStatus();

        boolean hasSuccess();
    }

    public interface CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder extends MessageOrBuilder {
        boolean getGenerateNewToken();

        String getSmsCode();

        ByteString getSmsCodeBytes();

        int getVersion();

        boolean hasGenerateNewToken();

        boolean hasSmsCode();

        boolean hasVersion();
    }

    public interface CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder extends MessageOrBuilder {
        CRemoveAuthenticatorViaChallengeContinue_Replacement_Token getReplacementToken();

        CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder getReplacementTokenOrBuilder();

        boolean getSuccess();

        boolean hasReplacementToken();

        boolean hasSuccess();
    }

    public interface CTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseOrBuilder extends MessageOrBuilder {
        boolean getSuccess();

        boolean hasSuccess();
    }

    public interface CTwoFactor_RemoveAuthenticator_RequestOrBuilder extends MessageOrBuilder {
        boolean getRemoveAllSteamguardCookies();

        String getRevocationCode();

        ByteString getRevocationCodeBytes();

        int getRevocationReason();

        int getSteamguardScheme();

        boolean hasRemoveAllSteamguardCookies();

        boolean hasRevocationCode();

        boolean hasRevocationReason();

        boolean hasSteamguardScheme();
    }

    public interface CTwoFactor_RemoveAuthenticator_ResponseOrBuilder extends MessageOrBuilder {
        int getRevocationAttemptsRemaining();

        long getServerTime();

        boolean getSuccess();

        boolean hasRevocationAttemptsRemaining();

        boolean hasServerTime();

        boolean hasSuccess();
    }

    public interface CTwoFactor_Status_RequestOrBuilder extends MessageOrBuilder {
        ETwoFactorStatusFieldFlag getInclude();

        long getSteamid();

        boolean hasInclude();

        boolean hasSteamid();
    }

    public interface CTwoFactor_Status_ResponseOrBuilder extends MessageOrBuilder {
        boolean getAllowExternalAuthenticator();

        boolean getAuthenticatorAllowed();

        int getAuthenticatorType();

        String getClassifiedAgent();

        ByteString getClassifiedAgentBytes();

        String getDeviceIdentifier();

        ByteString getDeviceIdentifierBytes();

        boolean getEmailValidated();

        int getInactivationReason();

        long getLastSeenAuthTokenId();

        int getRevocationAttemptsRemaining();

        int getState();

        int getSteamguardScheme();

        int getTimeCreated();

        int getTimeTransferred();

        String getTokenGid();

        ByteString getTokenGidBytes();

        CTwoFactor_UsageEvent getUsages(int i);

        int getUsagesCount();

        List<CTwoFactor_UsageEvent> getUsagesList();

        CTwoFactor_UsageEventOrBuilder getUsagesOrBuilder(int i);

        List<? extends CTwoFactor_UsageEventOrBuilder> getUsagesOrBuilderList();

        int getVersion();

        boolean hasAllowExternalAuthenticator();

        boolean hasAuthenticatorAllowed();

        boolean hasAuthenticatorType();

        boolean hasClassifiedAgent();

        boolean hasDeviceIdentifier();

        boolean hasEmailValidated();

        boolean hasInactivationReason();

        boolean hasLastSeenAuthTokenId();

        boolean hasRevocationAttemptsRemaining();

        boolean hasState();

        boolean hasSteamguardScheme();

        boolean hasTimeCreated();

        boolean hasTimeTransferred();

        boolean hasTokenGid();

        boolean hasVersion();
    }

    public interface CTwoFactor_Time_RequestOrBuilder extends MessageOrBuilder {
        long getSenderTime();

        boolean hasSenderTime();
    }

    public interface CTwoFactor_Time_ResponseOrBuilder extends MessageOrBuilder {
        int getAdjustedTimeProbeFrequencySeconds();

        int getHintProbeFrequencySeconds();

        long getLargeTimeJink();

        int getMaxAttempts();

        int getProbeFrequencySeconds();

        long getServerTime();

        long getSkewToleranceSeconds();

        int getSyncTimeout();

        int getTryAgainSeconds();

        boolean hasAdjustedTimeProbeFrequencySeconds();

        boolean hasHintProbeFrequencySeconds();

        boolean hasLargeTimeJink();

        boolean hasMaxAttempts();

        boolean hasProbeFrequencySeconds();

        boolean hasServerTime();

        boolean hasSkewToleranceSeconds();

        boolean hasSyncTimeout();

        boolean hasTryAgainSeconds();
    }

    public interface CTwoFactor_UpdateTokenVersion_RequestOrBuilder extends MessageOrBuilder {
        ByteString getSignature();

        long getSteamid();

        int getVersion();

        boolean hasSignature();

        boolean hasSteamid();

        boolean hasVersion();
    }

    public interface CTwoFactor_UsageEventOrBuilder extends MessageOrBuilder {
        int getConfirmationAction();

        int getConfirmationType();

        int getTime();

        ETwoFactorUsageType getUsageType();

        boolean hasConfirmationAction();

        boolean hasConfirmationType();

        boolean hasTime();

        boolean hasUsageType();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesTwofactorSteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesTwofactorSteamclient.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nVin/dragonbra/javasteam/protobufs/steamclient/steammessages_twofactor.steamclient.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001aYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\".\n\u0017CTwoFactor_Time_Request\u0012\u0013\n\u000bsender_time\u0018\u0001 \u0001(\u0004\"¥\u0002\n\u0018CTwoFactor_Time_Response\u0012\u0013\n\u000bserver_time\u0018\u0001 \u0001(\u0004\u0012\u001e\n\u0016skew_tolerance_seconds\u0018\u0002 \u0001(\u0004\u0012\u0017\n\u000flarge_time_jink\u0018\u0003 \u0001(\u0004\u0012\u001f\n\u0017probe_frequency_seconds\u0018\u0004 \u0001(\r\u0012-\n%adjusted_time_probe_frequency_seconds\u0018\u0005 \u0001(\r\u0012$\n\u001chint_probe_frequency_seconds\u0018\u0006 \u0001(\r\u0012\u0014\n\fsync_timeout\u0018\u0007 \u0001(\r\u0012\u0019\n\u0011try_again_seconds\u0018\b \u0001(\r\u0012\u0014\n\fmax_attempts\u0018\t \u0001(\r\"{\n\u0019CTwoFactor_Status_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012M\n\u0007include\u0018\u0002 \u0001(\u000e2\u001a.ETwoFactorStatusFieldFlag: k_ETwoFactorStatusFieldFlag_None\"¦\u0001\n\u0015CTwoFactor_UsageEvent\u0012\f\n\u0004time\u0018\u0001 \u0001(\r\u0012G\n\nusage_type\u0018\u0002 \u0001(\u000e2\u0014.ETwoFactorUsageType:\u001dk_ETwoFactorUsageType_Unknown\u0012\u0019\n\u0011confirmation_type\u0018\u0003 \u0001(\u0005\u0012\u001b\n\u0013confirmation_action\u0018\u0004 \u0001(\u0005\"Ö\u0003\n\u001aCTwoFactor_Status_Response\u0012\r\n\u0005state\u0018\u0001 \u0001(\r\u0012\u001b\n\u0013inactivation_reason\u0018\u0002 \u0001(\r\u0012\u001a\n\u0012authenticator_type\u0018\u0003 \u0001(\r\u0012\u001d\n\u0015authenticator_allowed\u0018\u0004 \u0001(\b\u0012\u0019\n\u0011steamguard_scheme\u0018\u0005 \u0001(\r\u0012\u0011\n\ttoken_gid\u0018\u0006 \u0001(\t\u0012\u0017\n\u000femail_validated\u0018\u0007 \u0001(\b\u0012\u0019\n\u0011device_identifier\u0018\b \u0001(\t\u0012\u0014\n\ftime_created\u0018\t \u0001(\r\u0012%\n\u001drevocation_attempts_remaining\u0018\n \u0001(\r\u0012\u0018\n\u0010classified_agent\u0018\u000b \u0001(\t\u0012$\n\u001callow_external_authenticator\u0018\f \u0001(\b\u0012\u0018\n\u0010time_transferred\u0018\r \u0001(\r\u0012\u000f\n\u0007version\u0018\u000e \u0001(\r\u0012\u001f\n\u0017last_seen_auth_token_id\u0018\u000f \u0001(\u0006\u0012&\n\u0006usages\u0018\u0010 \u0003(\u000b2\u0016.CTwoFactor_UsageEvent\"Ê\u0001\n#CTwoFactor_AddAuthenticator_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u001a\n\u0012authenticator_time\u0018\u0002 \u0001(\u0004\u0012\u0015\n\rserial_number\u0018\u0003 \u0001(\u0006\u0012\u001a\n\u0012authenticator_type\u0018\u0004 \u0001(\r\u0012\u0019\n\u0011device_identifier\u0018\u0005 \u0001(\t\u0012\u0014\n\fhttp_headers\u0018\u0007 \u0003(\t\u0012\u0012\n\u0007version\u0018\b \u0001(\r:\u00011\"¤\u0002\n$CTwoFactor_AddAuthenticator_Response\u0012\u0015\n\rshared_secret\u0018\u0001 \u0001(\f\u0012\u0015\n\rserial_number\u0018\u0002 \u0001(\u0006\u0012\u0017\n\u000frevocation_code\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003uri\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bserver_time\u0018\u0005 \u0001(\u0004\u0012\u0014\n\faccount_name\u0018\u0006 \u0001(\t\u0012\u0011\n\ttoken_gid\u0018\u0007 \u0001(\t\u0012\u0017\n\u000fidentity_secret\u0018\b \u0001(\f\u0012\u0010\n\bsecret_1\u0018\t \u0001(\f\u0012\u000e\n\u0006status\u0018\n \u0001(\u0005\u0012\u0019\n\u0011phone_number_hint\u0018\u000b \u0001(\t\u0012\u0014\n\fconfirm_type\u0018\f \u0001(\u0005\"À\u0001\n+CTwoFactor_FinalizeAddAuthenticator_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u001a\n\u0012authenticator_code\u0018\u0002 \u0001(\t\u0012\u001a\n\u0012authenticator_time\u0018\u0003 \u0001(\u0004\u0012\u0017\n\u000factivation_code\u0018\u0004 \u0001(\t\u0012\u0014\n\fhttp_headers\u0018\u0005 \u0003(\t\u0012\u0019\n\u0011validate_sms_code\u0018\u0006 \u0001(\b\"d\n,CTwoFactor_FinalizeAddAuthenticator_Response\u0012\u000f\n\u0007success\u0018\u0001 \u0001(\b\u0012\u0013\n\u000bserver_time\u0018\u0003 \u0001(\u0004\u0012\u000e\n\u0006status\u0018\u0004 \u0001(\u0005\"\\\n%CTwoFactor_UpdateTokenVersion_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u000f\n\u0007version\u0018\u0002 \u0001(\r\u0012\u0011\n\tsignature\u0018\u0003 \u0001(\f\"(\n&CTwoFactor_UpdateTokenVersion_Response\"\u009e\u0001\n&CTwoFactor_RemoveAuthenticator_Request\u0012\u0017\n\u000frevocation_code\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011revocation_reason\u0018\u0005 \u0001(\r\u0012\u0019\n\u0011steamguard_scheme\u0018\u0006 \u0001(\r\u0012%\n\u001dremove_all_steamguard_cookies\u0018\u0007 \u0001(\b\"v\n'CTwoFactor_RemoveAuthenticator_Response\u0012\u000f\n\u0007success\u0018\u0001 \u0001(\b\u0012\u0013\n\u000bserver_time\u0018\u0003 \u0001(\u0004\u0012%\n\u001drevocation_attempts_remaining\u0018\u0005 \u0001(\r\"9\n7CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request\"K\n8CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response\u0012\u000f\n\u0007success\u0018\u0001 \u0001(\b\"~\n:CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request\u0012\u0010\n\bsms_code\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012generate_new_token\u0018\u0002 \u0001(\b\u0012\u0012\n\u0007version\u0018\u0003 \u0001(\r:\u00011\"µ\u0002\n:CRemoveAuthenticatorViaChallengeContinue_Replacement_Token\u0012\u0015\n\rshared_secret\u0018\u0001 \u0001(\f\u0012\u0015\n\rserial_number\u0018\u0002 \u0001(\u0006\u0012\u0017\n\u000frevocation_code\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003uri\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bserver_time\u0018\u0005 \u0001(\u0004\u0012\u0014\n\faccount_name\u0018\u0006 \u0001(\t\u0012\u0011\n\ttoken_gid\u0018\u0007 \u0001(\t\u0012\u0017\n\u000fidentity_secret\u0018\b \u0001(\f\u0012\u0010\n\bsecret_1\u0018\t \u0001(\f\u0012\u000e\n\u0006status\u0018\n \u0001(\u0005\u0012\u0019\n\u0011steamguard_scheme\u0018\u000b \u0001(\r\u0012\u000f\n\u0007steamid\u0018\f \u0001(\u0006\"¦\u0001\n;CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response\u0012\u000f\n\u0007success\u0018\u0001 \u0001(\b\u0012V\n\u0011replacement_token\u0018\u0002 \u0001(\u000b2;.CRemoveAuthenticatorViaChallengeContinue_Replacement_Token*l\n\u0019ETwoFactorStatusFieldFlag\u0012$\n k_ETwoFactorStatusFieldFlag_None\u0010\u0000\u0012)\n%k_ETwoFactorStatusFieldFlag_LastUsage\u0010\u0001*§\u0001\n\u0013ETwoFactorUsageType\u0012!\n\u001dk_ETwoFactorUsageType_Unknown\u0010\u0000\u0012\u001e\n\u001ak_ETwoFactorUsageType_None\u0010\u0001\u0012,\n(k_ETwoFactorUsageType_MobileConfirmation\u0010\u0002\u0012\u001f\n\u001bk_ETwoFactorUsageType_Login\u0010\u00032\u0085\u0007\n\tTwoFactor\u0012@\n\tQueryTime\u0012\u0018.CTwoFactor_Time_Request\u001a\u0019.CTwoFactor_Time_Response\u0012F\n\u000bQueryStatus\u0012\u001a.CTwoFactor_Status_Request\u001a\u001b.CTwoFactor_Status_Response\u0012_\n\u0010AddAuthenticator\u0012$.CTwoFactor_AddAuthenticator_Request\u001a%.CTwoFactor_AddAuthenticator_Response\u0012w\n\u0018FinalizeAddAuthenticator\u0012,.CTwoFactor_FinalizeAddAuthenticator_Request\u001a-.CTwoFactor_FinalizeAddAuthenticator_Response\u0012e\n\u0012UpdateTokenVersion\u0012&.CTwoFactor_UpdateTokenVersion_Request\u001a'.CTwoFactor_UpdateTokenVersion_Response\u0012h\n\u0013RemoveAuthenticator\u0012'.CTwoFactor_RemoveAuthenticator_Request\u001a(.CTwoFactor_RemoveAuthenticator_Response\u0012\u009b\u0001\n$RemoveAuthenticatorViaChallengeStart\u00128.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request\u001a9.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response\u0012¤\u0001\n'RemoveAuthenticatorViaChallengeContinue\u0012;.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request\u001a<.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor(), SteammessagesUnifiedBaseSteamclient.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CTwoFactor_Time_Request_descriptor = descriptor2;
        internal_static_CTwoFactor_Time_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"SenderTime"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CTwoFactor_Time_Response_descriptor = descriptor3;
        internal_static_CTwoFactor_Time_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"ServerTime", "SkewToleranceSeconds", "LargeTimeJink", "ProbeFrequencySeconds", "AdjustedTimeProbeFrequencySeconds", "HintProbeFrequencySeconds", "SyncTimeout", "TryAgainSeconds", "MaxAttempts"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CTwoFactor_Status_Request_descriptor = descriptor4;
        internal_static_CTwoFactor_Status_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Steamid", "Include"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CTwoFactor_UsageEvent_descriptor = descriptor5;
        internal_static_CTwoFactor_UsageEvent_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Time", "UsageType", "ConfirmationType", "ConfirmationAction"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CTwoFactor_Status_Response_descriptor = descriptor6;
        internal_static_CTwoFactor_Status_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"State", "InactivationReason", "AuthenticatorType", "AuthenticatorAllowed", "SteamguardScheme", "TokenGid", "EmailValidated", "DeviceIdentifier", "TimeCreated", "RevocationAttemptsRemaining", "ClassifiedAgent", "AllowExternalAuthenticator", "TimeTransferred", "Version", "LastSeenAuthTokenId", "Usages"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CTwoFactor_AddAuthenticator_Request_descriptor = descriptor7;
        internal_static_CTwoFactor_AddAuthenticator_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Steamid", "AuthenticatorTime", "SerialNumber", "AuthenticatorType", "DeviceIdentifier", "HttpHeaders", "Version"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CTwoFactor_AddAuthenticator_Response_descriptor = descriptor8;
        internal_static_CTwoFactor_AddAuthenticator_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"SharedSecret", "SerialNumber", "RevocationCode", "Uri", "ServerTime", "AccountName", "TokenGid", "IdentitySecret", "Secret1", "Status", "PhoneNumberHint", "ConfirmType"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_descriptor = descriptor9;
        internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Steamid", "AuthenticatorCode", "AuthenticatorTime", "ActivationCode", "HttpHeaders", "ValidateSmsCode"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_descriptor = descriptor10;
        internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Success", "ServerTime", "Status"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_CTwoFactor_UpdateTokenVersion_Request_descriptor = descriptor11;
        internal_static_CTwoFactor_UpdateTokenVersion_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Steamid", "Version", "Signature"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_CTwoFactor_UpdateTokenVersion_Response_descriptor = descriptor12;
        internal_static_CTwoFactor_UpdateTokenVersion_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[0]);
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_CTwoFactor_RemoveAuthenticator_Request_descriptor = descriptor13;
        internal_static_CTwoFactor_RemoveAuthenticator_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"RevocationCode", "RevocationReason", "SteamguardScheme", "RemoveAllSteamguardCookies"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_CTwoFactor_RemoveAuthenticator_Response_descriptor = descriptor14;
        internal_static_CTwoFactor_RemoveAuthenticator_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Success", "ServerTime", "RevocationAttemptsRemaining"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(13);
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_descriptor = descriptor15;
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[0]);
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(14);
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_descriptor = descriptor16;
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Success"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(15);
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_descriptor = descriptor17;
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"SmsCode", "GenerateNewToken", "Version"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(16);
        internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_descriptor = descriptor18;
        internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"SharedSecret", "SerialNumber", "RevocationCode", "Uri", "ServerTime", "AccountName", "TokenGid", "IdentitySecret", "Secret1", "Status", "SteamguardScheme", "Steamid"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(17);
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_descriptor = descriptor19;
        internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"Success", "ReplacementToken"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        SteammessagesUnifiedBaseSteamclient.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum ETwoFactorStatusFieldFlag implements ProtocolMessageEnum {
        k_ETwoFactorStatusFieldFlag_None(0),
        k_ETwoFactorStatusFieldFlag_LastUsage(1);

        private static final ETwoFactorStatusFieldFlag[] VALUES;
        private static final Internal.EnumLiteMap<ETwoFactorStatusFieldFlag> internalValueMap;
        public static final int k_ETwoFactorStatusFieldFlag_LastUsage_VALUE = 1;
        public static final int k_ETwoFactorStatusFieldFlag_None_VALUE = 0;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ETwoFactorStatusFieldFlag.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ETwoFactorStatusFieldFlag>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.ETwoFactorStatusFieldFlag.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ETwoFactorStatusFieldFlag findValueByNumber(int i) {
                    return ETwoFactorStatusFieldFlag.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ETwoFactorStatusFieldFlag valueOf(int i) {
            return forNumber(i);
        }

        public static ETwoFactorStatusFieldFlag forNumber(int i) {
            if (i == 0) {
                return k_ETwoFactorStatusFieldFlag_None;
            }
            if (i != 1) {
                return null;
            }
            return k_ETwoFactorStatusFieldFlag_LastUsage;
        }

        public static Internal.EnumLiteMap<ETwoFactorStatusFieldFlag> internalGetValueMap() {
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
            return SteammessagesTwofactorSteamclient.getDescriptor().getEnumTypes().get(0);
        }

        public static ETwoFactorStatusFieldFlag valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ETwoFactorStatusFieldFlag(int i) {
            this.value = i;
        }
    }

    public enum ETwoFactorUsageType implements ProtocolMessageEnum {
        k_ETwoFactorUsageType_Unknown(0),
        k_ETwoFactorUsageType_None(1),
        k_ETwoFactorUsageType_MobileConfirmation(2),
        k_ETwoFactorUsageType_Login(3);

        private static final ETwoFactorUsageType[] VALUES;
        private static final Internal.EnumLiteMap<ETwoFactorUsageType> internalValueMap;
        public static final int k_ETwoFactorUsageType_Login_VALUE = 3;
        public static final int k_ETwoFactorUsageType_MobileConfirmation_VALUE = 2;
        public static final int k_ETwoFactorUsageType_None_VALUE = 1;
        public static final int k_ETwoFactorUsageType_Unknown_VALUE = 0;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ETwoFactorUsageType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<ETwoFactorUsageType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.ETwoFactorUsageType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ETwoFactorUsageType findValueByNumber(int i) {
                    return ETwoFactorUsageType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ETwoFactorUsageType valueOf(int i) {
            return forNumber(i);
        }

        public static ETwoFactorUsageType forNumber(int i) {
            if (i == 0) {
                return k_ETwoFactorUsageType_Unknown;
            }
            if (i == 1) {
                return k_ETwoFactorUsageType_None;
            }
            if (i == 2) {
                return k_ETwoFactorUsageType_MobileConfirmation;
            }
            if (i != 3) {
                return null;
            }
            return k_ETwoFactorUsageType_Login;
        }

        public static Internal.EnumLiteMap<ETwoFactorUsageType> internalGetValueMap() {
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
            return SteammessagesTwofactorSteamclient.getDescriptor().getEnumTypes().get(1);
        }

        public static ETwoFactorUsageType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ETwoFactorUsageType(int i) {
            this.value = i;
        }
    }

    public static final class CTwoFactor_Time_Request extends GeneratedMessage implements CTwoFactor_Time_RequestOrBuilder {
        private static final CTwoFactor_Time_Request DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_Time_Request> PARSER;
        public static final int SENDER_TIME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long senderTime_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_Time_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_Time_Request();
            PARSER = new AbstractParser<CTwoFactor_Time_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_Time_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_Time_Request.newBuilder();
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

        private CTwoFactor_Time_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.senderTime_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_Time_Request() {
            this.senderTime_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Time_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_RequestOrBuilder
        public boolean hasSenderTime() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_RequestOrBuilder
        public long getSenderTime() {
            return this.senderTime_;
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
                codedOutputStream.writeUInt64(1, this.senderTime_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.senderTime_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt64Size;
            return iComputeUInt64Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CTwoFactor_Time_Request)) {
                return super.equals(obj);
            }
            CTwoFactor_Time_Request cTwoFactor_Time_Request = (CTwoFactor_Time_Request) obj;
            if (hasSenderTime() != cTwoFactor_Time_Request.hasSenderTime()) {
                return false;
            }
            return (!hasSenderTime() || getSenderTime() == cTwoFactor_Time_Request.getSenderTime()) && getUnknownFields().equals(cTwoFactor_Time_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSenderTime()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSenderTime());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_Time_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_Time_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_Time_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_Time_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Time_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Time_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Time_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Time_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Time_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Time_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_Time_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_Time_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Time_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_Time_Request cTwoFactor_Time_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_Time_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_Time_RequestOrBuilder {
            private int bitField0_;
            private long senderTime_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Time_Request.class, Builder.class);
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
                this.senderTime_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_Time_Request getDefaultInstanceForType() {
                return CTwoFactor_Time_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Time_Request build() {
                CTwoFactor_Time_Request cTwoFactor_Time_RequestBuildPartial = buildPartial();
                if (cTwoFactor_Time_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_Time_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_Time_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Time_Request buildPartial() {
                CTwoFactor_Time_Request cTwoFactor_Time_Request = new CTwoFactor_Time_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_Time_Request);
                }
                onBuilt();
                return cTwoFactor_Time_Request;
            }

            private void buildPartial0(CTwoFactor_Time_Request cTwoFactor_Time_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cTwoFactor_Time_Request.senderTime_ = this.senderTime_;
                } else {
                    i = 0;
                }
                cTwoFactor_Time_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_Time_Request) {
                    return mergeFrom((CTwoFactor_Time_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_Time_Request cTwoFactor_Time_Request) {
                if (cTwoFactor_Time_Request == CTwoFactor_Time_Request.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_Time_Request.hasSenderTime()) {
                    setSenderTime(cTwoFactor_Time_Request.getSenderTime());
                }
                mergeUnknownFields(cTwoFactor_Time_Request.getUnknownFields());
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
                                    this.senderTime_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_RequestOrBuilder
            public boolean hasSenderTime() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_RequestOrBuilder
            public long getSenderTime() {
                return this.senderTime_;
            }

            public Builder setSenderTime(long j) {
                this.senderTime_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSenderTime() {
                this.bitField0_ &= -2;
                this.senderTime_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_Time_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_Time_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_Time_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_Time_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_Time_Response extends GeneratedMessage implements CTwoFactor_Time_ResponseOrBuilder {
        public static final int ADJUSTED_TIME_PROBE_FREQUENCY_SECONDS_FIELD_NUMBER = 5;
        private static final CTwoFactor_Time_Response DEFAULT_INSTANCE;
        public static final int HINT_PROBE_FREQUENCY_SECONDS_FIELD_NUMBER = 6;
        public static final int LARGE_TIME_JINK_FIELD_NUMBER = 3;
        public static final int MAX_ATTEMPTS_FIELD_NUMBER = 9;
        private static final Parser<CTwoFactor_Time_Response> PARSER;
        public static final int PROBE_FREQUENCY_SECONDS_FIELD_NUMBER = 4;
        public static final int SERVER_TIME_FIELD_NUMBER = 1;
        public static final int SKEW_TOLERANCE_SECONDS_FIELD_NUMBER = 2;
        public static final int SYNC_TIMEOUT_FIELD_NUMBER = 7;
        public static final int TRY_AGAIN_SECONDS_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private int adjustedTimeProbeFrequencySeconds_;
        private int bitField0_;
        private int hintProbeFrequencySeconds_;
        private long largeTimeJink_;
        private int maxAttempts_;
        private byte memoizedIsInitialized;
        private int probeFrequencySeconds_;
        private long serverTime_;
        private long skewToleranceSeconds_;
        private int syncTimeout_;
        private int tryAgainSeconds_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_Time_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_Time_Response();
            PARSER = new AbstractParser<CTwoFactor_Time_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_Time_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_Time_Response.newBuilder();
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

        private CTwoFactor_Time_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.serverTime_ = 0L;
            this.skewToleranceSeconds_ = 0L;
            this.largeTimeJink_ = 0L;
            this.probeFrequencySeconds_ = 0;
            this.adjustedTimeProbeFrequencySeconds_ = 0;
            this.hintProbeFrequencySeconds_ = 0;
            this.syncTimeout_ = 0;
            this.tryAgainSeconds_ = 0;
            this.maxAttempts_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_Time_Response() {
            this.serverTime_ = 0L;
            this.skewToleranceSeconds_ = 0L;
            this.largeTimeJink_ = 0L;
            this.probeFrequencySeconds_ = 0;
            this.adjustedTimeProbeFrequencySeconds_ = 0;
            this.hintProbeFrequencySeconds_ = 0;
            this.syncTimeout_ = 0;
            this.tryAgainSeconds_ = 0;
            this.maxAttempts_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Time_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasServerTime() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public long getServerTime() {
            return this.serverTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasSkewToleranceSeconds() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public long getSkewToleranceSeconds() {
            return this.skewToleranceSeconds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasLargeTimeJink() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public long getLargeTimeJink() {
            return this.largeTimeJink_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasProbeFrequencySeconds() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public int getProbeFrequencySeconds() {
            return this.probeFrequencySeconds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasAdjustedTimeProbeFrequencySeconds() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public int getAdjustedTimeProbeFrequencySeconds() {
            return this.adjustedTimeProbeFrequencySeconds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasHintProbeFrequencySeconds() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public int getHintProbeFrequencySeconds() {
            return this.hintProbeFrequencySeconds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasSyncTimeout() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public int getSyncTimeout() {
            return this.syncTimeout_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasTryAgainSeconds() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public int getTryAgainSeconds() {
            return this.tryAgainSeconds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public boolean hasMaxAttempts() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
        public int getMaxAttempts() {
            return this.maxAttempts_;
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
                codedOutputStream.writeUInt64(1, this.serverTime_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.skewToleranceSeconds_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.largeTimeJink_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.probeFrequencySeconds_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.adjustedTimeProbeFrequencySeconds_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.hintProbeFrequencySeconds_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.syncTimeout_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(8, this.tryAgainSeconds_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(9, this.maxAttempts_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.serverTime_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(2, this.skewToleranceSeconds_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(3, this.largeTimeJink_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(4, this.probeFrequencySeconds_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(5, this.adjustedTimeProbeFrequencySeconds_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(6, this.hintProbeFrequencySeconds_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(7, this.syncTimeout_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(8, this.tryAgainSeconds_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(9, this.maxAttempts_);
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
            if (!(obj instanceof CTwoFactor_Time_Response)) {
                return super.equals(obj);
            }
            CTwoFactor_Time_Response cTwoFactor_Time_Response = (CTwoFactor_Time_Response) obj;
            if (hasServerTime() != cTwoFactor_Time_Response.hasServerTime()) {
                return false;
            }
            if ((hasServerTime() && getServerTime() != cTwoFactor_Time_Response.getServerTime()) || hasSkewToleranceSeconds() != cTwoFactor_Time_Response.hasSkewToleranceSeconds()) {
                return false;
            }
            if ((hasSkewToleranceSeconds() && getSkewToleranceSeconds() != cTwoFactor_Time_Response.getSkewToleranceSeconds()) || hasLargeTimeJink() != cTwoFactor_Time_Response.hasLargeTimeJink()) {
                return false;
            }
            if ((hasLargeTimeJink() && getLargeTimeJink() != cTwoFactor_Time_Response.getLargeTimeJink()) || hasProbeFrequencySeconds() != cTwoFactor_Time_Response.hasProbeFrequencySeconds()) {
                return false;
            }
            if ((hasProbeFrequencySeconds() && getProbeFrequencySeconds() != cTwoFactor_Time_Response.getProbeFrequencySeconds()) || hasAdjustedTimeProbeFrequencySeconds() != cTwoFactor_Time_Response.hasAdjustedTimeProbeFrequencySeconds()) {
                return false;
            }
            if ((hasAdjustedTimeProbeFrequencySeconds() && getAdjustedTimeProbeFrequencySeconds() != cTwoFactor_Time_Response.getAdjustedTimeProbeFrequencySeconds()) || hasHintProbeFrequencySeconds() != cTwoFactor_Time_Response.hasHintProbeFrequencySeconds()) {
                return false;
            }
            if ((hasHintProbeFrequencySeconds() && getHintProbeFrequencySeconds() != cTwoFactor_Time_Response.getHintProbeFrequencySeconds()) || hasSyncTimeout() != cTwoFactor_Time_Response.hasSyncTimeout()) {
                return false;
            }
            if ((hasSyncTimeout() && getSyncTimeout() != cTwoFactor_Time_Response.getSyncTimeout()) || hasTryAgainSeconds() != cTwoFactor_Time_Response.hasTryAgainSeconds()) {
                return false;
            }
            if ((!hasTryAgainSeconds() || getTryAgainSeconds() == cTwoFactor_Time_Response.getTryAgainSeconds()) && hasMaxAttempts() == cTwoFactor_Time_Response.hasMaxAttempts()) {
                return (!hasMaxAttempts() || getMaxAttempts() == cTwoFactor_Time_Response.getMaxAttempts()) && getUnknownFields().equals(cTwoFactor_Time_Response.getUnknownFields());
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
            if (hasServerTime()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getServerTime());
            }
            if (hasSkewToleranceSeconds()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSkewToleranceSeconds());
            }
            if (hasLargeTimeJink()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getLargeTimeJink());
            }
            if (hasProbeFrequencySeconds()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getProbeFrequencySeconds();
            }
            if (hasAdjustedTimeProbeFrequencySeconds()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getAdjustedTimeProbeFrequencySeconds();
            }
            if (hasHintProbeFrequencySeconds()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getHintProbeFrequencySeconds();
            }
            if (hasSyncTimeout()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getSyncTimeout();
            }
            if (hasTryAgainSeconds()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getTryAgainSeconds();
            }
            if (hasMaxAttempts()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getMaxAttempts();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_Time_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_Time_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_Time_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_Time_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Time_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Time_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Time_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Time_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Time_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Time_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Time_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_Time_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_Time_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Time_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_Time_Response cTwoFactor_Time_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_Time_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_Time_ResponseOrBuilder {
            private int adjustedTimeProbeFrequencySeconds_;
            private int bitField0_;
            private int hintProbeFrequencySeconds_;
            private long largeTimeJink_;
            private int maxAttempts_;
            private int probeFrequencySeconds_;
            private long serverTime_;
            private long skewToleranceSeconds_;
            private int syncTimeout_;
            private int tryAgainSeconds_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Time_Response.class, Builder.class);
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
                this.serverTime_ = 0L;
                this.skewToleranceSeconds_ = 0L;
                this.largeTimeJink_ = 0L;
                this.probeFrequencySeconds_ = 0;
                this.adjustedTimeProbeFrequencySeconds_ = 0;
                this.hintProbeFrequencySeconds_ = 0;
                this.syncTimeout_ = 0;
                this.tryAgainSeconds_ = 0;
                this.maxAttempts_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Time_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_Time_Response getDefaultInstanceForType() {
                return CTwoFactor_Time_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Time_Response build() {
                CTwoFactor_Time_Response cTwoFactor_Time_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_Time_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_Time_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_Time_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Time_Response buildPartial() {
                CTwoFactor_Time_Response cTwoFactor_Time_Response = new CTwoFactor_Time_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_Time_Response);
                }
                onBuilt();
                return cTwoFactor_Time_Response;
            }

            private void buildPartial0(CTwoFactor_Time_Response cTwoFactor_Time_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_Time_Response.serverTime_ = this.serverTime_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_Time_Response.skewToleranceSeconds_ = this.skewToleranceSeconds_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_Time_Response.largeTimeJink_ = this.largeTimeJink_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cTwoFactor_Time_Response.probeFrequencySeconds_ = this.probeFrequencySeconds_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cTwoFactor_Time_Response.adjustedTimeProbeFrequencySeconds_ = this.adjustedTimeProbeFrequencySeconds_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cTwoFactor_Time_Response.hintProbeFrequencySeconds_ = this.hintProbeFrequencySeconds_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cTwoFactor_Time_Response.syncTimeout_ = this.syncTimeout_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cTwoFactor_Time_Response.tryAgainSeconds_ = this.tryAgainSeconds_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cTwoFactor_Time_Response.maxAttempts_ = this.maxAttempts_;
                    i |= 256;
                }
                cTwoFactor_Time_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_Time_Response) {
                    return mergeFrom((CTwoFactor_Time_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_Time_Response cTwoFactor_Time_Response) {
                if (cTwoFactor_Time_Response == CTwoFactor_Time_Response.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_Time_Response.hasServerTime()) {
                    setServerTime(cTwoFactor_Time_Response.getServerTime());
                }
                if (cTwoFactor_Time_Response.hasSkewToleranceSeconds()) {
                    setSkewToleranceSeconds(cTwoFactor_Time_Response.getSkewToleranceSeconds());
                }
                if (cTwoFactor_Time_Response.hasLargeTimeJink()) {
                    setLargeTimeJink(cTwoFactor_Time_Response.getLargeTimeJink());
                }
                if (cTwoFactor_Time_Response.hasProbeFrequencySeconds()) {
                    setProbeFrequencySeconds(cTwoFactor_Time_Response.getProbeFrequencySeconds());
                }
                if (cTwoFactor_Time_Response.hasAdjustedTimeProbeFrequencySeconds()) {
                    setAdjustedTimeProbeFrequencySeconds(cTwoFactor_Time_Response.getAdjustedTimeProbeFrequencySeconds());
                }
                if (cTwoFactor_Time_Response.hasHintProbeFrequencySeconds()) {
                    setHintProbeFrequencySeconds(cTwoFactor_Time_Response.getHintProbeFrequencySeconds());
                }
                if (cTwoFactor_Time_Response.hasSyncTimeout()) {
                    setSyncTimeout(cTwoFactor_Time_Response.getSyncTimeout());
                }
                if (cTwoFactor_Time_Response.hasTryAgainSeconds()) {
                    setTryAgainSeconds(cTwoFactor_Time_Response.getTryAgainSeconds());
                }
                if (cTwoFactor_Time_Response.hasMaxAttempts()) {
                    setMaxAttempts(cTwoFactor_Time_Response.getMaxAttempts());
                }
                mergeUnknownFields(cTwoFactor_Time_Response.getUnknownFields());
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
                                    this.serverTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.skewToleranceSeconds_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.largeTimeJink_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.probeFrequencySeconds_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.adjustedTimeProbeFrequencySeconds_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.hintProbeFrequencySeconds_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 56) {
                                    this.syncTimeout_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                } else if (tag == 64) {
                                    this.tryAgainSeconds_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
                                } else if (tag == 72) {
                                    this.maxAttempts_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasServerTime() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public long getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(long j) {
                this.serverTime_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -2;
                this.serverTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasSkewToleranceSeconds() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public long getSkewToleranceSeconds() {
                return this.skewToleranceSeconds_;
            }

            public Builder setSkewToleranceSeconds(long j) {
                this.skewToleranceSeconds_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSkewToleranceSeconds() {
                this.bitField0_ &= -3;
                this.skewToleranceSeconds_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasLargeTimeJink() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public long getLargeTimeJink() {
                return this.largeTimeJink_;
            }

            public Builder setLargeTimeJink(long j) {
                this.largeTimeJink_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearLargeTimeJink() {
                this.bitField0_ &= -5;
                this.largeTimeJink_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasProbeFrequencySeconds() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public int getProbeFrequencySeconds() {
                return this.probeFrequencySeconds_;
            }

            public Builder setProbeFrequencySeconds(int i) {
                this.probeFrequencySeconds_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearProbeFrequencySeconds() {
                this.bitField0_ &= -9;
                this.probeFrequencySeconds_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasAdjustedTimeProbeFrequencySeconds() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public int getAdjustedTimeProbeFrequencySeconds() {
                return this.adjustedTimeProbeFrequencySeconds_;
            }

            public Builder setAdjustedTimeProbeFrequencySeconds(int i) {
                this.adjustedTimeProbeFrequencySeconds_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearAdjustedTimeProbeFrequencySeconds() {
                this.bitField0_ &= -17;
                this.adjustedTimeProbeFrequencySeconds_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasHintProbeFrequencySeconds() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public int getHintProbeFrequencySeconds() {
                return this.hintProbeFrequencySeconds_;
            }

            public Builder setHintProbeFrequencySeconds(int i) {
                this.hintProbeFrequencySeconds_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearHintProbeFrequencySeconds() {
                this.bitField0_ &= -33;
                this.hintProbeFrequencySeconds_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasSyncTimeout() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public int getSyncTimeout() {
                return this.syncTimeout_;
            }

            public Builder setSyncTimeout(int i) {
                this.syncTimeout_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSyncTimeout() {
                this.bitField0_ &= -65;
                this.syncTimeout_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasTryAgainSeconds() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public int getTryAgainSeconds() {
                return this.tryAgainSeconds_;
            }

            public Builder setTryAgainSeconds(int i) {
                this.tryAgainSeconds_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearTryAgainSeconds() {
                this.bitField0_ &= -129;
                this.tryAgainSeconds_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public boolean hasMaxAttempts() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Time_ResponseOrBuilder
            public int getMaxAttempts() {
                return this.maxAttempts_;
            }

            public Builder setMaxAttempts(int i) {
                this.maxAttempts_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearMaxAttempts() {
                this.bitField0_ &= -257;
                this.maxAttempts_ = 0;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_Time_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_Time_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_Time_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_Time_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_Status_Request extends GeneratedMessage implements CTwoFactor_Status_RequestOrBuilder {
        private static final CTwoFactor_Status_Request DEFAULT_INSTANCE;
        public static final int INCLUDE_FIELD_NUMBER = 2;
        private static final Parser<CTwoFactor_Status_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int include_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_Status_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_Status_Request();
            PARSER = new AbstractParser<CTwoFactor_Status_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_Status_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_Status_Request.newBuilder();
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

        private CTwoFactor_Status_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.include_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_Status_Request() {
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.include_ = 0;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Status_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
        public boolean hasInclude() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
        public ETwoFactorStatusFieldFlag getInclude() {
            ETwoFactorStatusFieldFlag eTwoFactorStatusFieldFlagForNumber = ETwoFactorStatusFieldFlag.forNumber(this.include_);
            return eTwoFactorStatusFieldFlagForNumber == null ? ETwoFactorStatusFieldFlag.k_ETwoFactorStatusFieldFlag_None : eTwoFactorStatusFieldFlagForNumber;
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
                codedOutputStream.writeEnum(2, this.include_);
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
                iComputeFixed64Size += CodedOutputStream.computeEnumSize(2, this.include_);
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
            if (!(obj instanceof CTwoFactor_Status_Request)) {
                return super.equals(obj);
            }
            CTwoFactor_Status_Request cTwoFactor_Status_Request = (CTwoFactor_Status_Request) obj;
            if (hasSteamid() != cTwoFactor_Status_Request.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cTwoFactor_Status_Request.getSteamid()) && hasInclude() == cTwoFactor_Status_Request.hasInclude()) {
                return (!hasInclude() || this.include_ == cTwoFactor_Status_Request.include_) && getUnknownFields().equals(cTwoFactor_Status_Request.getUnknownFields());
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
            if (hasInclude()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + this.include_;
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_Status_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_Status_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_Status_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_Status_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Status_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Status_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Status_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Status_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Status_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Status_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_Status_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_Status_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Status_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_Status_Request cTwoFactor_Status_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_Status_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_Status_RequestOrBuilder {
            private int bitField0_;
            private int include_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Status_Request.class, Builder.class);
            }

            private Builder() {
                this.include_ = 0;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.include_ = 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.include_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_Status_Request getDefaultInstanceForType() {
                return CTwoFactor_Status_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Status_Request build() {
                CTwoFactor_Status_Request cTwoFactor_Status_RequestBuildPartial = buildPartial();
                if (cTwoFactor_Status_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_Status_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_Status_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Status_Request buildPartial() {
                CTwoFactor_Status_Request cTwoFactor_Status_Request = new CTwoFactor_Status_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_Status_Request);
                }
                onBuilt();
                return cTwoFactor_Status_Request;
            }

            private void buildPartial0(CTwoFactor_Status_Request cTwoFactor_Status_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_Status_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_Status_Request.include_ = this.include_;
                    i |= 2;
                }
                cTwoFactor_Status_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_Status_Request) {
                    return mergeFrom((CTwoFactor_Status_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_Status_Request cTwoFactor_Status_Request) {
                if (cTwoFactor_Status_Request == CTwoFactor_Status_Request.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_Status_Request.hasSteamid()) {
                    setSteamid(cTwoFactor_Status_Request.getSteamid());
                }
                if (cTwoFactor_Status_Request.hasInclude()) {
                    setInclude(cTwoFactor_Status_Request.getInclude());
                }
                mergeUnknownFields(cTwoFactor_Status_Request.getUnknownFields());
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
                                    int i = codedInputStream.readEnum();
                                    if (ETwoFactorStatusFieldFlag.forNumber(i) == null) {
                                        mergeUnknownVarintField(2, i);
                                    } else {
                                        this.include_ = i;
                                        this.bitField0_ |= 2;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
            public boolean hasInclude() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_RequestOrBuilder
            public ETwoFactorStatusFieldFlag getInclude() {
                ETwoFactorStatusFieldFlag eTwoFactorStatusFieldFlagForNumber = ETwoFactorStatusFieldFlag.forNumber(this.include_);
                return eTwoFactorStatusFieldFlagForNumber == null ? ETwoFactorStatusFieldFlag.k_ETwoFactorStatusFieldFlag_None : eTwoFactorStatusFieldFlagForNumber;
            }

            public Builder setInclude(ETwoFactorStatusFieldFlag eTwoFactorStatusFieldFlag) {
                eTwoFactorStatusFieldFlag.getClass();
                this.bitField0_ |= 2;
                this.include_ = eTwoFactorStatusFieldFlag.getNumber();
                onChanged();
                return this;
            }

            public Builder clearInclude() {
                this.bitField0_ &= -3;
                this.include_ = 0;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_Status_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_Status_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_Status_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_Status_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_UsageEvent extends GeneratedMessage implements CTwoFactor_UsageEventOrBuilder {
        public static final int CONFIRMATION_ACTION_FIELD_NUMBER = 4;
        public static final int CONFIRMATION_TYPE_FIELD_NUMBER = 3;
        private static final CTwoFactor_UsageEvent DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_UsageEvent> PARSER;
        public static final int TIME_FIELD_NUMBER = 1;
        public static final int USAGE_TYPE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int confirmationAction_;
        private int confirmationType_;
        private byte memoizedIsInitialized;
        private int time_;
        private int usageType_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_UsageEvent.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_UsageEvent();
            PARSER = new AbstractParser<CTwoFactor_UsageEvent>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEvent.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_UsageEvent parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_UsageEvent.newBuilder();
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

        private CTwoFactor_UsageEvent(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.time_ = 0;
            this.usageType_ = 0;
            this.confirmationType_ = 0;
            this.confirmationAction_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_UsageEvent() {
            this.time_ = 0;
            this.confirmationType_ = 0;
            this.confirmationAction_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.usageType_ = 0;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UsageEvent_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UsageEvent_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_UsageEvent.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public boolean hasTime() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public int getTime() {
            return this.time_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public boolean hasUsageType() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public ETwoFactorUsageType getUsageType() {
            ETwoFactorUsageType eTwoFactorUsageTypeForNumber = ETwoFactorUsageType.forNumber(this.usageType_);
            return eTwoFactorUsageTypeForNumber == null ? ETwoFactorUsageType.k_ETwoFactorUsageType_Unknown : eTwoFactorUsageTypeForNumber;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public boolean hasConfirmationType() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public int getConfirmationType() {
            return this.confirmationType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public boolean hasConfirmationAction() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
        public int getConfirmationAction() {
            return this.confirmationAction_;
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
                codedOutputStream.writeUInt32(1, this.time_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeEnum(2, this.usageType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.confirmationType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeInt32(4, this.confirmationAction_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.time_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeEnumSize(2, this.usageType_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(3, this.confirmationType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(4, this.confirmationAction_);
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
            if (!(obj instanceof CTwoFactor_UsageEvent)) {
                return super.equals(obj);
            }
            CTwoFactor_UsageEvent cTwoFactor_UsageEvent = (CTwoFactor_UsageEvent) obj;
            if (hasTime() != cTwoFactor_UsageEvent.hasTime()) {
                return false;
            }
            if ((hasTime() && getTime() != cTwoFactor_UsageEvent.getTime()) || hasUsageType() != cTwoFactor_UsageEvent.hasUsageType()) {
                return false;
            }
            if ((hasUsageType() && this.usageType_ != cTwoFactor_UsageEvent.usageType_) || hasConfirmationType() != cTwoFactor_UsageEvent.hasConfirmationType()) {
                return false;
            }
            if ((!hasConfirmationType() || getConfirmationType() == cTwoFactor_UsageEvent.getConfirmationType()) && hasConfirmationAction() == cTwoFactor_UsageEvent.hasConfirmationAction()) {
                return (!hasConfirmationAction() || getConfirmationAction() == cTwoFactor_UsageEvent.getConfirmationAction()) && getUnknownFields().equals(cTwoFactor_UsageEvent.getUnknownFields());
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
            if (hasTime()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getTime();
            }
            if (hasUsageType()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + this.usageType_;
            }
            if (hasConfirmationType()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getConfirmationType();
            }
            if (hasConfirmationAction()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getConfirmationAction();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_UsageEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_UsageEvent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_UsageEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_UsageEvent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_UsageEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_UsageEvent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_UsageEvent parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_UsageEvent) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_UsageEvent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UsageEvent) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_UsageEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_UsageEvent) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_UsageEvent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UsageEvent) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_UsageEvent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_UsageEvent) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_UsageEvent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UsageEvent) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_UsageEvent cTwoFactor_UsageEvent) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_UsageEvent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_UsageEventOrBuilder {
            private int bitField0_;
            private int confirmationAction_;
            private int confirmationType_;
            private int time_;
            private int usageType_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UsageEvent_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UsageEvent_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_UsageEvent.class, Builder.class);
            }

            private Builder() {
                this.usageType_ = 0;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.usageType_ = 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.time_ = 0;
                this.usageType_ = 0;
                this.confirmationType_ = 0;
                this.confirmationAction_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UsageEvent_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_UsageEvent getDefaultInstanceForType() {
                return CTwoFactor_UsageEvent.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_UsageEvent build() {
                CTwoFactor_UsageEvent cTwoFactor_UsageEventBuildPartial = buildPartial();
                if (cTwoFactor_UsageEventBuildPartial.isInitialized()) {
                    return cTwoFactor_UsageEventBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_UsageEventBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_UsageEvent buildPartial() {
                CTwoFactor_UsageEvent cTwoFactor_UsageEvent = new CTwoFactor_UsageEvent(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_UsageEvent);
                }
                onBuilt();
                return cTwoFactor_UsageEvent;
            }

            private void buildPartial0(CTwoFactor_UsageEvent cTwoFactor_UsageEvent) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_UsageEvent.time_ = this.time_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_UsageEvent.usageType_ = this.usageType_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_UsageEvent.confirmationType_ = this.confirmationType_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cTwoFactor_UsageEvent.confirmationAction_ = this.confirmationAction_;
                    i |= 8;
                }
                cTwoFactor_UsageEvent.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_UsageEvent) {
                    return mergeFrom((CTwoFactor_UsageEvent) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_UsageEvent cTwoFactor_UsageEvent) {
                if (cTwoFactor_UsageEvent == CTwoFactor_UsageEvent.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_UsageEvent.hasTime()) {
                    setTime(cTwoFactor_UsageEvent.getTime());
                }
                if (cTwoFactor_UsageEvent.hasUsageType()) {
                    setUsageType(cTwoFactor_UsageEvent.getUsageType());
                }
                if (cTwoFactor_UsageEvent.hasConfirmationType()) {
                    setConfirmationType(cTwoFactor_UsageEvent.getConfirmationType());
                }
                if (cTwoFactor_UsageEvent.hasConfirmationAction()) {
                    setConfirmationAction(cTwoFactor_UsageEvent.getConfirmationAction());
                }
                mergeUnknownFields(cTwoFactor_UsageEvent.getUnknownFields());
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
                                    this.time_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    int i = codedInputStream.readEnum();
                                    if (ETwoFactorUsageType.forNumber(i) == null) {
                                        mergeUnknownVarintField(2, i);
                                    } else {
                                        this.usageType_ = i;
                                        this.bitField0_ |= 2;
                                    }
                                } else if (tag == 24) {
                                    this.confirmationType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.confirmationAction_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public boolean hasTime() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public int getTime() {
                return this.time_;
            }

            public Builder setTime(int i) {
                this.time_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearTime() {
                this.bitField0_ &= -2;
                this.time_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public boolean hasUsageType() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public ETwoFactorUsageType getUsageType() {
                ETwoFactorUsageType eTwoFactorUsageTypeForNumber = ETwoFactorUsageType.forNumber(this.usageType_);
                return eTwoFactorUsageTypeForNumber == null ? ETwoFactorUsageType.k_ETwoFactorUsageType_Unknown : eTwoFactorUsageTypeForNumber;
            }

            public Builder setUsageType(ETwoFactorUsageType eTwoFactorUsageType) {
                eTwoFactorUsageType.getClass();
                this.bitField0_ |= 2;
                this.usageType_ = eTwoFactorUsageType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearUsageType() {
                this.bitField0_ &= -3;
                this.usageType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public boolean hasConfirmationType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public int getConfirmationType() {
                return this.confirmationType_;
            }

            public Builder setConfirmationType(int i) {
                this.confirmationType_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearConfirmationType() {
                this.bitField0_ &= -5;
                this.confirmationType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public boolean hasConfirmationAction() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UsageEventOrBuilder
            public int getConfirmationAction() {
                return this.confirmationAction_;
            }

            public Builder setConfirmationAction(int i) {
                this.confirmationAction_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearConfirmationAction() {
                this.bitField0_ &= -9;
                this.confirmationAction_ = 0;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_UsageEvent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_UsageEvent> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_UsageEvent> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_UsageEvent getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_Status_Response extends GeneratedMessage implements CTwoFactor_Status_ResponseOrBuilder {
        public static final int ALLOW_EXTERNAL_AUTHENTICATOR_FIELD_NUMBER = 12;
        public static final int AUTHENTICATOR_ALLOWED_FIELD_NUMBER = 4;
        public static final int AUTHENTICATOR_TYPE_FIELD_NUMBER = 3;
        public static final int CLASSIFIED_AGENT_FIELD_NUMBER = 11;
        private static final CTwoFactor_Status_Response DEFAULT_INSTANCE;
        public static final int DEVICE_IDENTIFIER_FIELD_NUMBER = 8;
        public static final int EMAIL_VALIDATED_FIELD_NUMBER = 7;
        public static final int INACTIVATION_REASON_FIELD_NUMBER = 2;
        public static final int LAST_SEEN_AUTH_TOKEN_ID_FIELD_NUMBER = 15;
        private static final Parser<CTwoFactor_Status_Response> PARSER;
        public static final int REVOCATION_ATTEMPTS_REMAINING_FIELD_NUMBER = 10;
        public static final int STATE_FIELD_NUMBER = 1;
        public static final int STEAMGUARD_SCHEME_FIELD_NUMBER = 5;
        public static final int TIME_CREATED_FIELD_NUMBER = 9;
        public static final int TIME_TRANSFERRED_FIELD_NUMBER = 13;
        public static final int TOKEN_GID_FIELD_NUMBER = 6;
        public static final int USAGES_FIELD_NUMBER = 16;
        public static final int VERSION_FIELD_NUMBER = 14;
        private static final long serialVersionUID = 0;
        private boolean allowExternalAuthenticator_;
        private boolean authenticatorAllowed_;
        private int authenticatorType_;
        private int bitField0_;
        private volatile Object classifiedAgent_;
        private volatile Object deviceIdentifier_;
        private boolean emailValidated_;
        private int inactivationReason_;
        private long lastSeenAuthTokenId_;
        private byte memoizedIsInitialized;
        private int revocationAttemptsRemaining_;
        private int state_;
        private int steamguardScheme_;
        private int timeCreated_;
        private int timeTransferred_;
        private volatile Object tokenGid_;
        private List<CTwoFactor_UsageEvent> usages_;
        private int version_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_Status_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_Status_Response();
            PARSER = new AbstractParser<CTwoFactor_Status_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_Status_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_Status_Response.newBuilder();
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

        private CTwoFactor_Status_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.state_ = 0;
            this.inactivationReason_ = 0;
            this.authenticatorType_ = 0;
            this.authenticatorAllowed_ = false;
            this.steamguardScheme_ = 0;
            this.tokenGid_ = "";
            this.emailValidated_ = false;
            this.deviceIdentifier_ = "";
            this.timeCreated_ = 0;
            this.revocationAttemptsRemaining_ = 0;
            this.classifiedAgent_ = "";
            this.allowExternalAuthenticator_ = false;
            this.timeTransferred_ = 0;
            this.version_ = 0;
            this.lastSeenAuthTokenId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_Status_Response() {
            this.state_ = 0;
            this.inactivationReason_ = 0;
            this.authenticatorType_ = 0;
            this.authenticatorAllowed_ = false;
            this.steamguardScheme_ = 0;
            this.tokenGid_ = "";
            this.emailValidated_ = false;
            this.deviceIdentifier_ = "";
            this.timeCreated_ = 0;
            this.revocationAttemptsRemaining_ = 0;
            this.classifiedAgent_ = "";
            this.allowExternalAuthenticator_ = false;
            this.timeTransferred_ = 0;
            this.version_ = 0;
            this.lastSeenAuthTokenId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.tokenGid_ = "";
            this.deviceIdentifier_ = "";
            this.classifiedAgent_ = "";
            this.usages_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Status_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasState() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getState() {
            return this.state_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasInactivationReason() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getInactivationReason() {
            return this.inactivationReason_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasAuthenticatorType() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getAuthenticatorType() {
            return this.authenticatorType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasAuthenticatorAllowed() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean getAuthenticatorAllowed() {
            return this.authenticatorAllowed_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasSteamguardScheme() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getSteamguardScheme() {
            return this.steamguardScheme_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasTokenGid() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public String getTokenGid() {
            Object obj = this.tokenGid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.tokenGid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public ByteString getTokenGidBytes() {
            Object obj = this.tokenGid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tokenGid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasEmailValidated() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean getEmailValidated() {
            return this.emailValidated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasDeviceIdentifier() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public String getDeviceIdentifier() {
            Object obj = this.deviceIdentifier_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceIdentifier_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public ByteString getDeviceIdentifierBytes() {
            Object obj = this.deviceIdentifier_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceIdentifier_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasTimeCreated() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getTimeCreated() {
            return this.timeCreated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasRevocationAttemptsRemaining() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getRevocationAttemptsRemaining() {
            return this.revocationAttemptsRemaining_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasClassifiedAgent() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public String getClassifiedAgent() {
            Object obj = this.classifiedAgent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.classifiedAgent_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public ByteString getClassifiedAgentBytes() {
            Object obj = this.classifiedAgent_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.classifiedAgent_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasAllowExternalAuthenticator() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean getAllowExternalAuthenticator() {
            return this.allowExternalAuthenticator_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasTimeTransferred() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getTimeTransferred() {
            return this.timeTransferred_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public boolean hasLastSeenAuthTokenId() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public long getLastSeenAuthTokenId() {
            return this.lastSeenAuthTokenId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public List<CTwoFactor_UsageEvent> getUsagesList() {
            return this.usages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public List<? extends CTwoFactor_UsageEventOrBuilder> getUsagesOrBuilderList() {
            return this.usages_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public int getUsagesCount() {
            return this.usages_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public CTwoFactor_UsageEvent getUsages(int i) {
            return this.usages_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
        public CTwoFactor_UsageEventOrBuilder getUsagesOrBuilder(int i) {
            return this.usages_.get(i);
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
                codedOutputStream.writeUInt32(1, this.state_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.inactivationReason_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.authenticatorType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(4, this.authenticatorAllowed_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.steamguardScheme_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.tokenGid_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBool(7, this.emailValidated_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.deviceIdentifier_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(9, this.timeCreated_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeUInt32(10, this.revocationAttemptsRemaining_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 11, this.classifiedAgent_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeBool(12, this.allowExternalAuthenticator_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                codedOutputStream.writeUInt32(13, this.timeTransferred_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                codedOutputStream.writeUInt32(14, this.version_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                codedOutputStream.writeFixed64(15, this.lastSeenAuthTokenId_);
            }
            for (int i = 0; i < this.usages_.size(); i++) {
                codedOutputStream.writeMessage(16, this.usages_.get(i));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.state_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.inactivationReason_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.authenticatorType_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(4, this.authenticatorAllowed_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.steamguardScheme_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(6, this.tokenGid_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(7, this.emailValidated_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(8, this.deviceIdentifier_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(9, this.timeCreated_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(10, this.revocationAttemptsRemaining_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(11, this.classifiedAgent_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(12, this.allowExternalAuthenticator_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(13, this.timeTransferred_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(14, this.version_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(15, this.lastSeenAuthTokenId_);
            }
            for (int i2 = 0; i2 < this.usages_.size(); i2++) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(16, this.usages_.get(i2));
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
            if (!(obj instanceof CTwoFactor_Status_Response)) {
                return super.equals(obj);
            }
            CTwoFactor_Status_Response cTwoFactor_Status_Response = (CTwoFactor_Status_Response) obj;
            if (hasState() != cTwoFactor_Status_Response.hasState()) {
                return false;
            }
            if ((hasState() && getState() != cTwoFactor_Status_Response.getState()) || hasInactivationReason() != cTwoFactor_Status_Response.hasInactivationReason()) {
                return false;
            }
            if ((hasInactivationReason() && getInactivationReason() != cTwoFactor_Status_Response.getInactivationReason()) || hasAuthenticatorType() != cTwoFactor_Status_Response.hasAuthenticatorType()) {
                return false;
            }
            if ((hasAuthenticatorType() && getAuthenticatorType() != cTwoFactor_Status_Response.getAuthenticatorType()) || hasAuthenticatorAllowed() != cTwoFactor_Status_Response.hasAuthenticatorAllowed()) {
                return false;
            }
            if ((hasAuthenticatorAllowed() && getAuthenticatorAllowed() != cTwoFactor_Status_Response.getAuthenticatorAllowed()) || hasSteamguardScheme() != cTwoFactor_Status_Response.hasSteamguardScheme()) {
                return false;
            }
            if ((hasSteamguardScheme() && getSteamguardScheme() != cTwoFactor_Status_Response.getSteamguardScheme()) || hasTokenGid() != cTwoFactor_Status_Response.hasTokenGid()) {
                return false;
            }
            if ((hasTokenGid() && !getTokenGid().equals(cTwoFactor_Status_Response.getTokenGid())) || hasEmailValidated() != cTwoFactor_Status_Response.hasEmailValidated()) {
                return false;
            }
            if ((hasEmailValidated() && getEmailValidated() != cTwoFactor_Status_Response.getEmailValidated()) || hasDeviceIdentifier() != cTwoFactor_Status_Response.hasDeviceIdentifier()) {
                return false;
            }
            if ((hasDeviceIdentifier() && !getDeviceIdentifier().equals(cTwoFactor_Status_Response.getDeviceIdentifier())) || hasTimeCreated() != cTwoFactor_Status_Response.hasTimeCreated()) {
                return false;
            }
            if ((hasTimeCreated() && getTimeCreated() != cTwoFactor_Status_Response.getTimeCreated()) || hasRevocationAttemptsRemaining() != cTwoFactor_Status_Response.hasRevocationAttemptsRemaining()) {
                return false;
            }
            if ((hasRevocationAttemptsRemaining() && getRevocationAttemptsRemaining() != cTwoFactor_Status_Response.getRevocationAttemptsRemaining()) || hasClassifiedAgent() != cTwoFactor_Status_Response.hasClassifiedAgent()) {
                return false;
            }
            if ((hasClassifiedAgent() && !getClassifiedAgent().equals(cTwoFactor_Status_Response.getClassifiedAgent())) || hasAllowExternalAuthenticator() != cTwoFactor_Status_Response.hasAllowExternalAuthenticator()) {
                return false;
            }
            if ((hasAllowExternalAuthenticator() && getAllowExternalAuthenticator() != cTwoFactor_Status_Response.getAllowExternalAuthenticator()) || hasTimeTransferred() != cTwoFactor_Status_Response.hasTimeTransferred()) {
                return false;
            }
            if ((hasTimeTransferred() && getTimeTransferred() != cTwoFactor_Status_Response.getTimeTransferred()) || hasVersion() != cTwoFactor_Status_Response.hasVersion()) {
                return false;
            }
            if ((!hasVersion() || getVersion() == cTwoFactor_Status_Response.getVersion()) && hasLastSeenAuthTokenId() == cTwoFactor_Status_Response.hasLastSeenAuthTokenId()) {
                return (!hasLastSeenAuthTokenId() || getLastSeenAuthTokenId() == cTwoFactor_Status_Response.getLastSeenAuthTokenId()) && getUsagesList().equals(cTwoFactor_Status_Response.getUsagesList()) && getUnknownFields().equals(cTwoFactor_Status_Response.getUnknownFields());
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
            if (hasState()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getState();
            }
            if (hasInactivationReason()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getInactivationReason();
            }
            if (hasAuthenticatorType()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getAuthenticatorType();
            }
            if (hasAuthenticatorAllowed()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashBoolean(getAuthenticatorAllowed());
            }
            if (hasSteamguardScheme()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getSteamguardScheme();
            }
            if (hasTokenGid()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getTokenGid().hashCode();
            }
            if (hasEmailValidated()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getEmailValidated());
            }
            if (hasDeviceIdentifier()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getDeviceIdentifier().hashCode();
            }
            if (hasTimeCreated()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getTimeCreated();
            }
            if (hasRevocationAttemptsRemaining()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getRevocationAttemptsRemaining();
            }
            if (hasClassifiedAgent()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getClassifiedAgent().hashCode();
            }
            if (hasAllowExternalAuthenticator()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + Internal.hashBoolean(getAllowExternalAuthenticator());
            }
            if (hasTimeTransferred()) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + getTimeTransferred();
            }
            if (hasVersion()) {
                iHashCode = (((iHashCode * 37) + 14) * 53) + getVersion();
            }
            if (hasLastSeenAuthTokenId()) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + Internal.hashLong(getLastSeenAuthTokenId());
            }
            if (getUsagesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 16) * 53) + getUsagesList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_Status_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_Status_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_Status_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_Status_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Status_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Status_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Status_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_Status_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_Status_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Status_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_Status_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_Status_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_Status_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_Status_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_Status_Response cTwoFactor_Status_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_Status_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_Status_ResponseOrBuilder {
            private boolean allowExternalAuthenticator_;
            private boolean authenticatorAllowed_;
            private int authenticatorType_;
            private int bitField0_;
            private Object classifiedAgent_;
            private Object deviceIdentifier_;
            private boolean emailValidated_;
            private int inactivationReason_;
            private long lastSeenAuthTokenId_;
            private int revocationAttemptsRemaining_;
            private int state_;
            private int steamguardScheme_;
            private int timeCreated_;
            private int timeTransferred_;
            private Object tokenGid_;
            private RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> usagesBuilder_;
            private List<CTwoFactor_UsageEvent> usages_;
            private int version_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_Status_Response.class, Builder.class);
            }

            private Builder() {
                this.tokenGid_ = "";
                this.deviceIdentifier_ = "";
                this.classifiedAgent_ = "";
                this.usages_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.tokenGid_ = "";
                this.deviceIdentifier_ = "";
                this.classifiedAgent_ = "";
                this.usages_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.state_ = 0;
                this.inactivationReason_ = 0;
                this.authenticatorType_ = 0;
                this.authenticatorAllowed_ = false;
                this.steamguardScheme_ = 0;
                this.tokenGid_ = "";
                this.emailValidated_ = false;
                this.deviceIdentifier_ = "";
                this.timeCreated_ = 0;
                this.revocationAttemptsRemaining_ = 0;
                this.classifiedAgent_ = "";
                this.allowExternalAuthenticator_ = false;
                this.timeTransferred_ = 0;
                this.version_ = 0;
                this.lastSeenAuthTokenId_ = 0L;
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.usages_ = Collections.emptyList();
                } else {
                    this.usages_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -32769;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_Status_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_Status_Response getDefaultInstanceForType() {
                return CTwoFactor_Status_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Status_Response build() {
                CTwoFactor_Status_Response cTwoFactor_Status_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_Status_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_Status_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_Status_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_Status_Response buildPartial() {
                CTwoFactor_Status_Response cTwoFactor_Status_Response = new CTwoFactor_Status_Response(this);
                buildPartialRepeatedFields(cTwoFactor_Status_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_Status_Response);
                }
                onBuilt();
                return cTwoFactor_Status_Response;
            }

            private void buildPartialRepeatedFields(CTwoFactor_Status_Response cTwoFactor_Status_Response) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 32768) != 0) {
                        this.usages_ = Collections.unmodifiableList(this.usages_);
                        this.bitField0_ &= -32769;
                    }
                    cTwoFactor_Status_Response.usages_ = this.usages_;
                    return;
                }
                cTwoFactor_Status_Response.usages_ = repeatedFieldBuilder.build();
            }

            private void buildPartial0(CTwoFactor_Status_Response cTwoFactor_Status_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_Status_Response.state_ = this.state_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_Status_Response.inactivationReason_ = this.inactivationReason_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_Status_Response.authenticatorType_ = this.authenticatorType_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cTwoFactor_Status_Response.authenticatorAllowed_ = this.authenticatorAllowed_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cTwoFactor_Status_Response.steamguardScheme_ = this.steamguardScheme_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cTwoFactor_Status_Response.tokenGid_ = this.tokenGid_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cTwoFactor_Status_Response.emailValidated_ = this.emailValidated_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cTwoFactor_Status_Response.deviceIdentifier_ = this.deviceIdentifier_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cTwoFactor_Status_Response.timeCreated_ = this.timeCreated_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cTwoFactor_Status_Response.revocationAttemptsRemaining_ = this.revocationAttemptsRemaining_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cTwoFactor_Status_Response.classifiedAgent_ = this.classifiedAgent_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cTwoFactor_Status_Response.allowExternalAuthenticator_ = this.allowExternalAuthenticator_;
                    i |= 2048;
                }
                if ((i2 & 4096) != 0) {
                    cTwoFactor_Status_Response.timeTransferred_ = this.timeTransferred_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    cTwoFactor_Status_Response.version_ = this.version_;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    cTwoFactor_Status_Response.lastSeenAuthTokenId_ = this.lastSeenAuthTokenId_;
                    i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                }
                cTwoFactor_Status_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_Status_Response) {
                    return mergeFrom((CTwoFactor_Status_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_Status_Response cTwoFactor_Status_Response) {
                if (cTwoFactor_Status_Response == CTwoFactor_Status_Response.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_Status_Response.hasState()) {
                    setState(cTwoFactor_Status_Response.getState());
                }
                if (cTwoFactor_Status_Response.hasInactivationReason()) {
                    setInactivationReason(cTwoFactor_Status_Response.getInactivationReason());
                }
                if (cTwoFactor_Status_Response.hasAuthenticatorType()) {
                    setAuthenticatorType(cTwoFactor_Status_Response.getAuthenticatorType());
                }
                if (cTwoFactor_Status_Response.hasAuthenticatorAllowed()) {
                    setAuthenticatorAllowed(cTwoFactor_Status_Response.getAuthenticatorAllowed());
                }
                if (cTwoFactor_Status_Response.hasSteamguardScheme()) {
                    setSteamguardScheme(cTwoFactor_Status_Response.getSteamguardScheme());
                }
                if (cTwoFactor_Status_Response.hasTokenGid()) {
                    this.tokenGid_ = cTwoFactor_Status_Response.tokenGid_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cTwoFactor_Status_Response.hasEmailValidated()) {
                    setEmailValidated(cTwoFactor_Status_Response.getEmailValidated());
                }
                if (cTwoFactor_Status_Response.hasDeviceIdentifier()) {
                    this.deviceIdentifier_ = cTwoFactor_Status_Response.deviceIdentifier_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                if (cTwoFactor_Status_Response.hasTimeCreated()) {
                    setTimeCreated(cTwoFactor_Status_Response.getTimeCreated());
                }
                if (cTwoFactor_Status_Response.hasRevocationAttemptsRemaining()) {
                    setRevocationAttemptsRemaining(cTwoFactor_Status_Response.getRevocationAttemptsRemaining());
                }
                if (cTwoFactor_Status_Response.hasClassifiedAgent()) {
                    this.classifiedAgent_ = cTwoFactor_Status_Response.classifiedAgent_;
                    this.bitField0_ |= 1024;
                    onChanged();
                }
                if (cTwoFactor_Status_Response.hasAllowExternalAuthenticator()) {
                    setAllowExternalAuthenticator(cTwoFactor_Status_Response.getAllowExternalAuthenticator());
                }
                if (cTwoFactor_Status_Response.hasTimeTransferred()) {
                    setTimeTransferred(cTwoFactor_Status_Response.getTimeTransferred());
                }
                if (cTwoFactor_Status_Response.hasVersion()) {
                    setVersion(cTwoFactor_Status_Response.getVersion());
                }
                if (cTwoFactor_Status_Response.hasLastSeenAuthTokenId()) {
                    setLastSeenAuthTokenId(cTwoFactor_Status_Response.getLastSeenAuthTokenId());
                }
                if (this.usagesBuilder_ == null) {
                    if (!cTwoFactor_Status_Response.usages_.isEmpty()) {
                        if (this.usages_.isEmpty()) {
                            this.usages_ = cTwoFactor_Status_Response.usages_;
                            this.bitField0_ &= -32769;
                        } else {
                            ensureUsagesIsMutable();
                            this.usages_.addAll(cTwoFactor_Status_Response.usages_);
                        }
                        onChanged();
                    }
                } else if (!cTwoFactor_Status_Response.usages_.isEmpty()) {
                    if (this.usagesBuilder_.isEmpty()) {
                        this.usagesBuilder_.dispose();
                        this.usagesBuilder_ = null;
                        this.usages_ = cTwoFactor_Status_Response.usages_;
                        this.bitField0_ = (-32769) & this.bitField0_;
                        this.usagesBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetUsagesFieldBuilder() : null;
                    } else {
                        this.usagesBuilder_.addAllMessages(cTwoFactor_Status_Response.usages_);
                    }
                }
                mergeUnknownFields(cTwoFactor_Status_Response.getUnknownFields());
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
                                    this.state_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.inactivationReason_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.authenticatorType_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 32:
                                    this.authenticatorAllowed_ = codedInputStream.readBool();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.steamguardScheme_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                    break;
                                case 50:
                                    this.tokenGid_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.emailValidated_ = codedInputStream.readBool();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.deviceIdentifier_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 72:
                                    this.timeCreated_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.revocationAttemptsRemaining_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER /* 90 */:
                                    this.classifiedAgent_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1024;
                                    break;
                                case 96:
                                    this.allowExternalAuthenticator_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2048;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    this.timeTransferred_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4096;
                                    break;
                                case 112:
                                    this.version_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 121:
                                    this.lastSeenAuthTokenId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case 130:
                                    CTwoFactor_UsageEvent cTwoFactor_UsageEvent = (CTwoFactor_UsageEvent) codedInputStream.readMessage(CTwoFactor_UsageEvent.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureUsagesIsMutable();
                                        this.usages_.add(cTwoFactor_UsageEvent);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cTwoFactor_UsageEvent);
                                    }
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasState() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getState() {
                return this.state_;
            }

            public Builder setState(int i) {
                this.state_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearState() {
                this.bitField0_ &= -2;
                this.state_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasInactivationReason() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getInactivationReason() {
                return this.inactivationReason_;
            }

            public Builder setInactivationReason(int i) {
                this.inactivationReason_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearInactivationReason() {
                this.bitField0_ &= -3;
                this.inactivationReason_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasAuthenticatorType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getAuthenticatorType() {
                return this.authenticatorType_;
            }

            public Builder setAuthenticatorType(int i) {
                this.authenticatorType_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearAuthenticatorType() {
                this.bitField0_ &= -5;
                this.authenticatorType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasAuthenticatorAllowed() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean getAuthenticatorAllowed() {
                return this.authenticatorAllowed_;
            }

            public Builder setAuthenticatorAllowed(boolean z) {
                this.authenticatorAllowed_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearAuthenticatorAllowed() {
                this.bitField0_ &= -9;
                this.authenticatorAllowed_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasSteamguardScheme() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getSteamguardScheme() {
                return this.steamguardScheme_;
            }

            public Builder setSteamguardScheme(int i) {
                this.steamguardScheme_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSteamguardScheme() {
                this.bitField0_ &= -17;
                this.steamguardScheme_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasTokenGid() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public String getTokenGid() {
                Object obj = this.tokenGid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.tokenGid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public ByteString getTokenGidBytes() {
                Object obj = this.tokenGid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tokenGid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTokenGid(String str) {
                str.getClass();
                this.tokenGid_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearTokenGid() {
                this.tokenGid_ = CTwoFactor_Status_Response.getDefaultInstance().getTokenGid();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setTokenGidBytes(ByteString byteString) {
                byteString.getClass();
                this.tokenGid_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasEmailValidated() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean getEmailValidated() {
                return this.emailValidated_;
            }

            public Builder setEmailValidated(boolean z) {
                this.emailValidated_ = z;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearEmailValidated() {
                this.bitField0_ &= -65;
                this.emailValidated_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasDeviceIdentifier() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public String getDeviceIdentifier() {
                Object obj = this.deviceIdentifier_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.deviceIdentifier_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public ByteString getDeviceIdentifierBytes() {
                Object obj = this.deviceIdentifier_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.deviceIdentifier_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDeviceIdentifier(String str) {
                str.getClass();
                this.deviceIdentifier_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearDeviceIdentifier() {
                this.deviceIdentifier_ = CTwoFactor_Status_Response.getDefaultInstance().getDeviceIdentifier();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setDeviceIdentifierBytes(ByteString byteString) {
                byteString.getClass();
                this.deviceIdentifier_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasTimeCreated() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getTimeCreated() {
                return this.timeCreated_;
            }

            public Builder setTimeCreated(int i) {
                this.timeCreated_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearTimeCreated() {
                this.bitField0_ &= -257;
                this.timeCreated_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasRevocationAttemptsRemaining() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getRevocationAttemptsRemaining() {
                return this.revocationAttemptsRemaining_;
            }

            public Builder setRevocationAttemptsRemaining(int i) {
                this.revocationAttemptsRemaining_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearRevocationAttemptsRemaining() {
                this.bitField0_ &= -513;
                this.revocationAttemptsRemaining_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasClassifiedAgent() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public String getClassifiedAgent() {
                Object obj = this.classifiedAgent_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.classifiedAgent_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public ByteString getClassifiedAgentBytes() {
                Object obj = this.classifiedAgent_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.classifiedAgent_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setClassifiedAgent(String str) {
                str.getClass();
                this.classifiedAgent_ = str;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearClassifiedAgent() {
                this.classifiedAgent_ = CTwoFactor_Status_Response.getDefaultInstance().getClassifiedAgent();
                this.bitField0_ &= -1025;
                onChanged();
                return this;
            }

            public Builder setClassifiedAgentBytes(ByteString byteString) {
                byteString.getClass();
                this.classifiedAgent_ = byteString;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasAllowExternalAuthenticator() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean getAllowExternalAuthenticator() {
                return this.allowExternalAuthenticator_;
            }

            public Builder setAllowExternalAuthenticator(boolean z) {
                this.allowExternalAuthenticator_ = z;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearAllowExternalAuthenticator() {
                this.bitField0_ &= -2049;
                this.allowExternalAuthenticator_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasTimeTransferred() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getTimeTransferred() {
                return this.timeTransferred_;
            }

            public Builder setTimeTransferred(int i) {
                this.timeTransferred_ = i;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearTimeTransferred() {
                this.bitField0_ &= -4097;
                this.timeTransferred_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.version_ = i;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -8193;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public boolean hasLastSeenAuthTokenId() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public long getLastSeenAuthTokenId() {
                return this.lastSeenAuthTokenId_;
            }

            public Builder setLastSeenAuthTokenId(long j) {
                this.lastSeenAuthTokenId_ = j;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder clearLastSeenAuthTokenId() {
                this.bitField0_ &= -16385;
                this.lastSeenAuthTokenId_ = 0L;
                onChanged();
                return this;
            }

            private void ensureUsagesIsMutable() {
                if ((this.bitField0_ & 32768) == 0) {
                    this.usages_ = new ArrayList(this.usages_);
                    this.bitField0_ |= 32768;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public List<CTwoFactor_UsageEvent> getUsagesList() {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.usages_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public int getUsagesCount() {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.usages_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public CTwoFactor_UsageEvent getUsages(int i) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.usages_.get(i);
                }
                return (CTwoFactor_UsageEvent) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setUsages(int i, CTwoFactor_UsageEvent cTwoFactor_UsageEvent) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cTwoFactor_UsageEvent.getClass();
                    ensureUsagesIsMutable();
                    this.usages_.set(i, cTwoFactor_UsageEvent);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cTwoFactor_UsageEvent);
                }
                return this;
            }

            public Builder setUsages(int i, CTwoFactor_UsageEvent.Builder builder) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsagesIsMutable();
                    this.usages_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUsages(CTwoFactor_UsageEvent cTwoFactor_UsageEvent) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cTwoFactor_UsageEvent.getClass();
                    ensureUsagesIsMutable();
                    this.usages_.add(cTwoFactor_UsageEvent);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cTwoFactor_UsageEvent);
                }
                return this;
            }

            public Builder addUsages(int i, CTwoFactor_UsageEvent cTwoFactor_UsageEvent) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    cTwoFactor_UsageEvent.getClass();
                    ensureUsagesIsMutable();
                    this.usages_.add(i, cTwoFactor_UsageEvent);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cTwoFactor_UsageEvent);
                }
                return this;
            }

            public Builder addUsages(CTwoFactor_UsageEvent.Builder builder) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsagesIsMutable();
                    this.usages_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUsages(int i, CTwoFactor_UsageEvent.Builder builder) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsagesIsMutable();
                    this.usages_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUsages(Iterable<? extends CTwoFactor_UsageEvent> iterable) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsagesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.usages_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUsages() {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.usages_ = Collections.emptyList();
                    this.bitField0_ &= -32769;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeUsages(int i) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureUsagesIsMutable();
                    this.usages_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CTwoFactor_UsageEvent.Builder getUsagesBuilder(int i) {
                return (CTwoFactor_UsageEvent.Builder) internalGetUsagesFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public CTwoFactor_UsageEventOrBuilder getUsagesOrBuilder(int i) {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.usages_.get(i);
                }
                return (CTwoFactor_UsageEventOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_Status_ResponseOrBuilder
            public List<? extends CTwoFactor_UsageEventOrBuilder> getUsagesOrBuilderList() {
                RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> repeatedFieldBuilder = this.usagesBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.usages_);
            }

            public CTwoFactor_UsageEvent.Builder addUsagesBuilder() {
                return (CTwoFactor_UsageEvent.Builder) internalGetUsagesFieldBuilder().addBuilder(CTwoFactor_UsageEvent.getDefaultInstance());
            }

            public CTwoFactor_UsageEvent.Builder addUsagesBuilder(int i) {
                return (CTwoFactor_UsageEvent.Builder) internalGetUsagesFieldBuilder().addBuilder(i, CTwoFactor_UsageEvent.getDefaultInstance());
            }

            public List<CTwoFactor_UsageEvent.Builder> getUsagesBuilderList() {
                return internalGetUsagesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CTwoFactor_UsageEvent, CTwoFactor_UsageEvent.Builder, CTwoFactor_UsageEventOrBuilder> internalGetUsagesFieldBuilder() {
                if (this.usagesBuilder_ == null) {
                    this.usagesBuilder_ = new RepeatedFieldBuilder<>(this.usages_, (this.bitField0_ & 32768) != 0, getParentForChildren(), isClean());
                    this.usages_ = null;
                }
                return this.usagesBuilder_;
            }
        }

        public static CTwoFactor_Status_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_Status_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_Status_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_Status_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_AddAuthenticator_Request extends GeneratedMessage implements CTwoFactor_AddAuthenticator_RequestOrBuilder {
        public static final int AUTHENTICATOR_TIME_FIELD_NUMBER = 2;
        public static final int AUTHENTICATOR_TYPE_FIELD_NUMBER = 4;
        private static final CTwoFactor_AddAuthenticator_Request DEFAULT_INSTANCE;
        public static final int DEVICE_IDENTIFIER_FIELD_NUMBER = 5;
        public static final int HTTP_HEADERS_FIELD_NUMBER = 7;
        private static final Parser<CTwoFactor_AddAuthenticator_Request> PARSER;
        public static final int SERIAL_NUMBER_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private long authenticatorTime_;
        private int authenticatorType_;
        private int bitField0_;
        private volatile Object deviceIdentifier_;
        private LazyStringArrayList httpHeaders_;
        private byte memoizedIsInitialized;
        private long serialNumber_;
        private long steamid_;
        private int version_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_AddAuthenticator_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_AddAuthenticator_Request();
            PARSER = new AbstractParser<CTwoFactor_AddAuthenticator_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_AddAuthenticator_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_AddAuthenticator_Request.newBuilder();
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

        private CTwoFactor_AddAuthenticator_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.authenticatorTime_ = 0L;
            this.serialNumber_ = 0L;
            this.authenticatorType_ = 0;
            this.deviceIdentifier_ = "";
            this.httpHeaders_ = LazyStringArrayList.emptyList();
            this.version_ = 1;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_AddAuthenticator_Request() {
            this.steamid_ = 0L;
            this.authenticatorTime_ = 0L;
            this.serialNumber_ = 0L;
            this.authenticatorType_ = 0;
            this.deviceIdentifier_ = "";
            this.httpHeaders_ = LazyStringArrayList.emptyList();
            this.version_ = 1;
            this.memoizedIsInitialized = (byte) -1;
            this.deviceIdentifier_ = "";
            this.httpHeaders_ = LazyStringArrayList.emptyList();
            this.version_ = 1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_AddAuthenticator_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public boolean hasAuthenticatorTime() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public long getAuthenticatorTime() {
            return this.authenticatorTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public boolean hasSerialNumber() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public long getSerialNumber() {
            return this.serialNumber_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public boolean hasAuthenticatorType() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public int getAuthenticatorType() {
            return this.authenticatorType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public boolean hasDeviceIdentifier() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public String getDeviceIdentifier() {
            Object obj = this.deviceIdentifier_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceIdentifier_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public ByteString getDeviceIdentifierBytes() {
            Object obj = this.deviceIdentifier_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceIdentifier_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public ProtocolStringList getHttpHeadersList() {
            return this.httpHeaders_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public int getHttpHeadersCount() {
            return this.httpHeaders_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public String getHttpHeaders(int i) {
            return this.httpHeaders_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public ByteString getHttpHeadersBytes(int i) {
            return this.httpHeaders_.getByteString(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
        public int getVersion() {
            return this.version_;
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
                codedOutputStream.writeUInt64(2, this.authenticatorTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.serialNumber_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.authenticatorType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.deviceIdentifier_);
            }
            for (int i = 0; i < this.httpHeaders_.size(); i++) {
                GeneratedMessage.writeString(codedOutputStream, 7, this.httpHeaders_.getRaw(i));
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(8, this.version_);
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
                iComputeFixed64Size += CodedOutputStream.computeUInt64Size(2, this.authenticatorTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(3, this.serialNumber_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(4, this.authenticatorType_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(5, this.deviceIdentifier_);
            }
            int iComputeStringSizeNoTag = 0;
            for (int i2 = 0; i2 < this.httpHeaders_.size(); i2++) {
                iComputeStringSizeNoTag += GeneratedMessage.computeStringSizeNoTag(this.httpHeaders_.getRaw(i2));
            }
            int size = iComputeFixed64Size + iComputeStringSizeNoTag + getHttpHeadersList().size();
            if ((this.bitField0_ & 32) != 0) {
                size += CodedOutputStream.computeUInt32Size(8, this.version_);
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
            if (!(obj instanceof CTwoFactor_AddAuthenticator_Request)) {
                return super.equals(obj);
            }
            CTwoFactor_AddAuthenticator_Request cTwoFactor_AddAuthenticator_Request = (CTwoFactor_AddAuthenticator_Request) obj;
            if (hasSteamid() != cTwoFactor_AddAuthenticator_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cTwoFactor_AddAuthenticator_Request.getSteamid()) || hasAuthenticatorTime() != cTwoFactor_AddAuthenticator_Request.hasAuthenticatorTime()) {
                return false;
            }
            if ((hasAuthenticatorTime() && getAuthenticatorTime() != cTwoFactor_AddAuthenticator_Request.getAuthenticatorTime()) || hasSerialNumber() != cTwoFactor_AddAuthenticator_Request.hasSerialNumber()) {
                return false;
            }
            if ((hasSerialNumber() && getSerialNumber() != cTwoFactor_AddAuthenticator_Request.getSerialNumber()) || hasAuthenticatorType() != cTwoFactor_AddAuthenticator_Request.hasAuthenticatorType()) {
                return false;
            }
            if ((hasAuthenticatorType() && getAuthenticatorType() != cTwoFactor_AddAuthenticator_Request.getAuthenticatorType()) || hasDeviceIdentifier() != cTwoFactor_AddAuthenticator_Request.hasDeviceIdentifier()) {
                return false;
            }
            if ((!hasDeviceIdentifier() || getDeviceIdentifier().equals(cTwoFactor_AddAuthenticator_Request.getDeviceIdentifier())) && getHttpHeadersList().equals(cTwoFactor_AddAuthenticator_Request.getHttpHeadersList()) && hasVersion() == cTwoFactor_AddAuthenticator_Request.hasVersion()) {
                return (!hasVersion() || getVersion() == cTwoFactor_AddAuthenticator_Request.getVersion()) && getUnknownFields().equals(cTwoFactor_AddAuthenticator_Request.getUnknownFields());
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
            if (hasAuthenticatorTime()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getAuthenticatorTime());
            }
            if (hasSerialNumber()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSerialNumber());
            }
            if (hasAuthenticatorType()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getAuthenticatorType();
            }
            if (hasDeviceIdentifier()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getDeviceIdentifier().hashCode();
            }
            if (getHttpHeadersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getHttpHeadersList().hashCode();
            }
            if (hasVersion()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getVersion();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_AddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_AddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_AddAuthenticator_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_AddAuthenticator_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_AddAuthenticator_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_AddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_AddAuthenticator_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_AddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_AddAuthenticator_Request cTwoFactor_AddAuthenticator_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_AddAuthenticator_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_AddAuthenticator_RequestOrBuilder {
            private long authenticatorTime_;
            private int authenticatorType_;
            private int bitField0_;
            private Object deviceIdentifier_;
            private LazyStringArrayList httpHeaders_;
            private long serialNumber_;
            private long steamid_;
            private int version_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_AddAuthenticator_Request.class, Builder.class);
            }

            private Builder() {
                this.deviceIdentifier_ = "";
                this.httpHeaders_ = LazyStringArrayList.emptyList();
                this.version_ = 1;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.deviceIdentifier_ = "";
                this.httpHeaders_ = LazyStringArrayList.emptyList();
                this.version_ = 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.authenticatorTime_ = 0L;
                this.serialNumber_ = 0L;
                this.authenticatorType_ = 0;
                this.deviceIdentifier_ = "";
                this.httpHeaders_ = LazyStringArrayList.emptyList();
                this.version_ = 1;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_AddAuthenticator_Request getDefaultInstanceForType() {
                return CTwoFactor_AddAuthenticator_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_AddAuthenticator_Request build() {
                CTwoFactor_AddAuthenticator_Request cTwoFactor_AddAuthenticator_RequestBuildPartial = buildPartial();
                if (cTwoFactor_AddAuthenticator_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_AddAuthenticator_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_AddAuthenticator_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_AddAuthenticator_Request buildPartial() {
                CTwoFactor_AddAuthenticator_Request cTwoFactor_AddAuthenticator_Request = new CTwoFactor_AddAuthenticator_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_AddAuthenticator_Request);
                }
                onBuilt();
                return cTwoFactor_AddAuthenticator_Request;
            }

            private void buildPartial0(CTwoFactor_AddAuthenticator_Request cTwoFactor_AddAuthenticator_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_AddAuthenticator_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_AddAuthenticator_Request.authenticatorTime_ = this.authenticatorTime_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_AddAuthenticator_Request.serialNumber_ = this.serialNumber_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cTwoFactor_AddAuthenticator_Request.authenticatorType_ = this.authenticatorType_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cTwoFactor_AddAuthenticator_Request.deviceIdentifier_ = this.deviceIdentifier_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    this.httpHeaders_.makeImmutable();
                    cTwoFactor_AddAuthenticator_Request.httpHeaders_ = this.httpHeaders_;
                }
                if ((i2 & 64) != 0) {
                    cTwoFactor_AddAuthenticator_Request.version_ = this.version_;
                    i |= 32;
                }
                cTwoFactor_AddAuthenticator_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_AddAuthenticator_Request) {
                    return mergeFrom((CTwoFactor_AddAuthenticator_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_AddAuthenticator_Request cTwoFactor_AddAuthenticator_Request) {
                if (cTwoFactor_AddAuthenticator_Request == CTwoFactor_AddAuthenticator_Request.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_AddAuthenticator_Request.hasSteamid()) {
                    setSteamid(cTwoFactor_AddAuthenticator_Request.getSteamid());
                }
                if (cTwoFactor_AddAuthenticator_Request.hasAuthenticatorTime()) {
                    setAuthenticatorTime(cTwoFactor_AddAuthenticator_Request.getAuthenticatorTime());
                }
                if (cTwoFactor_AddAuthenticator_Request.hasSerialNumber()) {
                    setSerialNumber(cTwoFactor_AddAuthenticator_Request.getSerialNumber());
                }
                if (cTwoFactor_AddAuthenticator_Request.hasAuthenticatorType()) {
                    setAuthenticatorType(cTwoFactor_AddAuthenticator_Request.getAuthenticatorType());
                }
                if (cTwoFactor_AddAuthenticator_Request.hasDeviceIdentifier()) {
                    this.deviceIdentifier_ = cTwoFactor_AddAuthenticator_Request.deviceIdentifier_;
                    this.bitField0_ |= 16;
                    onChanged();
                }
                if (!cTwoFactor_AddAuthenticator_Request.httpHeaders_.isEmpty()) {
                    if (this.httpHeaders_.isEmpty()) {
                        this.httpHeaders_ = cTwoFactor_AddAuthenticator_Request.httpHeaders_;
                        this.bitField0_ |= 32;
                    } else {
                        ensureHttpHeadersIsMutable();
                        this.httpHeaders_.addAll(cTwoFactor_AddAuthenticator_Request.httpHeaders_);
                    }
                    onChanged();
                }
                if (cTwoFactor_AddAuthenticator_Request.hasVersion()) {
                    setVersion(cTwoFactor_AddAuthenticator_Request.getVersion());
                }
                mergeUnknownFields(cTwoFactor_AddAuthenticator_Request.getUnknownFields());
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
                                    this.authenticatorTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.serialNumber_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.authenticatorType_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.deviceIdentifier_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16;
                                } else if (tag == 58) {
                                    ByteString bytes = codedInputStream.readBytes();
                                    ensureHttpHeadersIsMutable();
                                    this.httpHeaders_.add(bytes);
                                } else if (tag == 64) {
                                    this.version_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public boolean hasAuthenticatorTime() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public long getAuthenticatorTime() {
                return this.authenticatorTime_;
            }

            public Builder setAuthenticatorTime(long j) {
                this.authenticatorTime_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAuthenticatorTime() {
                this.bitField0_ &= -3;
                this.authenticatorTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public boolean hasSerialNumber() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public long getSerialNumber() {
                return this.serialNumber_;
            }

            public Builder setSerialNumber(long j) {
                this.serialNumber_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSerialNumber() {
                this.bitField0_ &= -5;
                this.serialNumber_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public boolean hasAuthenticatorType() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public int getAuthenticatorType() {
                return this.authenticatorType_;
            }

            public Builder setAuthenticatorType(int i) {
                this.authenticatorType_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearAuthenticatorType() {
                this.bitField0_ &= -9;
                this.authenticatorType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public boolean hasDeviceIdentifier() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public String getDeviceIdentifier() {
                Object obj = this.deviceIdentifier_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.deviceIdentifier_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public ByteString getDeviceIdentifierBytes() {
                Object obj = this.deviceIdentifier_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.deviceIdentifier_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDeviceIdentifier(String str) {
                str.getClass();
                this.deviceIdentifier_ = str;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearDeviceIdentifier() {
                this.deviceIdentifier_ = CTwoFactor_AddAuthenticator_Request.getDefaultInstance().getDeviceIdentifier();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder setDeviceIdentifierBytes(ByteString byteString) {
                byteString.getClass();
                this.deviceIdentifier_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            private void ensureHttpHeadersIsMutable() {
                if (!this.httpHeaders_.isModifiable()) {
                    this.httpHeaders_ = new LazyStringArrayList((LazyStringList) this.httpHeaders_);
                }
                this.bitField0_ |= 32;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public ProtocolStringList getHttpHeadersList() {
                this.httpHeaders_.makeImmutable();
                return this.httpHeaders_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public int getHttpHeadersCount() {
                return this.httpHeaders_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public String getHttpHeaders(int i) {
                return this.httpHeaders_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public ByteString getHttpHeadersBytes(int i) {
                return this.httpHeaders_.getByteString(i);
            }

            public Builder setHttpHeaders(int i, String str) {
                str.getClass();
                ensureHttpHeadersIsMutable();
                this.httpHeaders_.set(i, str);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder addHttpHeaders(String str) {
                str.getClass();
                ensureHttpHeadersIsMutable();
                this.httpHeaders_.add(str);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder addAllHttpHeaders(Iterable<String> iterable) {
                ensureHttpHeadersIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.httpHeaders_);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearHttpHeaders() {
                this.httpHeaders_ = LazyStringArrayList.emptyList();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder addHttpHeadersBytes(ByteString byteString) {
                byteString.getClass();
                ensureHttpHeadersIsMutable();
                this.httpHeaders_.add(byteString);
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_RequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.version_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -65;
                this.version_ = 1;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_AddAuthenticator_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_AddAuthenticator_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_AddAuthenticator_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_AddAuthenticator_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_AddAuthenticator_Response extends GeneratedMessage implements CTwoFactor_AddAuthenticator_ResponseOrBuilder {
        public static final int ACCOUNT_NAME_FIELD_NUMBER = 6;
        public static final int CONFIRM_TYPE_FIELD_NUMBER = 12;
        private static final CTwoFactor_AddAuthenticator_Response DEFAULT_INSTANCE;
        public static final int IDENTITY_SECRET_FIELD_NUMBER = 8;
        private static final Parser<CTwoFactor_AddAuthenticator_Response> PARSER;
        public static final int PHONE_NUMBER_HINT_FIELD_NUMBER = 11;
        public static final int REVOCATION_CODE_FIELD_NUMBER = 3;
        public static final int SECRET_1_FIELD_NUMBER = 9;
        public static final int SERIAL_NUMBER_FIELD_NUMBER = 2;
        public static final int SERVER_TIME_FIELD_NUMBER = 5;
        public static final int SHARED_SECRET_FIELD_NUMBER = 1;
        public static final int STATUS_FIELD_NUMBER = 10;
        public static final int TOKEN_GID_FIELD_NUMBER = 7;
        public static final int URI_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object accountName_;
        private int bitField0_;
        private int confirmType_;
        private ByteString identitySecret_;
        private byte memoizedIsInitialized;
        private volatile Object phoneNumberHint_;
        private volatile Object revocationCode_;
        private ByteString secret1_;
        private long serialNumber_;
        private long serverTime_;
        private ByteString sharedSecret_;
        private int status_;
        private volatile Object tokenGid_;
        private volatile Object uri_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_AddAuthenticator_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_AddAuthenticator_Response();
            PARSER = new AbstractParser<CTwoFactor_AddAuthenticator_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_AddAuthenticator_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_AddAuthenticator_Response.newBuilder();
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

        private CTwoFactor_AddAuthenticator_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            ByteString byteString = ByteString.EMPTY;
            this.sharedSecret_ = byteString;
            this.serialNumber_ = 0L;
            this.revocationCode_ = "";
            this.uri_ = "";
            this.serverTime_ = 0L;
            this.accountName_ = "";
            this.tokenGid_ = "";
            this.identitySecret_ = byteString;
            this.secret1_ = byteString;
            this.status_ = 0;
            this.phoneNumberHint_ = "";
            this.confirmType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_AddAuthenticator_Response() {
            ByteString byteString = ByteString.EMPTY;
            this.sharedSecret_ = byteString;
            this.serialNumber_ = 0L;
            this.revocationCode_ = "";
            this.uri_ = "";
            this.serverTime_ = 0L;
            this.accountName_ = "";
            this.tokenGid_ = "";
            this.identitySecret_ = byteString;
            this.secret1_ = byteString;
            this.status_ = 0;
            this.phoneNumberHint_ = "";
            this.confirmType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.sharedSecret_ = byteString;
            this.revocationCode_ = "";
            this.uri_ = "";
            this.accountName_ = "";
            this.tokenGid_ = "";
            this.identitySecret_ = byteString;
            this.secret1_ = byteString;
            this.phoneNumberHint_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_AddAuthenticator_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasSharedSecret() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getSharedSecret() {
            return this.sharedSecret_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasSerialNumber() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public long getSerialNumber() {
            return this.serialNumber_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasRevocationCode() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public String getRevocationCode() {
            Object obj = this.revocationCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.revocationCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getRevocationCodeBytes() {
            Object obj = this.revocationCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.revocationCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasUri() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public String getUri() {
            Object obj = this.uri_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.uri_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getUriBytes() {
            Object obj = this.uri_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.uri_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasServerTime() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public long getServerTime() {
            return this.serverTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasAccountName() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public String getAccountName() {
            Object obj = this.accountName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.accountName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getAccountNameBytes() {
            Object obj = this.accountName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accountName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasTokenGid() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public String getTokenGid() {
            Object obj = this.tokenGid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.tokenGid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getTokenGidBytes() {
            Object obj = this.tokenGid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tokenGid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasIdentitySecret() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getIdentitySecret() {
            return this.identitySecret_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasSecret1() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getSecret1() {
            return this.secret1_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasStatus() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasPhoneNumberHint() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public String getPhoneNumberHint() {
            Object obj = this.phoneNumberHint_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.phoneNumberHint_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public ByteString getPhoneNumberHintBytes() {
            Object obj = this.phoneNumberHint_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.phoneNumberHint_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public boolean hasConfirmType() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
        public int getConfirmType() {
            return this.confirmType_;
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
                codedOutputStream.writeBytes(1, this.sharedSecret_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.serialNumber_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.revocationCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.uri_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt64(5, this.serverTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.accountName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 7, this.tokenGid_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBytes(8, this.identitySecret_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeBytes(9, this.secret1_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeInt32(10, this.status_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 11, this.phoneNumberHint_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeInt32(12, this.confirmType_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBytesSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBytesSize(1, this.sharedSecret_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBytesSize += CodedOutputStream.computeFixed64Size(2, this.serialNumber_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(3, this.revocationCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(4, this.uri_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeBytesSize += CodedOutputStream.computeUInt64Size(5, this.serverTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(6, this.accountName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(7, this.tokenGid_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeBytesSize += CodedOutputStream.computeBytesSize(8, this.identitySecret_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeBytesSize += CodedOutputStream.computeBytesSize(9, this.secret1_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeBytesSize += CodedOutputStream.computeInt32Size(10, this.status_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(11, this.phoneNumberHint_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeBytesSize += CodedOutputStream.computeInt32Size(12, this.confirmType_);
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
            if (!(obj instanceof CTwoFactor_AddAuthenticator_Response)) {
                return super.equals(obj);
            }
            CTwoFactor_AddAuthenticator_Response cTwoFactor_AddAuthenticator_Response = (CTwoFactor_AddAuthenticator_Response) obj;
            if (hasSharedSecret() != cTwoFactor_AddAuthenticator_Response.hasSharedSecret()) {
                return false;
            }
            if ((hasSharedSecret() && !getSharedSecret().equals(cTwoFactor_AddAuthenticator_Response.getSharedSecret())) || hasSerialNumber() != cTwoFactor_AddAuthenticator_Response.hasSerialNumber()) {
                return false;
            }
            if ((hasSerialNumber() && getSerialNumber() != cTwoFactor_AddAuthenticator_Response.getSerialNumber()) || hasRevocationCode() != cTwoFactor_AddAuthenticator_Response.hasRevocationCode()) {
                return false;
            }
            if ((hasRevocationCode() && !getRevocationCode().equals(cTwoFactor_AddAuthenticator_Response.getRevocationCode())) || hasUri() != cTwoFactor_AddAuthenticator_Response.hasUri()) {
                return false;
            }
            if ((hasUri() && !getUri().equals(cTwoFactor_AddAuthenticator_Response.getUri())) || hasServerTime() != cTwoFactor_AddAuthenticator_Response.hasServerTime()) {
                return false;
            }
            if ((hasServerTime() && getServerTime() != cTwoFactor_AddAuthenticator_Response.getServerTime()) || hasAccountName() != cTwoFactor_AddAuthenticator_Response.hasAccountName()) {
                return false;
            }
            if ((hasAccountName() && !getAccountName().equals(cTwoFactor_AddAuthenticator_Response.getAccountName())) || hasTokenGid() != cTwoFactor_AddAuthenticator_Response.hasTokenGid()) {
                return false;
            }
            if ((hasTokenGid() && !getTokenGid().equals(cTwoFactor_AddAuthenticator_Response.getTokenGid())) || hasIdentitySecret() != cTwoFactor_AddAuthenticator_Response.hasIdentitySecret()) {
                return false;
            }
            if ((hasIdentitySecret() && !getIdentitySecret().equals(cTwoFactor_AddAuthenticator_Response.getIdentitySecret())) || hasSecret1() != cTwoFactor_AddAuthenticator_Response.hasSecret1()) {
                return false;
            }
            if ((hasSecret1() && !getSecret1().equals(cTwoFactor_AddAuthenticator_Response.getSecret1())) || hasStatus() != cTwoFactor_AddAuthenticator_Response.hasStatus()) {
                return false;
            }
            if ((hasStatus() && getStatus() != cTwoFactor_AddAuthenticator_Response.getStatus()) || hasPhoneNumberHint() != cTwoFactor_AddAuthenticator_Response.hasPhoneNumberHint()) {
                return false;
            }
            if ((!hasPhoneNumberHint() || getPhoneNumberHint().equals(cTwoFactor_AddAuthenticator_Response.getPhoneNumberHint())) && hasConfirmType() == cTwoFactor_AddAuthenticator_Response.hasConfirmType()) {
                return (!hasConfirmType() || getConfirmType() == cTwoFactor_AddAuthenticator_Response.getConfirmType()) && getUnknownFields().equals(cTwoFactor_AddAuthenticator_Response.getUnknownFields());
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
            if (hasSharedSecret()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSharedSecret().hashCode();
            }
            if (hasSerialNumber()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSerialNumber());
            }
            if (hasRevocationCode()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRevocationCode().hashCode();
            }
            if (hasUri()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getUri().hashCode();
            }
            if (hasServerTime()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getServerTime());
            }
            if (hasAccountName()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getAccountName().hashCode();
            }
            if (hasTokenGid()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getTokenGid().hashCode();
            }
            if (hasIdentitySecret()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getIdentitySecret().hashCode();
            }
            if (hasSecret1()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getSecret1().hashCode();
            }
            if (hasStatus()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getStatus();
            }
            if (hasPhoneNumberHint()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getPhoneNumberHint().hashCode();
            }
            if (hasConfirmType()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + getConfirmType();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_AddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_AddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_AddAuthenticator_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_AddAuthenticator_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_AddAuthenticator_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_AddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_AddAuthenticator_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_AddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_AddAuthenticator_Response cTwoFactor_AddAuthenticator_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_AddAuthenticator_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_AddAuthenticator_ResponseOrBuilder {
            private Object accountName_;
            private int bitField0_;
            private int confirmType_;
            private ByteString identitySecret_;
            private Object phoneNumberHint_;
            private Object revocationCode_;
            private ByteString secret1_;
            private long serialNumber_;
            private long serverTime_;
            private ByteString sharedSecret_;
            private int status_;
            private Object tokenGid_;
            private Object uri_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_AddAuthenticator_Response.class, Builder.class);
            }

            private Builder() {
                ByteString byteString = ByteString.EMPTY;
                this.sharedSecret_ = byteString;
                this.revocationCode_ = "";
                this.uri_ = "";
                this.accountName_ = "";
                this.tokenGid_ = "";
                this.identitySecret_ = byteString;
                this.secret1_ = byteString;
                this.phoneNumberHint_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                ByteString byteString = ByteString.EMPTY;
                this.sharedSecret_ = byteString;
                this.revocationCode_ = "";
                this.uri_ = "";
                this.accountName_ = "";
                this.tokenGid_ = "";
                this.identitySecret_ = byteString;
                this.secret1_ = byteString;
                this.phoneNumberHint_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.sharedSecret_ = byteString;
                this.serialNumber_ = 0L;
                this.revocationCode_ = "";
                this.uri_ = "";
                this.serverTime_ = 0L;
                this.accountName_ = "";
                this.tokenGid_ = "";
                this.identitySecret_ = byteString;
                this.secret1_ = byteString;
                this.status_ = 0;
                this.phoneNumberHint_ = "";
                this.confirmType_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_AddAuthenticator_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_AddAuthenticator_Response getDefaultInstanceForType() {
                return CTwoFactor_AddAuthenticator_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_AddAuthenticator_Response build() {
                CTwoFactor_AddAuthenticator_Response cTwoFactor_AddAuthenticator_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_AddAuthenticator_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_AddAuthenticator_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_AddAuthenticator_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_AddAuthenticator_Response buildPartial() {
                CTwoFactor_AddAuthenticator_Response cTwoFactor_AddAuthenticator_Response = new CTwoFactor_AddAuthenticator_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_AddAuthenticator_Response);
                }
                onBuilt();
                return cTwoFactor_AddAuthenticator_Response;
            }

            private void buildPartial0(CTwoFactor_AddAuthenticator_Response cTwoFactor_AddAuthenticator_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_AddAuthenticator_Response.sharedSecret_ = this.sharedSecret_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_AddAuthenticator_Response.serialNumber_ = this.serialNumber_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_AddAuthenticator_Response.revocationCode_ = this.revocationCode_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cTwoFactor_AddAuthenticator_Response.uri_ = this.uri_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cTwoFactor_AddAuthenticator_Response.serverTime_ = this.serverTime_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cTwoFactor_AddAuthenticator_Response.accountName_ = this.accountName_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cTwoFactor_AddAuthenticator_Response.tokenGid_ = this.tokenGid_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cTwoFactor_AddAuthenticator_Response.identitySecret_ = this.identitySecret_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cTwoFactor_AddAuthenticator_Response.secret1_ = this.secret1_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cTwoFactor_AddAuthenticator_Response.status_ = this.status_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cTwoFactor_AddAuthenticator_Response.phoneNumberHint_ = this.phoneNumberHint_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cTwoFactor_AddAuthenticator_Response.confirmType_ = this.confirmType_;
                    i |= 2048;
                }
                cTwoFactor_AddAuthenticator_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_AddAuthenticator_Response) {
                    return mergeFrom((CTwoFactor_AddAuthenticator_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_AddAuthenticator_Response cTwoFactor_AddAuthenticator_Response) {
                if (cTwoFactor_AddAuthenticator_Response == CTwoFactor_AddAuthenticator_Response.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_AddAuthenticator_Response.hasSharedSecret()) {
                    setSharedSecret(cTwoFactor_AddAuthenticator_Response.getSharedSecret());
                }
                if (cTwoFactor_AddAuthenticator_Response.hasSerialNumber()) {
                    setSerialNumber(cTwoFactor_AddAuthenticator_Response.getSerialNumber());
                }
                if (cTwoFactor_AddAuthenticator_Response.hasRevocationCode()) {
                    this.revocationCode_ = cTwoFactor_AddAuthenticator_Response.revocationCode_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cTwoFactor_AddAuthenticator_Response.hasUri()) {
                    this.uri_ = cTwoFactor_AddAuthenticator_Response.uri_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cTwoFactor_AddAuthenticator_Response.hasServerTime()) {
                    setServerTime(cTwoFactor_AddAuthenticator_Response.getServerTime());
                }
                if (cTwoFactor_AddAuthenticator_Response.hasAccountName()) {
                    this.accountName_ = cTwoFactor_AddAuthenticator_Response.accountName_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cTwoFactor_AddAuthenticator_Response.hasTokenGid()) {
                    this.tokenGid_ = cTwoFactor_AddAuthenticator_Response.tokenGid_;
                    this.bitField0_ |= 64;
                    onChanged();
                }
                if (cTwoFactor_AddAuthenticator_Response.hasIdentitySecret()) {
                    setIdentitySecret(cTwoFactor_AddAuthenticator_Response.getIdentitySecret());
                }
                if (cTwoFactor_AddAuthenticator_Response.hasSecret1()) {
                    setSecret1(cTwoFactor_AddAuthenticator_Response.getSecret1());
                }
                if (cTwoFactor_AddAuthenticator_Response.hasStatus()) {
                    setStatus(cTwoFactor_AddAuthenticator_Response.getStatus());
                }
                if (cTwoFactor_AddAuthenticator_Response.hasPhoneNumberHint()) {
                    this.phoneNumberHint_ = cTwoFactor_AddAuthenticator_Response.phoneNumberHint_;
                    this.bitField0_ |= 1024;
                    onChanged();
                }
                if (cTwoFactor_AddAuthenticator_Response.hasConfirmType()) {
                    setConfirmType(cTwoFactor_AddAuthenticator_Response.getConfirmType());
                }
                mergeUnknownFields(cTwoFactor_AddAuthenticator_Response.getUnknownFields());
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
                                case 10:
                                    this.sharedSecret_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                    break;
                                case 17:
                                    this.serialNumber_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.revocationCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    this.uri_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.serverTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                    break;
                                case 50:
                                    this.accountName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER /* 58 */:
                                    this.tokenGid_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.identitySecret_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 74:
                                    this.secret1_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.status_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER /* 90 */:
                                    this.phoneNumberHint_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1024;
                                    break;
                                case 96:
                                    this.confirmType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2048;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasSharedSecret() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getSharedSecret() {
                return this.sharedSecret_;
            }

            public Builder setSharedSecret(ByteString byteString) {
                byteString.getClass();
                this.sharedSecret_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSharedSecret() {
                this.bitField0_ &= -2;
                this.sharedSecret_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getSharedSecret();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasSerialNumber() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public long getSerialNumber() {
                return this.serialNumber_;
            }

            public Builder setSerialNumber(long j) {
                this.serialNumber_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSerialNumber() {
                this.bitField0_ &= -3;
                this.serialNumber_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasRevocationCode() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public String getRevocationCode() {
                Object obj = this.revocationCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.revocationCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getRevocationCodeBytes() {
                Object obj = this.revocationCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.revocationCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRevocationCode(String str) {
                str.getClass();
                this.revocationCode_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRevocationCode() {
                this.revocationCode_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getRevocationCode();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setRevocationCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.revocationCode_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasUri() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public String getUri() {
                Object obj = this.uri_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.uri_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getUriBytes() {
                Object obj = this.uri_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.uri_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUri(String str) {
                str.getClass();
                this.uri_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearUri() {
                this.uri_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getUri();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setUriBytes(ByteString byteString) {
                byteString.getClass();
                this.uri_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasServerTime() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public long getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(long j) {
                this.serverTime_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -17;
                this.serverTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasAccountName() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public String getAccountName() {
                Object obj = this.accountName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.accountName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getAccountNameBytes() {
                Object obj = this.accountName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.accountName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAccountName(String str) {
                str.getClass();
                this.accountName_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearAccountName() {
                this.accountName_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getAccountName();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setAccountNameBytes(ByteString byteString) {
                byteString.getClass();
                this.accountName_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasTokenGid() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public String getTokenGid() {
                Object obj = this.tokenGid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.tokenGid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getTokenGidBytes() {
                Object obj = this.tokenGid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tokenGid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTokenGid(String str) {
                str.getClass();
                this.tokenGid_ = str;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearTokenGid() {
                this.tokenGid_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getTokenGid();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public Builder setTokenGidBytes(ByteString byteString) {
                byteString.getClass();
                this.tokenGid_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasIdentitySecret() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getIdentitySecret() {
                return this.identitySecret_;
            }

            public Builder setIdentitySecret(ByteString byteString) {
                byteString.getClass();
                this.identitySecret_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearIdentitySecret() {
                this.bitField0_ &= -129;
                this.identitySecret_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getIdentitySecret();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasSecret1() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getSecret1() {
                return this.secret1_;
            }

            public Builder setSecret1(ByteString byteString) {
                byteString.getClass();
                this.secret1_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearSecret1() {
                this.bitField0_ &= -257;
                this.secret1_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getSecret1();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasStatus() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public int getStatus() {
                return this.status_;
            }

            public Builder setStatus(int i) {
                this.status_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -513;
                this.status_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasPhoneNumberHint() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public String getPhoneNumberHint() {
                Object obj = this.phoneNumberHint_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.phoneNumberHint_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public ByteString getPhoneNumberHintBytes() {
                Object obj = this.phoneNumberHint_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.phoneNumberHint_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPhoneNumberHint(String str) {
                str.getClass();
                this.phoneNumberHint_ = str;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearPhoneNumberHint() {
                this.phoneNumberHint_ = CTwoFactor_AddAuthenticator_Response.getDefaultInstance().getPhoneNumberHint();
                this.bitField0_ &= -1025;
                onChanged();
                return this;
            }

            public Builder setPhoneNumberHintBytes(ByteString byteString) {
                byteString.getClass();
                this.phoneNumberHint_ = byteString;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public boolean hasConfirmType() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_ResponseOrBuilder
            public int getConfirmType() {
                return this.confirmType_;
            }

            public Builder setConfirmType(int i) {
                this.confirmType_ = i;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearConfirmType() {
                this.bitField0_ &= -2049;
                this.confirmType_ = 0;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_AddAuthenticator_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_AddAuthenticator_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_AddAuthenticator_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_AddAuthenticator_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_FinalizeAddAuthenticator_Request extends GeneratedMessage implements CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder {
        public static final int ACTIVATION_CODE_FIELD_NUMBER = 4;
        public static final int AUTHENTICATOR_CODE_FIELD_NUMBER = 2;
        public static final int AUTHENTICATOR_TIME_FIELD_NUMBER = 3;
        private static final CTwoFactor_FinalizeAddAuthenticator_Request DEFAULT_INSTANCE;
        public static final int HTTP_HEADERS_FIELD_NUMBER = 5;
        private static final Parser<CTwoFactor_FinalizeAddAuthenticator_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        public static final int VALIDATE_SMS_CODE_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private volatile Object activationCode_;
        private volatile Object authenticatorCode_;
        private long authenticatorTime_;
        private int bitField0_;
        private LazyStringArrayList httpHeaders_;
        private byte memoizedIsInitialized;
        private long steamid_;
        private boolean validateSmsCode_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_FinalizeAddAuthenticator_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_FinalizeAddAuthenticator_Request();
            PARSER = new AbstractParser<CTwoFactor_FinalizeAddAuthenticator_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_FinalizeAddAuthenticator_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_FinalizeAddAuthenticator_Request.newBuilder();
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

        private CTwoFactor_FinalizeAddAuthenticator_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.authenticatorCode_ = "";
            this.authenticatorTime_ = 0L;
            this.activationCode_ = "";
            this.httpHeaders_ = LazyStringArrayList.emptyList();
            this.validateSmsCode_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_FinalizeAddAuthenticator_Request() {
            this.steamid_ = 0L;
            this.authenticatorCode_ = "";
            this.authenticatorTime_ = 0L;
            this.activationCode_ = "";
            this.httpHeaders_ = LazyStringArrayList.emptyList();
            this.validateSmsCode_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.authenticatorCode_ = "";
            this.activationCode_ = "";
            this.httpHeaders_ = LazyStringArrayList.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_FinalizeAddAuthenticator_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public boolean hasAuthenticatorCode() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public String getAuthenticatorCode() {
            Object obj = this.authenticatorCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.authenticatorCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public ByteString getAuthenticatorCodeBytes() {
            Object obj = this.authenticatorCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authenticatorCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public boolean hasAuthenticatorTime() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public long getAuthenticatorTime() {
            return this.authenticatorTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public boolean hasActivationCode() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public String getActivationCode() {
            Object obj = this.activationCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.activationCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public ByteString getActivationCodeBytes() {
            Object obj = this.activationCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.activationCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public ProtocolStringList getHttpHeadersList() {
            return this.httpHeaders_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public int getHttpHeadersCount() {
            return this.httpHeaders_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public String getHttpHeaders(int i) {
            return this.httpHeaders_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public ByteString getHttpHeadersBytes(int i) {
            return this.httpHeaders_.getByteString(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public boolean hasValidateSmsCode() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
        public boolean getValidateSmsCode() {
            return this.validateSmsCode_;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.authenticatorCode_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.authenticatorTime_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.activationCode_);
            }
            for (int i = 0; i < this.httpHeaders_.size(); i++) {
                GeneratedMessage.writeString(codedOutputStream, 5, this.httpHeaders_.getRaw(i));
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(6, this.validateSmsCode_);
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
                iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.authenticatorCode_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt64Size(3, this.authenticatorTime_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(4, this.activationCode_);
            }
            int iComputeStringSizeNoTag = 0;
            for (int i2 = 0; i2 < this.httpHeaders_.size(); i2++) {
                iComputeStringSizeNoTag += GeneratedMessage.computeStringSizeNoTag(this.httpHeaders_.getRaw(i2));
            }
            int size = iComputeFixed64Size + iComputeStringSizeNoTag + getHttpHeadersList().size();
            if ((this.bitField0_ & 16) != 0) {
                size += CodedOutputStream.computeBoolSize(6, this.validateSmsCode_);
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
            if (!(obj instanceof CTwoFactor_FinalizeAddAuthenticator_Request)) {
                return super.equals(obj);
            }
            CTwoFactor_FinalizeAddAuthenticator_Request cTwoFactor_FinalizeAddAuthenticator_Request = (CTwoFactor_FinalizeAddAuthenticator_Request) obj;
            if (hasSteamid() != cTwoFactor_FinalizeAddAuthenticator_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cTwoFactor_FinalizeAddAuthenticator_Request.getSteamid()) || hasAuthenticatorCode() != cTwoFactor_FinalizeAddAuthenticator_Request.hasAuthenticatorCode()) {
                return false;
            }
            if ((hasAuthenticatorCode() && !getAuthenticatorCode().equals(cTwoFactor_FinalizeAddAuthenticator_Request.getAuthenticatorCode())) || hasAuthenticatorTime() != cTwoFactor_FinalizeAddAuthenticator_Request.hasAuthenticatorTime()) {
                return false;
            }
            if ((hasAuthenticatorTime() && getAuthenticatorTime() != cTwoFactor_FinalizeAddAuthenticator_Request.getAuthenticatorTime()) || hasActivationCode() != cTwoFactor_FinalizeAddAuthenticator_Request.hasActivationCode()) {
                return false;
            }
            if ((!hasActivationCode() || getActivationCode().equals(cTwoFactor_FinalizeAddAuthenticator_Request.getActivationCode())) && getHttpHeadersList().equals(cTwoFactor_FinalizeAddAuthenticator_Request.getHttpHeadersList()) && hasValidateSmsCode() == cTwoFactor_FinalizeAddAuthenticator_Request.hasValidateSmsCode()) {
                return (!hasValidateSmsCode() || getValidateSmsCode() == cTwoFactor_FinalizeAddAuthenticator_Request.getValidateSmsCode()) && getUnknownFields().equals(cTwoFactor_FinalizeAddAuthenticator_Request.getUnknownFields());
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
            if (hasAuthenticatorCode()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAuthenticatorCode().hashCode();
            }
            if (hasAuthenticatorTime()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getAuthenticatorTime());
            }
            if (hasActivationCode()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getActivationCode().hashCode();
            }
            if (getHttpHeadersCount() > 0) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getHttpHeadersList().hashCode();
            }
            if (hasValidateSmsCode()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashBoolean(getValidateSmsCode());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_FinalizeAddAuthenticator_Request cTwoFactor_FinalizeAddAuthenticator_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_FinalizeAddAuthenticator_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder {
            private Object activationCode_;
            private Object authenticatorCode_;
            private long authenticatorTime_;
            private int bitField0_;
            private LazyStringArrayList httpHeaders_;
            private long steamid_;
            private boolean validateSmsCode_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_FinalizeAddAuthenticator_Request.class, Builder.class);
            }

            private Builder() {
                this.authenticatorCode_ = "";
                this.activationCode_ = "";
                this.httpHeaders_ = LazyStringArrayList.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.authenticatorCode_ = "";
                this.activationCode_ = "";
                this.httpHeaders_ = LazyStringArrayList.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.authenticatorCode_ = "";
                this.authenticatorTime_ = 0L;
                this.activationCode_ = "";
                this.httpHeaders_ = LazyStringArrayList.emptyList();
                this.validateSmsCode_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_FinalizeAddAuthenticator_Request getDefaultInstanceForType() {
                return CTwoFactor_FinalizeAddAuthenticator_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_FinalizeAddAuthenticator_Request build() {
                CTwoFactor_FinalizeAddAuthenticator_Request cTwoFactor_FinalizeAddAuthenticator_RequestBuildPartial = buildPartial();
                if (cTwoFactor_FinalizeAddAuthenticator_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_FinalizeAddAuthenticator_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_FinalizeAddAuthenticator_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_FinalizeAddAuthenticator_Request buildPartial() {
                CTwoFactor_FinalizeAddAuthenticator_Request cTwoFactor_FinalizeAddAuthenticator_Request = new CTwoFactor_FinalizeAddAuthenticator_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_FinalizeAddAuthenticator_Request);
                }
                onBuilt();
                return cTwoFactor_FinalizeAddAuthenticator_Request;
            }

            private void buildPartial0(CTwoFactor_FinalizeAddAuthenticator_Request cTwoFactor_FinalizeAddAuthenticator_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Request.authenticatorCode_ = this.authenticatorCode_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Request.authenticatorTime_ = this.authenticatorTime_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Request.activationCode_ = this.activationCode_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    this.httpHeaders_.makeImmutable();
                    cTwoFactor_FinalizeAddAuthenticator_Request.httpHeaders_ = this.httpHeaders_;
                }
                if ((i2 & 32) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Request.validateSmsCode_ = this.validateSmsCode_;
                    i |= 16;
                }
                cTwoFactor_FinalizeAddAuthenticator_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_FinalizeAddAuthenticator_Request) {
                    return mergeFrom((CTwoFactor_FinalizeAddAuthenticator_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_FinalizeAddAuthenticator_Request cTwoFactor_FinalizeAddAuthenticator_Request) {
                if (cTwoFactor_FinalizeAddAuthenticator_Request == CTwoFactor_FinalizeAddAuthenticator_Request.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Request.hasSteamid()) {
                    setSteamid(cTwoFactor_FinalizeAddAuthenticator_Request.getSteamid());
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Request.hasAuthenticatorCode()) {
                    this.authenticatorCode_ = cTwoFactor_FinalizeAddAuthenticator_Request.authenticatorCode_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Request.hasAuthenticatorTime()) {
                    setAuthenticatorTime(cTwoFactor_FinalizeAddAuthenticator_Request.getAuthenticatorTime());
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Request.hasActivationCode()) {
                    this.activationCode_ = cTwoFactor_FinalizeAddAuthenticator_Request.activationCode_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (!cTwoFactor_FinalizeAddAuthenticator_Request.httpHeaders_.isEmpty()) {
                    if (this.httpHeaders_.isEmpty()) {
                        this.httpHeaders_ = cTwoFactor_FinalizeAddAuthenticator_Request.httpHeaders_;
                        this.bitField0_ |= 16;
                    } else {
                        ensureHttpHeadersIsMutable();
                        this.httpHeaders_.addAll(cTwoFactor_FinalizeAddAuthenticator_Request.httpHeaders_);
                    }
                    onChanged();
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Request.hasValidateSmsCode()) {
                    setValidateSmsCode(cTwoFactor_FinalizeAddAuthenticator_Request.getValidateSmsCode());
                }
                mergeUnknownFields(cTwoFactor_FinalizeAddAuthenticator_Request.getUnknownFields());
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
                                    this.authenticatorCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.authenticatorTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    this.activationCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    ByteString bytes = codedInputStream.readBytes();
                                    ensureHttpHeadersIsMutable();
                                    this.httpHeaders_.add(bytes);
                                } else if (tag == 48) {
                                    this.validateSmsCode_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public boolean hasAuthenticatorCode() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public String getAuthenticatorCode() {
                Object obj = this.authenticatorCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.authenticatorCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public ByteString getAuthenticatorCodeBytes() {
                Object obj = this.authenticatorCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.authenticatorCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAuthenticatorCode(String str) {
                str.getClass();
                this.authenticatorCode_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearAuthenticatorCode() {
                this.authenticatorCode_ = CTwoFactor_FinalizeAddAuthenticator_Request.getDefaultInstance().getAuthenticatorCode();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setAuthenticatorCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.authenticatorCode_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public boolean hasAuthenticatorTime() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public long getAuthenticatorTime() {
                return this.authenticatorTime_;
            }

            public Builder setAuthenticatorTime(long j) {
                this.authenticatorTime_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearAuthenticatorTime() {
                this.bitField0_ &= -5;
                this.authenticatorTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public boolean hasActivationCode() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public String getActivationCode() {
                Object obj = this.activationCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.activationCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public ByteString getActivationCodeBytes() {
                Object obj = this.activationCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.activationCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setActivationCode(String str) {
                str.getClass();
                this.activationCode_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearActivationCode() {
                this.activationCode_ = CTwoFactor_FinalizeAddAuthenticator_Request.getDefaultInstance().getActivationCode();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setActivationCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.activationCode_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            private void ensureHttpHeadersIsMutable() {
                if (!this.httpHeaders_.isModifiable()) {
                    this.httpHeaders_ = new LazyStringArrayList((LazyStringList) this.httpHeaders_);
                }
                this.bitField0_ |= 16;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public ProtocolStringList getHttpHeadersList() {
                this.httpHeaders_.makeImmutable();
                return this.httpHeaders_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public int getHttpHeadersCount() {
                return this.httpHeaders_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public String getHttpHeaders(int i) {
                return this.httpHeaders_.get(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public ByteString getHttpHeadersBytes(int i) {
                return this.httpHeaders_.getByteString(i);
            }

            public Builder setHttpHeaders(int i, String str) {
                str.getClass();
                ensureHttpHeadersIsMutable();
                this.httpHeaders_.set(i, str);
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder addHttpHeaders(String str) {
                str.getClass();
                ensureHttpHeadersIsMutable();
                this.httpHeaders_.add(str);
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder addAllHttpHeaders(Iterable<String> iterable) {
                ensureHttpHeadersIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.httpHeaders_);
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearHttpHeaders() {
                this.httpHeaders_ = LazyStringArrayList.emptyList();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            public Builder addHttpHeadersBytes(ByteString byteString) {
                byteString.getClass();
                ensureHttpHeadersIsMutable();
                this.httpHeaders_.add(byteString);
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public boolean hasValidateSmsCode() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_RequestOrBuilder
            public boolean getValidateSmsCode() {
                return this.validateSmsCode_;
            }

            public Builder setValidateSmsCode(boolean z) {
                this.validateSmsCode_ = z;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearValidateSmsCode() {
                this.bitField0_ &= -33;
                this.validateSmsCode_ = false;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_FinalizeAddAuthenticator_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_FinalizeAddAuthenticator_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_FinalizeAddAuthenticator_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_FinalizeAddAuthenticator_Response extends GeneratedMessage implements CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder {
        private static final CTwoFactor_FinalizeAddAuthenticator_Response DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_FinalizeAddAuthenticator_Response> PARSER;
        public static final int SERVER_TIME_FIELD_NUMBER = 3;
        public static final int STATUS_FIELD_NUMBER = 4;
        public static final int SUCCESS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long serverTime_;
        private int status_;
        private boolean success_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_FinalizeAddAuthenticator_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_FinalizeAddAuthenticator_Response();
            PARSER = new AbstractParser<CTwoFactor_FinalizeAddAuthenticator_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_FinalizeAddAuthenticator_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_FinalizeAddAuthenticator_Response.newBuilder();
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

        private CTwoFactor_FinalizeAddAuthenticator_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.success_ = false;
            this.serverTime_ = 0L;
            this.status_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_FinalizeAddAuthenticator_Response() {
            this.success_ = false;
            this.serverTime_ = 0L;
            this.status_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_FinalizeAddAuthenticator_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
        public boolean hasSuccess() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
        public boolean getSuccess() {
            return this.success_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
        public boolean hasServerTime() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
        public long getServerTime() {
            return this.serverTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
        public boolean hasStatus() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
        public int getStatus() {
            return this.status_;
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
                codedOutputStream.writeBool(1, this.success_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(3, this.serverTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(4, this.status_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.success_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt64Size(3, this.serverTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt32Size(4, this.status_);
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
            if (!(obj instanceof CTwoFactor_FinalizeAddAuthenticator_Response)) {
                return super.equals(obj);
            }
            CTwoFactor_FinalizeAddAuthenticator_Response cTwoFactor_FinalizeAddAuthenticator_Response = (CTwoFactor_FinalizeAddAuthenticator_Response) obj;
            if (hasSuccess() != cTwoFactor_FinalizeAddAuthenticator_Response.hasSuccess()) {
                return false;
            }
            if ((hasSuccess() && getSuccess() != cTwoFactor_FinalizeAddAuthenticator_Response.getSuccess()) || hasServerTime() != cTwoFactor_FinalizeAddAuthenticator_Response.hasServerTime()) {
                return false;
            }
            if ((!hasServerTime() || getServerTime() == cTwoFactor_FinalizeAddAuthenticator_Response.getServerTime()) && hasStatus() == cTwoFactor_FinalizeAddAuthenticator_Response.hasStatus()) {
                return (!hasStatus() || getStatus() == cTwoFactor_FinalizeAddAuthenticator_Response.getStatus()) && getUnknownFields().equals(cTwoFactor_FinalizeAddAuthenticator_Response.getUnknownFields());
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
            if (hasSuccess()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getSuccess());
            }
            if (hasServerTime()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getServerTime());
            }
            if (hasStatus()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getStatus();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_FinalizeAddAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_FinalizeAddAuthenticator_Response cTwoFactor_FinalizeAddAuthenticator_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_FinalizeAddAuthenticator_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder {
            private int bitField0_;
            private long serverTime_;
            private int status_;
            private boolean success_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_FinalizeAddAuthenticator_Response.class, Builder.class);
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
                this.success_ = false;
                this.serverTime_ = 0L;
                this.status_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_FinalizeAddAuthenticator_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_FinalizeAddAuthenticator_Response getDefaultInstanceForType() {
                return CTwoFactor_FinalizeAddAuthenticator_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_FinalizeAddAuthenticator_Response build() {
                CTwoFactor_FinalizeAddAuthenticator_Response cTwoFactor_FinalizeAddAuthenticator_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_FinalizeAddAuthenticator_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_FinalizeAddAuthenticator_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_FinalizeAddAuthenticator_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_FinalizeAddAuthenticator_Response buildPartial() {
                CTwoFactor_FinalizeAddAuthenticator_Response cTwoFactor_FinalizeAddAuthenticator_Response = new CTwoFactor_FinalizeAddAuthenticator_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_FinalizeAddAuthenticator_Response);
                }
                onBuilt();
                return cTwoFactor_FinalizeAddAuthenticator_Response;
            }

            private void buildPartial0(CTwoFactor_FinalizeAddAuthenticator_Response cTwoFactor_FinalizeAddAuthenticator_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Response.success_ = this.success_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Response.serverTime_ = this.serverTime_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_FinalizeAddAuthenticator_Response.status_ = this.status_;
                    i |= 4;
                }
                cTwoFactor_FinalizeAddAuthenticator_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_FinalizeAddAuthenticator_Response) {
                    return mergeFrom((CTwoFactor_FinalizeAddAuthenticator_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_FinalizeAddAuthenticator_Response cTwoFactor_FinalizeAddAuthenticator_Response) {
                if (cTwoFactor_FinalizeAddAuthenticator_Response == CTwoFactor_FinalizeAddAuthenticator_Response.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Response.hasSuccess()) {
                    setSuccess(cTwoFactor_FinalizeAddAuthenticator_Response.getSuccess());
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Response.hasServerTime()) {
                    setServerTime(cTwoFactor_FinalizeAddAuthenticator_Response.getServerTime());
                }
                if (cTwoFactor_FinalizeAddAuthenticator_Response.hasStatus()) {
                    setStatus(cTwoFactor_FinalizeAddAuthenticator_Response.getStatus());
                }
                mergeUnknownFields(cTwoFactor_FinalizeAddAuthenticator_Response.getUnknownFields());
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
                                    this.success_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 24) {
                                    this.serverTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 32) {
                                    this.status_ = codedInputStream.readInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
            public boolean hasSuccess() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
            public boolean getSuccess() {
                return this.success_;
            }

            public Builder setSuccess(boolean z) {
                this.success_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSuccess() {
                this.bitField0_ &= -2;
                this.success_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
            public boolean hasServerTime() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
            public long getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(long j) {
                this.serverTime_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -3;
                this.serverTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
            public boolean hasStatus() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_ResponseOrBuilder
            public int getStatus() {
                return this.status_;
            }

            public Builder setStatus(int i) {
                this.status_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -5;
                this.status_ = 0;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_FinalizeAddAuthenticator_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_FinalizeAddAuthenticator_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_FinalizeAddAuthenticator_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_FinalizeAddAuthenticator_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_UpdateTokenVersion_Request extends GeneratedMessage implements CTwoFactor_UpdateTokenVersion_RequestOrBuilder {
        private static final CTwoFactor_UpdateTokenVersion_Request DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_UpdateTokenVersion_Request> PARSER;
        public static final int SIGNATURE_FIELD_NUMBER = 3;
        public static final int STEAMID_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ByteString signature_;
        private long steamid_;
        private int version_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_UpdateTokenVersion_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_UpdateTokenVersion_Request();
            PARSER = new AbstractParser<CTwoFactor_UpdateTokenVersion_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_UpdateTokenVersion_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_UpdateTokenVersion_Request.newBuilder();
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

        private CTwoFactor_UpdateTokenVersion_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.version_ = 0;
            this.signature_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_UpdateTokenVersion_Request() {
            this.steamid_ = 0L;
            this.version_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.signature_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_UpdateTokenVersion_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
        public boolean hasSignature() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
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
                codedOutputStream.writeFixed64(1, this.steamid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.version_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBytes(3, this.signature_);
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
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(2, this.version_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(3, this.signature_);
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
            if (!(obj instanceof CTwoFactor_UpdateTokenVersion_Request)) {
                return super.equals(obj);
            }
            CTwoFactor_UpdateTokenVersion_Request cTwoFactor_UpdateTokenVersion_Request = (CTwoFactor_UpdateTokenVersion_Request) obj;
            if (hasSteamid() != cTwoFactor_UpdateTokenVersion_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cTwoFactor_UpdateTokenVersion_Request.getSteamid()) || hasVersion() != cTwoFactor_UpdateTokenVersion_Request.hasVersion()) {
                return false;
            }
            if ((!hasVersion() || getVersion() == cTwoFactor_UpdateTokenVersion_Request.getVersion()) && hasSignature() == cTwoFactor_UpdateTokenVersion_Request.hasSignature()) {
                return (!hasSignature() || getSignature().equals(cTwoFactor_UpdateTokenVersion_Request.getSignature())) && getUnknownFields().equals(cTwoFactor_UpdateTokenVersion_Request.getUnknownFields());
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
            if (hasVersion()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getVersion();
            }
            if (hasSignature()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getSignature().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_UpdateTokenVersion_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_UpdateTokenVersion_Request cTwoFactor_UpdateTokenVersion_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_UpdateTokenVersion_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_UpdateTokenVersion_RequestOrBuilder {
            private int bitField0_;
            private ByteString signature_;
            private long steamid_;
            private int version_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_UpdateTokenVersion_Request.class, Builder.class);
            }

            private Builder() {
                this.signature_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.signature_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.version_ = 0;
                this.signature_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_UpdateTokenVersion_Request getDefaultInstanceForType() {
                return CTwoFactor_UpdateTokenVersion_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_UpdateTokenVersion_Request build() {
                CTwoFactor_UpdateTokenVersion_Request cTwoFactor_UpdateTokenVersion_RequestBuildPartial = buildPartial();
                if (cTwoFactor_UpdateTokenVersion_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_UpdateTokenVersion_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_UpdateTokenVersion_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_UpdateTokenVersion_Request buildPartial() {
                CTwoFactor_UpdateTokenVersion_Request cTwoFactor_UpdateTokenVersion_Request = new CTwoFactor_UpdateTokenVersion_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_UpdateTokenVersion_Request);
                }
                onBuilt();
                return cTwoFactor_UpdateTokenVersion_Request;
            }

            private void buildPartial0(CTwoFactor_UpdateTokenVersion_Request cTwoFactor_UpdateTokenVersion_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_UpdateTokenVersion_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_UpdateTokenVersion_Request.version_ = this.version_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_UpdateTokenVersion_Request.signature_ = this.signature_;
                    i |= 4;
                }
                cTwoFactor_UpdateTokenVersion_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_UpdateTokenVersion_Request) {
                    return mergeFrom((CTwoFactor_UpdateTokenVersion_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_UpdateTokenVersion_Request cTwoFactor_UpdateTokenVersion_Request) {
                if (cTwoFactor_UpdateTokenVersion_Request == CTwoFactor_UpdateTokenVersion_Request.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_UpdateTokenVersion_Request.hasSteamid()) {
                    setSteamid(cTwoFactor_UpdateTokenVersion_Request.getSteamid());
                }
                if (cTwoFactor_UpdateTokenVersion_Request.hasVersion()) {
                    setVersion(cTwoFactor_UpdateTokenVersion_Request.getVersion());
                }
                if (cTwoFactor_UpdateTokenVersion_Request.hasSignature()) {
                    setSignature(cTwoFactor_UpdateTokenVersion_Request.getSignature());
                }
                mergeUnknownFields(cTwoFactor_UpdateTokenVersion_Request.getUnknownFields());
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
                                    this.version_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.signature_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.version_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -3;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
            public boolean hasSignature() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_RequestOrBuilder
            public ByteString getSignature() {
                return this.signature_;
            }

            public Builder setSignature(ByteString byteString) {
                byteString.getClass();
                this.signature_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSignature() {
                this.bitField0_ &= -5;
                this.signature_ = CTwoFactor_UpdateTokenVersion_Request.getDefaultInstance().getSignature();
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_UpdateTokenVersion_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_UpdateTokenVersion_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_UpdateTokenVersion_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_UpdateTokenVersion_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_UpdateTokenVersion_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CTwoFactor_UpdateTokenVersion_Response DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_UpdateTokenVersion_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_UpdateTokenVersion_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_UpdateTokenVersion_Response();
            PARSER = new AbstractParser<CTwoFactor_UpdateTokenVersion_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_UpdateTokenVersion_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_UpdateTokenVersion_Response.newBuilder();
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

        private CTwoFactor_UpdateTokenVersion_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_UpdateTokenVersion_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_UpdateTokenVersion_Response.class, Builder.class);
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
            if (obj instanceof CTwoFactor_UpdateTokenVersion_Response) {
                return getUnknownFields().equals(((CTwoFactor_UpdateTokenVersion_Response) obj).getUnknownFields());
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

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_UpdateTokenVersion_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_UpdateTokenVersion_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_UpdateTokenVersion_Response cTwoFactor_UpdateTokenVersion_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_UpdateTokenVersion_Response);
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
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_UpdateTokenVersion_Response.class, Builder.class);
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
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_UpdateTokenVersion_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_UpdateTokenVersion_Response getDefaultInstanceForType() {
                return CTwoFactor_UpdateTokenVersion_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_UpdateTokenVersion_Response build() {
                CTwoFactor_UpdateTokenVersion_Response cTwoFactor_UpdateTokenVersion_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_UpdateTokenVersion_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_UpdateTokenVersion_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_UpdateTokenVersion_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_UpdateTokenVersion_Response buildPartial() {
                CTwoFactor_UpdateTokenVersion_Response cTwoFactor_UpdateTokenVersion_Response = new CTwoFactor_UpdateTokenVersion_Response(this);
                onBuilt();
                return cTwoFactor_UpdateTokenVersion_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_UpdateTokenVersion_Response) {
                    return mergeFrom((CTwoFactor_UpdateTokenVersion_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_UpdateTokenVersion_Response cTwoFactor_UpdateTokenVersion_Response) {
                if (cTwoFactor_UpdateTokenVersion_Response == CTwoFactor_UpdateTokenVersion_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cTwoFactor_UpdateTokenVersion_Response.getUnknownFields());
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

        public static CTwoFactor_UpdateTokenVersion_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_UpdateTokenVersion_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_UpdateTokenVersion_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_UpdateTokenVersion_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_RemoveAuthenticator_Request extends GeneratedMessage implements CTwoFactor_RemoveAuthenticator_RequestOrBuilder {
        private static final CTwoFactor_RemoveAuthenticator_Request DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_RemoveAuthenticator_Request> PARSER;
        public static final int REMOVE_ALL_STEAMGUARD_COOKIES_FIELD_NUMBER = 7;
        public static final int REVOCATION_CODE_FIELD_NUMBER = 2;
        public static final int REVOCATION_REASON_FIELD_NUMBER = 5;
        public static final int STEAMGUARD_SCHEME_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean removeAllSteamguardCookies_;
        private volatile Object revocationCode_;
        private int revocationReason_;
        private int steamguardScheme_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_RemoveAuthenticator_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_RemoveAuthenticator_Request();
            PARSER = new AbstractParser<CTwoFactor_RemoveAuthenticator_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_RemoveAuthenticator_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_RemoveAuthenticator_Request.newBuilder();
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

        private CTwoFactor_RemoveAuthenticator_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.revocationCode_ = "";
            this.revocationReason_ = 0;
            this.steamguardScheme_ = 0;
            this.removeAllSteamguardCookies_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_RemoveAuthenticator_Request() {
            this.revocationCode_ = "";
            this.revocationReason_ = 0;
            this.steamguardScheme_ = 0;
            this.removeAllSteamguardCookies_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.revocationCode_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticator_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public boolean hasRevocationCode() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public String getRevocationCode() {
            Object obj = this.revocationCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.revocationCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public ByteString getRevocationCodeBytes() {
            Object obj = this.revocationCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.revocationCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public boolean hasRevocationReason() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public int getRevocationReason() {
            return this.revocationReason_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public boolean hasSteamguardScheme() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public int getSteamguardScheme() {
            return this.steamguardScheme_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public boolean hasRemoveAllSteamguardCookies() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
        public boolean getRemoveAllSteamguardCookies() {
            return this.removeAllSteamguardCookies_;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.revocationCode_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(5, this.revocationReason_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(6, this.steamguardScheme_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeBool(7, this.removeAllSteamguardCookies_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(2, this.revocationCode_) : 0;
            if ((2 & this.bitField0_) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(5, this.revocationReason_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(6, this.steamguardScheme_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(7, this.removeAllSteamguardCookies_);
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
            if (!(obj instanceof CTwoFactor_RemoveAuthenticator_Request)) {
                return super.equals(obj);
            }
            CTwoFactor_RemoveAuthenticator_Request cTwoFactor_RemoveAuthenticator_Request = (CTwoFactor_RemoveAuthenticator_Request) obj;
            if (hasRevocationCode() != cTwoFactor_RemoveAuthenticator_Request.hasRevocationCode()) {
                return false;
            }
            if ((hasRevocationCode() && !getRevocationCode().equals(cTwoFactor_RemoveAuthenticator_Request.getRevocationCode())) || hasRevocationReason() != cTwoFactor_RemoveAuthenticator_Request.hasRevocationReason()) {
                return false;
            }
            if ((hasRevocationReason() && getRevocationReason() != cTwoFactor_RemoveAuthenticator_Request.getRevocationReason()) || hasSteamguardScheme() != cTwoFactor_RemoveAuthenticator_Request.hasSteamguardScheme()) {
                return false;
            }
            if ((!hasSteamguardScheme() || getSteamguardScheme() == cTwoFactor_RemoveAuthenticator_Request.getSteamguardScheme()) && hasRemoveAllSteamguardCookies() == cTwoFactor_RemoveAuthenticator_Request.hasRemoveAllSteamguardCookies()) {
                return (!hasRemoveAllSteamguardCookies() || getRemoveAllSteamguardCookies() == cTwoFactor_RemoveAuthenticator_Request.getRemoveAllSteamguardCookies()) && getUnknownFields().equals(cTwoFactor_RemoveAuthenticator_Request.getUnknownFields());
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
            if (hasRevocationCode()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getRevocationCode().hashCode();
            }
            if (hasRevocationReason()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getRevocationReason();
            }
            if (hasSteamguardScheme()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getSteamguardScheme();
            }
            if (hasRemoveAllSteamguardCookies()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + Internal.hashBoolean(getRemoveAllSteamguardCookies());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_RemoveAuthenticator_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_RemoveAuthenticator_Request cTwoFactor_RemoveAuthenticator_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_RemoveAuthenticator_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_RemoveAuthenticator_RequestOrBuilder {
            private int bitField0_;
            private boolean removeAllSteamguardCookies_;
            private Object revocationCode_;
            private int revocationReason_;
            private int steamguardScheme_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticator_Request.class, Builder.class);
            }

            private Builder() {
                this.revocationCode_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.revocationCode_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.revocationCode_ = "";
                this.revocationReason_ = 0;
                this.steamguardScheme_ = 0;
                this.removeAllSteamguardCookies_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_RemoveAuthenticator_Request getDefaultInstanceForType() {
                return CTwoFactor_RemoveAuthenticator_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticator_Request build() {
                CTwoFactor_RemoveAuthenticator_Request cTwoFactor_RemoveAuthenticator_RequestBuildPartial = buildPartial();
                if (cTwoFactor_RemoveAuthenticator_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_RemoveAuthenticator_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_RemoveAuthenticator_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticator_Request buildPartial() {
                CTwoFactor_RemoveAuthenticator_Request cTwoFactor_RemoveAuthenticator_Request = new CTwoFactor_RemoveAuthenticator_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_RemoveAuthenticator_Request);
                }
                onBuilt();
                return cTwoFactor_RemoveAuthenticator_Request;
            }

            private void buildPartial0(CTwoFactor_RemoveAuthenticator_Request cTwoFactor_RemoveAuthenticator_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_RemoveAuthenticator_Request.revocationCode_ = this.revocationCode_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_RemoveAuthenticator_Request.revocationReason_ = this.revocationReason_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_RemoveAuthenticator_Request.steamguardScheme_ = this.steamguardScheme_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cTwoFactor_RemoveAuthenticator_Request.removeAllSteamguardCookies_ = this.removeAllSteamguardCookies_;
                    i |= 8;
                }
                cTwoFactor_RemoveAuthenticator_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_RemoveAuthenticator_Request) {
                    return mergeFrom((CTwoFactor_RemoveAuthenticator_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_RemoveAuthenticator_Request cTwoFactor_RemoveAuthenticator_Request) {
                if (cTwoFactor_RemoveAuthenticator_Request == CTwoFactor_RemoveAuthenticator_Request.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_RemoveAuthenticator_Request.hasRevocationCode()) {
                    this.revocationCode_ = cTwoFactor_RemoveAuthenticator_Request.revocationCode_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cTwoFactor_RemoveAuthenticator_Request.hasRevocationReason()) {
                    setRevocationReason(cTwoFactor_RemoveAuthenticator_Request.getRevocationReason());
                }
                if (cTwoFactor_RemoveAuthenticator_Request.hasSteamguardScheme()) {
                    setSteamguardScheme(cTwoFactor_RemoveAuthenticator_Request.getSteamguardScheme());
                }
                if (cTwoFactor_RemoveAuthenticator_Request.hasRemoveAllSteamguardCookies()) {
                    setRemoveAllSteamguardCookies(cTwoFactor_RemoveAuthenticator_Request.getRemoveAllSteamguardCookies());
                }
                mergeUnknownFields(cTwoFactor_RemoveAuthenticator_Request.getUnknownFields());
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
                                if (tag == 18) {
                                    this.revocationCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 40) {
                                    this.revocationReason_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 48) {
                                    this.steamguardScheme_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 56) {
                                    this.removeAllSteamguardCookies_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public boolean hasRevocationCode() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public String getRevocationCode() {
                Object obj = this.revocationCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.revocationCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public ByteString getRevocationCodeBytes() {
                Object obj = this.revocationCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.revocationCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRevocationCode(String str) {
                str.getClass();
                this.revocationCode_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearRevocationCode() {
                this.revocationCode_ = CTwoFactor_RemoveAuthenticator_Request.getDefaultInstance().getRevocationCode();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setRevocationCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.revocationCode_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public boolean hasRevocationReason() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public int getRevocationReason() {
                return this.revocationReason_;
            }

            public Builder setRevocationReason(int i) {
                this.revocationReason_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearRevocationReason() {
                this.bitField0_ &= -3;
                this.revocationReason_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public boolean hasSteamguardScheme() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public int getSteamguardScheme() {
                return this.steamguardScheme_;
            }

            public Builder setSteamguardScheme(int i) {
                this.steamguardScheme_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearSteamguardScheme() {
                this.bitField0_ &= -5;
                this.steamguardScheme_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public boolean hasRemoveAllSteamguardCookies() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_RequestOrBuilder
            public boolean getRemoveAllSteamguardCookies() {
                return this.removeAllSteamguardCookies_;
            }

            public Builder setRemoveAllSteamguardCookies(boolean z) {
                this.removeAllSteamguardCookies_ = z;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearRemoveAllSteamguardCookies() {
                this.bitField0_ &= -9;
                this.removeAllSteamguardCookies_ = false;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_RemoveAuthenticator_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_RemoveAuthenticator_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_RemoveAuthenticator_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_RemoveAuthenticator_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_RemoveAuthenticator_Response extends GeneratedMessage implements CTwoFactor_RemoveAuthenticator_ResponseOrBuilder {
        private static final CTwoFactor_RemoveAuthenticator_Response DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_RemoveAuthenticator_Response> PARSER;
        public static final int REVOCATION_ATTEMPTS_REMAINING_FIELD_NUMBER = 5;
        public static final int SERVER_TIME_FIELD_NUMBER = 3;
        public static final int SUCCESS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int revocationAttemptsRemaining_;
        private long serverTime_;
        private boolean success_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_RemoveAuthenticator_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_RemoveAuthenticator_Response();
            PARSER = new AbstractParser<CTwoFactor_RemoveAuthenticator_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_RemoveAuthenticator_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_RemoveAuthenticator_Response.newBuilder();
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

        private CTwoFactor_RemoveAuthenticator_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.success_ = false;
            this.serverTime_ = 0L;
            this.revocationAttemptsRemaining_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_RemoveAuthenticator_Response() {
            this.success_ = false;
            this.serverTime_ = 0L;
            this.revocationAttemptsRemaining_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticator_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
        public boolean hasSuccess() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
        public boolean getSuccess() {
            return this.success_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
        public boolean hasServerTime() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
        public long getServerTime() {
            return this.serverTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
        public boolean hasRevocationAttemptsRemaining() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
        public int getRevocationAttemptsRemaining() {
            return this.revocationAttemptsRemaining_;
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
                codedOutputStream.writeBool(1, this.success_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(3, this.serverTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(5, this.revocationAttemptsRemaining_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.success_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt64Size(3, this.serverTime_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(5, this.revocationAttemptsRemaining_);
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
            if (!(obj instanceof CTwoFactor_RemoveAuthenticator_Response)) {
                return super.equals(obj);
            }
            CTwoFactor_RemoveAuthenticator_Response cTwoFactor_RemoveAuthenticator_Response = (CTwoFactor_RemoveAuthenticator_Response) obj;
            if (hasSuccess() != cTwoFactor_RemoveAuthenticator_Response.hasSuccess()) {
                return false;
            }
            if ((hasSuccess() && getSuccess() != cTwoFactor_RemoveAuthenticator_Response.getSuccess()) || hasServerTime() != cTwoFactor_RemoveAuthenticator_Response.hasServerTime()) {
                return false;
            }
            if ((!hasServerTime() || getServerTime() == cTwoFactor_RemoveAuthenticator_Response.getServerTime()) && hasRevocationAttemptsRemaining() == cTwoFactor_RemoveAuthenticator_Response.hasRevocationAttemptsRemaining()) {
                return (!hasRevocationAttemptsRemaining() || getRevocationAttemptsRemaining() == cTwoFactor_RemoveAuthenticator_Response.getRevocationAttemptsRemaining()) && getUnknownFields().equals(cTwoFactor_RemoveAuthenticator_Response.getUnknownFields());
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
            if (hasSuccess()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getSuccess());
            }
            if (hasServerTime()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getServerTime());
            }
            if (hasRevocationAttemptsRemaining()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getRevocationAttemptsRemaining();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_RemoveAuthenticator_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticator_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_RemoveAuthenticator_Response cTwoFactor_RemoveAuthenticator_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_RemoveAuthenticator_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_RemoveAuthenticator_ResponseOrBuilder {
            private int bitField0_;
            private int revocationAttemptsRemaining_;
            private long serverTime_;
            private boolean success_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticator_Response.class, Builder.class);
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
                this.success_ = false;
                this.serverTime_ = 0L;
                this.revocationAttemptsRemaining_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticator_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_RemoveAuthenticator_Response getDefaultInstanceForType() {
                return CTwoFactor_RemoveAuthenticator_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticator_Response build() {
                CTwoFactor_RemoveAuthenticator_Response cTwoFactor_RemoveAuthenticator_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_RemoveAuthenticator_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_RemoveAuthenticator_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_RemoveAuthenticator_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticator_Response buildPartial() {
                CTwoFactor_RemoveAuthenticator_Response cTwoFactor_RemoveAuthenticator_Response = new CTwoFactor_RemoveAuthenticator_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_RemoveAuthenticator_Response);
                }
                onBuilt();
                return cTwoFactor_RemoveAuthenticator_Response;
            }

            private void buildPartial0(CTwoFactor_RemoveAuthenticator_Response cTwoFactor_RemoveAuthenticator_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_RemoveAuthenticator_Response.success_ = this.success_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_RemoveAuthenticator_Response.serverTime_ = this.serverTime_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_RemoveAuthenticator_Response.revocationAttemptsRemaining_ = this.revocationAttemptsRemaining_;
                    i |= 4;
                }
                cTwoFactor_RemoveAuthenticator_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_RemoveAuthenticator_Response) {
                    return mergeFrom((CTwoFactor_RemoveAuthenticator_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_RemoveAuthenticator_Response cTwoFactor_RemoveAuthenticator_Response) {
                if (cTwoFactor_RemoveAuthenticator_Response == CTwoFactor_RemoveAuthenticator_Response.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_RemoveAuthenticator_Response.hasSuccess()) {
                    setSuccess(cTwoFactor_RemoveAuthenticator_Response.getSuccess());
                }
                if (cTwoFactor_RemoveAuthenticator_Response.hasServerTime()) {
                    setServerTime(cTwoFactor_RemoveAuthenticator_Response.getServerTime());
                }
                if (cTwoFactor_RemoveAuthenticator_Response.hasRevocationAttemptsRemaining()) {
                    setRevocationAttemptsRemaining(cTwoFactor_RemoveAuthenticator_Response.getRevocationAttemptsRemaining());
                }
                mergeUnknownFields(cTwoFactor_RemoveAuthenticator_Response.getUnknownFields());
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
                                    this.success_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 24) {
                                    this.serverTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 40) {
                                    this.revocationAttemptsRemaining_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
            public boolean hasSuccess() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
            public boolean getSuccess() {
                return this.success_;
            }

            public Builder setSuccess(boolean z) {
                this.success_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSuccess() {
                this.bitField0_ &= -2;
                this.success_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
            public boolean hasServerTime() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
            public long getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(long j) {
                this.serverTime_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -3;
                this.serverTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
            public boolean hasRevocationAttemptsRemaining() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_ResponseOrBuilder
            public int getRevocationAttemptsRemaining() {
                return this.revocationAttemptsRemaining_;
            }

            public Builder setRevocationAttemptsRemaining(int i) {
                this.revocationAttemptsRemaining_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRevocationAttemptsRemaining() {
                this.bitField0_ &= -5;
                this.revocationAttemptsRemaining_ = 0;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_RemoveAuthenticator_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_RemoveAuthenticator_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_RemoveAuthenticator_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_RemoveAuthenticator_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request extends GeneratedMessage implements MessageOrBuilder {
        private static final CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request();
            PARSER = new AbstractParser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.newBuilder();
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

        private CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.class, Builder.class);
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
            if (obj instanceof CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) {
                return getUnknownFields().equals(((CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) obj).getUnknownFields());
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

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request cTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_RemoveAuthenticatorViaChallengeStart_Request);
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
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.class, Builder.class);
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
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request getDefaultInstanceForType() {
                return CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request build() {
                CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request cTwoFactor_RemoveAuthenticatorViaChallengeStart_RequestBuildPartial = buildPartial();
                if (cTwoFactor_RemoveAuthenticatorViaChallengeStart_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_RemoveAuthenticatorViaChallengeStart_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_RemoveAuthenticatorViaChallengeStart_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request buildPartial() {
                CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request cTwoFactor_RemoveAuthenticatorViaChallengeStart_Request = new CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request(this);
                onBuilt();
                return cTwoFactor_RemoveAuthenticatorViaChallengeStart_Request;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) {
                    return mergeFrom((CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request cTwoFactor_RemoveAuthenticatorViaChallengeStart_Request) {
                if (cTwoFactor_RemoveAuthenticatorViaChallengeStart_Request == CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cTwoFactor_RemoveAuthenticatorViaChallengeStart_Request.getUnknownFields());
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

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response extends GeneratedMessage implements CTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseOrBuilder {
        private static final CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response> PARSER;
        public static final int SUCCESS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean success_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response();
            PARSER = new AbstractParser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.newBuilder();
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

        private CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.success_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response() {
            this.success_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseOrBuilder
        public boolean hasSuccess() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseOrBuilder
        public boolean getSuccess() {
            return this.success_;
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
                codedOutputStream.writeBool(1, this.success_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.success_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeBoolSize;
            return iComputeBoolSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response)) {
                return super.equals(obj);
            }
            CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response = (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) obj;
            if (hasSuccess() != cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.hasSuccess()) {
                return false;
            }
            return (!hasSuccess() || getSuccess() == cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.getSuccess()) && getUnknownFields().equals(cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSuccess()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getSuccess());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseOrBuilder {
            private int bitField0_;
            private boolean success_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.class, Builder.class);
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
                this.success_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response getDefaultInstanceForType() {
                return CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response build() {
                CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response cTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response buildPartial() {
                CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response = new CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response);
                }
                onBuilt();
                return cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response;
            }

            private void buildPartial0(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.success_ = this.success_;
                } else {
                    i = 0;
                }
                cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) {
                    return mergeFrom((CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response) {
                if (cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response == CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.hasSuccess()) {
                    setSuccess(cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.getSuccess());
                }
                mergeUnknownFields(cTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.getUnknownFields());
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
                                    this.success_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseOrBuilder
            public boolean hasSuccess() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_ResponseOrBuilder
            public boolean getSuccess() {
                return this.success_;
            }

            public Builder setSuccess(boolean z) {
                this.success_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSuccess() {
                this.bitField0_ &= -2;
                this.success_ = false;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request extends GeneratedMessage implements CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder {
        private static final CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request DEFAULT_INSTANCE;
        public static final int GENERATE_NEW_TOKEN_FIELD_NUMBER = 2;
        private static final Parser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request> PARSER;
        public static final int SMS_CODE_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean generateNewToken_;
        private byte memoizedIsInitialized;
        private volatile Object smsCode_;
        private int version_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request();
            PARSER = new AbstractParser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.newBuilder();
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

        private CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.smsCode_ = "";
            this.generateNewToken_ = false;
            this.version_ = 1;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request() {
            this.smsCode_ = "";
            this.generateNewToken_ = false;
            this.version_ = 1;
            this.memoizedIsInitialized = (byte) -1;
            this.smsCode_ = "";
            this.version_ = 1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
        public boolean hasSmsCode() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
        public String getSmsCode() {
            Object obj = this.smsCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.smsCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
        public ByteString getSmsCodeBytes() {
            Object obj = this.smsCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.smsCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
        public boolean hasGenerateNewToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
        public boolean getGenerateNewToken() {
            return this.generateNewToken_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
        public int getVersion() {
            return this.version_;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.smsCode_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBool(2, this.generateNewToken_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.version_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.smsCode_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(2, this.generateNewToken_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(3, this.version_);
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
            if (!(obj instanceof CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request)) {
                return super.equals(obj);
            }
            CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request = (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) obj;
            if (hasSmsCode() != cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.hasSmsCode()) {
                return false;
            }
            if ((hasSmsCode() && !getSmsCode().equals(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getSmsCode())) || hasGenerateNewToken() != cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.hasGenerateNewToken()) {
                return false;
            }
            if ((!hasGenerateNewToken() || getGenerateNewToken() == cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getGenerateNewToken()) && hasVersion() == cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.hasVersion()) {
                return (!hasVersion() || getVersion() == cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getVersion()) && getUnknownFields().equals(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getUnknownFields());
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
            if (hasSmsCode()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSmsCode().hashCode();
            }
            if (hasGenerateNewToken()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashBoolean(getGenerateNewToken());
            }
            if (hasVersion()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getVersion();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder {
            private int bitField0_;
            private boolean generateNewToken_;
            private Object smsCode_;
            private int version_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.class, Builder.class);
            }

            private Builder() {
                this.smsCode_ = "";
                this.version_ = 1;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.smsCode_ = "";
                this.version_ = 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.smsCode_ = "";
                this.generateNewToken_ = false;
                this.version_ = 1;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request getDefaultInstanceForType() {
                return CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request build() {
                CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request cTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestBuildPartial = buildPartial();
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestBuildPartial.isInitialized()) {
                    return cTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request buildPartial() {
                CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request = new CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request);
                }
                onBuilt();
                return cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request;
            }

            private void buildPartial0(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.smsCode_ = this.smsCode_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.generateNewToken_ = this.generateNewToken_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.version_ = this.version_;
                    i |= 4;
                }
                cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) {
                    return mergeFrom((CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request) {
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request == CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.hasSmsCode()) {
                    this.smsCode_ = cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.smsCode_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.hasGenerateNewToken()) {
                    setGenerateNewToken(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getGenerateNewToken());
                }
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.hasVersion()) {
                    setVersion(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getVersion());
                }
                mergeUnknownFields(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getUnknownFields());
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
                                    this.smsCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.generateNewToken_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.version_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
            public boolean hasSmsCode() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
            public String getSmsCode() {
                Object obj = this.smsCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.smsCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
            public ByteString getSmsCodeBytes() {
                Object obj = this.smsCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.smsCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSmsCode(String str) {
                str.getClass();
                this.smsCode_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSmsCode() {
                this.smsCode_ = CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request.getDefaultInstance().getSmsCode();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setSmsCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.smsCode_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
            public boolean hasGenerateNewToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
            public boolean getGenerateNewToken() {
                return this.generateNewToken_;
            }

            public Builder setGenerateNewToken(boolean z) {
                this.generateNewToken_ = z;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearGenerateNewToken() {
                this.bitField0_ &= -3;
                this.generateNewToken_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_RequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.version_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -5;
                this.version_ = 1;
                onChanged();
                return this;
            }
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CRemoveAuthenticatorViaChallengeContinue_Replacement_Token extends GeneratedMessage implements CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder {
        public static final int ACCOUNT_NAME_FIELD_NUMBER = 6;
        private static final CRemoveAuthenticatorViaChallengeContinue_Replacement_Token DEFAULT_INSTANCE;
        public static final int IDENTITY_SECRET_FIELD_NUMBER = 8;
        private static final Parser<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token> PARSER;
        public static final int REVOCATION_CODE_FIELD_NUMBER = 3;
        public static final int SECRET_1_FIELD_NUMBER = 9;
        public static final int SERIAL_NUMBER_FIELD_NUMBER = 2;
        public static final int SERVER_TIME_FIELD_NUMBER = 5;
        public static final int SHARED_SECRET_FIELD_NUMBER = 1;
        public static final int STATUS_FIELD_NUMBER = 10;
        public static final int STEAMGUARD_SCHEME_FIELD_NUMBER = 11;
        public static final int STEAMID_FIELD_NUMBER = 12;
        public static final int TOKEN_GID_FIELD_NUMBER = 7;
        public static final int URI_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object accountName_;
        private int bitField0_;
        private ByteString identitySecret_;
        private byte memoizedIsInitialized;
        private volatile Object revocationCode_;
        private ByteString secret1_;
        private long serialNumber_;
        private long serverTime_;
        private ByteString sharedSecret_;
        private int status_;
        private int steamguardScheme_;
        private long steamid_;
        private volatile Object tokenGid_;
        private volatile Object uri_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.class.getName());
            DEFAULT_INSTANCE = new CRemoveAuthenticatorViaChallengeContinue_Replacement_Token();
            PARSER = new AbstractParser<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.1
                @Override // com.google.protobuf.Parser
                public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.newBuilder();
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

        private CRemoveAuthenticatorViaChallengeContinue_Replacement_Token(GeneratedMessage.Builder<?> builder) {
            super(builder);
            ByteString byteString = ByteString.EMPTY;
            this.sharedSecret_ = byteString;
            this.serialNumber_ = 0L;
            this.revocationCode_ = "";
            this.uri_ = "";
            this.serverTime_ = 0L;
            this.accountName_ = "";
            this.tokenGid_ = "";
            this.identitySecret_ = byteString;
            this.secret1_ = byteString;
            this.status_ = 0;
            this.steamguardScheme_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CRemoveAuthenticatorViaChallengeContinue_Replacement_Token() {
            ByteString byteString = ByteString.EMPTY;
            this.sharedSecret_ = byteString;
            this.serialNumber_ = 0L;
            this.revocationCode_ = "";
            this.uri_ = "";
            this.serverTime_ = 0L;
            this.accountName_ = "";
            this.tokenGid_ = "";
            this.identitySecret_ = byteString;
            this.secret1_ = byteString;
            this.status_ = 0;
            this.steamguardScheme_ = 0;
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.sharedSecret_ = byteString;
            this.revocationCode_ = "";
            this.uri_ = "";
            this.accountName_ = "";
            this.tokenGid_ = "";
            this.identitySecret_ = byteString;
            this.secret1_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasSharedSecret() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public ByteString getSharedSecret() {
            return this.sharedSecret_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasSerialNumber() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public long getSerialNumber() {
            return this.serialNumber_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasRevocationCode() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public String getRevocationCode() {
            Object obj = this.revocationCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.revocationCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public ByteString getRevocationCodeBytes() {
            Object obj = this.revocationCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.revocationCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasUri() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public String getUri() {
            Object obj = this.uri_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.uri_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public ByteString getUriBytes() {
            Object obj = this.uri_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.uri_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasServerTime() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public long getServerTime() {
            return this.serverTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasAccountName() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public String getAccountName() {
            Object obj = this.accountName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.accountName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public ByteString getAccountNameBytes() {
            Object obj = this.accountName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accountName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasTokenGid() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public String getTokenGid() {
            Object obj = this.tokenGid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.tokenGid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public ByteString getTokenGidBytes() {
            Object obj = this.tokenGid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tokenGid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasIdentitySecret() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public ByteString getIdentitySecret() {
            return this.identitySecret_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasSecret1() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public ByteString getSecret1() {
            return this.secret1_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasStatus() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public int getStatus() {
            return this.status_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasSteamguardScheme() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public int getSteamguardScheme() {
            return this.steamguardScheme_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
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
                codedOutputStream.writeBytes(1, this.sharedSecret_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeFixed64(2, this.serialNumber_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.revocationCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.uri_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt64(5, this.serverTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.accountName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 7, this.tokenGid_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBytes(8, this.identitySecret_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeBytes(9, this.secret1_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeInt32(10, this.status_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeUInt32(11, this.steamguardScheme_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeFixed64(12, this.steamid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBytesSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBytesSize(1, this.sharedSecret_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBytesSize += CodedOutputStream.computeFixed64Size(2, this.serialNumber_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(3, this.revocationCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(4, this.uri_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeBytesSize += CodedOutputStream.computeUInt64Size(5, this.serverTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(6, this.accountName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeBytesSize += GeneratedMessage.computeStringSize(7, this.tokenGid_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeBytesSize += CodedOutputStream.computeBytesSize(8, this.identitySecret_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeBytesSize += CodedOutputStream.computeBytesSize(9, this.secret1_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeBytesSize += CodedOutputStream.computeInt32Size(10, this.status_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeBytesSize += CodedOutputStream.computeUInt32Size(11, this.steamguardScheme_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeBytesSize += CodedOutputStream.computeFixed64Size(12, this.steamid_);
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
            if (!(obj instanceof CRemoveAuthenticatorViaChallengeContinue_Replacement_Token)) {
                return super.equals(obj);
            }
            CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) obj;
            if (hasSharedSecret() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSharedSecret()) {
                return false;
            }
            if ((hasSharedSecret() && !getSharedSecret().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSharedSecret())) || hasSerialNumber() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSerialNumber()) {
                return false;
            }
            if ((hasSerialNumber() && getSerialNumber() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSerialNumber()) || hasRevocationCode() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasRevocationCode()) {
                return false;
            }
            if ((hasRevocationCode() && !getRevocationCode().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getRevocationCode())) || hasUri() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasUri()) {
                return false;
            }
            if ((hasUri() && !getUri().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getUri())) || hasServerTime() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasServerTime()) {
                return false;
            }
            if ((hasServerTime() && getServerTime() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getServerTime()) || hasAccountName() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasAccountName()) {
                return false;
            }
            if ((hasAccountName() && !getAccountName().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getAccountName())) || hasTokenGid() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasTokenGid()) {
                return false;
            }
            if ((hasTokenGid() && !getTokenGid().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getTokenGid())) || hasIdentitySecret() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasIdentitySecret()) {
                return false;
            }
            if ((hasIdentitySecret() && !getIdentitySecret().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getIdentitySecret())) || hasSecret1() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSecret1()) {
                return false;
            }
            if ((hasSecret1() && !getSecret1().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSecret1())) || hasStatus() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasStatus()) {
                return false;
            }
            if ((hasStatus() && getStatus() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getStatus()) || hasSteamguardScheme() != cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSteamguardScheme()) {
                return false;
            }
            if ((!hasSteamguardScheme() || getSteamguardScheme() == cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSteamguardScheme()) && hasSteamid() == cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSteamid()) {
                return (!hasSteamid() || getSteamid() == cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSteamid()) && getUnknownFields().equals(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getUnknownFields());
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
            if (hasSharedSecret()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSharedSecret().hashCode();
            }
            if (hasSerialNumber()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSerialNumber());
            }
            if (hasRevocationCode()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRevocationCode().hashCode();
            }
            if (hasUri()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getUri().hashCode();
            }
            if (hasServerTime()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getServerTime());
            }
            if (hasAccountName()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getAccountName().hashCode();
            }
            if (hasTokenGid()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getTokenGid().hashCode();
            }
            if (hasIdentitySecret()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getIdentitySecret().hashCode();
            }
            if (hasSecret1()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getSecret1().hashCode();
            }
            if (hasStatus()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getStatus();
            }
            if (hasSteamguardScheme()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getSteamguardScheme();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + Internal.hashLong(getSteamid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(InputStream inputStream) throws IOException {
            return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder {
            private Object accountName_;
            private int bitField0_;
            private ByteString identitySecret_;
            private Object revocationCode_;
            private ByteString secret1_;
            private long serialNumber_;
            private long serverTime_;
            private ByteString sharedSecret_;
            private int status_;
            private int steamguardScheme_;
            private long steamid_;
            private Object tokenGid_;
            private Object uri_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_fieldAccessorTable.ensureFieldAccessorsInitialized(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.class, Builder.class);
            }

            private Builder() {
                ByteString byteString = ByteString.EMPTY;
                this.sharedSecret_ = byteString;
                this.revocationCode_ = "";
                this.uri_ = "";
                this.accountName_ = "";
                this.tokenGid_ = "";
                this.identitySecret_ = byteString;
                this.secret1_ = byteString;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                ByteString byteString = ByteString.EMPTY;
                this.sharedSecret_ = byteString;
                this.revocationCode_ = "";
                this.uri_ = "";
                this.accountName_ = "";
                this.tokenGid_ = "";
                this.identitySecret_ = byteString;
                this.secret1_ = byteString;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.sharedSecret_ = byteString;
                this.serialNumber_ = 0L;
                this.revocationCode_ = "";
                this.uri_ = "";
                this.serverTime_ = 0L;
                this.accountName_ = "";
                this.tokenGid_ = "";
                this.identitySecret_ = byteString;
                this.secret1_ = byteString;
                this.status_ = 0;
                this.steamguardScheme_ = 0;
                this.steamid_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CRemoveAuthenticatorViaChallengeContinue_Replacement_Token_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token getDefaultInstanceForType() {
                return CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token build() {
                CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_TokenBuildPartial = buildPartial();
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_TokenBuildPartial.isInitialized()) {
                    return cRemoveAuthenticatorViaChallengeContinue_Replacement_TokenBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cRemoveAuthenticatorViaChallengeContinue_Replacement_TokenBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token buildPartial() {
                CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = new CRemoveAuthenticatorViaChallengeContinue_Replacement_Token(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token);
                }
                onBuilt();
                return cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
            }

            private void buildPartial0(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.sharedSecret_ = this.sharedSecret_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.serialNumber_ = this.serialNumber_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.revocationCode_ = this.revocationCode_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.uri_ = this.uri_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.serverTime_ = this.serverTime_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.accountName_ = this.accountName_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.tokenGid_ = this.tokenGid_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.identitySecret_ = this.identitySecret_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.secret1_ = this.secret1_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.status_ = this.status_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.steamguardScheme_ = this.steamguardScheme_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.steamid_ = this.steamid_;
                    i |= 2048;
                }
                cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) {
                    return mergeFrom((CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token) {
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token == CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance()) {
                    return this;
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSharedSecret()) {
                    setSharedSecret(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSharedSecret());
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSerialNumber()) {
                    setSerialNumber(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSerialNumber());
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasRevocationCode()) {
                    this.revocationCode_ = cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.revocationCode_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasUri()) {
                    this.uri_ = cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.uri_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasServerTime()) {
                    setServerTime(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getServerTime());
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasAccountName()) {
                    this.accountName_ = cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.accountName_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasTokenGid()) {
                    this.tokenGid_ = cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.tokenGid_;
                    this.bitField0_ |= 64;
                    onChanged();
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasIdentitySecret()) {
                    setIdentitySecret(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getIdentitySecret());
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSecret1()) {
                    setSecret1(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSecret1());
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasStatus()) {
                    setStatus(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getStatus());
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSteamguardScheme()) {
                    setSteamguardScheme(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSteamguardScheme());
                }
                if (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.hasSteamid()) {
                    setSteamid(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getSteamid());
                }
                mergeUnknownFields(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getUnknownFields());
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
                                case 10:
                                    this.sharedSecret_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                    break;
                                case 17:
                                    this.serialNumber_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.revocationCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    this.uri_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.serverTime_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                    break;
                                case 50:
                                    this.accountName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER /* 58 */:
                                    this.tokenGid_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.identitySecret_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 74:
                                    this.secret1_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.status_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER /* 88 */:
                                    this.steamguardScheme_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1024;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.MACHINE_NAME_USERCHOSEN_FIELD_NUMBER /* 97 */:
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 2048;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasSharedSecret() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public ByteString getSharedSecret() {
                return this.sharedSecret_;
            }

            public Builder setSharedSecret(ByteString byteString) {
                byteString.getClass();
                this.sharedSecret_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSharedSecret() {
                this.bitField0_ &= -2;
                this.sharedSecret_ = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance().getSharedSecret();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasSerialNumber() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public long getSerialNumber() {
                return this.serialNumber_;
            }

            public Builder setSerialNumber(long j) {
                this.serialNumber_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearSerialNumber() {
                this.bitField0_ &= -3;
                this.serialNumber_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasRevocationCode() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public String getRevocationCode() {
                Object obj = this.revocationCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.revocationCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public ByteString getRevocationCodeBytes() {
                Object obj = this.revocationCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.revocationCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRevocationCode(String str) {
                str.getClass();
                this.revocationCode_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRevocationCode() {
                this.revocationCode_ = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance().getRevocationCode();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setRevocationCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.revocationCode_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasUri() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public String getUri() {
                Object obj = this.uri_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.uri_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public ByteString getUriBytes() {
                Object obj = this.uri_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.uri_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUri(String str) {
                str.getClass();
                this.uri_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearUri() {
                this.uri_ = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance().getUri();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setUriBytes(ByteString byteString) {
                byteString.getClass();
                this.uri_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasServerTime() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public long getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(long j) {
                this.serverTime_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -17;
                this.serverTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasAccountName() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public String getAccountName() {
                Object obj = this.accountName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.accountName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public ByteString getAccountNameBytes() {
                Object obj = this.accountName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.accountName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAccountName(String str) {
                str.getClass();
                this.accountName_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearAccountName() {
                this.accountName_ = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance().getAccountName();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setAccountNameBytes(ByteString byteString) {
                byteString.getClass();
                this.accountName_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasTokenGid() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public String getTokenGid() {
                Object obj = this.tokenGid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.tokenGid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public ByteString getTokenGidBytes() {
                Object obj = this.tokenGid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tokenGid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTokenGid(String str) {
                str.getClass();
                this.tokenGid_ = str;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearTokenGid() {
                this.tokenGid_ = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance().getTokenGid();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public Builder setTokenGidBytes(ByteString byteString) {
                byteString.getClass();
                this.tokenGid_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasIdentitySecret() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public ByteString getIdentitySecret() {
                return this.identitySecret_;
            }

            public Builder setIdentitySecret(ByteString byteString) {
                byteString.getClass();
                this.identitySecret_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearIdentitySecret() {
                this.bitField0_ &= -129;
                this.identitySecret_ = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance().getIdentitySecret();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasSecret1() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public ByteString getSecret1() {
                return this.secret1_;
            }

            public Builder setSecret1(ByteString byteString) {
                byteString.getClass();
                this.secret1_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearSecret1() {
                this.bitField0_ &= -257;
                this.secret1_ = CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance().getSecret1();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasStatus() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public int getStatus() {
                return this.status_;
            }

            public Builder setStatus(int i) {
                this.status_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -513;
                this.status_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasSteamguardScheme() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public int getSteamguardScheme() {
                return this.steamguardScheme_;
            }

            public Builder setSteamguardScheme(int i) {
                this.steamguardScheme_ = i;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearSteamguardScheme() {
                this.bitField0_ &= -1025;
                this.steamguardScheme_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder
            public long getSteamid() {
                return this.steamid_;
            }

            public Builder setSteamid(long j) {
                this.steamid_ = j;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearSteamid() {
                this.bitField0_ &= -2049;
                this.steamid_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CRemoveAuthenticatorViaChallengeContinue_Replacement_Token getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response extends GeneratedMessage implements CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder {
        private static final CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response DEFAULT_INSTANCE;
        private static final Parser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response> PARSER;
        public static final int REPLACEMENT_TOKEN_FIELD_NUMBER = 2;
        public static final int SUCCESS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private CRemoveAuthenticatorViaChallengeContinue_Replacement_Token replacementToken_;
        private boolean success_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.class.getName());
            DEFAULT_INSTANCE = new CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response();
            PARSER = new AbstractParser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.1
                @Override // com.google.protobuf.Parser
                public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.newBuilder();
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

        private CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.success_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response() {
            this.success_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
        public boolean hasSuccess() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
        public boolean getSuccess() {
            return this.success_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
        public boolean hasReplacementToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
        public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token getReplacementToken() {
            CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = this.replacementToken_;
            return cRemoveAuthenticatorViaChallengeContinue_Replacement_Token == null ? CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance() : cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
        public CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder getReplacementTokenOrBuilder() {
            CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = this.replacementToken_;
            return cRemoveAuthenticatorViaChallengeContinue_Replacement_Token == null ? CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance() : cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
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
                codedOutputStream.writeBool(1, this.success_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeMessage(2, getReplacementToken());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.success_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeMessageSize(2, getReplacementToken());
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
            if (!(obj instanceof CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response)) {
                return super.equals(obj);
            }
            CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response = (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) obj;
            if (hasSuccess() != cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.hasSuccess()) {
                return false;
            }
            if ((!hasSuccess() || getSuccess() == cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getSuccess()) && hasReplacementToken() == cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.hasReplacementToken()) {
                return (!hasReplacementToken() || getReplacementToken().equals(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getReplacementToken())) && getUnknownFields().equals(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getUnknownFields());
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
            if (hasSuccess()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getSuccess());
            }
            if (hasReplacementToken()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getReplacementToken().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> replacementTokenBuilder_;
            private CRemoveAuthenticatorViaChallengeContinue_Replacement_Token replacementToken_;
            private boolean success_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.class, Builder.class);
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
                    internalGetReplacementTokenFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.success_ = false;
                this.replacementToken_ = null;
                SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.replacementTokenBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesTwofactorSteamclient.internal_static_CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response getDefaultInstanceForType() {
                return CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response build() {
                CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response cTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseBuildPartial = buildPartial();
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseBuildPartial.isInitialized()) {
                    return cTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response buildPartial() {
                CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response = new CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response);
                }
                onBuilt();
                return cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response;
            }

            private void buildPartial0(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) {
                int i;
                CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.success_ = this.success_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                    if (singleFieldBuilder == null) {
                        cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = this.replacementToken_;
                    } else {
                        cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) singleFieldBuilder.build();
                    }
                    cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.replacementToken_ = cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
                    i |= 2;
                }
                cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) {
                    return mergeFrom((CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response) {
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response == CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getDefaultInstance()) {
                    return this;
                }
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.hasSuccess()) {
                    setSuccess(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getSuccess());
                }
                if (cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.hasReplacementToken()) {
                    mergeReplacementToken(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getReplacementToken());
                }
                mergeUnknownFields(cTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.getUnknownFields());
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
                                    this.success_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    codedInputStream.readMessage(internalGetReplacementTokenFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
            public boolean hasSuccess() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
            public boolean getSuccess() {
                return this.success_;
            }

            public Builder setSuccess(boolean z) {
                this.success_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSuccess() {
                this.bitField0_ &= -2;
                this.success_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
            public boolean hasReplacementToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
            public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token getReplacementToken() {
                SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                if (singleFieldBuilder == null) {
                    CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = this.replacementToken_;
                    return cRemoveAuthenticatorViaChallengeContinue_Replacement_Token == null ? CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance() : cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
                }
                return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token) singleFieldBuilder.getMessage();
            }

            public Builder setReplacementToken(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token) {
                SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                if (singleFieldBuilder == null) {
                    cRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getClass();
                    this.replacementToken_ = cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
                } else {
                    singleFieldBuilder.setMessage(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token);
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setReplacementToken(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder builder) {
                SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                if (singleFieldBuilder == null) {
                    this.replacementToken_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder mergeReplacementToken(CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token) {
                CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token2;
                SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0 && (cRemoveAuthenticatorViaChallengeContinue_Replacement_Token2 = this.replacementToken_) != null && cRemoveAuthenticatorViaChallengeContinue_Replacement_Token2 != CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance()) {
                        getReplacementTokenBuilder().mergeFrom(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token);
                    } else {
                        this.replacementToken_ = cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cRemoveAuthenticatorViaChallengeContinue_Replacement_Token);
                }
                if (this.replacementToken_ != null) {
                    this.bitField0_ |= 2;
                    onChanged();
                }
                return this;
            }

            public Builder clearReplacementToken() {
                this.bitField0_ &= -3;
                this.replacementToken_ = null;
                SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.replacementTokenBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder getReplacementTokenBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder) internalGetReplacementTokenFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_ResponseOrBuilder
            public CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder getReplacementTokenOrBuilder() {
                SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> singleFieldBuilder = this.replacementTokenBuilder_;
                if (singleFieldBuilder != null) {
                    return (CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CRemoveAuthenticatorViaChallengeContinue_Replacement_Token cRemoveAuthenticatorViaChallengeContinue_Replacement_Token = this.replacementToken_;
                return cRemoveAuthenticatorViaChallengeContinue_Replacement_Token == null ? CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.getDefaultInstance() : cRemoveAuthenticatorViaChallengeContinue_Replacement_Token;
            }

            private SingleFieldBuilder<CRemoveAuthenticatorViaChallengeContinue_Replacement_Token, CRemoveAuthenticatorViaChallengeContinue_Replacement_Token.Builder, CRemoveAuthenticatorViaChallengeContinue_Replacement_TokenOrBuilder> internalGetReplacementTokenFieldBuilder() {
                if (this.replacementTokenBuilder_ == null) {
                    this.replacementTokenBuilder_ = new SingleFieldBuilder<>(getReplacementToken(), getParentForChildren(), isClean());
                    this.replacementToken_ = null;
                }
                return this.replacementTokenBuilder_;
            }
        }

        public static CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
