package in.dragonbra.javasteam.protobufs.steamclient;

import com.google.protobuf.AbstractMessage;
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
import com.google.protobuf.RuntimeVersion;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UninitializedMessageException;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.bouncycastle.asn1.BERTags;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: loaded from: classes3.dex */
public final class SteammessagesClientserverLogin {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CMsgClientAccountInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientAccountInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientChallengeRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientChallengeRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientChallengeResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientChallengeResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientHeartBeat_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientHeartBeat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientHello_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientHello_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLogOff_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLogOff_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLoggedOff_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLoggedOff_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLogonResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLogonResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientLogon_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientLogon_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientNewLoginKeyAccepted_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientNewLoginKeyAccepted_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientNewLoginKey_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientNewLoginKey_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientRequestWebAPIAuthenticateUserNonce_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientRequestWebAPIAuthenticateUserNonce_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientSecret_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientSecret_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientServerTimestampRequest_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientServerTimestampRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgClientServerTimestampResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgClientServerTimestampResponse_fieldAccessorTable;

    public interface CMsgClientAccountInfoOrBuilder extends MessageOrBuilder {
        int getAccountFlags();

        int getCountAuthedComputers();

        long getFacebookId();

        String getFacebookName();

        ByteString getFacebookNameBytes();

        String getIpCountry();

        ByteString getIpCountryBytes();

        boolean getIsPhoneIdentifying();

        boolean getIsPhoneNeedingReverify();

        boolean getIsPhoneVerified();

        String getPersonaName();

        ByteString getPersonaNameBytes();

        String getSteamguardMachineNameUserChosen();

        ByteString getSteamguardMachineNameUserChosenBytes();

        int getTwoFactorState();

        boolean hasAccountFlags();

        boolean hasCountAuthedComputers();

        boolean hasFacebookId();

        boolean hasFacebookName();

        boolean hasIpCountry();

        boolean hasIsPhoneIdentifying();

        boolean hasIsPhoneNeedingReverify();

        boolean hasIsPhoneVerified();

        boolean hasPersonaName();

        boolean hasSteamguardMachineNameUserChosen();

        boolean hasTwoFactorState();
    }

    public interface CMsgClientHeartBeatOrBuilder extends MessageOrBuilder {
        boolean getSendReply();

        boolean hasSendReply();
    }

    public interface CMsgClientHelloOrBuilder extends MessageOrBuilder {
        int getProtocolVersion();

        boolean hasProtocolVersion();
    }

    public interface CMsgClientLoggedOffOrBuilder extends MessageOrBuilder {
        int getEresult();

        boolean hasEresult();
    }

    public interface CMsgClientLogonOrBuilder extends MessageOrBuilder {
        String getAccessToken();

        ByteString getAccessTokenBytes();

        String getAccountName();

        ByteString getAccountNameBytes();

        String getAnonUserTargetAccountName();

        ByteString getAnonUserTargetAccountNameBytes();

        String getAuthCode();

        ByteString getAuthCodeBytes();

        int getCellId();

        int getChatMode();

        long getClientInstanceId();

        String getClientLanguage();

        ByteString getClientLanguageBytes();

        int getClientOsType();

        int getClientPackageVersion();

        long getClientSuppliedSteamId();

        String getCountryOverride();

        ByteString getCountryOverrideBytes();

        boolean getCreateNewPsnLinkedAccountIfNeeded();

        int getDeprecated10();

        int getDeprecatedObfustucatedPrivateIp();

        int getDeprecatedPublicIp();

        boolean getDisablePartnerAutogrants();

        String getEmailAddress();

        ByteString getEmailAddressBytes();

        CMsgClientSecret getEmbeddedClientSecret();

        CMsgClientSecretOrBuilder getEmbeddedClientSecretOrBuilder();

        int getEresultSentryfile();

        int getGameServerAppId();

        String getGameServerToken();

        ByteString getGameServerTokenBytes();

        int getGamingDeviceType();

        boolean getIsChromeOs();

        boolean getIsSteamBoxDeprecated();

        boolean getIsSteamDeckDeprecated();

        boolean getIsTeslaDeprecated();

        int getLastSessionId();

        int getLauncherType();

        String getLoginKey();

        ByteString getLoginKeyBytes();

        ByteString getMachineId();

        String getMachineName();

        ByteString getMachineNameBytes();

        String getMachineNameUserchosen();

        ByteString getMachineNameUserchosenBytes();

        SteammessagesBase.CMsgIPAddress getObfuscatedPrivateIp();

        SteammessagesBase.CMsgIPAddressOrBuilder getObfuscatedPrivateIpOrBuilder();

        String getOtpIdentifier();

        ByteString getOtpIdentifierBytes();

        int getOtpType();

        int getOtpValue();

        String getPassword();

        ByteString getPasswordBytes();

        int getPriorityReason();

        int getProtocolVersion();

        SteammessagesBase.CMsgIPAddress getPublicIp();

        SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder();

        int getQosLevel();

        long getResolvedUserSteamId();

        int getRtime32AccountCreation();

        ByteString getShaSentryfile();

        boolean getShouldRememberPassword();

        String getSonyPsnName();

        ByteString getSonyPsnNameBytes();

        String getSonyPsnServiceId();

        ByteString getSonyPsnServiceIdBytes();

        ByteString getSonyPsnTicket();

        ByteString getSteam2AuthTicket();

        boolean getSteam2TicketRequest();

        boolean getSteamguardDontRememberComputer();

        boolean getSupportsRateLimitResponse();

        String getTwoFactorCode();

        ByteString getTwoFactorCodeBytes();

        int getUiMode();

        boolean getWasConvertedDeprecatedMsg();

        String getWebLogonNonce();

        ByteString getWebLogonNonceBytes();

        String getWineVersion();

        ByteString getWineVersionBytes();

        boolean hasAccessToken();

        boolean hasAccountName();

        boolean hasAnonUserTargetAccountName();

        boolean hasAuthCode();

        boolean hasCellId();

        boolean hasChatMode();

        boolean hasClientInstanceId();

        boolean hasClientLanguage();

        boolean hasClientOsType();

        boolean hasClientPackageVersion();

        boolean hasClientSuppliedSteamId();

        boolean hasCountryOverride();

        boolean hasCreateNewPsnLinkedAccountIfNeeded();

        boolean hasDeprecated10();

        boolean hasDeprecatedObfustucatedPrivateIp();

        boolean hasDeprecatedPublicIp();

        boolean hasDisablePartnerAutogrants();

        boolean hasEmailAddress();

        boolean hasEmbeddedClientSecret();

        boolean hasEresultSentryfile();

        boolean hasGameServerAppId();

        boolean hasGameServerToken();

        boolean hasGamingDeviceType();

        boolean hasIsChromeOs();

        boolean hasIsSteamBoxDeprecated();

        boolean hasIsSteamDeckDeprecated();

        boolean hasIsTeslaDeprecated();

        boolean hasLastSessionId();

        boolean hasLauncherType();

        boolean hasLoginKey();

        boolean hasMachineId();

        boolean hasMachineName();

        boolean hasMachineNameUserchosen();

        boolean hasObfuscatedPrivateIp();

        boolean hasOtpIdentifier();

        boolean hasOtpType();

        boolean hasOtpValue();

        boolean hasPassword();

        boolean hasPriorityReason();

        boolean hasProtocolVersion();

        boolean hasPublicIp();

        boolean hasQosLevel();

        boolean hasResolvedUserSteamId();

        boolean hasRtime32AccountCreation();

        boolean hasShaSentryfile();

        boolean hasShouldRememberPassword();

        boolean hasSonyPsnName();

        boolean hasSonyPsnServiceId();

        boolean hasSonyPsnTicket();

        boolean hasSteam2AuthTicket();

        boolean hasSteam2TicketRequest();

        boolean hasSteamguardDontRememberComputer();

        boolean hasSupportsRateLimitResponse();

        boolean hasTwoFactorCode();

        boolean hasUiMode();

        boolean hasWasConvertedDeprecatedMsg();

        boolean hasWebLogonNonce();

        boolean hasWineVersion();
    }

    public interface CMsgClientLogonResponseOrBuilder extends MessageOrBuilder {
        int getAccountFlags();

        String getAgreementSessionUrl();

        ByteString getAgreementSessionUrlBytes();

        int getCellId();

        int getCellIdPingThreshold();

        long getClientInstanceId();

        long getClientSuppliedSteamid();

        int getCountDisconnectsToMigrate();

        int getCountLoginfailuresToMigrate();

        int getDeprecatedPublicIp();

        boolean getDeprecatedUsePics();

        String getEmailDomain();

        ByteString getEmailDomainBytes();

        int getEresult();

        int getEresultExtended();

        long getFamilyGroupId();

        boolean getForceClientUpdateCheck();

        int getHeartbeatSeconds();

        String getIpCountryCode();

        ByteString getIpCountryCodeBytes();

        int getLegacyOutOfGameHeartbeatSeconds();

        int getOgsDataReportTimeWindow();

        ByteString getParentalSettingSignature();

        ByteString getParentalSettings();

        SteammessagesBase.CMsgIPAddress getPublicIp();

        SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder();

        int getRtime32ServerTime();

        ByteString getSteam2Ticket();

        long getTokenId();

        String getUserCountry();

        ByteString getUserCountryBytes();

        String getVanityUrl();

        ByteString getVanityUrlBytes();

        boolean hasAccountFlags();

        boolean hasAgreementSessionUrl();

        boolean hasCellId();

        boolean hasCellIdPingThreshold();

        boolean hasClientInstanceId();

        boolean hasClientSuppliedSteamid();

        boolean hasCountDisconnectsToMigrate();

        boolean hasCountLoginfailuresToMigrate();

        boolean hasDeprecatedPublicIp();

        boolean hasDeprecatedUsePics();

        boolean hasEmailDomain();

        boolean hasEresult();

        boolean hasEresultExtended();

        boolean hasFamilyGroupId();

        boolean hasForceClientUpdateCheck();

        boolean hasHeartbeatSeconds();

        boolean hasIpCountryCode();

        boolean hasLegacyOutOfGameHeartbeatSeconds();

        boolean hasOgsDataReportTimeWindow();

        boolean hasParentalSettingSignature();

        boolean hasParentalSettings();

        boolean hasPublicIp();

        boolean hasRtime32ServerTime();

        boolean hasSteam2Ticket();

        boolean hasTokenId();

        boolean hasUserCountry();

        boolean hasVanityUrl();
    }

    public interface CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder extends MessageOrBuilder {
        int getEresult();

        int getTokenType();

        String getWebapiAuthenticateUserNonce();

        ByteString getWebapiAuthenticateUserNonceBytes();

        boolean hasEresult();

        boolean hasTokenType();

        boolean hasWebapiAuthenticateUserNonce();
    }

    public interface CMsgClientSecretOrBuilder extends MessageOrBuilder {
        int getAppid();

        int getDeviceid();

        ByteString getHmac();

        long getNonce();

        int getVersion();

        boolean hasAppid();

        boolean hasDeviceid();

        boolean hasHmac();

        boolean hasNonce();

        boolean hasVersion();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesClientserverLogin() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesClientserverLogin.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nSin/dragonbra/javasteam/protobufs/steamclient/steammessages_clientserver_login.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\")\n\u0013CMsgClientHeartBeat\u0012\u0012\n\nsend_reply\u0018\u0001 \u0001(\b\"D\n CMsgClientServerTimestampRequest\u0012 \n\u0018client_request_timestamp\u0018\u0001 \u0001(\u0004\"b\n!CMsgClientServerTimestampResponse\u0012 \n\u0018client_request_timestamp\u0018\u0001 \u0001(\u0004\u0012\u001b\n\u0013server_timestamp_ms\u0018\u0002 \u0001(\u0004\"a\n\u0010CMsgClientSecret\u0012\u000f\n\u0007version\u0018\u0001 \u0001(\r\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\u0012\u0010\n\bdeviceid\u0018\u0003 \u0001(\r\u0012\r\n\u0005nonce\u0018\u0004 \u0001(\u0006\u0012\f\n\u0004hmac\u0018\u0005 \u0001(\f\"+\n\u000fCMsgClientHello\u0012\u0018\n\u0010protocol_version\u0018\u0001 \u0001(\r\"\u0090\r\n\u000fCMsgClientLogon\u0012\u0018\n\u0010protocol_version\u0018\u0001 \u0001(\r\u0012*\n\"deprecated_obfustucated_private_ip\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007cell_id\u0018\u0003 \u0001(\r\u0012\u0017\n\u000flast_session_id\u0018\u0004 \u0001(\r\u0012\u001e\n\u0016client_package_version\u0018\u0005 \u0001(\r\u0012\u0017\n\u000fclient_language\u0018\u0006 \u0001(\t\u0012\u0016\n\u000eclient_os_type\u0018\u0007 \u0001(\r\u0012'\n\u0018should_remember_password\u0018\b \u0001(\b:\u0005false\u0012\u0014\n\fwine_version\u0018\t \u0001(\t\u0012\u0015\n\rdeprecated_10\u0018\n \u0001(\r\u0012-\n\u0015obfuscated_private_ip\u0018\u000b \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u001c\n\u0014deprecated_public_ip\u0018\u0014 \u0001(\r\u0012\u0011\n\tqos_level\u0018\u0015 \u0001(\r\u0012 \n\u0018client_supplied_steam_id\u0018\u0016 \u0001(\u0006\u0012!\n\tpublic_ip\u0018\u0017 \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u0012\n\nmachine_id\u0018\u001e \u0001(\f\u0012\u0018\n\rlauncher_type\u0018\u001f \u0001(\r:\u00010\u0012\u0012\n\u0007ui_mode\u0018  \u0001(\r:\u00010\u0012\u0014\n\tchat_mode\u0018! \u0001(\r:\u00010\u0012\u001a\n\u0012steam2_auth_ticket\u0018) \u0001(\f\u0012\u0015\n\remail_address\u0018* \u0001(\t\u0012 \n\u0018rtime32_account_creation\u0018+ \u0001(\u0007\u0012\u0014\n\faccount_name\u00182 \u0001(\t\u0012\u0010\n\bpassword\u00183 \u0001(\t\u0012\u0019\n\u0011game_server_token\u00184 \u0001(\t\u0012\u0011\n\tlogin_key\u0018< \u0001(\t\u0012+\n\u001cwas_converted_deprecated_msg\u0018F \u0001(\b:\u0005false\u0012%\n\u001danon_user_target_account_name\u0018P \u0001(\t\u0012\u001e\n\u0016resolved_user_steam_id\u0018Q \u0001(\u0006\u0012\u001a\n\u0012eresult_sentryfile\u0018R \u0001(\u0005\u0012\u0016\n\u000esha_sentryfile\u0018S \u0001(\f\u0012\u0011\n\tauth_code\u0018T \u0001(\t\u0012\u0010\n\botp_type\u0018U \u0001(\u0005\u0012\u0011\n\totp_value\u0018V \u0001(\r\u0012\u0016\n\u000eotp_identifier\u0018W \u0001(\t\u0012\u001d\n\u0015steam2_ticket_request\u0018X \u0001(\b\u0012\u0017\n\u000fsony_psn_ticket\u0018Z \u0001(\f\u0012\u001b\n\u0013sony_psn_service_id\u0018[ \u0001(\t\u00126\n'create_new_psn_linked_account_if_needed\u0018\\ \u0001(\b:\u0005false\u0012\u0015\n\rsony_psn_name\u0018] \u0001(\t\u0012\u001a\n\u0012game_server_app_id\u0018^ \u0001(\u0005\u0012)\n!steamguard_dont_remember_computer\u0018_ \u0001(\b\u0012\u0014\n\fmachine_name\u0018` \u0001(\t\u0012\u001f\n\u0017machine_name_userchosen\u0018a \u0001(\t\u0012\u0018\n\u0010country_override\u0018b \u0001(\t\u0012\u001a\n\u0012client_instance_id\u0018d \u0001(\u0004\u0012\u0017\n\u000ftwo_factor_code\u0018e \u0001(\t\u0012$\n\u001csupports_rate_limit_response\u0018f \u0001(\b\u0012\u0017\n\u000fweb_logon_nonce\u0018g \u0001(\t\u0012\u0017\n\u000fpriority_reason\u0018h \u0001(\u0005\u00121\n\u0016embedded_client_secret\u0018i \u0001(\u000b2\u0011.CMsgClientSecret\u0012\"\n\u001adisable_partner_autogrants\u0018j \u0001(\b\u0012\u0014\n\faccess_token\u0018l \u0001(\t\u0012\u0014\n\fis_chrome_os\u0018m \u0001(\b\u0012\u001f\n\u0017is_steam_box_deprecated\u0018c \u0001(\b\u0012 \n\u0018is_steam_deck_deprecated\u0018k \u0001(\b\u0012\u001b\n\u0013is_tesla_deprecated\u0018n \u0001(\b\u0012\u001a\n\u0012gaming_device_type\u0018o \u0001(\r\"\u009f\u0006\n\u0017CMsgClientLogonResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012,\n$legacy_out_of_game_heartbeat_seconds\u0018\u0002 \u0001(\u0005\u0012\u0019\n\u0011heartbeat_seconds\u0018\u0003 \u0001(\u0005\u0012\u001c\n\u0014deprecated_public_ip\u0018\u0004 \u0001(\r\u0012\u001b\n\u0013rtime32_server_time\u0018\u0005 \u0001(\u0007\u0012\u0015\n\raccount_flags\u0018\u0006 \u0001(\r\u0012\u000f\n\u0007cell_id\u0018\u0007 \u0001(\r\u0012\u0014\n\femail_domain\u0018\b \u0001(\t\u0012\u0015\n\rsteam2_ticket\u0018\t \u0001(\f\u0012\u0018\n\u0010eresult_extended\u0018\n \u0001(\u0005\u0012\u001e\n\u0016cell_id_ping_threshold\u0018\f \u0001(\r\u0012\u001b\n\u0013deprecated_use_pics\u0018\r \u0001(\b\u0012\u0012\n\nvanity_url\u0018\u000e \u0001(\t\u0012!\n\tpublic_ip\u0018\u000f \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u0014\n\fuser_country\u0018\u0010 \u0001(\t\u0012\u001f\n\u0017client_supplied_steamid\u0018\u0014 \u0001(\u0006\u0012\u0017\n\u000fip_country_code\u0018\u0015 \u0001(\t\u0012\u0019\n\u0011parental_settings\u0018\u0016 \u0001(\f\u0012\"\n\u001aparental_setting_signature\u0018\u0017 \u0001(\f\u0012&\n\u001ecount_loginfailures_to_migrate\u0018\u0018 \u0001(\u0005\u0012$\n\u001ccount_disconnects_to_migrate\u0018\u0019 \u0001(\u0005\u0012#\n\u001bogs_data_report_time_window\u0018\u001a \u0001(\u0005\u0012\u001a\n\u0012client_instance_id\u0018\u001b \u0001(\u0004\u0012!\n\u0019force_client_update_check\u0018\u001c \u0001(\b\u0012\u001d\n\u0015agreement_session_url\u0018\u001d \u0001(\t\u0012\u0010\n\btoken_id\u0018\u001e \u0001(\u0004\u0012\u0017\n\u000ffamily_group_id\u0018\u001f \u0001(\u0004\"F\n,CMsgClientRequestWebAPIAuthenticateUserNonce\u0012\u0016\n\ntoken_type\u0018\u0001 \u0001(\u0005:\u0002-1\"\u008a\u0001\n4CMsgClientRequestWebAPIAuthenticateUserNonceResponse\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\u0012&\n\u001ewebapi_authenticate_user_nonce\u0018\u000b \u0001(\t\u0012\u0016\n\ntoken_type\u0018\u0003 \u0001(\u0005:\u0002-1\"\u0012\n\u0010CMsgClientLogOff\")\n\u0013CMsgClientLoggedOff\u0012\u0012\n\u0007eresult\u0018\u0001 \u0001(\u0005:\u00012\"=\n\u0015CMsgClientNewLoginKey\u0012\u0011\n\tunique_id\u0018\u0001 \u0001(\r\u0012\u0011\n\tlogin_key\u0018\u0002 \u0001(\t\"2\n\u001dCMsgClientNewLoginKeyAccepted\u0012\u0011\n\tunique_id\u0018\u0001 \u0001(\r\"Ç\u0002\n\u0015CMsgClientAccountInfo\u0012\u0014\n\fpersona_name\u0018\u0001 \u0001(\t\u0012\u0012\n\nip_country\u0018\u0002 \u0001(\t\u0012\u001e\n\u0016count_authed_computers\u0018\u0005 \u0001(\u0005\u0012\u0015\n\raccount_flags\u0018\u0007 \u0001(\r\u0012\u0013\n\u000bfacebook_id\u0018\b \u0001(\u0004\u0012\u0015\n\rfacebook_name\u0018\t \u0001(\t\u0012+\n#steamguard_machine_name_user_chosen\u0018\u000f \u0001(\t\u0012\u0019\n\u0011is_phone_verified\u0018\u0010 \u0001(\b\u0012\u0018\n\u0010two_factor_state\u0018\u0011 \u0001(\r\u0012\u001c\n\u0014is_phone_identifying\u0018\u0012 \u0001(\b\u0012!\n\u0019is_phone_needing_reverify\u0018\u0013 \u0001(\b\"-\n\u001aCMsgClientChallengeRequest\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\"0\n\u001bCMsgClientChallengeResponse\u0012\u0011\n\tchallenge\u0018\u0001 \u0001(\u0006B3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgClientHeartBeat_descriptor = descriptor2;
        internal_static_CMsgClientHeartBeat_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"SendReply"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgClientServerTimestampRequest_descriptor = descriptor3;
        internal_static_CMsgClientServerTimestampRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"ClientRequestTimestamp"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgClientServerTimestampResponse_descriptor = descriptor4;
        internal_static_CMsgClientServerTimestampResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"ClientRequestTimestamp", "ServerTimestampMs"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgClientSecret_descriptor = descriptor5;
        internal_static_CMsgClientSecret_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Version", "Appid", "Deviceid", "Nonce", "Hmac"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgClientHello_descriptor = descriptor6;
        internal_static_CMsgClientHello_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"ProtocolVersion"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgClientLogon_descriptor = descriptor7;
        internal_static_CMsgClientLogon_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"ProtocolVersion", "DeprecatedObfustucatedPrivateIp", "CellId", "LastSessionId", "ClientPackageVersion", "ClientLanguage", "ClientOsType", "ShouldRememberPassword", "WineVersion", "Deprecated10", "ObfuscatedPrivateIp", "DeprecatedPublicIp", "QosLevel", "ClientSuppliedSteamId", "PublicIp", "MachineId", "LauncherType", "UiMode", "ChatMode", "Steam2AuthTicket", "EmailAddress", "Rtime32AccountCreation", "AccountName", "Password", "GameServerToken", "LoginKey", "WasConvertedDeprecatedMsg", "AnonUserTargetAccountName", "ResolvedUserSteamId", "EresultSentryfile", "ShaSentryfile", "AuthCode", "OtpType", "OtpValue", "OtpIdentifier", "Steam2TicketRequest", "SonyPsnTicket", "SonyPsnServiceId", "CreateNewPsnLinkedAccountIfNeeded", "SonyPsnName", "GameServerAppId", "SteamguardDontRememberComputer", "MachineName", "MachineNameUserchosen", "CountryOverride", "ClientInstanceId", "TwoFactorCode", "SupportsRateLimitResponse", "WebLogonNonce", "PriorityReason", "EmbeddedClientSecret", "DisablePartnerAutogrants", "AccessToken", "IsChromeOs", "IsSteamBoxDeprecated", "IsSteamDeckDeprecated", "IsTeslaDeprecated", "GamingDeviceType"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgClientLogonResponse_descriptor = descriptor8;
        internal_static_CMsgClientLogonResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Eresult", "LegacyOutOfGameHeartbeatSeconds", "HeartbeatSeconds", "DeprecatedPublicIp", "Rtime32ServerTime", "AccountFlags", "CellId", "EmailDomain", "Steam2Ticket", "EresultExtended", "CellIdPingThreshold", "DeprecatedUsePics", "VanityUrl", "PublicIp", "UserCountry", "ClientSuppliedSteamid", "IpCountryCode", "ParentalSettings", "ParentalSettingSignature", "CountLoginfailuresToMigrate", "CountDisconnectsToMigrate", "OgsDataReportTimeWindow", "ClientInstanceId", "ForceClientUpdateCheck", "AgreementSessionUrl", "TokenId", "FamilyGroupId"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgClientRequestWebAPIAuthenticateUserNonce_descriptor = descriptor9;
        internal_static_CMsgClientRequestWebAPIAuthenticateUserNonce_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"TokenType"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_descriptor = descriptor10;
        internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Eresult", "WebapiAuthenticateUserNonce", "TokenType"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgClientLogOff_descriptor = descriptor11;
        internal_static_CMsgClientLogOff_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[0]);
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_CMsgClientLoggedOff_descriptor = descriptor12;
        internal_static_CMsgClientLoggedOff_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Eresult"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_CMsgClientNewLoginKey_descriptor = descriptor13;
        internal_static_CMsgClientNewLoginKey_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"UniqueId", "LoginKey"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_CMsgClientNewLoginKeyAccepted_descriptor = descriptor14;
        internal_static_CMsgClientNewLoginKeyAccepted_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"UniqueId"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(13);
        internal_static_CMsgClientAccountInfo_descriptor = descriptor15;
        internal_static_CMsgClientAccountInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"PersonaName", "IpCountry", "CountAuthedComputers", "AccountFlags", "FacebookId", "FacebookName", "SteamguardMachineNameUserChosen", "IsPhoneVerified", "TwoFactorState", "IsPhoneIdentifying", "IsPhoneNeedingReverify"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(14);
        internal_static_CMsgClientChallengeRequest_descriptor = descriptor16;
        internal_static_CMsgClientChallengeRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Steamid"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(15);
        internal_static_CMsgClientChallengeResponse_descriptor = descriptor17;
        internal_static_CMsgClientChallengeResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Challenge"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CMsgClientHeartBeat extends GeneratedMessage implements CMsgClientHeartBeatOrBuilder {
        private static final CMsgClientHeartBeat DEFAULT_INSTANCE;
        private static final Parser<CMsgClientHeartBeat> PARSER;
        public static final int SEND_REPLY_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean sendReply_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientHeartBeat.class.getName());
            DEFAULT_INSTANCE = new CMsgClientHeartBeat();
            PARSER = new AbstractParser<CMsgClientHeartBeat>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHeartBeat.1
                @Override // com.google.protobuf.Parser
                public CMsgClientHeartBeat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientHeartBeat.newBuilder();
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

        private CMsgClientHeartBeat(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sendReply_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientHeartBeat() {
            this.sendReply_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientHeartBeat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientHeartBeat_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientHeartBeat.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHeartBeatOrBuilder
        public boolean hasSendReply() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHeartBeatOrBuilder
        public boolean getSendReply() {
            return this.sendReply_;
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
                codedOutputStream.writeBool(1, this.sendReply_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.sendReply_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeBoolSize;
            return iComputeBoolSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientHeartBeat)) {
                return super.equals(obj);
            }
            CMsgClientHeartBeat cMsgClientHeartBeat = (CMsgClientHeartBeat) obj;
            if (hasSendReply() != cMsgClientHeartBeat.hasSendReply()) {
                return false;
            }
            return (!hasSendReply() || getSendReply() == cMsgClientHeartBeat.getSendReply()) && getUnknownFields().equals(cMsgClientHeartBeat.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSendReply()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getSendReply());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientHeartBeat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientHeartBeat parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientHeartBeat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientHeartBeat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientHeartBeat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientHeartBeat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientHeartBeat parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientHeartBeat) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientHeartBeat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientHeartBeat) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientHeartBeat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientHeartBeat) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientHeartBeat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientHeartBeat) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientHeartBeat parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientHeartBeat) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientHeartBeat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientHeartBeat) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientHeartBeat cMsgClientHeartBeat) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientHeartBeat);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientHeartBeatOrBuilder {
            private int bitField0_;
            private boolean sendReply_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientHeartBeat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientHeartBeat_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientHeartBeat.class, Builder.class);
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
                this.sendReply_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientHeartBeat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientHeartBeat getDefaultInstanceForType() {
                return CMsgClientHeartBeat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientHeartBeat build() {
                CMsgClientHeartBeat cMsgClientHeartBeatBuildPartial = buildPartial();
                if (cMsgClientHeartBeatBuildPartial.isInitialized()) {
                    return cMsgClientHeartBeatBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientHeartBeatBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientHeartBeat buildPartial() {
                CMsgClientHeartBeat cMsgClientHeartBeat = new CMsgClientHeartBeat(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientHeartBeat);
                }
                onBuilt();
                return cMsgClientHeartBeat;
            }

            private void buildPartial0(CMsgClientHeartBeat cMsgClientHeartBeat) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientHeartBeat.sendReply_ = this.sendReply_;
                } else {
                    i = 0;
                }
                cMsgClientHeartBeat.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientHeartBeat) {
                    return mergeFrom((CMsgClientHeartBeat) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientHeartBeat cMsgClientHeartBeat) {
                if (cMsgClientHeartBeat == CMsgClientHeartBeat.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientHeartBeat.hasSendReply()) {
                    setSendReply(cMsgClientHeartBeat.getSendReply());
                }
                mergeUnknownFields(cMsgClientHeartBeat.getUnknownFields());
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
                                    this.sendReply_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHeartBeatOrBuilder
            public boolean hasSendReply() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHeartBeatOrBuilder
            public boolean getSendReply() {
                return this.sendReply_;
            }

            public Builder setSendReply(boolean z) {
                this.sendReply_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSendReply() {
                this.bitField0_ &= -2;
                this.sendReply_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientHeartBeat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientHeartBeat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientHeartBeat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientHeartBeat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientSecret extends GeneratedMessage implements CMsgClientSecretOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        private static final CMsgClientSecret DEFAULT_INSTANCE;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int HMAC_FIELD_NUMBER = 5;
        public static final int NONCE_FIELD_NUMBER = 4;
        private static final Parser<CMsgClientSecret> PARSER;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private int deviceid_;
        private ByteString hmac_;
        private byte memoizedIsInitialized;
        private long nonce_;
        private int version_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientSecret.class.getName());
            DEFAULT_INSTANCE = new CMsgClientSecret();
            PARSER = new AbstractParser<CMsgClientSecret>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecret.1
                @Override // com.google.protobuf.Parser
                public CMsgClientSecret parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientSecret.newBuilder();
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

        private CMsgClientSecret(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.version_ = 0;
            this.appid_ = 0;
            this.deviceid_ = 0;
            this.nonce_ = 0L;
            this.hmac_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientSecret() {
            this.version_ = 0;
            this.appid_ = 0;
            this.deviceid_ = 0;
            this.nonce_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.hmac_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientSecret_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientSecret_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientSecret.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public boolean hasDeviceid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public int getDeviceid() {
            return this.deviceid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public boolean hasNonce() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public long getNonce() {
            return this.nonce_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public boolean hasHmac() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
        public ByteString getHmac() {
            return this.hmac_;
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
                codedOutputStream.writeUInt32(1, this.version_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.deviceid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(4, this.nonce_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBytes(5, this.hmac_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.version_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.deviceid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(4, this.nonce_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(5, this.hmac_);
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
            if (!(obj instanceof CMsgClientSecret)) {
                return super.equals(obj);
            }
            CMsgClientSecret cMsgClientSecret = (CMsgClientSecret) obj;
            if (hasVersion() != cMsgClientSecret.hasVersion()) {
                return false;
            }
            if ((hasVersion() && getVersion() != cMsgClientSecret.getVersion()) || hasAppid() != cMsgClientSecret.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cMsgClientSecret.getAppid()) || hasDeviceid() != cMsgClientSecret.hasDeviceid()) {
                return false;
            }
            if ((hasDeviceid() && getDeviceid() != cMsgClientSecret.getDeviceid()) || hasNonce() != cMsgClientSecret.hasNonce()) {
                return false;
            }
            if ((!hasNonce() || getNonce() == cMsgClientSecret.getNonce()) && hasHmac() == cMsgClientSecret.hasHmac()) {
                return (!hasHmac() || getHmac().equals(cMsgClientSecret.getHmac())) && getUnknownFields().equals(cMsgClientSecret.getUnknownFields());
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
            if (hasVersion()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getVersion();
            }
            if (hasAppid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getAppid();
            }
            if (hasDeviceid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDeviceid();
            }
            if (hasNonce()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getNonce());
            }
            if (hasHmac()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getHmac().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientSecret parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientSecret parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientSecret parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientSecret parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientSecret parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientSecret parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientSecret parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientSecret) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientSecret parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSecret) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientSecret parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientSecret) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientSecret parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSecret) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientSecret parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientSecret) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientSecret parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientSecret) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientSecret cMsgClientSecret) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientSecret);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientSecretOrBuilder {
            private int appid_;
            private int bitField0_;
            private int deviceid_;
            private ByteString hmac_;
            private long nonce_;
            private int version_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientSecret_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientSecret_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientSecret.class, Builder.class);
            }

            private Builder() {
                this.hmac_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.hmac_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.version_ = 0;
                this.appid_ = 0;
                this.deviceid_ = 0;
                this.nonce_ = 0L;
                this.hmac_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientSecret_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientSecret getDefaultInstanceForType() {
                return CMsgClientSecret.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientSecret build() {
                CMsgClientSecret cMsgClientSecretBuildPartial = buildPartial();
                if (cMsgClientSecretBuildPartial.isInitialized()) {
                    return cMsgClientSecretBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientSecretBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientSecret buildPartial() {
                CMsgClientSecret cMsgClientSecret = new CMsgClientSecret(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientSecret);
                }
                onBuilt();
                return cMsgClientSecret;
            }

            private void buildPartial0(CMsgClientSecret cMsgClientSecret) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientSecret.version_ = this.version_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientSecret.appid_ = this.appid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientSecret.deviceid_ = this.deviceid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientSecret.nonce_ = this.nonce_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientSecret.hmac_ = this.hmac_;
                    i |= 16;
                }
                cMsgClientSecret.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientSecret) {
                    return mergeFrom((CMsgClientSecret) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientSecret cMsgClientSecret) {
                if (cMsgClientSecret == CMsgClientSecret.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientSecret.hasVersion()) {
                    setVersion(cMsgClientSecret.getVersion());
                }
                if (cMsgClientSecret.hasAppid()) {
                    setAppid(cMsgClientSecret.getAppid());
                }
                if (cMsgClientSecret.hasDeviceid()) {
                    setDeviceid(cMsgClientSecret.getDeviceid());
                }
                if (cMsgClientSecret.hasNonce()) {
                    setNonce(cMsgClientSecret.getNonce());
                }
                if (cMsgClientSecret.hasHmac()) {
                    setHmac(cMsgClientSecret.getHmac());
                }
                mergeUnknownFields(cMsgClientSecret.getUnknownFields());
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
                                    this.version_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.appid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.deviceid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 33) {
                                    this.nonce_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 8;
                                } else if (tag == 42) {
                                    this.hmac_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.version_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public boolean hasDeviceid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public int getDeviceid() {
                return this.deviceid_;
            }

            public Builder setDeviceid(int i) {
                this.deviceid_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDeviceid() {
                this.bitField0_ &= -5;
                this.deviceid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public boolean hasNonce() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public long getNonce() {
                return this.nonce_;
            }

            public Builder setNonce(long j) {
                this.nonce_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearNonce() {
                this.bitField0_ &= -9;
                this.nonce_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public boolean hasHmac() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientSecretOrBuilder
            public ByteString getHmac() {
                return this.hmac_;
            }

            public Builder setHmac(ByteString byteString) {
                byteString.getClass();
                this.hmac_ = byteString;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearHmac() {
                this.bitField0_ &= -17;
                this.hmac_ = CMsgClientSecret.getDefaultInstance().getHmac();
                onChanged();
                return this;
            }
        }

        public static CMsgClientSecret getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientSecret> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientSecret> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientSecret getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientHello extends GeneratedMessage implements CMsgClientHelloOrBuilder {
        private static final CMsgClientHello DEFAULT_INSTANCE;
        private static final Parser<CMsgClientHello> PARSER;
        public static final int PROTOCOL_VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int protocolVersion_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientHello.class.getName());
            DEFAULT_INSTANCE = new CMsgClientHello();
            PARSER = new AbstractParser<CMsgClientHello>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHello.1
                @Override // com.google.protobuf.Parser
                public CMsgClientHello parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientHello.newBuilder();
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

        private CMsgClientHello(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.protocolVersion_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientHello() {
            this.protocolVersion_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientHello_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientHello_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientHello.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHelloOrBuilder
        public boolean hasProtocolVersion() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHelloOrBuilder
        public int getProtocolVersion() {
            return this.protocolVersion_;
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
                codedOutputStream.writeUInt32(1, this.protocolVersion_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.protocolVersion_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientHello)) {
                return super.equals(obj);
            }
            CMsgClientHello cMsgClientHello = (CMsgClientHello) obj;
            if (hasProtocolVersion() != cMsgClientHello.hasProtocolVersion()) {
                return false;
            }
            return (!hasProtocolVersion() || getProtocolVersion() == cMsgClientHello.getProtocolVersion()) && getUnknownFields().equals(cMsgClientHello.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasProtocolVersion()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getProtocolVersion();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientHello parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientHello parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientHello parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientHello parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientHello parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientHello parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientHello parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientHello) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientHello parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientHello) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientHello parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientHello) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientHello parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientHello) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientHello parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientHello) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientHello parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientHello) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientHello cMsgClientHello) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientHello);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientHelloOrBuilder {
            private int bitField0_;
            private int protocolVersion_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientHello_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientHello_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientHello.class, Builder.class);
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
                this.protocolVersion_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientHello_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientHello getDefaultInstanceForType() {
                return CMsgClientHello.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientHello build() {
                CMsgClientHello cMsgClientHelloBuildPartial = buildPartial();
                if (cMsgClientHelloBuildPartial.isInitialized()) {
                    return cMsgClientHelloBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientHelloBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientHello buildPartial() {
                CMsgClientHello cMsgClientHello = new CMsgClientHello(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientHello);
                }
                onBuilt();
                return cMsgClientHello;
            }

            private void buildPartial0(CMsgClientHello cMsgClientHello) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientHello.protocolVersion_ = this.protocolVersion_;
                } else {
                    i = 0;
                }
                cMsgClientHello.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientHello) {
                    return mergeFrom((CMsgClientHello) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientHello cMsgClientHello) {
                if (cMsgClientHello == CMsgClientHello.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientHello.hasProtocolVersion()) {
                    setProtocolVersion(cMsgClientHello.getProtocolVersion());
                }
                mergeUnknownFields(cMsgClientHello.getUnknownFields());
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
                                    this.protocolVersion_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHelloOrBuilder
            public boolean hasProtocolVersion() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientHelloOrBuilder
            public int getProtocolVersion() {
                return this.protocolVersion_;
            }

            public Builder setProtocolVersion(int i) {
                this.protocolVersion_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearProtocolVersion() {
                this.bitField0_ &= -2;
                this.protocolVersion_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientHello getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientHello> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientHello> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientHello getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientLogon extends GeneratedMessage implements CMsgClientLogonOrBuilder {
        public static final int ACCESS_TOKEN_FIELD_NUMBER = 108;
        public static final int ACCOUNT_NAME_FIELD_NUMBER = 50;
        public static final int ANON_USER_TARGET_ACCOUNT_NAME_FIELD_NUMBER = 80;
        public static final int AUTH_CODE_FIELD_NUMBER = 84;
        public static final int CELL_ID_FIELD_NUMBER = 3;
        public static final int CHAT_MODE_FIELD_NUMBER = 33;
        public static final int CLIENT_INSTANCE_ID_FIELD_NUMBER = 100;
        public static final int CLIENT_LANGUAGE_FIELD_NUMBER = 6;
        public static final int CLIENT_OS_TYPE_FIELD_NUMBER = 7;
        public static final int CLIENT_PACKAGE_VERSION_FIELD_NUMBER = 5;
        public static final int CLIENT_SUPPLIED_STEAM_ID_FIELD_NUMBER = 22;
        public static final int COUNTRY_OVERRIDE_FIELD_NUMBER = 98;
        public static final int CREATE_NEW_PSN_LINKED_ACCOUNT_IF_NEEDED_FIELD_NUMBER = 92;
        private static final CMsgClientLogon DEFAULT_INSTANCE;
        public static final int DEPRECATED_10_FIELD_NUMBER = 10;
        public static final int DEPRECATED_OBFUSTUCATED_PRIVATE_IP_FIELD_NUMBER = 2;
        public static final int DEPRECATED_PUBLIC_IP_FIELD_NUMBER = 20;
        public static final int DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER = 106;
        public static final int EMAIL_ADDRESS_FIELD_NUMBER = 42;
        public static final int EMBEDDED_CLIENT_SECRET_FIELD_NUMBER = 105;
        public static final int ERESULT_SENTRYFILE_FIELD_NUMBER = 82;
        public static final int GAME_SERVER_APP_ID_FIELD_NUMBER = 94;
        public static final int GAME_SERVER_TOKEN_FIELD_NUMBER = 52;
        public static final int GAMING_DEVICE_TYPE_FIELD_NUMBER = 111;
        public static final int IS_CHROME_OS_FIELD_NUMBER = 109;
        public static final int IS_STEAM_BOX_DEPRECATED_FIELD_NUMBER = 99;
        public static final int IS_STEAM_DECK_DEPRECATED_FIELD_NUMBER = 107;
        public static final int IS_TESLA_DEPRECATED_FIELD_NUMBER = 110;
        public static final int LAST_SESSION_ID_FIELD_NUMBER = 4;
        public static final int LAUNCHER_TYPE_FIELD_NUMBER = 31;
        public static final int LOGIN_KEY_FIELD_NUMBER = 60;
        public static final int MACHINE_ID_FIELD_NUMBER = 30;
        public static final int MACHINE_NAME_FIELD_NUMBER = 96;
        public static final int MACHINE_NAME_USERCHOSEN_FIELD_NUMBER = 97;
        public static final int OBFUSCATED_PRIVATE_IP_FIELD_NUMBER = 11;
        public static final int OTP_IDENTIFIER_FIELD_NUMBER = 87;
        public static final int OTP_TYPE_FIELD_NUMBER = 85;
        public static final int OTP_VALUE_FIELD_NUMBER = 86;
        private static final Parser<CMsgClientLogon> PARSER;
        public static final int PASSWORD_FIELD_NUMBER = 51;
        public static final int PRIORITY_REASON_FIELD_NUMBER = 104;
        public static final int PROTOCOL_VERSION_FIELD_NUMBER = 1;
        public static final int PUBLIC_IP_FIELD_NUMBER = 23;
        public static final int QOS_LEVEL_FIELD_NUMBER = 21;
        public static final int RESOLVED_USER_STEAM_ID_FIELD_NUMBER = 81;
        public static final int RTIME32_ACCOUNT_CREATION_FIELD_NUMBER = 43;
        public static final int SHA_SENTRYFILE_FIELD_NUMBER = 83;
        public static final int SHOULD_REMEMBER_PASSWORD_FIELD_NUMBER = 8;
        public static final int SONY_PSN_NAME_FIELD_NUMBER = 93;
        public static final int SONY_PSN_SERVICE_ID_FIELD_NUMBER = 91;
        public static final int SONY_PSN_TICKET_FIELD_NUMBER = 90;
        public static final int STEAM2_AUTH_TICKET_FIELD_NUMBER = 41;
        public static final int STEAM2_TICKET_REQUEST_FIELD_NUMBER = 88;
        public static final int STEAMGUARD_DONT_REMEMBER_COMPUTER_FIELD_NUMBER = 95;
        public static final int SUPPORTS_RATE_LIMIT_RESPONSE_FIELD_NUMBER = 102;
        public static final int TWO_FACTOR_CODE_FIELD_NUMBER = 101;
        public static final int UI_MODE_FIELD_NUMBER = 32;
        public static final int WAS_CONVERTED_DEPRECATED_MSG_FIELD_NUMBER = 70;
        public static final int WEB_LOGON_NONCE_FIELD_NUMBER = 103;
        public static final int WINE_VERSION_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private volatile Object accessToken_;
        private volatile Object accountName_;
        private volatile Object anonUserTargetAccountName_;
        private volatile Object authCode_;
        private int bitField0_;
        private int bitField1_;
        private int cellId_;
        private int chatMode_;
        private long clientInstanceId_;
        private volatile Object clientLanguage_;
        private int clientOsType_;
        private int clientPackageVersion_;
        private long clientSuppliedSteamId_;
        private volatile Object countryOverride_;
        private boolean createNewPsnLinkedAccountIfNeeded_;
        private int deprecated10_;
        private int deprecatedObfustucatedPrivateIp_;
        private int deprecatedPublicIp_;
        private boolean disablePartnerAutogrants_;
        private volatile Object emailAddress_;
        private CMsgClientSecret embeddedClientSecret_;
        private int eresultSentryfile_;
        private int gameServerAppId_;
        private volatile Object gameServerToken_;
        private int gamingDeviceType_;
        private boolean isChromeOs_;
        private boolean isSteamBoxDeprecated_;
        private boolean isSteamDeckDeprecated_;
        private boolean isTeslaDeprecated_;
        private int lastSessionId_;
        private int launcherType_;
        private volatile Object loginKey_;
        private ByteString machineId_;
        private volatile Object machineNameUserchosen_;
        private volatile Object machineName_;
        private byte memoizedIsInitialized;
        private SteammessagesBase.CMsgIPAddress obfuscatedPrivateIp_;
        private volatile Object otpIdentifier_;
        private int otpType_;
        private int otpValue_;
        private volatile Object password_;
        private int priorityReason_;
        private int protocolVersion_;
        private SteammessagesBase.CMsgIPAddress publicIp_;
        private int qosLevel_;
        private long resolvedUserSteamId_;
        private int rtime32AccountCreation_;
        private ByteString shaSentryfile_;
        private boolean shouldRememberPassword_;
        private volatile Object sonyPsnName_;
        private volatile Object sonyPsnServiceId_;
        private ByteString sonyPsnTicket_;
        private ByteString steam2AuthTicket_;
        private boolean steam2TicketRequest_;
        private boolean steamguardDontRememberComputer_;
        private boolean supportsRateLimitResponse_;
        private volatile Object twoFactorCode_;
        private int uiMode_;
        private boolean wasConvertedDeprecatedMsg_;
        private volatile Object webLogonNonce_;
        private volatile Object wineVersion_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLogon.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLogon();
            PARSER = new AbstractParser<CMsgClientLogon>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogon.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLogon parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLogon.newBuilder();
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

        private CMsgClientLogon(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.protocolVersion_ = 0;
            this.deprecatedObfustucatedPrivateIp_ = 0;
            this.cellId_ = 0;
            this.lastSessionId_ = 0;
            this.clientPackageVersion_ = 0;
            this.clientLanguage_ = "";
            this.clientOsType_ = 0;
            this.shouldRememberPassword_ = false;
            this.wineVersion_ = "";
            this.deprecated10_ = 0;
            this.deprecatedPublicIp_ = 0;
            this.qosLevel_ = 0;
            this.clientSuppliedSteamId_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.machineId_ = byteString;
            this.launcherType_ = 0;
            this.uiMode_ = 0;
            this.chatMode_ = 0;
            this.steam2AuthTicket_ = byteString;
            this.emailAddress_ = "";
            this.rtime32AccountCreation_ = 0;
            this.accountName_ = "";
            this.password_ = "";
            this.gameServerToken_ = "";
            this.loginKey_ = "";
            this.wasConvertedDeprecatedMsg_ = false;
            this.anonUserTargetAccountName_ = "";
            this.resolvedUserSteamId_ = 0L;
            this.eresultSentryfile_ = 0;
            this.shaSentryfile_ = byteString;
            this.authCode_ = "";
            this.otpType_ = 0;
            this.otpValue_ = 0;
            this.otpIdentifier_ = "";
            this.steam2TicketRequest_ = false;
            this.sonyPsnTicket_ = byteString;
            this.sonyPsnServiceId_ = "";
            this.createNewPsnLinkedAccountIfNeeded_ = false;
            this.sonyPsnName_ = "";
            this.gameServerAppId_ = 0;
            this.steamguardDontRememberComputer_ = false;
            this.machineName_ = "";
            this.machineNameUserchosen_ = "";
            this.countryOverride_ = "";
            this.clientInstanceId_ = 0L;
            this.twoFactorCode_ = "";
            this.supportsRateLimitResponse_ = false;
            this.webLogonNonce_ = "";
            this.priorityReason_ = 0;
            this.disablePartnerAutogrants_ = false;
            this.accessToken_ = "";
            this.isChromeOs_ = false;
            this.isSteamBoxDeprecated_ = false;
            this.isSteamDeckDeprecated_ = false;
            this.isTeslaDeprecated_ = false;
            this.gamingDeviceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLogon() {
            this.protocolVersion_ = 0;
            this.deprecatedObfustucatedPrivateIp_ = 0;
            this.cellId_ = 0;
            this.lastSessionId_ = 0;
            this.clientPackageVersion_ = 0;
            this.clientLanguage_ = "";
            this.clientOsType_ = 0;
            this.shouldRememberPassword_ = false;
            this.wineVersion_ = "";
            this.deprecated10_ = 0;
            this.deprecatedPublicIp_ = 0;
            this.qosLevel_ = 0;
            this.clientSuppliedSteamId_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.machineId_ = byteString;
            this.launcherType_ = 0;
            this.uiMode_ = 0;
            this.chatMode_ = 0;
            this.steam2AuthTicket_ = byteString;
            this.emailAddress_ = "";
            this.rtime32AccountCreation_ = 0;
            this.accountName_ = "";
            this.password_ = "";
            this.gameServerToken_ = "";
            this.loginKey_ = "";
            this.wasConvertedDeprecatedMsg_ = false;
            this.anonUserTargetAccountName_ = "";
            this.resolvedUserSteamId_ = 0L;
            this.eresultSentryfile_ = 0;
            this.shaSentryfile_ = byteString;
            this.authCode_ = "";
            this.otpType_ = 0;
            this.otpValue_ = 0;
            this.otpIdentifier_ = "";
            this.steam2TicketRequest_ = false;
            this.sonyPsnTicket_ = byteString;
            this.sonyPsnServiceId_ = "";
            this.createNewPsnLinkedAccountIfNeeded_ = false;
            this.sonyPsnName_ = "";
            this.gameServerAppId_ = 0;
            this.steamguardDontRememberComputer_ = false;
            this.machineName_ = "";
            this.machineNameUserchosen_ = "";
            this.countryOverride_ = "";
            this.clientInstanceId_ = 0L;
            this.twoFactorCode_ = "";
            this.supportsRateLimitResponse_ = false;
            this.webLogonNonce_ = "";
            this.priorityReason_ = 0;
            this.disablePartnerAutogrants_ = false;
            this.accessToken_ = "";
            this.isChromeOs_ = false;
            this.isSteamBoxDeprecated_ = false;
            this.isSteamDeckDeprecated_ = false;
            this.isTeslaDeprecated_ = false;
            this.gamingDeviceType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.clientLanguage_ = "";
            this.wineVersion_ = "";
            this.machineId_ = byteString;
            this.steam2AuthTicket_ = byteString;
            this.emailAddress_ = "";
            this.accountName_ = "";
            this.password_ = "";
            this.gameServerToken_ = "";
            this.loginKey_ = "";
            this.anonUserTargetAccountName_ = "";
            this.shaSentryfile_ = byteString;
            this.authCode_ = "";
            this.otpIdentifier_ = "";
            this.sonyPsnTicket_ = byteString;
            this.sonyPsnServiceId_ = "";
            this.sonyPsnName_ = "";
            this.machineName_ = "";
            this.machineNameUserchosen_ = "";
            this.countryOverride_ = "";
            this.twoFactorCode_ = "";
            this.webLogonNonce_ = "";
            this.accessToken_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLogon_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLogon_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLogon.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasProtocolVersion() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getProtocolVersion() {
            return this.protocolVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasDeprecatedObfustucatedPrivateIp() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getDeprecatedObfustucatedPrivateIp() {
            return this.deprecatedObfustucatedPrivateIp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasCellId() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getCellId() {
            return this.cellId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasLastSessionId() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getLastSessionId() {
            return this.lastSessionId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasClientPackageVersion() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getClientPackageVersion() {
            return this.clientPackageVersion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasClientLanguage() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getClientLanguage() {
            Object obj = this.clientLanguage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.clientLanguage_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getClientLanguageBytes() {
            Object obj = this.clientLanguage_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.clientLanguage_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasClientOsType() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getClientOsType() {
            return this.clientOsType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasShouldRememberPassword() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getShouldRememberPassword() {
            return this.shouldRememberPassword_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasWineVersion() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getWineVersion() {
            Object obj = this.wineVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.wineVersion_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getWineVersionBytes() {
            Object obj = this.wineVersion_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.wineVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasDeprecated10() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getDeprecated10() {
            return this.deprecated10_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasObfuscatedPrivateIp() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public SteammessagesBase.CMsgIPAddress getObfuscatedPrivateIp() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.obfuscatedPrivateIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public SteammessagesBase.CMsgIPAddressOrBuilder getObfuscatedPrivateIpOrBuilder() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.obfuscatedPrivateIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasDeprecatedPublicIp() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getDeprecatedPublicIp() {
            return this.deprecatedPublicIp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasQosLevel() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getQosLevel() {
            return this.qosLevel_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasClientSuppliedSteamId() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public long getClientSuppliedSteamId() {
            return this.clientSuppliedSteamId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasPublicIp() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public SteammessagesBase.CMsgIPAddress getPublicIp() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasMachineId() {
            return (this.bitField0_ & 32768) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getMachineId() {
            return this.machineId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasLauncherType() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getLauncherType() {
            return this.launcherType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasUiMode() {
            return (this.bitField0_ & 131072) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getUiMode() {
            return this.uiMode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasChatMode() {
            return (this.bitField0_ & 262144) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getChatMode() {
            return this.chatMode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasSteam2AuthTicket() {
            return (this.bitField0_ & 524288) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getSteam2AuthTicket() {
            return this.steam2AuthTicket_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasEmailAddress() {
            return (this.bitField0_ & 1048576) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getEmailAddressBytes() {
            Object obj = this.emailAddress_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.emailAddress_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasRtime32AccountCreation() {
            return (this.bitField0_ & 2097152) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getRtime32AccountCreation() {
            return this.rtime32AccountCreation_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasAccountName() {
            return (this.bitField0_ & 4194304) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getAccountNameBytes() {
            Object obj = this.accountName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accountName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasPassword() {
            return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasGameServerToken() {
            return (this.bitField0_ & 16777216) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getGameServerToken() {
            Object obj = this.gameServerToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gameServerToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getGameServerTokenBytes() {
            Object obj = this.gameServerToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gameServerToken_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasLoginKey() {
            return (this.bitField0_ & 33554432) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getLoginKey() {
            Object obj = this.loginKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.loginKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getLoginKeyBytes() {
            Object obj = this.loginKey_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.loginKey_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasWasConvertedDeprecatedMsg() {
            return (this.bitField0_ & 67108864) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getWasConvertedDeprecatedMsg() {
            return this.wasConvertedDeprecatedMsg_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasAnonUserTargetAccountName() {
            return (this.bitField0_ & 134217728) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getAnonUserTargetAccountName() {
            Object obj = this.anonUserTargetAccountName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.anonUserTargetAccountName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getAnonUserTargetAccountNameBytes() {
            Object obj = this.anonUserTargetAccountName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.anonUserTargetAccountName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasResolvedUserSteamId() {
            return (this.bitField0_ & 268435456) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public long getResolvedUserSteamId() {
            return this.resolvedUserSteamId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasEresultSentryfile() {
            return (this.bitField0_ & 536870912) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getEresultSentryfile() {
            return this.eresultSentryfile_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasShaSentryfile() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getShaSentryfile() {
            return this.shaSentryfile_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasAuthCode() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getAuthCode() {
            Object obj = this.authCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.authCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getAuthCodeBytes() {
            Object obj = this.authCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasOtpType() {
            return (this.bitField1_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getOtpType() {
            return this.otpType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasOtpValue() {
            return (this.bitField1_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getOtpValue() {
            return this.otpValue_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasOtpIdentifier() {
            return (this.bitField1_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getOtpIdentifier() {
            Object obj = this.otpIdentifier_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.otpIdentifier_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getOtpIdentifierBytes() {
            Object obj = this.otpIdentifier_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.otpIdentifier_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasSteam2TicketRequest() {
            return (this.bitField1_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getSteam2TicketRequest() {
            return this.steam2TicketRequest_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasSonyPsnTicket() {
            return (this.bitField1_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getSonyPsnTicket() {
            return this.sonyPsnTicket_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasSonyPsnServiceId() {
            return (this.bitField1_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getSonyPsnServiceId() {
            Object obj = this.sonyPsnServiceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sonyPsnServiceId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getSonyPsnServiceIdBytes() {
            Object obj = this.sonyPsnServiceId_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sonyPsnServiceId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasCreateNewPsnLinkedAccountIfNeeded() {
            return (this.bitField1_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getCreateNewPsnLinkedAccountIfNeeded() {
            return this.createNewPsnLinkedAccountIfNeeded_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasSonyPsnName() {
            return (this.bitField1_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getSonyPsnName() {
            Object obj = this.sonyPsnName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sonyPsnName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getSonyPsnNameBytes() {
            Object obj = this.sonyPsnName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sonyPsnName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasGameServerAppId() {
            return (this.bitField1_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getGameServerAppId() {
            return this.gameServerAppId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasSteamguardDontRememberComputer() {
            return (this.bitField1_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getSteamguardDontRememberComputer() {
            return this.steamguardDontRememberComputer_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasMachineName() {
            return (this.bitField1_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getMachineName() {
            Object obj = this.machineName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.machineName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getMachineNameBytes() {
            Object obj = this.machineName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.machineName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasMachineNameUserchosen() {
            return (this.bitField1_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getMachineNameUserchosen() {
            Object obj = this.machineNameUserchosen_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.machineNameUserchosen_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getMachineNameUserchosenBytes() {
            Object obj = this.machineNameUserchosen_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.machineNameUserchosen_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasCountryOverride() {
            return (this.bitField1_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getCountryOverride() {
            Object obj = this.countryOverride_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.countryOverride_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getCountryOverrideBytes() {
            Object obj = this.countryOverride_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.countryOverride_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasClientInstanceId() {
            return (this.bitField1_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public long getClientInstanceId() {
            return this.clientInstanceId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasTwoFactorCode() {
            return (this.bitField1_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getTwoFactorCode() {
            Object obj = this.twoFactorCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.twoFactorCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getTwoFactorCodeBytes() {
            Object obj = this.twoFactorCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.twoFactorCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasSupportsRateLimitResponse() {
            return (this.bitField1_ & 32768) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getSupportsRateLimitResponse() {
            return this.supportsRateLimitResponse_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasWebLogonNonce() {
            return (this.bitField1_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getWebLogonNonce() {
            Object obj = this.webLogonNonce_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.webLogonNonce_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getWebLogonNonceBytes() {
            Object obj = this.webLogonNonce_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.webLogonNonce_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasPriorityReason() {
            return (this.bitField1_ & 131072) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public int getPriorityReason() {
            return this.priorityReason_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasEmbeddedClientSecret() {
            return (this.bitField1_ & 262144) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public CMsgClientSecret getEmbeddedClientSecret() {
            CMsgClientSecret cMsgClientSecret = this.embeddedClientSecret_;
            return cMsgClientSecret == null ? CMsgClientSecret.getDefaultInstance() : cMsgClientSecret;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public CMsgClientSecretOrBuilder getEmbeddedClientSecretOrBuilder() {
            CMsgClientSecret cMsgClientSecret = this.embeddedClientSecret_;
            return cMsgClientSecret == null ? CMsgClientSecret.getDefaultInstance() : cMsgClientSecret;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasDisablePartnerAutogrants() {
            return (this.bitField1_ & 524288) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getDisablePartnerAutogrants() {
            return this.disablePartnerAutogrants_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasAccessToken() {
            return (this.bitField1_ & 1048576) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public String getAccessToken() {
            Object obj = this.accessToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.accessToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public ByteString getAccessTokenBytes() {
            Object obj = this.accessToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accessToken_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasIsChromeOs() {
            return (this.bitField1_ & 2097152) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getIsChromeOs() {
            return this.isChromeOs_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasIsSteamBoxDeprecated() {
            return (this.bitField1_ & 4194304) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getIsSteamBoxDeprecated() {
            return this.isSteamBoxDeprecated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasIsSteamDeckDeprecated() {
            return (this.bitField1_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getIsSteamDeckDeprecated() {
            return this.isSteamDeckDeprecated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasIsTeslaDeprecated() {
            return (this.bitField1_ & 16777216) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean getIsTeslaDeprecated() {
            return this.isTeslaDeprecated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
        public boolean hasGamingDeviceType() {
            return (this.bitField1_ & 33554432) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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
                codedOutputStream.writeUInt32(1, this.protocolVersion_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.deprecatedObfustucatedPrivateIp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.cellId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.lastSessionId_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.clientPackageVersion_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 6, this.clientLanguage_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.clientOsType_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBool(8, this.shouldRememberPassword_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 9, this.wineVersion_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeUInt32(10, this.deprecated10_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeMessage(11, getObfuscatedPrivateIp());
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeUInt32(20, this.deprecatedPublicIp_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                codedOutputStream.writeUInt32(21, this.qosLevel_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                codedOutputStream.writeFixed64(22, this.clientSuppliedSteamId_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                codedOutputStream.writeMessage(23, getPublicIp());
            }
            if ((this.bitField0_ & 32768) != 0) {
                codedOutputStream.writeBytes(30, this.machineId_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                codedOutputStream.writeUInt32(31, this.launcherType_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                codedOutputStream.writeUInt32(32, this.uiMode_);
            }
            if ((this.bitField0_ & 262144) != 0) {
                codedOutputStream.writeUInt32(33, this.chatMode_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                codedOutputStream.writeBytes(41, this.steam2AuthTicket_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 42, this.emailAddress_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                codedOutputStream.writeFixed32(43, this.rtime32AccountCreation_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 50, this.accountName_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 51, this.password_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 52, this.gameServerToken_);
            }
            if ((this.bitField0_ & 33554432) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 60, this.loginKey_);
            }
            if ((this.bitField0_ & 67108864) != 0) {
                codedOutputStream.writeBool(70, this.wasConvertedDeprecatedMsg_);
            }
            if ((this.bitField0_ & 134217728) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 80, this.anonUserTargetAccountName_);
            }
            if ((this.bitField0_ & 268435456) != 0) {
                codedOutputStream.writeFixed64(81, this.resolvedUserSteamId_);
            }
            if ((this.bitField0_ & 536870912) != 0) {
                codedOutputStream.writeInt32(82, this.eresultSentryfile_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0) {
                codedOutputStream.writeBytes(83, this.shaSentryfile_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 84, this.authCode_);
            }
            if ((this.bitField1_ & 1) != 0) {
                codedOutputStream.writeInt32(85, this.otpType_);
            }
            if ((this.bitField1_ & 2) != 0) {
                codedOutputStream.writeUInt32(86, this.otpValue_);
            }
            if ((this.bitField1_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 87, this.otpIdentifier_);
            }
            if ((this.bitField1_ & 8) != 0) {
                codedOutputStream.writeBool(88, this.steam2TicketRequest_);
            }
            if ((this.bitField1_ & 16) != 0) {
                codedOutputStream.writeBytes(90, this.sonyPsnTicket_);
            }
            if ((this.bitField1_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 91, this.sonyPsnServiceId_);
            }
            if ((this.bitField1_ & 64) != 0) {
                codedOutputStream.writeBool(92, this.createNewPsnLinkedAccountIfNeeded_);
            }
            if ((this.bitField1_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 93, this.sonyPsnName_);
            }
            if ((this.bitField1_ & 256) != 0) {
                codedOutputStream.writeInt32(94, this.gameServerAppId_);
            }
            if ((this.bitField1_ & 512) != 0) {
                codedOutputStream.writeBool(95, this.steamguardDontRememberComputer_);
            }
            if ((this.bitField1_ & 1024) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 96, this.machineName_);
            }
            if ((this.bitField1_ & 2048) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 97, this.machineNameUserchosen_);
            }
            if ((this.bitField1_ & 4096) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 98, this.countryOverride_);
            }
            if ((this.bitField1_ & 4194304) != 0) {
                codedOutputStream.writeBool(99, this.isSteamBoxDeprecated_);
            }
            if ((this.bitField1_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                codedOutputStream.writeUInt64(100, this.clientInstanceId_);
            }
            if ((this.bitField1_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                GeneratedMessage.writeString(codedOutputStream, TWO_FACTOR_CODE_FIELD_NUMBER, this.twoFactorCode_);
            }
            if ((this.bitField1_ & 32768) != 0) {
                codedOutputStream.writeBool(SUPPORTS_RATE_LIMIT_RESPONSE_FIELD_NUMBER, this.supportsRateLimitResponse_);
            }
            if ((this.bitField1_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                GeneratedMessage.writeString(codedOutputStream, WEB_LOGON_NONCE_FIELD_NUMBER, this.webLogonNonce_);
            }
            if ((this.bitField1_ & 131072) != 0) {
                codedOutputStream.writeInt32(PRIORITY_REASON_FIELD_NUMBER, this.priorityReason_);
            }
            if ((this.bitField1_ & 262144) != 0) {
                codedOutputStream.writeMessage(EMBEDDED_CLIENT_SECRET_FIELD_NUMBER, getEmbeddedClientSecret());
            }
            if ((this.bitField1_ & 524288) != 0) {
                codedOutputStream.writeBool(DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER, this.disablePartnerAutogrants_);
            }
            if ((this.bitField1_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                codedOutputStream.writeBool(IS_STEAM_DECK_DEPRECATED_FIELD_NUMBER, this.isSteamDeckDeprecated_);
            }
            if ((this.bitField1_ & 1048576) != 0) {
                GeneratedMessage.writeString(codedOutputStream, ACCESS_TOKEN_FIELD_NUMBER, this.accessToken_);
            }
            if ((this.bitField1_ & 2097152) != 0) {
                codedOutputStream.writeBool(IS_CHROME_OS_FIELD_NUMBER, this.isChromeOs_);
            }
            if ((this.bitField1_ & 16777216) != 0) {
                codedOutputStream.writeBool(IS_TESLA_DEPRECATED_FIELD_NUMBER, this.isTeslaDeprecated_);
            }
            if ((this.bitField1_ & 33554432) != 0) {
                codedOutputStream.writeUInt32(GAMING_DEVICE_TYPE_FIELD_NUMBER, this.gamingDeviceType_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.protocolVersion_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.deprecatedObfustucatedPrivateIp_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(3, this.cellId_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(4, this.lastSessionId_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.clientPackageVersion_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(6, this.clientLanguage_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(7, this.clientOsType_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(8, this.shouldRememberPassword_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(9, this.wineVersion_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(10, this.deprecated10_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(11, getObfuscatedPrivateIp());
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(20, this.deprecatedPublicIp_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(21, this.qosLevel_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(22, this.clientSuppliedSteamId_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(23, getPublicIp());
            }
            if ((this.bitField0_ & 32768) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(30, this.machineId_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(31, this.launcherType_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(32, this.uiMode_);
            }
            if ((this.bitField0_ & 262144) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(33, this.chatMode_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(41, this.steam2AuthTicket_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(42, this.emailAddress_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed32Size(43, this.rtime32AccountCreation_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(50, this.accountName_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(51, this.password_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(52, this.gameServerToken_);
            }
            if ((this.bitField0_ & 33554432) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(60, this.loginKey_);
            }
            if ((this.bitField0_ & 67108864) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(70, this.wasConvertedDeprecatedMsg_);
            }
            if ((this.bitField0_ & 134217728) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(80, this.anonUserTargetAccountName_);
            }
            if ((this.bitField0_ & 268435456) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(81, this.resolvedUserSteamId_);
            }
            if ((this.bitField0_ & 536870912) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(82, this.eresultSentryfile_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(83, this.shaSentryfile_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(84, this.authCode_);
            }
            if ((1 & this.bitField1_) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(85, this.otpType_);
            }
            if ((this.bitField1_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(86, this.otpValue_);
            }
            if ((this.bitField1_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(87, this.otpIdentifier_);
            }
            if ((this.bitField1_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(88, this.steam2TicketRequest_);
            }
            if ((this.bitField1_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(90, this.sonyPsnTicket_);
            }
            if ((this.bitField1_ & 32) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(91, this.sonyPsnServiceId_);
            }
            if ((this.bitField1_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(92, this.createNewPsnLinkedAccountIfNeeded_);
            }
            if ((this.bitField1_ & 128) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(93, this.sonyPsnName_);
            }
            if ((this.bitField1_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(94, this.gameServerAppId_);
            }
            if ((this.bitField1_ & 512) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(95, this.steamguardDontRememberComputer_);
            }
            if ((this.bitField1_ & 1024) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(96, this.machineName_);
            }
            if ((this.bitField1_ & 2048) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(97, this.machineNameUserchosen_);
            }
            if ((this.bitField1_ & 4096) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(98, this.countryOverride_);
            }
            if ((this.bitField1_ & 4194304) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(99, this.isSteamBoxDeprecated_);
            }
            if ((this.bitField1_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt64Size(100, this.clientInstanceId_);
            }
            if ((this.bitField1_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(TWO_FACTOR_CODE_FIELD_NUMBER, this.twoFactorCode_);
            }
            if ((this.bitField1_ & 32768) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(SUPPORTS_RATE_LIMIT_RESPONSE_FIELD_NUMBER, this.supportsRateLimitResponse_);
            }
            if ((this.bitField1_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(WEB_LOGON_NONCE_FIELD_NUMBER, this.webLogonNonce_);
            }
            if ((this.bitField1_ & 131072) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeInt32Size(PRIORITY_REASON_FIELD_NUMBER, this.priorityReason_);
            }
            if ((this.bitField1_ & 262144) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(EMBEDDED_CLIENT_SECRET_FIELD_NUMBER, getEmbeddedClientSecret());
            }
            if ((this.bitField1_ & 524288) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER, this.disablePartnerAutogrants_);
            }
            if ((this.bitField1_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(IS_STEAM_DECK_DEPRECATED_FIELD_NUMBER, this.isSteamDeckDeprecated_);
            }
            if ((this.bitField1_ & 1048576) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(ACCESS_TOKEN_FIELD_NUMBER, this.accessToken_);
            }
            if ((this.bitField1_ & 2097152) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(IS_CHROME_OS_FIELD_NUMBER, this.isChromeOs_);
            }
            if ((this.bitField1_ & 16777216) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(IS_TESLA_DEPRECATED_FIELD_NUMBER, this.isTeslaDeprecated_);
            }
            if ((this.bitField1_ & 33554432) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(GAMING_DEVICE_TYPE_FIELD_NUMBER, this.gamingDeviceType_);
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
            if (!(obj instanceof CMsgClientLogon)) {
                return super.equals(obj);
            }
            CMsgClientLogon cMsgClientLogon = (CMsgClientLogon) obj;
            if (hasProtocolVersion() != cMsgClientLogon.hasProtocolVersion()) {
                return false;
            }
            if ((hasProtocolVersion() && getProtocolVersion() != cMsgClientLogon.getProtocolVersion()) || hasDeprecatedObfustucatedPrivateIp() != cMsgClientLogon.hasDeprecatedObfustucatedPrivateIp()) {
                return false;
            }
            if ((hasDeprecatedObfustucatedPrivateIp() && getDeprecatedObfustucatedPrivateIp() != cMsgClientLogon.getDeprecatedObfustucatedPrivateIp()) || hasCellId() != cMsgClientLogon.hasCellId()) {
                return false;
            }
            if ((hasCellId() && getCellId() != cMsgClientLogon.getCellId()) || hasLastSessionId() != cMsgClientLogon.hasLastSessionId()) {
                return false;
            }
            if ((hasLastSessionId() && getLastSessionId() != cMsgClientLogon.getLastSessionId()) || hasClientPackageVersion() != cMsgClientLogon.hasClientPackageVersion()) {
                return false;
            }
            if ((hasClientPackageVersion() && getClientPackageVersion() != cMsgClientLogon.getClientPackageVersion()) || hasClientLanguage() != cMsgClientLogon.hasClientLanguage()) {
                return false;
            }
            if ((hasClientLanguage() && !getClientLanguage().equals(cMsgClientLogon.getClientLanguage())) || hasClientOsType() != cMsgClientLogon.hasClientOsType()) {
                return false;
            }
            if ((hasClientOsType() && getClientOsType() != cMsgClientLogon.getClientOsType()) || hasShouldRememberPassword() != cMsgClientLogon.hasShouldRememberPassword()) {
                return false;
            }
            if ((hasShouldRememberPassword() && getShouldRememberPassword() != cMsgClientLogon.getShouldRememberPassword()) || hasWineVersion() != cMsgClientLogon.hasWineVersion()) {
                return false;
            }
            if ((hasWineVersion() && !getWineVersion().equals(cMsgClientLogon.getWineVersion())) || hasDeprecated10() != cMsgClientLogon.hasDeprecated10()) {
                return false;
            }
            if ((hasDeprecated10() && getDeprecated10() != cMsgClientLogon.getDeprecated10()) || hasObfuscatedPrivateIp() != cMsgClientLogon.hasObfuscatedPrivateIp()) {
                return false;
            }
            if ((hasObfuscatedPrivateIp() && !getObfuscatedPrivateIp().equals(cMsgClientLogon.getObfuscatedPrivateIp())) || hasDeprecatedPublicIp() != cMsgClientLogon.hasDeprecatedPublicIp()) {
                return false;
            }
            if ((hasDeprecatedPublicIp() && getDeprecatedPublicIp() != cMsgClientLogon.getDeprecatedPublicIp()) || hasQosLevel() != cMsgClientLogon.hasQosLevel()) {
                return false;
            }
            if ((hasQosLevel() && getQosLevel() != cMsgClientLogon.getQosLevel()) || hasClientSuppliedSteamId() != cMsgClientLogon.hasClientSuppliedSteamId()) {
                return false;
            }
            if ((hasClientSuppliedSteamId() && getClientSuppliedSteamId() != cMsgClientLogon.getClientSuppliedSteamId()) || hasPublicIp() != cMsgClientLogon.hasPublicIp()) {
                return false;
            }
            if ((hasPublicIp() && !getPublicIp().equals(cMsgClientLogon.getPublicIp())) || hasMachineId() != cMsgClientLogon.hasMachineId()) {
                return false;
            }
            if ((hasMachineId() && !getMachineId().equals(cMsgClientLogon.getMachineId())) || hasLauncherType() != cMsgClientLogon.hasLauncherType()) {
                return false;
            }
            if ((hasLauncherType() && getLauncherType() != cMsgClientLogon.getLauncherType()) || hasUiMode() != cMsgClientLogon.hasUiMode()) {
                return false;
            }
            if ((hasUiMode() && getUiMode() != cMsgClientLogon.getUiMode()) || hasChatMode() != cMsgClientLogon.hasChatMode()) {
                return false;
            }
            if ((hasChatMode() && getChatMode() != cMsgClientLogon.getChatMode()) || hasSteam2AuthTicket() != cMsgClientLogon.hasSteam2AuthTicket()) {
                return false;
            }
            if ((hasSteam2AuthTicket() && !getSteam2AuthTicket().equals(cMsgClientLogon.getSteam2AuthTicket())) || hasEmailAddress() != cMsgClientLogon.hasEmailAddress()) {
                return false;
            }
            if ((hasEmailAddress() && !getEmailAddress().equals(cMsgClientLogon.getEmailAddress())) || hasRtime32AccountCreation() != cMsgClientLogon.hasRtime32AccountCreation()) {
                return false;
            }
            if ((hasRtime32AccountCreation() && getRtime32AccountCreation() != cMsgClientLogon.getRtime32AccountCreation()) || hasAccountName() != cMsgClientLogon.hasAccountName()) {
                return false;
            }
            if ((hasAccountName() && !getAccountName().equals(cMsgClientLogon.getAccountName())) || hasPassword() != cMsgClientLogon.hasPassword()) {
                return false;
            }
            if ((hasPassword() && !getPassword().equals(cMsgClientLogon.getPassword())) || hasGameServerToken() != cMsgClientLogon.hasGameServerToken()) {
                return false;
            }
            if ((hasGameServerToken() && !getGameServerToken().equals(cMsgClientLogon.getGameServerToken())) || hasLoginKey() != cMsgClientLogon.hasLoginKey()) {
                return false;
            }
            if ((hasLoginKey() && !getLoginKey().equals(cMsgClientLogon.getLoginKey())) || hasWasConvertedDeprecatedMsg() != cMsgClientLogon.hasWasConvertedDeprecatedMsg()) {
                return false;
            }
            if ((hasWasConvertedDeprecatedMsg() && getWasConvertedDeprecatedMsg() != cMsgClientLogon.getWasConvertedDeprecatedMsg()) || hasAnonUserTargetAccountName() != cMsgClientLogon.hasAnonUserTargetAccountName()) {
                return false;
            }
            if ((hasAnonUserTargetAccountName() && !getAnonUserTargetAccountName().equals(cMsgClientLogon.getAnonUserTargetAccountName())) || hasResolvedUserSteamId() != cMsgClientLogon.hasResolvedUserSteamId()) {
                return false;
            }
            if ((hasResolvedUserSteamId() && getResolvedUserSteamId() != cMsgClientLogon.getResolvedUserSteamId()) || hasEresultSentryfile() != cMsgClientLogon.hasEresultSentryfile()) {
                return false;
            }
            if ((hasEresultSentryfile() && getEresultSentryfile() != cMsgClientLogon.getEresultSentryfile()) || hasShaSentryfile() != cMsgClientLogon.hasShaSentryfile()) {
                return false;
            }
            if ((hasShaSentryfile() && !getShaSentryfile().equals(cMsgClientLogon.getShaSentryfile())) || hasAuthCode() != cMsgClientLogon.hasAuthCode()) {
                return false;
            }
            if ((hasAuthCode() && !getAuthCode().equals(cMsgClientLogon.getAuthCode())) || hasOtpType() != cMsgClientLogon.hasOtpType()) {
                return false;
            }
            if ((hasOtpType() && getOtpType() != cMsgClientLogon.getOtpType()) || hasOtpValue() != cMsgClientLogon.hasOtpValue()) {
                return false;
            }
            if ((hasOtpValue() && getOtpValue() != cMsgClientLogon.getOtpValue()) || hasOtpIdentifier() != cMsgClientLogon.hasOtpIdentifier()) {
                return false;
            }
            if ((hasOtpIdentifier() && !getOtpIdentifier().equals(cMsgClientLogon.getOtpIdentifier())) || hasSteam2TicketRequest() != cMsgClientLogon.hasSteam2TicketRequest()) {
                return false;
            }
            if ((hasSteam2TicketRequest() && getSteam2TicketRequest() != cMsgClientLogon.getSteam2TicketRequest()) || hasSonyPsnTicket() != cMsgClientLogon.hasSonyPsnTicket()) {
                return false;
            }
            if ((hasSonyPsnTicket() && !getSonyPsnTicket().equals(cMsgClientLogon.getSonyPsnTicket())) || hasSonyPsnServiceId() != cMsgClientLogon.hasSonyPsnServiceId()) {
                return false;
            }
            if ((hasSonyPsnServiceId() && !getSonyPsnServiceId().equals(cMsgClientLogon.getSonyPsnServiceId())) || hasCreateNewPsnLinkedAccountIfNeeded() != cMsgClientLogon.hasCreateNewPsnLinkedAccountIfNeeded()) {
                return false;
            }
            if ((hasCreateNewPsnLinkedAccountIfNeeded() && getCreateNewPsnLinkedAccountIfNeeded() != cMsgClientLogon.getCreateNewPsnLinkedAccountIfNeeded()) || hasSonyPsnName() != cMsgClientLogon.hasSonyPsnName()) {
                return false;
            }
            if ((hasSonyPsnName() && !getSonyPsnName().equals(cMsgClientLogon.getSonyPsnName())) || hasGameServerAppId() != cMsgClientLogon.hasGameServerAppId()) {
                return false;
            }
            if ((hasGameServerAppId() && getGameServerAppId() != cMsgClientLogon.getGameServerAppId()) || hasSteamguardDontRememberComputer() != cMsgClientLogon.hasSteamguardDontRememberComputer()) {
                return false;
            }
            if ((hasSteamguardDontRememberComputer() && getSteamguardDontRememberComputer() != cMsgClientLogon.getSteamguardDontRememberComputer()) || hasMachineName() != cMsgClientLogon.hasMachineName()) {
                return false;
            }
            if ((hasMachineName() && !getMachineName().equals(cMsgClientLogon.getMachineName())) || hasMachineNameUserchosen() != cMsgClientLogon.hasMachineNameUserchosen()) {
                return false;
            }
            if ((hasMachineNameUserchosen() && !getMachineNameUserchosen().equals(cMsgClientLogon.getMachineNameUserchosen())) || hasCountryOverride() != cMsgClientLogon.hasCountryOverride()) {
                return false;
            }
            if ((hasCountryOverride() && !getCountryOverride().equals(cMsgClientLogon.getCountryOverride())) || hasClientInstanceId() != cMsgClientLogon.hasClientInstanceId()) {
                return false;
            }
            if ((hasClientInstanceId() && getClientInstanceId() != cMsgClientLogon.getClientInstanceId()) || hasTwoFactorCode() != cMsgClientLogon.hasTwoFactorCode()) {
                return false;
            }
            if ((hasTwoFactorCode() && !getTwoFactorCode().equals(cMsgClientLogon.getTwoFactorCode())) || hasSupportsRateLimitResponse() != cMsgClientLogon.hasSupportsRateLimitResponse()) {
                return false;
            }
            if ((hasSupportsRateLimitResponse() && getSupportsRateLimitResponse() != cMsgClientLogon.getSupportsRateLimitResponse()) || hasWebLogonNonce() != cMsgClientLogon.hasWebLogonNonce()) {
                return false;
            }
            if ((hasWebLogonNonce() && !getWebLogonNonce().equals(cMsgClientLogon.getWebLogonNonce())) || hasPriorityReason() != cMsgClientLogon.hasPriorityReason()) {
                return false;
            }
            if ((hasPriorityReason() && getPriorityReason() != cMsgClientLogon.getPriorityReason()) || hasEmbeddedClientSecret() != cMsgClientLogon.hasEmbeddedClientSecret()) {
                return false;
            }
            if ((hasEmbeddedClientSecret() && !getEmbeddedClientSecret().equals(cMsgClientLogon.getEmbeddedClientSecret())) || hasDisablePartnerAutogrants() != cMsgClientLogon.hasDisablePartnerAutogrants()) {
                return false;
            }
            if ((hasDisablePartnerAutogrants() && getDisablePartnerAutogrants() != cMsgClientLogon.getDisablePartnerAutogrants()) || hasAccessToken() != cMsgClientLogon.hasAccessToken()) {
                return false;
            }
            if ((hasAccessToken() && !getAccessToken().equals(cMsgClientLogon.getAccessToken())) || hasIsChromeOs() != cMsgClientLogon.hasIsChromeOs()) {
                return false;
            }
            if ((hasIsChromeOs() && getIsChromeOs() != cMsgClientLogon.getIsChromeOs()) || hasIsSteamBoxDeprecated() != cMsgClientLogon.hasIsSteamBoxDeprecated()) {
                return false;
            }
            if ((hasIsSteamBoxDeprecated() && getIsSteamBoxDeprecated() != cMsgClientLogon.getIsSteamBoxDeprecated()) || hasIsSteamDeckDeprecated() != cMsgClientLogon.hasIsSteamDeckDeprecated()) {
                return false;
            }
            if ((hasIsSteamDeckDeprecated() && getIsSteamDeckDeprecated() != cMsgClientLogon.getIsSteamDeckDeprecated()) || hasIsTeslaDeprecated() != cMsgClientLogon.hasIsTeslaDeprecated()) {
                return false;
            }
            if ((!hasIsTeslaDeprecated() || getIsTeslaDeprecated() == cMsgClientLogon.getIsTeslaDeprecated()) && hasGamingDeviceType() == cMsgClientLogon.hasGamingDeviceType()) {
                return (!hasGamingDeviceType() || getGamingDeviceType() == cMsgClientLogon.getGamingDeviceType()) && getUnknownFields().equals(cMsgClientLogon.getUnknownFields());
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
            if (hasProtocolVersion()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getProtocolVersion();
            }
            if (hasDeprecatedObfustucatedPrivateIp()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDeprecatedObfustucatedPrivateIp();
            }
            if (hasCellId()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getCellId();
            }
            if (hasLastSessionId()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getLastSessionId();
            }
            if (hasClientPackageVersion()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getClientPackageVersion();
            }
            if (hasClientLanguage()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getClientLanguage().hashCode();
            }
            if (hasClientOsType()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getClientOsType();
            }
            if (hasShouldRememberPassword()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + Internal.hashBoolean(getShouldRememberPassword());
            }
            if (hasWineVersion()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getWineVersion().hashCode();
            }
            if (hasDeprecated10()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getDeprecated10();
            }
            if (hasObfuscatedPrivateIp()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getObfuscatedPrivateIp().hashCode();
            }
            if (hasDeprecatedPublicIp()) {
                iHashCode = (((iHashCode * 37) + 20) * 53) + getDeprecatedPublicIp();
            }
            if (hasQosLevel()) {
                iHashCode = (((iHashCode * 37) + 21) * 53) + getQosLevel();
            }
            if (hasClientSuppliedSteamId()) {
                iHashCode = (((iHashCode * 37) + 22) * 53) + Internal.hashLong(getClientSuppliedSteamId());
            }
            if (hasPublicIp()) {
                iHashCode = (((iHashCode * 37) + 23) * 53) + getPublicIp().hashCode();
            }
            if (hasMachineId()) {
                iHashCode = (((iHashCode * 37) + 30) * 53) + getMachineId().hashCode();
            }
            if (hasLauncherType()) {
                iHashCode = (((iHashCode * 37) + 31) * 53) + getLauncherType();
            }
            if (hasUiMode()) {
                iHashCode = (((iHashCode * 37) + 32) * 53) + getUiMode();
            }
            if (hasChatMode()) {
                iHashCode = (((iHashCode * 37) + 33) * 53) + getChatMode();
            }
            if (hasSteam2AuthTicket()) {
                iHashCode = (((iHashCode * 37) + 41) * 53) + getSteam2AuthTicket().hashCode();
            }
            if (hasEmailAddress()) {
                iHashCode = (((iHashCode * 37) + 42) * 53) + getEmailAddress().hashCode();
            }
            if (hasRtime32AccountCreation()) {
                iHashCode = (((iHashCode * 37) + 43) * 53) + getRtime32AccountCreation();
            }
            if (hasAccountName()) {
                iHashCode = (((iHashCode * 37) + 50) * 53) + getAccountName().hashCode();
            }
            if (hasPassword()) {
                iHashCode = (((iHashCode * 37) + 51) * 53) + getPassword().hashCode();
            }
            if (hasGameServerToken()) {
                iHashCode = (((iHashCode * 37) + 52) * 53) + getGameServerToken().hashCode();
            }
            if (hasLoginKey()) {
                iHashCode = (((iHashCode * 37) + 60) * 53) + getLoginKey().hashCode();
            }
            if (hasWasConvertedDeprecatedMsg()) {
                iHashCode = (((iHashCode * 37) + 70) * 53) + Internal.hashBoolean(getWasConvertedDeprecatedMsg());
            }
            if (hasAnonUserTargetAccountName()) {
                iHashCode = (((iHashCode * 37) + 80) * 53) + getAnonUserTargetAccountName().hashCode();
            }
            if (hasResolvedUserSteamId()) {
                iHashCode = (((iHashCode * 37) + 81) * 53) + Internal.hashLong(getResolvedUserSteamId());
            }
            if (hasEresultSentryfile()) {
                iHashCode = (((iHashCode * 37) + 82) * 53) + getEresultSentryfile();
            }
            if (hasShaSentryfile()) {
                iHashCode = (((iHashCode * 37) + 83) * 53) + getShaSentryfile().hashCode();
            }
            if (hasAuthCode()) {
                iHashCode = (((iHashCode * 37) + 84) * 53) + getAuthCode().hashCode();
            }
            if (hasOtpType()) {
                iHashCode = (((iHashCode * 37) + 85) * 53) + getOtpType();
            }
            if (hasOtpValue()) {
                iHashCode = (((iHashCode * 37) + 86) * 53) + getOtpValue();
            }
            if (hasOtpIdentifier()) {
                iHashCode = (((iHashCode * 37) + 87) * 53) + getOtpIdentifier().hashCode();
            }
            if (hasSteam2TicketRequest()) {
                iHashCode = (((iHashCode * 37) + 88) * 53) + Internal.hashBoolean(getSteam2TicketRequest());
            }
            if (hasSonyPsnTicket()) {
                iHashCode = (((iHashCode * 37) + 90) * 53) + getSonyPsnTicket().hashCode();
            }
            if (hasSonyPsnServiceId()) {
                iHashCode = (((iHashCode * 37) + 91) * 53) + getSonyPsnServiceId().hashCode();
            }
            if (hasCreateNewPsnLinkedAccountIfNeeded()) {
                iHashCode = (((iHashCode * 37) + 92) * 53) + Internal.hashBoolean(getCreateNewPsnLinkedAccountIfNeeded());
            }
            if (hasSonyPsnName()) {
                iHashCode = (((iHashCode * 37) + 93) * 53) + getSonyPsnName().hashCode();
            }
            if (hasGameServerAppId()) {
                iHashCode = (((iHashCode * 37) + 94) * 53) + getGameServerAppId();
            }
            if (hasSteamguardDontRememberComputer()) {
                iHashCode = (((iHashCode * 37) + 95) * 53) + Internal.hashBoolean(getSteamguardDontRememberComputer());
            }
            if (hasMachineName()) {
                iHashCode = (((iHashCode * 37) + 96) * 53) + getMachineName().hashCode();
            }
            if (hasMachineNameUserchosen()) {
                iHashCode = (((iHashCode * 37) + 97) * 53) + getMachineNameUserchosen().hashCode();
            }
            if (hasCountryOverride()) {
                iHashCode = (((iHashCode * 37) + 98) * 53) + getCountryOverride().hashCode();
            }
            if (hasClientInstanceId()) {
                iHashCode = (((iHashCode * 37) + 100) * 53) + Internal.hashLong(getClientInstanceId());
            }
            if (hasTwoFactorCode()) {
                iHashCode = (((iHashCode * 37) + TWO_FACTOR_CODE_FIELD_NUMBER) * 53) + getTwoFactorCode().hashCode();
            }
            if (hasSupportsRateLimitResponse()) {
                iHashCode = (((iHashCode * 37) + SUPPORTS_RATE_LIMIT_RESPONSE_FIELD_NUMBER) * 53) + Internal.hashBoolean(getSupportsRateLimitResponse());
            }
            if (hasWebLogonNonce()) {
                iHashCode = (((iHashCode * 37) + WEB_LOGON_NONCE_FIELD_NUMBER) * 53) + getWebLogonNonce().hashCode();
            }
            if (hasPriorityReason()) {
                iHashCode = (((iHashCode * 37) + PRIORITY_REASON_FIELD_NUMBER) * 53) + getPriorityReason();
            }
            if (hasEmbeddedClientSecret()) {
                iHashCode = (((iHashCode * 37) + EMBEDDED_CLIENT_SECRET_FIELD_NUMBER) * 53) + getEmbeddedClientSecret().hashCode();
            }
            if (hasDisablePartnerAutogrants()) {
                iHashCode = (((iHashCode * 37) + DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER) * 53) + Internal.hashBoolean(getDisablePartnerAutogrants());
            }
            if (hasAccessToken()) {
                iHashCode = (((iHashCode * 37) + ACCESS_TOKEN_FIELD_NUMBER) * 53) + getAccessToken().hashCode();
            }
            if (hasIsChromeOs()) {
                iHashCode = (((iHashCode * 37) + IS_CHROME_OS_FIELD_NUMBER) * 53) + Internal.hashBoolean(getIsChromeOs());
            }
            if (hasIsSteamBoxDeprecated()) {
                iHashCode = (((iHashCode * 37) + 99) * 53) + Internal.hashBoolean(getIsSteamBoxDeprecated());
            }
            if (hasIsSteamDeckDeprecated()) {
                iHashCode = (((iHashCode * 37) + IS_STEAM_DECK_DEPRECATED_FIELD_NUMBER) * 53) + Internal.hashBoolean(getIsSteamDeckDeprecated());
            }
            if (hasIsTeslaDeprecated()) {
                iHashCode = (((iHashCode * 37) + IS_TESLA_DEPRECATED_FIELD_NUMBER) * 53) + Internal.hashBoolean(getIsTeslaDeprecated());
            }
            if (hasGamingDeviceType()) {
                iHashCode = (((iHashCode * 37) + GAMING_DEVICE_TYPE_FIELD_NUMBER) * 53) + getGamingDeviceType();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientLogon parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLogon parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLogon parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLogon parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLogon parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLogon parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLogon parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLogon) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLogon parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogon) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLogon parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLogon) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLogon parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogon) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLogon parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLogon) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLogon parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogon) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLogon cMsgClientLogon) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLogon);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientLogonOrBuilder {
            private Object accessToken_;
            private Object accountName_;
            private Object anonUserTargetAccountName_;
            private Object authCode_;
            private int bitField0_;
            private int bitField1_;
            private int cellId_;
            private int chatMode_;
            private long clientInstanceId_;
            private Object clientLanguage_;
            private int clientOsType_;
            private int clientPackageVersion_;
            private long clientSuppliedSteamId_;
            private Object countryOverride_;
            private boolean createNewPsnLinkedAccountIfNeeded_;
            private int deprecated10_;
            private int deprecatedObfustucatedPrivateIp_;
            private int deprecatedPublicIp_;
            private boolean disablePartnerAutogrants_;
            private Object emailAddress_;
            private SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> embeddedClientSecretBuilder_;
            private CMsgClientSecret embeddedClientSecret_;
            private int eresultSentryfile_;
            private int gameServerAppId_;
            private Object gameServerToken_;
            private int gamingDeviceType_;
            private boolean isChromeOs_;
            private boolean isSteamBoxDeprecated_;
            private boolean isSteamDeckDeprecated_;
            private boolean isTeslaDeprecated_;
            private int lastSessionId_;
            private int launcherType_;
            private Object loginKey_;
            private ByteString machineId_;
            private Object machineNameUserchosen_;
            private Object machineName_;
            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> obfuscatedPrivateIpBuilder_;
            private SteammessagesBase.CMsgIPAddress obfuscatedPrivateIp_;
            private Object otpIdentifier_;
            private int otpType_;
            private int otpValue_;
            private Object password_;
            private int priorityReason_;
            private int protocolVersion_;
            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> publicIpBuilder_;
            private SteammessagesBase.CMsgIPAddress publicIp_;
            private int qosLevel_;
            private long resolvedUserSteamId_;
            private int rtime32AccountCreation_;
            private ByteString shaSentryfile_;
            private boolean shouldRememberPassword_;
            private Object sonyPsnName_;
            private Object sonyPsnServiceId_;
            private ByteString sonyPsnTicket_;
            private ByteString steam2AuthTicket_;
            private boolean steam2TicketRequest_;
            private boolean steamguardDontRememberComputer_;
            private boolean supportsRateLimitResponse_;
            private Object twoFactorCode_;
            private int uiMode_;
            private boolean wasConvertedDeprecatedMsg_;
            private Object webLogonNonce_;
            private Object wineVersion_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogon_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogon_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLogon.class, Builder.class);
            }

            private Builder() {
                this.clientLanguage_ = "";
                this.wineVersion_ = "";
                ByteString byteString = ByteString.EMPTY;
                this.machineId_ = byteString;
                this.steam2AuthTicket_ = byteString;
                this.emailAddress_ = "";
                this.accountName_ = "";
                this.password_ = "";
                this.gameServerToken_ = "";
                this.loginKey_ = "";
                this.anonUserTargetAccountName_ = "";
                this.shaSentryfile_ = byteString;
                this.authCode_ = "";
                this.otpIdentifier_ = "";
                this.sonyPsnTicket_ = byteString;
                this.sonyPsnServiceId_ = "";
                this.sonyPsnName_ = "";
                this.machineName_ = "";
                this.machineNameUserchosen_ = "";
                this.countryOverride_ = "";
                this.twoFactorCode_ = "";
                this.webLogonNonce_ = "";
                this.accessToken_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.clientLanguage_ = "";
                this.wineVersion_ = "";
                ByteString byteString = ByteString.EMPTY;
                this.machineId_ = byteString;
                this.steam2AuthTicket_ = byteString;
                this.emailAddress_ = "";
                this.accountName_ = "";
                this.password_ = "";
                this.gameServerToken_ = "";
                this.loginKey_ = "";
                this.anonUserTargetAccountName_ = "";
                this.shaSentryfile_ = byteString;
                this.authCode_ = "";
                this.otpIdentifier_ = "";
                this.sonyPsnTicket_ = byteString;
                this.sonyPsnServiceId_ = "";
                this.sonyPsnName_ = "";
                this.machineName_ = "";
                this.machineNameUserchosen_ = "";
                this.countryOverride_ = "";
                this.twoFactorCode_ = "";
                this.webLogonNonce_ = "";
                this.accessToken_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetObfuscatedPrivateIpFieldBuilder();
                    internalGetPublicIpFieldBuilder();
                    internalGetEmbeddedClientSecretFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.bitField1_ = 0;
                this.protocolVersion_ = 0;
                this.deprecatedObfustucatedPrivateIp_ = 0;
                this.cellId_ = 0;
                this.lastSessionId_ = 0;
                this.clientPackageVersion_ = 0;
                this.clientLanguage_ = "";
                this.clientOsType_ = 0;
                this.shouldRememberPassword_ = false;
                this.wineVersion_ = "";
                this.deprecated10_ = 0;
                this.obfuscatedPrivateIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.obfuscatedPrivateIpBuilder_ = null;
                }
                this.deprecatedPublicIp_ = 0;
                this.qosLevel_ = 0;
                this.clientSuppliedSteamId_ = 0L;
                this.publicIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder2 = this.publicIpBuilder_;
                if (singleFieldBuilder2 != null) {
                    singleFieldBuilder2.dispose();
                    this.publicIpBuilder_ = null;
                }
                ByteString byteString = ByteString.EMPTY;
                this.machineId_ = byteString;
                this.launcherType_ = 0;
                this.uiMode_ = 0;
                this.chatMode_ = 0;
                this.steam2AuthTicket_ = byteString;
                this.emailAddress_ = "";
                this.rtime32AccountCreation_ = 0;
                this.accountName_ = "";
                this.password_ = "";
                this.gameServerToken_ = "";
                this.loginKey_ = "";
                this.wasConvertedDeprecatedMsg_ = false;
                this.anonUserTargetAccountName_ = "";
                this.resolvedUserSteamId_ = 0L;
                this.eresultSentryfile_ = 0;
                this.shaSentryfile_ = byteString;
                this.authCode_ = "";
                this.otpType_ = 0;
                this.otpValue_ = 0;
                this.otpIdentifier_ = "";
                this.steam2TicketRequest_ = false;
                this.sonyPsnTicket_ = byteString;
                this.sonyPsnServiceId_ = "";
                this.createNewPsnLinkedAccountIfNeeded_ = false;
                this.sonyPsnName_ = "";
                this.gameServerAppId_ = 0;
                this.steamguardDontRememberComputer_ = false;
                this.machineName_ = "";
                this.machineNameUserchosen_ = "";
                this.countryOverride_ = "";
                this.clientInstanceId_ = 0L;
                this.twoFactorCode_ = "";
                this.supportsRateLimitResponse_ = false;
                this.webLogonNonce_ = "";
                this.priorityReason_ = 0;
                this.embeddedClientSecret_ = null;
                SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder3 = this.embeddedClientSecretBuilder_;
                if (singleFieldBuilder3 != null) {
                    singleFieldBuilder3.dispose();
                    this.embeddedClientSecretBuilder_ = null;
                }
                this.disablePartnerAutogrants_ = false;
                this.accessToken_ = "";
                this.isChromeOs_ = false;
                this.isSteamBoxDeprecated_ = false;
                this.isSteamDeckDeprecated_ = false;
                this.isTeslaDeprecated_ = false;
                this.gamingDeviceType_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogon_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLogon getDefaultInstanceForType() {
                return CMsgClientLogon.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLogon build() {
                CMsgClientLogon cMsgClientLogonBuildPartial = buildPartial();
                if (cMsgClientLogonBuildPartial.isInitialized()) {
                    return cMsgClientLogonBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLogonBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLogon buildPartial() {
                CMsgClientLogon cMsgClientLogon = new CMsgClientLogon(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientLogon);
                }
                if (this.bitField1_ != 0) {
                    buildPartial1(cMsgClientLogon);
                }
                onBuilt();
                return cMsgClientLogon;
            }

            private void buildPartial0(CMsgClientLogon cMsgClientLogon) {
                int i;
                SteammessagesBase.CMsgIPAddress cMsgIPAddress;
                SteammessagesBase.CMsgIPAddress cMsgIPAddress2;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientLogon.protocolVersion_ = this.protocolVersion_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientLogon.deprecatedObfustucatedPrivateIp_ = this.deprecatedObfustucatedPrivateIp_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientLogon.cellId_ = this.cellId_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientLogon.lastSessionId_ = this.lastSessionId_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientLogon.clientPackageVersion_ = this.clientPackageVersion_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientLogon.clientLanguage_ = this.clientLanguage_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientLogon.clientOsType_ = this.clientOsType_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientLogon.shouldRememberPassword_ = this.shouldRememberPassword_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgClientLogon.wineVersion_ = this.wineVersion_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgClientLogon.deprecated10_ = this.deprecated10_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                    if (singleFieldBuilder == null) {
                        cMsgIPAddress2 = this.obfuscatedPrivateIp_;
                    } else {
                        cMsgIPAddress2 = (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.build();
                    }
                    cMsgClientLogon.obfuscatedPrivateIp_ = cMsgIPAddress2;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cMsgClientLogon.deprecatedPublicIp_ = this.deprecatedPublicIp_;
                    i |= 2048;
                }
                if ((i2 & 4096) != 0) {
                    cMsgClientLogon.qosLevel_ = this.qosLevel_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    cMsgClientLogon.clientSuppliedSteamId_ = this.clientSuppliedSteamId_;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder2 = this.publicIpBuilder_;
                    if (singleFieldBuilder2 == null) {
                        cMsgIPAddress = this.publicIp_;
                    } else {
                        cMsgIPAddress = (SteammessagesBase.CMsgIPAddress) singleFieldBuilder2.build();
                    }
                    cMsgClientLogon.publicIp_ = cMsgIPAddress;
                    i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                }
                if ((i2 & 32768) != 0) {
                    cMsgClientLogon.machineId_ = this.machineId_;
                    i |= 32768;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    cMsgClientLogon.launcherType_ = this.launcherType_;
                    i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                }
                if ((i2 & 131072) != 0) {
                    cMsgClientLogon.uiMode_ = this.uiMode_;
                    i |= 131072;
                }
                if ((i2 & 262144) != 0) {
                    cMsgClientLogon.chatMode_ = this.chatMode_;
                    i |= 262144;
                }
                if ((i2 & 524288) != 0) {
                    cMsgClientLogon.steam2AuthTicket_ = this.steam2AuthTicket_;
                    i |= 524288;
                }
                if ((i2 & 1048576) != 0) {
                    cMsgClientLogon.emailAddress_ = this.emailAddress_;
                    i |= 1048576;
                }
                if ((i2 & 2097152) != 0) {
                    cMsgClientLogon.rtime32AccountCreation_ = this.rtime32AccountCreation_;
                    i |= 2097152;
                }
                if ((4194304 & i2) != 0) {
                    cMsgClientLogon.accountName_ = this.accountName_;
                    i |= 4194304;
                }
                if ((8388608 & i2) != 0) {
                    cMsgClientLogon.password_ = this.password_;
                    i |= LZMA2Options.DICT_SIZE_DEFAULT;
                }
                if ((16777216 & i2) != 0) {
                    cMsgClientLogon.gameServerToken_ = this.gameServerToken_;
                    i |= 16777216;
                }
                if ((33554432 & i2) != 0) {
                    cMsgClientLogon.loginKey_ = this.loginKey_;
                    i |= 33554432;
                }
                if ((67108864 & i2) != 0) {
                    cMsgClientLogon.wasConvertedDeprecatedMsg_ = this.wasConvertedDeprecatedMsg_;
                    i |= 67108864;
                }
                if ((134217728 & i2) != 0) {
                    cMsgClientLogon.anonUserTargetAccountName_ = this.anonUserTargetAccountName_;
                    i |= 134217728;
                }
                if ((268435456 & i2) != 0) {
                    cMsgClientLogon.resolvedUserSteamId_ = this.resolvedUserSteamId_;
                    i |= 268435456;
                }
                if ((536870912 & i2) != 0) {
                    cMsgClientLogon.eresultSentryfile_ = this.eresultSentryfile_;
                    i |= 536870912;
                }
                if ((1073741824 & i2) != 0) {
                    cMsgClientLogon.shaSentryfile_ = this.shaSentryfile_;
                    i |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                    cMsgClientLogon.authCode_ = this.authCode_;
                    i |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                }
                cMsgClientLogon.bitField0_ |= i;
            }

            private void buildPartial1(CMsgClientLogon cMsgClientLogon) {
                int i;
                CMsgClientSecret cMsgClientSecret;
                int i2 = this.bitField1_;
                if ((i2 & 1) != 0) {
                    cMsgClientLogon.otpType_ = this.otpType_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientLogon.otpValue_ = this.otpValue_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientLogon.otpIdentifier_ = this.otpIdentifier_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientLogon.steam2TicketRequest_ = this.steam2TicketRequest_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientLogon.sonyPsnTicket_ = this.sonyPsnTicket_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientLogon.sonyPsnServiceId_ = this.sonyPsnServiceId_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientLogon.createNewPsnLinkedAccountIfNeeded_ = this.createNewPsnLinkedAccountIfNeeded_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientLogon.sonyPsnName_ = this.sonyPsnName_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgClientLogon.gameServerAppId_ = this.gameServerAppId_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgClientLogon.steamguardDontRememberComputer_ = this.steamguardDontRememberComputer_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cMsgClientLogon.machineName_ = this.machineName_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cMsgClientLogon.machineNameUserchosen_ = this.machineNameUserchosen_;
                    i |= 2048;
                }
                if ((i2 & 4096) != 0) {
                    cMsgClientLogon.countryOverride_ = this.countryOverride_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    cMsgClientLogon.clientInstanceId_ = this.clientInstanceId_;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    cMsgClientLogon.twoFactorCode_ = this.twoFactorCode_;
                    i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                }
                if ((i2 & 32768) != 0) {
                    cMsgClientLogon.supportsRateLimitResponse_ = this.supportsRateLimitResponse_;
                    i |= 32768;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    cMsgClientLogon.webLogonNonce_ = this.webLogonNonce_;
                    i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                }
                if ((i2 & 131072) != 0) {
                    cMsgClientLogon.priorityReason_ = this.priorityReason_;
                    i |= 131072;
                }
                if ((i2 & 262144) != 0) {
                    SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder = this.embeddedClientSecretBuilder_;
                    if (singleFieldBuilder == null) {
                        cMsgClientSecret = this.embeddedClientSecret_;
                    } else {
                        cMsgClientSecret = (CMsgClientSecret) singleFieldBuilder.build();
                    }
                    cMsgClientLogon.embeddedClientSecret_ = cMsgClientSecret;
                    i |= 262144;
                }
                if ((i2 & 524288) != 0) {
                    cMsgClientLogon.disablePartnerAutogrants_ = this.disablePartnerAutogrants_;
                    i |= 524288;
                }
                if ((i2 & 1048576) != 0) {
                    cMsgClientLogon.accessToken_ = this.accessToken_;
                    i |= 1048576;
                }
                if ((i2 & 2097152) != 0) {
                    cMsgClientLogon.isChromeOs_ = this.isChromeOs_;
                    i |= 2097152;
                }
                if ((4194304 & i2) != 0) {
                    cMsgClientLogon.isSteamBoxDeprecated_ = this.isSteamBoxDeprecated_;
                    i |= 4194304;
                }
                if ((8388608 & i2) != 0) {
                    cMsgClientLogon.isSteamDeckDeprecated_ = this.isSteamDeckDeprecated_;
                    i |= LZMA2Options.DICT_SIZE_DEFAULT;
                }
                if ((16777216 & i2) != 0) {
                    cMsgClientLogon.isTeslaDeprecated_ = this.isTeslaDeprecated_;
                    i |= 16777216;
                }
                if ((i2 & 33554432) != 0) {
                    cMsgClientLogon.gamingDeviceType_ = this.gamingDeviceType_;
                    i |= 33554432;
                }
                cMsgClientLogon.bitField1_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLogon) {
                    return mergeFrom((CMsgClientLogon) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLogon cMsgClientLogon) {
                if (cMsgClientLogon == CMsgClientLogon.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientLogon.hasProtocolVersion()) {
                    setProtocolVersion(cMsgClientLogon.getProtocolVersion());
                }
                if (cMsgClientLogon.hasDeprecatedObfustucatedPrivateIp()) {
                    setDeprecatedObfustucatedPrivateIp(cMsgClientLogon.getDeprecatedObfustucatedPrivateIp());
                }
                if (cMsgClientLogon.hasCellId()) {
                    setCellId(cMsgClientLogon.getCellId());
                }
                if (cMsgClientLogon.hasLastSessionId()) {
                    setLastSessionId(cMsgClientLogon.getLastSessionId());
                }
                if (cMsgClientLogon.hasClientPackageVersion()) {
                    setClientPackageVersion(cMsgClientLogon.getClientPackageVersion());
                }
                if (cMsgClientLogon.hasClientLanguage()) {
                    this.clientLanguage_ = cMsgClientLogon.clientLanguage_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cMsgClientLogon.hasClientOsType()) {
                    setClientOsType(cMsgClientLogon.getClientOsType());
                }
                if (cMsgClientLogon.hasShouldRememberPassword()) {
                    setShouldRememberPassword(cMsgClientLogon.getShouldRememberPassword());
                }
                if (cMsgClientLogon.hasWineVersion()) {
                    this.wineVersion_ = cMsgClientLogon.wineVersion_;
                    this.bitField0_ |= 256;
                    onChanged();
                }
                if (cMsgClientLogon.hasDeprecated10()) {
                    setDeprecated10(cMsgClientLogon.getDeprecated10());
                }
                if (cMsgClientLogon.hasObfuscatedPrivateIp()) {
                    mergeObfuscatedPrivateIp(cMsgClientLogon.getObfuscatedPrivateIp());
                }
                if (cMsgClientLogon.hasDeprecatedPublicIp()) {
                    setDeprecatedPublicIp(cMsgClientLogon.getDeprecatedPublicIp());
                }
                if (cMsgClientLogon.hasQosLevel()) {
                    setQosLevel(cMsgClientLogon.getQosLevel());
                }
                if (cMsgClientLogon.hasClientSuppliedSteamId()) {
                    setClientSuppliedSteamId(cMsgClientLogon.getClientSuppliedSteamId());
                }
                if (cMsgClientLogon.hasPublicIp()) {
                    mergePublicIp(cMsgClientLogon.getPublicIp());
                }
                if (cMsgClientLogon.hasMachineId()) {
                    setMachineId(cMsgClientLogon.getMachineId());
                }
                if (cMsgClientLogon.hasLauncherType()) {
                    setLauncherType(cMsgClientLogon.getLauncherType());
                }
                if (cMsgClientLogon.hasUiMode()) {
                    setUiMode(cMsgClientLogon.getUiMode());
                }
                if (cMsgClientLogon.hasChatMode()) {
                    setChatMode(cMsgClientLogon.getChatMode());
                }
                if (cMsgClientLogon.hasSteam2AuthTicket()) {
                    setSteam2AuthTicket(cMsgClientLogon.getSteam2AuthTicket());
                }
                if (cMsgClientLogon.hasEmailAddress()) {
                    this.emailAddress_ = cMsgClientLogon.emailAddress_;
                    this.bitField0_ |= 1048576;
                    onChanged();
                }
                if (cMsgClientLogon.hasRtime32AccountCreation()) {
                    setRtime32AccountCreation(cMsgClientLogon.getRtime32AccountCreation());
                }
                if (cMsgClientLogon.hasAccountName()) {
                    this.accountName_ = cMsgClientLogon.accountName_;
                    this.bitField0_ |= 4194304;
                    onChanged();
                }
                if (cMsgClientLogon.hasPassword()) {
                    this.password_ = cMsgClientLogon.password_;
                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                    onChanged();
                }
                if (cMsgClientLogon.hasGameServerToken()) {
                    this.gameServerToken_ = cMsgClientLogon.gameServerToken_;
                    this.bitField0_ |= 16777216;
                    onChanged();
                }
                if (cMsgClientLogon.hasLoginKey()) {
                    this.loginKey_ = cMsgClientLogon.loginKey_;
                    this.bitField0_ |= 33554432;
                    onChanged();
                }
                if (cMsgClientLogon.hasWasConvertedDeprecatedMsg()) {
                    setWasConvertedDeprecatedMsg(cMsgClientLogon.getWasConvertedDeprecatedMsg());
                }
                if (cMsgClientLogon.hasAnonUserTargetAccountName()) {
                    this.anonUserTargetAccountName_ = cMsgClientLogon.anonUserTargetAccountName_;
                    this.bitField0_ |= 134217728;
                    onChanged();
                }
                if (cMsgClientLogon.hasResolvedUserSteamId()) {
                    setResolvedUserSteamId(cMsgClientLogon.getResolvedUserSteamId());
                }
                if (cMsgClientLogon.hasEresultSentryfile()) {
                    setEresultSentryfile(cMsgClientLogon.getEresultSentryfile());
                }
                if (cMsgClientLogon.hasShaSentryfile()) {
                    setShaSentryfile(cMsgClientLogon.getShaSentryfile());
                }
                if (cMsgClientLogon.hasAuthCode()) {
                    this.authCode_ = cMsgClientLogon.authCode_;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                    onChanged();
                }
                if (cMsgClientLogon.hasOtpType()) {
                    setOtpType(cMsgClientLogon.getOtpType());
                }
                if (cMsgClientLogon.hasOtpValue()) {
                    setOtpValue(cMsgClientLogon.getOtpValue());
                }
                if (cMsgClientLogon.hasOtpIdentifier()) {
                    this.otpIdentifier_ = cMsgClientLogon.otpIdentifier_;
                    this.bitField1_ |= 4;
                    onChanged();
                }
                if (cMsgClientLogon.hasSteam2TicketRequest()) {
                    setSteam2TicketRequest(cMsgClientLogon.getSteam2TicketRequest());
                }
                if (cMsgClientLogon.hasSonyPsnTicket()) {
                    setSonyPsnTicket(cMsgClientLogon.getSonyPsnTicket());
                }
                if (cMsgClientLogon.hasSonyPsnServiceId()) {
                    this.sonyPsnServiceId_ = cMsgClientLogon.sonyPsnServiceId_;
                    this.bitField1_ |= 32;
                    onChanged();
                }
                if (cMsgClientLogon.hasCreateNewPsnLinkedAccountIfNeeded()) {
                    setCreateNewPsnLinkedAccountIfNeeded(cMsgClientLogon.getCreateNewPsnLinkedAccountIfNeeded());
                }
                if (cMsgClientLogon.hasSonyPsnName()) {
                    this.sonyPsnName_ = cMsgClientLogon.sonyPsnName_;
                    this.bitField1_ |= 128;
                    onChanged();
                }
                if (cMsgClientLogon.hasGameServerAppId()) {
                    setGameServerAppId(cMsgClientLogon.getGameServerAppId());
                }
                if (cMsgClientLogon.hasSteamguardDontRememberComputer()) {
                    setSteamguardDontRememberComputer(cMsgClientLogon.getSteamguardDontRememberComputer());
                }
                if (cMsgClientLogon.hasMachineName()) {
                    this.machineName_ = cMsgClientLogon.machineName_;
                    this.bitField1_ |= 1024;
                    onChanged();
                }
                if (cMsgClientLogon.hasMachineNameUserchosen()) {
                    this.machineNameUserchosen_ = cMsgClientLogon.machineNameUserchosen_;
                    this.bitField1_ |= 2048;
                    onChanged();
                }
                if (cMsgClientLogon.hasCountryOverride()) {
                    this.countryOverride_ = cMsgClientLogon.countryOverride_;
                    this.bitField1_ |= 4096;
                    onChanged();
                }
                if (cMsgClientLogon.hasClientInstanceId()) {
                    setClientInstanceId(cMsgClientLogon.getClientInstanceId());
                }
                if (cMsgClientLogon.hasTwoFactorCode()) {
                    this.twoFactorCode_ = cMsgClientLogon.twoFactorCode_;
                    this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    onChanged();
                }
                if (cMsgClientLogon.hasSupportsRateLimitResponse()) {
                    setSupportsRateLimitResponse(cMsgClientLogon.getSupportsRateLimitResponse());
                }
                if (cMsgClientLogon.hasWebLogonNonce()) {
                    this.webLogonNonce_ = cMsgClientLogon.webLogonNonce_;
                    this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    onChanged();
                }
                if (cMsgClientLogon.hasPriorityReason()) {
                    setPriorityReason(cMsgClientLogon.getPriorityReason());
                }
                if (cMsgClientLogon.hasEmbeddedClientSecret()) {
                    mergeEmbeddedClientSecret(cMsgClientLogon.getEmbeddedClientSecret());
                }
                if (cMsgClientLogon.hasDisablePartnerAutogrants()) {
                    setDisablePartnerAutogrants(cMsgClientLogon.getDisablePartnerAutogrants());
                }
                if (cMsgClientLogon.hasAccessToken()) {
                    this.accessToken_ = cMsgClientLogon.accessToken_;
                    this.bitField1_ |= 1048576;
                    onChanged();
                }
                if (cMsgClientLogon.hasIsChromeOs()) {
                    setIsChromeOs(cMsgClientLogon.getIsChromeOs());
                }
                if (cMsgClientLogon.hasIsSteamBoxDeprecated()) {
                    setIsSteamBoxDeprecated(cMsgClientLogon.getIsSteamBoxDeprecated());
                }
                if (cMsgClientLogon.hasIsSteamDeckDeprecated()) {
                    setIsSteamDeckDeprecated(cMsgClientLogon.getIsSteamDeckDeprecated());
                }
                if (cMsgClientLogon.hasIsTeslaDeprecated()) {
                    setIsTeslaDeprecated(cMsgClientLogon.getIsTeslaDeprecated());
                }
                if (cMsgClientLogon.hasGamingDeviceType()) {
                    setGamingDeviceType(cMsgClientLogon.getGamingDeviceType());
                }
                mergeUnknownFields(cMsgClientLogon.getUnknownFields());
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
                                    this.protocolVersion_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.deprecatedObfustucatedPrivateIp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.cellId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 32:
                                    this.lastSessionId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.clientPackageVersion_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                    break;
                                case 50:
                                    this.clientLanguage_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.clientOsType_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                    break;
                                case 64:
                                    this.shouldRememberPassword_ = codedInputStream.readBool();
                                    this.bitField0_ |= 128;
                                    break;
                                case 74:
                                    this.wineVersion_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.deprecated10_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER /* 90 */:
                                    codedInputStream.readMessage(internalGetObfuscatedPrivateIpFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 1024;
                                    break;
                                case 160:
                                    this.deprecatedPublicIp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2048;
                                    break;
                                case 168:
                                    this.qosLevel_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4096;
                                    break;
                                case 177:
                                    this.clientSuppliedSteamId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 186:
                                    codedInputStream.readMessage(internalGetPublicIpFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case 242:
                                    this.machineId_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32768;
                                    break;
                                case 248:
                                    this.launcherType_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                    break;
                                case 256:
                                    this.uiMode_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 131072;
                                    break;
                                case 264:
                                    this.chatMode_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 262144;
                                    break;
                                case 330:
                                    this.steam2AuthTicket_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 524288;
                                    break;
                                case 338:
                                    this.emailAddress_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1048576;
                                    break;
                                case 349:
                                    this.rtime32AccountCreation_ = codedInputStream.readFixed32();
                                    this.bitField0_ |= 2097152;
                                    break;
                                case 402:
                                    this.accountName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4194304;
                                    break;
                                case 410:
                                    this.password_ = codedInputStream.readBytes();
                                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                                    break;
                                case 418:
                                    this.gameServerToken_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16777216;
                                    break;
                                case 482:
                                    this.loginKey_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 33554432;
                                    break;
                                case 560:
                                    this.wasConvertedDeprecatedMsg_ = codedInputStream.readBool();
                                    this.bitField0_ |= 67108864;
                                    break;
                                case 642:
                                    this.anonUserTargetAccountName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 134217728;
                                    break;
                                case 649:
                                    this.resolvedUserSteamId_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 268435456;
                                    break;
                                case 656:
                                    this.eresultSentryfile_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 536870912;
                                    break;
                                case 666:
                                    this.shaSentryfile_ = codedInputStream.readBytes();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                                    break;
                                case 674:
                                    this.authCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                                    break;
                                case 680:
                                    this.otpType_ = codedInputStream.readInt32();
                                    this.bitField1_ |= 1;
                                    break;
                                case 688:
                                    this.otpValue_ = codedInputStream.readUInt32();
                                    this.bitField1_ |= 2;
                                    break;
                                case 698:
                                    this.otpIdentifier_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 4;
                                    break;
                                case 704:
                                    this.steam2TicketRequest_ = codedInputStream.readBool();
                                    this.bitField1_ |= 8;
                                    break;
                                case 722:
                                    this.sonyPsnTicket_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 16;
                                    break;
                                case 730:
                                    this.sonyPsnServiceId_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 32;
                                    break;
                                case 736:
                                    this.createNewPsnLinkedAccountIfNeeded_ = codedInputStream.readBool();
                                    this.bitField1_ |= 64;
                                    break;
                                case 746:
                                    this.sonyPsnName_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 128;
                                    break;
                                case 752:
                                    this.gameServerAppId_ = codedInputStream.readInt32();
                                    this.bitField1_ |= 256;
                                    break;
                                case 760:
                                    this.steamguardDontRememberComputer_ = codedInputStream.readBool();
                                    this.bitField1_ |= 512;
                                    break;
                                case 770:
                                    this.machineName_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 1024;
                                    break;
                                case 778:
                                    this.machineNameUserchosen_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 2048;
                                    break;
                                case 786:
                                    this.countryOverride_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 4096;
                                    break;
                                case 792:
                                    this.isSteamBoxDeprecated_ = codedInputStream.readBool();
                                    this.bitField1_ |= 4194304;
                                    break;
                                case 800:
                                    this.clientInstanceId_ = codedInputStream.readUInt64();
                                    this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 810:
                                    this.twoFactorCode_ = codedInputStream.readBytes();
                                    this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case 816:
                                    this.supportsRateLimitResponse_ = codedInputStream.readBool();
                                    this.bitField1_ |= 32768;
                                    break;
                                case 826:
                                    this.webLogonNonce_ = codedInputStream.readBytes();
                                    this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                    break;
                                case 832:
                                    this.priorityReason_ = codedInputStream.readInt32();
                                    this.bitField1_ |= 131072;
                                    break;
                                case 842:
                                    codedInputStream.readMessage(internalGetEmbeddedClientSecretFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField1_ |= 262144;
                                    break;
                                case 848:
                                    this.disablePartnerAutogrants_ = codedInputStream.readBool();
                                    this.bitField1_ |= 524288;
                                    break;
                                case 856:
                                    this.isSteamDeckDeprecated_ = codedInputStream.readBool();
                                    this.bitField1_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                                    break;
                                case 866:
                                    this.accessToken_ = codedInputStream.readBytes();
                                    this.bitField1_ |= 1048576;
                                    break;
                                case 872:
                                    this.isChromeOs_ = codedInputStream.readBool();
                                    this.bitField1_ |= 2097152;
                                    break;
                                case 880:
                                    this.isTeslaDeprecated_ = codedInputStream.readBool();
                                    this.bitField1_ |= 16777216;
                                    break;
                                case 888:
                                    this.gamingDeviceType_ = codedInputStream.readUInt32();
                                    this.bitField1_ |= 33554432;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasProtocolVersion() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getProtocolVersion() {
                return this.protocolVersion_;
            }

            public Builder setProtocolVersion(int i) {
                this.protocolVersion_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearProtocolVersion() {
                this.bitField0_ &= -2;
                this.protocolVersion_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasDeprecatedObfustucatedPrivateIp() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getDeprecatedObfustucatedPrivateIp() {
                return this.deprecatedObfustucatedPrivateIp_;
            }

            public Builder setDeprecatedObfustucatedPrivateIp(int i) {
                this.deprecatedObfustucatedPrivateIp_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDeprecatedObfustucatedPrivateIp() {
                this.bitField0_ &= -3;
                this.deprecatedObfustucatedPrivateIp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasCellId() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasLastSessionId() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getLastSessionId() {
                return this.lastSessionId_;
            }

            public Builder setLastSessionId(int i) {
                this.lastSessionId_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearLastSessionId() {
                this.bitField0_ &= -9;
                this.lastSessionId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasClientPackageVersion() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getClientPackageVersion() {
                return this.clientPackageVersion_;
            }

            public Builder setClientPackageVersion(int i) {
                this.clientPackageVersion_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearClientPackageVersion() {
                this.bitField0_ &= -17;
                this.clientPackageVersion_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasClientLanguage() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getClientLanguage() {
                Object obj = this.clientLanguage_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.clientLanguage_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getClientLanguageBytes() {
                Object obj = this.clientLanguage_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.clientLanguage_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setClientLanguage(String str) {
                str.getClass();
                this.clientLanguage_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearClientLanguage() {
                this.clientLanguage_ = CMsgClientLogon.getDefaultInstance().getClientLanguage();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setClientLanguageBytes(ByteString byteString) {
                byteString.getClass();
                this.clientLanguage_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasClientOsType() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getClientOsType() {
                return this.clientOsType_;
            }

            public Builder setClientOsType(int i) {
                this.clientOsType_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearClientOsType() {
                this.bitField0_ &= -65;
                this.clientOsType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasShouldRememberPassword() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getShouldRememberPassword() {
                return this.shouldRememberPassword_;
            }

            public Builder setShouldRememberPassword(boolean z) {
                this.shouldRememberPassword_ = z;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearShouldRememberPassword() {
                this.bitField0_ &= -129;
                this.shouldRememberPassword_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasWineVersion() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getWineVersion() {
                Object obj = this.wineVersion_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.wineVersion_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getWineVersionBytes() {
                Object obj = this.wineVersion_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.wineVersion_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setWineVersion(String str) {
                str.getClass();
                this.wineVersion_ = str;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearWineVersion() {
                this.wineVersion_ = CMsgClientLogon.getDefaultInstance().getWineVersion();
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public Builder setWineVersionBytes(ByteString byteString) {
                byteString.getClass();
                this.wineVersion_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasDeprecated10() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getDeprecated10() {
                return this.deprecated10_;
            }

            public Builder setDeprecated10(int i) {
                this.deprecated10_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearDeprecated10() {
                this.bitField0_ &= -513;
                this.deprecated10_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasObfuscatedPrivateIp() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public SteammessagesBase.CMsgIPAddress getObfuscatedPrivateIp() {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                if (singleFieldBuilder == null) {
                    SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.obfuscatedPrivateIp_;
                    return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
                }
                return (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.getMessage();
            }

            public Builder setObfuscatedPrivateIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                if (singleFieldBuilder == null) {
                    cMsgIPAddress.getClass();
                    this.obfuscatedPrivateIp_ = cMsgIPAddress;
                } else {
                    singleFieldBuilder.setMessage(cMsgIPAddress);
                }
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder setObfuscatedPrivateIp(SteammessagesBase.CMsgIPAddress.Builder builder) {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                if (singleFieldBuilder == null) {
                    this.obfuscatedPrivateIp_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder mergeObfuscatedPrivateIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SteammessagesBase.CMsgIPAddress cMsgIPAddress2;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 1024) != 0 && (cMsgIPAddress2 = this.obfuscatedPrivateIp_) != null && cMsgIPAddress2 != SteammessagesBase.CMsgIPAddress.getDefaultInstance()) {
                        getObfuscatedPrivateIpBuilder().mergeFrom(cMsgIPAddress);
                    } else {
                        this.obfuscatedPrivateIp_ = cMsgIPAddress;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cMsgIPAddress);
                }
                if (this.obfuscatedPrivateIp_ != null) {
                    this.bitField0_ |= 1024;
                    onChanged();
                }
                return this;
            }

            public Builder clearObfuscatedPrivateIp() {
                this.bitField0_ &= -1025;
                this.obfuscatedPrivateIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.obfuscatedPrivateIpBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public SteammessagesBase.CMsgIPAddress.Builder getObfuscatedPrivateIpBuilder() {
                this.bitField0_ |= 1024;
                onChanged();
                return (SteammessagesBase.CMsgIPAddress.Builder) internalGetObfuscatedPrivateIpFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public SteammessagesBase.CMsgIPAddressOrBuilder getObfuscatedPrivateIpOrBuilder() {
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.obfuscatedPrivateIpBuilder_;
                if (singleFieldBuilder != null) {
                    return (SteammessagesBase.CMsgIPAddressOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.obfuscatedPrivateIp_;
                return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
            }

            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> internalGetObfuscatedPrivateIpFieldBuilder() {
                if (this.obfuscatedPrivateIpBuilder_ == null) {
                    this.obfuscatedPrivateIpBuilder_ = new SingleFieldBuilder<>(getObfuscatedPrivateIp(), getParentForChildren(), isClean());
                    this.obfuscatedPrivateIp_ = null;
                }
                return this.obfuscatedPrivateIpBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasDeprecatedPublicIp() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getDeprecatedPublicIp() {
                return this.deprecatedPublicIp_;
            }

            public Builder setDeprecatedPublicIp(int i) {
                this.deprecatedPublicIp_ = i;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearDeprecatedPublicIp() {
                this.bitField0_ &= -2049;
                this.deprecatedPublicIp_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasQosLevel() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getQosLevel() {
                return this.qosLevel_;
            }

            public Builder setQosLevel(int i) {
                this.qosLevel_ = i;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearQosLevel() {
                this.bitField0_ &= -4097;
                this.qosLevel_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasClientSuppliedSteamId() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public long getClientSuppliedSteamId() {
                return this.clientSuppliedSteamId_;
            }

            public Builder setClientSuppliedSteamId(long j) {
                this.clientSuppliedSteamId_ = j;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearClientSuppliedSteamId() {
                this.bitField0_ &= -8193;
                this.clientSuppliedSteamId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasPublicIp() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
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
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder mergePublicIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SteammessagesBase.CMsgIPAddress cMsgIPAddress2;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0 && (cMsgIPAddress2 = this.publicIp_) != null && cMsgIPAddress2 != SteammessagesBase.CMsgIPAddress.getDefaultInstance()) {
                        getPublicIpBuilder().mergeFrom(cMsgIPAddress);
                    } else {
                        this.publicIp_ = cMsgIPAddress;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cMsgIPAddress);
                }
                if (this.publicIp_ != null) {
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    onChanged();
                }
                return this;
            }

            public Builder clearPublicIp() {
                this.bitField0_ &= -16385;
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
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return (SteammessagesBase.CMsgIPAddress.Builder) internalGetPublicIpFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasMachineId() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getMachineId() {
                return this.machineId_;
            }

            public Builder setMachineId(ByteString byteString) {
                byteString.getClass();
                this.machineId_ = byteString;
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder clearMachineId() {
                this.bitField0_ &= -32769;
                this.machineId_ = CMsgClientLogon.getDefaultInstance().getMachineId();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasLauncherType() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getLauncherType() {
                return this.launcherType_;
            }

            public Builder setLauncherType(int i) {
                this.launcherType_ = i;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder clearLauncherType() {
                this.bitField0_ &= -65537;
                this.launcherType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasUiMode() {
                return (this.bitField0_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getUiMode() {
                return this.uiMode_;
            }

            public Builder setUiMode(int i) {
                this.uiMode_ = i;
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder clearUiMode() {
                this.bitField0_ &= -131073;
                this.uiMode_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasChatMode() {
                return (this.bitField0_ & 262144) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getChatMode() {
                return this.chatMode_;
            }

            public Builder setChatMode(int i) {
                this.chatMode_ = i;
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder clearChatMode() {
                this.bitField0_ &= -262145;
                this.chatMode_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasSteam2AuthTicket() {
                return (this.bitField0_ & 524288) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getSteam2AuthTicket() {
                return this.steam2AuthTicket_;
            }

            public Builder setSteam2AuthTicket(ByteString byteString) {
                byteString.getClass();
                this.steam2AuthTicket_ = byteString;
                this.bitField0_ |= 524288;
                onChanged();
                return this;
            }

            public Builder clearSteam2AuthTicket() {
                this.bitField0_ &= -524289;
                this.steam2AuthTicket_ = CMsgClientLogon.getDefaultInstance().getSteam2AuthTicket();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasEmailAddress() {
                return (this.bitField0_ & 1048576) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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
                this.bitField0_ |= 1048576;
                onChanged();
                return this;
            }

            public Builder clearEmailAddress() {
                this.emailAddress_ = CMsgClientLogon.getDefaultInstance().getEmailAddress();
                this.bitField0_ &= -1048577;
                onChanged();
                return this;
            }

            public Builder setEmailAddressBytes(ByteString byteString) {
                byteString.getClass();
                this.emailAddress_ = byteString;
                this.bitField0_ |= 1048576;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasRtime32AccountCreation() {
                return (this.bitField0_ & 2097152) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getRtime32AccountCreation() {
                return this.rtime32AccountCreation_;
            }

            public Builder setRtime32AccountCreation(int i) {
                this.rtime32AccountCreation_ = i;
                this.bitField0_ |= 2097152;
                onChanged();
                return this;
            }

            public Builder clearRtime32AccountCreation() {
                this.bitField0_ &= -2097153;
                this.rtime32AccountCreation_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasAccountName() {
                return (this.bitField0_ & 4194304) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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
                this.bitField0_ |= 4194304;
                onChanged();
                return this;
            }

            public Builder clearAccountName() {
                this.accountName_ = CMsgClientLogon.getDefaultInstance().getAccountName();
                this.bitField0_ &= -4194305;
                onChanged();
                return this;
            }

            public Builder setAccountNameBytes(ByteString byteString) {
                byteString.getClass();
                this.accountName_ = byteString;
                this.bitField0_ |= 4194304;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasPassword() {
                return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
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
                this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                onChanged();
                return this;
            }

            public Builder clearPassword() {
                this.password_ = CMsgClientLogon.getDefaultInstance().getPassword();
                this.bitField0_ &= -8388609;
                onChanged();
                return this;
            }

            public Builder setPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.password_ = byteString;
                this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasGameServerToken() {
                return (this.bitField0_ & 16777216) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getGameServerToken() {
                Object obj = this.gameServerToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.gameServerToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getGameServerTokenBytes() {
                Object obj = this.gameServerToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gameServerToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setGameServerToken(String str) {
                str.getClass();
                this.gameServerToken_ = str;
                this.bitField0_ |= 16777216;
                onChanged();
                return this;
            }

            public Builder clearGameServerToken() {
                this.gameServerToken_ = CMsgClientLogon.getDefaultInstance().getGameServerToken();
                this.bitField0_ &= -16777217;
                onChanged();
                return this;
            }

            public Builder setGameServerTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.gameServerToken_ = byteString;
                this.bitField0_ |= 16777216;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasLoginKey() {
                return (this.bitField0_ & 33554432) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getLoginKey() {
                Object obj = this.loginKey_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.loginKey_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getLoginKeyBytes() {
                Object obj = this.loginKey_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.loginKey_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setLoginKey(String str) {
                str.getClass();
                this.loginKey_ = str;
                this.bitField0_ |= 33554432;
                onChanged();
                return this;
            }

            public Builder clearLoginKey() {
                this.loginKey_ = CMsgClientLogon.getDefaultInstance().getLoginKey();
                this.bitField0_ &= -33554433;
                onChanged();
                return this;
            }

            public Builder setLoginKeyBytes(ByteString byteString) {
                byteString.getClass();
                this.loginKey_ = byteString;
                this.bitField0_ |= 33554432;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasWasConvertedDeprecatedMsg() {
                return (this.bitField0_ & 67108864) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getWasConvertedDeprecatedMsg() {
                return this.wasConvertedDeprecatedMsg_;
            }

            public Builder setWasConvertedDeprecatedMsg(boolean z) {
                this.wasConvertedDeprecatedMsg_ = z;
                this.bitField0_ |= 67108864;
                onChanged();
                return this;
            }

            public Builder clearWasConvertedDeprecatedMsg() {
                this.bitField0_ &= -67108865;
                this.wasConvertedDeprecatedMsg_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasAnonUserTargetAccountName() {
                return (this.bitField0_ & 134217728) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getAnonUserTargetAccountName() {
                Object obj = this.anonUserTargetAccountName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.anonUserTargetAccountName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getAnonUserTargetAccountNameBytes() {
                Object obj = this.anonUserTargetAccountName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.anonUserTargetAccountName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAnonUserTargetAccountName(String str) {
                str.getClass();
                this.anonUserTargetAccountName_ = str;
                this.bitField0_ |= 134217728;
                onChanged();
                return this;
            }

            public Builder clearAnonUserTargetAccountName() {
                this.anonUserTargetAccountName_ = CMsgClientLogon.getDefaultInstance().getAnonUserTargetAccountName();
                this.bitField0_ &= -134217729;
                onChanged();
                return this;
            }

            public Builder setAnonUserTargetAccountNameBytes(ByteString byteString) {
                byteString.getClass();
                this.anonUserTargetAccountName_ = byteString;
                this.bitField0_ |= 134217728;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasResolvedUserSteamId() {
                return (this.bitField0_ & 268435456) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public long getResolvedUserSteamId() {
                return this.resolvedUserSteamId_;
            }

            public Builder setResolvedUserSteamId(long j) {
                this.resolvedUserSteamId_ = j;
                this.bitField0_ |= 268435456;
                onChanged();
                return this;
            }

            public Builder clearResolvedUserSteamId() {
                this.bitField0_ &= -268435457;
                this.resolvedUserSteamId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasEresultSentryfile() {
                return (this.bitField0_ & 536870912) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getEresultSentryfile() {
                return this.eresultSentryfile_;
            }

            public Builder setEresultSentryfile(int i) {
                this.eresultSentryfile_ = i;
                this.bitField0_ |= 536870912;
                onChanged();
                return this;
            }

            public Builder clearEresultSentryfile() {
                this.bitField0_ &= -536870913;
                this.eresultSentryfile_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasShaSentryfile() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getShaSentryfile() {
                return this.shaSentryfile_;
            }

            public Builder setShaSentryfile(ByteString byteString) {
                byteString.getClass();
                this.shaSentryfile_ = byteString;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                onChanged();
                return this;
            }

            public Builder clearShaSentryfile() {
                this.bitField0_ &= -1073741825;
                this.shaSentryfile_ = CMsgClientLogon.getDefaultInstance().getShaSentryfile();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasAuthCode() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getAuthCode() {
                Object obj = this.authCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.authCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getAuthCodeBytes() {
                Object obj = this.authCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.authCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAuthCode(String str) {
                str.getClass();
                this.authCode_ = str;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                onChanged();
                return this;
            }

            public Builder clearAuthCode() {
                this.authCode_ = CMsgClientLogon.getDefaultInstance().getAuthCode();
                this.bitField0_ &= Integer.MAX_VALUE;
                onChanged();
                return this;
            }

            public Builder setAuthCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.authCode_ = byteString;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasOtpType() {
                return (this.bitField1_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getOtpType() {
                return this.otpType_;
            }

            public Builder setOtpType(int i) {
                this.otpType_ = i;
                this.bitField1_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearOtpType() {
                this.bitField1_ &= -2;
                this.otpType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasOtpValue() {
                return (this.bitField1_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getOtpValue() {
                return this.otpValue_;
            }

            public Builder setOtpValue(int i) {
                this.otpValue_ = i;
                this.bitField1_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearOtpValue() {
                this.bitField1_ &= -3;
                this.otpValue_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasOtpIdentifier() {
                return (this.bitField1_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getOtpIdentifier() {
                Object obj = this.otpIdentifier_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.otpIdentifier_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getOtpIdentifierBytes() {
                Object obj = this.otpIdentifier_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.otpIdentifier_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setOtpIdentifier(String str) {
                str.getClass();
                this.otpIdentifier_ = str;
                this.bitField1_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearOtpIdentifier() {
                this.otpIdentifier_ = CMsgClientLogon.getDefaultInstance().getOtpIdentifier();
                this.bitField1_ &= -5;
                onChanged();
                return this;
            }

            public Builder setOtpIdentifierBytes(ByteString byteString) {
                byteString.getClass();
                this.otpIdentifier_ = byteString;
                this.bitField1_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasSteam2TicketRequest() {
                return (this.bitField1_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getSteam2TicketRequest() {
                return this.steam2TicketRequest_;
            }

            public Builder setSteam2TicketRequest(boolean z) {
                this.steam2TicketRequest_ = z;
                this.bitField1_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearSteam2TicketRequest() {
                this.bitField1_ &= -9;
                this.steam2TicketRequest_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasSonyPsnTicket() {
                return (this.bitField1_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getSonyPsnTicket() {
                return this.sonyPsnTicket_;
            }

            public Builder setSonyPsnTicket(ByteString byteString) {
                byteString.getClass();
                this.sonyPsnTicket_ = byteString;
                this.bitField1_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearSonyPsnTicket() {
                this.bitField1_ &= -17;
                this.sonyPsnTicket_ = CMsgClientLogon.getDefaultInstance().getSonyPsnTicket();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasSonyPsnServiceId() {
                return (this.bitField1_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getSonyPsnServiceId() {
                Object obj = this.sonyPsnServiceId_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sonyPsnServiceId_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getSonyPsnServiceIdBytes() {
                Object obj = this.sonyPsnServiceId_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sonyPsnServiceId_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSonyPsnServiceId(String str) {
                str.getClass();
                this.sonyPsnServiceId_ = str;
                this.bitField1_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearSonyPsnServiceId() {
                this.sonyPsnServiceId_ = CMsgClientLogon.getDefaultInstance().getSonyPsnServiceId();
                this.bitField1_ &= -33;
                onChanged();
                return this;
            }

            public Builder setSonyPsnServiceIdBytes(ByteString byteString) {
                byteString.getClass();
                this.sonyPsnServiceId_ = byteString;
                this.bitField1_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasCreateNewPsnLinkedAccountIfNeeded() {
                return (this.bitField1_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getCreateNewPsnLinkedAccountIfNeeded() {
                return this.createNewPsnLinkedAccountIfNeeded_;
            }

            public Builder setCreateNewPsnLinkedAccountIfNeeded(boolean z) {
                this.createNewPsnLinkedAccountIfNeeded_ = z;
                this.bitField1_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearCreateNewPsnLinkedAccountIfNeeded() {
                this.bitField1_ &= -65;
                this.createNewPsnLinkedAccountIfNeeded_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasSonyPsnName() {
                return (this.bitField1_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getSonyPsnName() {
                Object obj = this.sonyPsnName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sonyPsnName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getSonyPsnNameBytes() {
                Object obj = this.sonyPsnName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sonyPsnName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSonyPsnName(String str) {
                str.getClass();
                this.sonyPsnName_ = str;
                this.bitField1_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearSonyPsnName() {
                this.sonyPsnName_ = CMsgClientLogon.getDefaultInstance().getSonyPsnName();
                this.bitField1_ &= -129;
                onChanged();
                return this;
            }

            public Builder setSonyPsnNameBytes(ByteString byteString) {
                byteString.getClass();
                this.sonyPsnName_ = byteString;
                this.bitField1_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasGameServerAppId() {
                return (this.bitField1_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getGameServerAppId() {
                return this.gameServerAppId_;
            }

            public Builder setGameServerAppId(int i) {
                this.gameServerAppId_ = i;
                this.bitField1_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearGameServerAppId() {
                this.bitField1_ &= -257;
                this.gameServerAppId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasSteamguardDontRememberComputer() {
                return (this.bitField1_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getSteamguardDontRememberComputer() {
                return this.steamguardDontRememberComputer_;
            }

            public Builder setSteamguardDontRememberComputer(boolean z) {
                this.steamguardDontRememberComputer_ = z;
                this.bitField1_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearSteamguardDontRememberComputer() {
                this.bitField1_ &= -513;
                this.steamguardDontRememberComputer_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasMachineName() {
                return (this.bitField1_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getMachineName() {
                Object obj = this.machineName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.machineName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getMachineNameBytes() {
                Object obj = this.machineName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.machineName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setMachineName(String str) {
                str.getClass();
                this.machineName_ = str;
                this.bitField1_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearMachineName() {
                this.machineName_ = CMsgClientLogon.getDefaultInstance().getMachineName();
                this.bitField1_ &= -1025;
                onChanged();
                return this;
            }

            public Builder setMachineNameBytes(ByteString byteString) {
                byteString.getClass();
                this.machineName_ = byteString;
                this.bitField1_ |= 1024;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasMachineNameUserchosen() {
                return (this.bitField1_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getMachineNameUserchosen() {
                Object obj = this.machineNameUserchosen_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.machineNameUserchosen_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getMachineNameUserchosenBytes() {
                Object obj = this.machineNameUserchosen_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.machineNameUserchosen_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setMachineNameUserchosen(String str) {
                str.getClass();
                this.machineNameUserchosen_ = str;
                this.bitField1_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearMachineNameUserchosen() {
                this.machineNameUserchosen_ = CMsgClientLogon.getDefaultInstance().getMachineNameUserchosen();
                this.bitField1_ &= -2049;
                onChanged();
                return this;
            }

            public Builder setMachineNameUserchosenBytes(ByteString byteString) {
                byteString.getClass();
                this.machineNameUserchosen_ = byteString;
                this.bitField1_ |= 2048;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasCountryOverride() {
                return (this.bitField1_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getCountryOverride() {
                Object obj = this.countryOverride_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.countryOverride_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getCountryOverrideBytes() {
                Object obj = this.countryOverride_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.countryOverride_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCountryOverride(String str) {
                str.getClass();
                this.countryOverride_ = str;
                this.bitField1_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearCountryOverride() {
                this.countryOverride_ = CMsgClientLogon.getDefaultInstance().getCountryOverride();
                this.bitField1_ &= -4097;
                onChanged();
                return this;
            }

            public Builder setCountryOverrideBytes(ByteString byteString) {
                byteString.getClass();
                this.countryOverride_ = byteString;
                this.bitField1_ |= 4096;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasClientInstanceId() {
                return (this.bitField1_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public long getClientInstanceId() {
                return this.clientInstanceId_;
            }

            public Builder setClientInstanceId(long j) {
                this.clientInstanceId_ = j;
                this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceId() {
                this.bitField1_ &= -8193;
                this.clientInstanceId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasTwoFactorCode() {
                return (this.bitField1_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getTwoFactorCode() {
                Object obj = this.twoFactorCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.twoFactorCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getTwoFactorCodeBytes() {
                Object obj = this.twoFactorCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.twoFactorCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTwoFactorCode(String str) {
                str.getClass();
                this.twoFactorCode_ = str;
                this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder clearTwoFactorCode() {
                this.twoFactorCode_ = CMsgClientLogon.getDefaultInstance().getTwoFactorCode();
                this.bitField1_ &= -16385;
                onChanged();
                return this;
            }

            public Builder setTwoFactorCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.twoFactorCode_ = byteString;
                this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasSupportsRateLimitResponse() {
                return (this.bitField1_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getSupportsRateLimitResponse() {
                return this.supportsRateLimitResponse_;
            }

            public Builder setSupportsRateLimitResponse(boolean z) {
                this.supportsRateLimitResponse_ = z;
                this.bitField1_ |= 32768;
                onChanged();
                return this;
            }

            public Builder clearSupportsRateLimitResponse() {
                this.bitField1_ &= -32769;
                this.supportsRateLimitResponse_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasWebLogonNonce() {
                return (this.bitField1_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getWebLogonNonce() {
                Object obj = this.webLogonNonce_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.webLogonNonce_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getWebLogonNonceBytes() {
                Object obj = this.webLogonNonce_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.webLogonNonce_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setWebLogonNonce(String str) {
                str.getClass();
                this.webLogonNonce_ = str;
                this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder clearWebLogonNonce() {
                this.webLogonNonce_ = CMsgClientLogon.getDefaultInstance().getWebLogonNonce();
                this.bitField1_ &= -65537;
                onChanged();
                return this;
            }

            public Builder setWebLogonNonceBytes(ByteString byteString) {
                byteString.getClass();
                this.webLogonNonce_ = byteString;
                this.bitField1_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasPriorityReason() {
                return (this.bitField1_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getPriorityReason() {
                return this.priorityReason_;
            }

            public Builder setPriorityReason(int i) {
                this.priorityReason_ = i;
                this.bitField1_ |= 131072;
                onChanged();
                return this;
            }

            public Builder clearPriorityReason() {
                this.bitField1_ &= -131073;
                this.priorityReason_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasEmbeddedClientSecret() {
                return (this.bitField1_ & 262144) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public CMsgClientSecret getEmbeddedClientSecret() {
                SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder = this.embeddedClientSecretBuilder_;
                if (singleFieldBuilder == null) {
                    CMsgClientSecret cMsgClientSecret = this.embeddedClientSecret_;
                    return cMsgClientSecret == null ? CMsgClientSecret.getDefaultInstance() : cMsgClientSecret;
                }
                return (CMsgClientSecret) singleFieldBuilder.getMessage();
            }

            public Builder setEmbeddedClientSecret(CMsgClientSecret cMsgClientSecret) {
                SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder = this.embeddedClientSecretBuilder_;
                if (singleFieldBuilder == null) {
                    cMsgClientSecret.getClass();
                    this.embeddedClientSecret_ = cMsgClientSecret;
                } else {
                    singleFieldBuilder.setMessage(cMsgClientSecret);
                }
                this.bitField1_ |= 262144;
                onChanged();
                return this;
            }

            public Builder setEmbeddedClientSecret(CMsgClientSecret.Builder builder) {
                SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder = this.embeddedClientSecretBuilder_;
                if (singleFieldBuilder == null) {
                    this.embeddedClientSecret_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField1_ |= 262144;
                onChanged();
                return this;
            }

            public Builder mergeEmbeddedClientSecret(CMsgClientSecret cMsgClientSecret) {
                CMsgClientSecret cMsgClientSecret2;
                SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder = this.embeddedClientSecretBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField1_ & 262144) != 0 && (cMsgClientSecret2 = this.embeddedClientSecret_) != null && cMsgClientSecret2 != CMsgClientSecret.getDefaultInstance()) {
                        getEmbeddedClientSecretBuilder().mergeFrom(cMsgClientSecret);
                    } else {
                        this.embeddedClientSecret_ = cMsgClientSecret;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cMsgClientSecret);
                }
                if (this.embeddedClientSecret_ != null) {
                    this.bitField1_ |= 262144;
                    onChanged();
                }
                return this;
            }

            public Builder clearEmbeddedClientSecret() {
                this.bitField1_ &= -262145;
                this.embeddedClientSecret_ = null;
                SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder = this.embeddedClientSecretBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.embeddedClientSecretBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CMsgClientSecret.Builder getEmbeddedClientSecretBuilder() {
                this.bitField1_ |= 262144;
                onChanged();
                return (CMsgClientSecret.Builder) internalGetEmbeddedClientSecretFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public CMsgClientSecretOrBuilder getEmbeddedClientSecretOrBuilder() {
                SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> singleFieldBuilder = this.embeddedClientSecretBuilder_;
                if (singleFieldBuilder != null) {
                    return (CMsgClientSecretOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CMsgClientSecret cMsgClientSecret = this.embeddedClientSecret_;
                return cMsgClientSecret == null ? CMsgClientSecret.getDefaultInstance() : cMsgClientSecret;
            }

            private SingleFieldBuilder<CMsgClientSecret, CMsgClientSecret.Builder, CMsgClientSecretOrBuilder> internalGetEmbeddedClientSecretFieldBuilder() {
                if (this.embeddedClientSecretBuilder_ == null) {
                    this.embeddedClientSecretBuilder_ = new SingleFieldBuilder<>(getEmbeddedClientSecret(), getParentForChildren(), isClean());
                    this.embeddedClientSecret_ = null;
                }
                return this.embeddedClientSecretBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasDisablePartnerAutogrants() {
                return (this.bitField1_ & 524288) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getDisablePartnerAutogrants() {
                return this.disablePartnerAutogrants_;
            }

            public Builder setDisablePartnerAutogrants(boolean z) {
                this.disablePartnerAutogrants_ = z;
                this.bitField1_ |= 524288;
                onChanged();
                return this;
            }

            public Builder clearDisablePartnerAutogrants() {
                this.bitField1_ &= -524289;
                this.disablePartnerAutogrants_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasAccessToken() {
                return (this.bitField1_ & 1048576) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public String getAccessToken() {
                Object obj = this.accessToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.accessToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public ByteString getAccessTokenBytes() {
                Object obj = this.accessToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.accessToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAccessToken(String str) {
                str.getClass();
                this.accessToken_ = str;
                this.bitField1_ |= 1048576;
                onChanged();
                return this;
            }

            public Builder clearAccessToken() {
                this.accessToken_ = CMsgClientLogon.getDefaultInstance().getAccessToken();
                this.bitField1_ &= -1048577;
                onChanged();
                return this;
            }

            public Builder setAccessTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.accessToken_ = byteString;
                this.bitField1_ |= 1048576;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasIsChromeOs() {
                return (this.bitField1_ & 2097152) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getIsChromeOs() {
                return this.isChromeOs_;
            }

            public Builder setIsChromeOs(boolean z) {
                this.isChromeOs_ = z;
                this.bitField1_ |= 2097152;
                onChanged();
                return this;
            }

            public Builder clearIsChromeOs() {
                this.bitField1_ &= -2097153;
                this.isChromeOs_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasIsSteamBoxDeprecated() {
                return (this.bitField1_ & 4194304) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getIsSteamBoxDeprecated() {
                return this.isSteamBoxDeprecated_;
            }

            public Builder setIsSteamBoxDeprecated(boolean z) {
                this.isSteamBoxDeprecated_ = z;
                this.bitField1_ |= 4194304;
                onChanged();
                return this;
            }

            public Builder clearIsSteamBoxDeprecated() {
                this.bitField1_ &= -4194305;
                this.isSteamBoxDeprecated_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasIsSteamDeckDeprecated() {
                return (this.bitField1_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getIsSteamDeckDeprecated() {
                return this.isSteamDeckDeprecated_;
            }

            public Builder setIsSteamDeckDeprecated(boolean z) {
                this.isSteamDeckDeprecated_ = z;
                this.bitField1_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                onChanged();
                return this;
            }

            public Builder clearIsSteamDeckDeprecated() {
                this.bitField1_ &= -8388609;
                this.isSteamDeckDeprecated_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasIsTeslaDeprecated() {
                return (this.bitField1_ & 16777216) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean getIsTeslaDeprecated() {
                return this.isTeslaDeprecated_;
            }

            public Builder setIsTeslaDeprecated(boolean z) {
                this.isTeslaDeprecated_ = z;
                this.bitField1_ |= 16777216;
                onChanged();
                return this;
            }

            public Builder clearIsTeslaDeprecated() {
                this.bitField1_ &= -16777217;
                this.isTeslaDeprecated_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public boolean hasGamingDeviceType() {
                return (this.bitField1_ & 33554432) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonOrBuilder
            public int getGamingDeviceType() {
                return this.gamingDeviceType_;
            }

            public Builder setGamingDeviceType(int i) {
                this.gamingDeviceType_ = i;
                this.bitField1_ |= 33554432;
                onChanged();
                return this;
            }

            public Builder clearGamingDeviceType() {
                this.bitField1_ &= -33554433;
                this.gamingDeviceType_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgClientLogon getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLogon> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLogon> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLogon getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientLogonResponse extends GeneratedMessage implements CMsgClientLogonResponseOrBuilder {
        public static final int ACCOUNT_FLAGS_FIELD_NUMBER = 6;
        public static final int AGREEMENT_SESSION_URL_FIELD_NUMBER = 29;
        public static final int CELL_ID_FIELD_NUMBER = 7;
        public static final int CELL_ID_PING_THRESHOLD_FIELD_NUMBER = 12;
        public static final int CLIENT_INSTANCE_ID_FIELD_NUMBER = 27;
        public static final int CLIENT_SUPPLIED_STEAMID_FIELD_NUMBER = 20;
        public static final int COUNT_DISCONNECTS_TO_MIGRATE_FIELD_NUMBER = 25;
        public static final int COUNT_LOGINFAILURES_TO_MIGRATE_FIELD_NUMBER = 24;
        private static final CMsgClientLogonResponse DEFAULT_INSTANCE;
        public static final int DEPRECATED_PUBLIC_IP_FIELD_NUMBER = 4;
        public static final int DEPRECATED_USE_PICS_FIELD_NUMBER = 13;
        public static final int EMAIL_DOMAIN_FIELD_NUMBER = 8;
        public static final int ERESULT_EXTENDED_FIELD_NUMBER = 10;
        public static final int ERESULT_FIELD_NUMBER = 1;
        public static final int FAMILY_GROUP_ID_FIELD_NUMBER = 31;
        public static final int FORCE_CLIENT_UPDATE_CHECK_FIELD_NUMBER = 28;
        public static final int HEARTBEAT_SECONDS_FIELD_NUMBER = 3;
        public static final int IP_COUNTRY_CODE_FIELD_NUMBER = 21;
        public static final int LEGACY_OUT_OF_GAME_HEARTBEAT_SECONDS_FIELD_NUMBER = 2;
        public static final int OGS_DATA_REPORT_TIME_WINDOW_FIELD_NUMBER = 26;
        public static final int PARENTAL_SETTINGS_FIELD_NUMBER = 22;
        public static final int PARENTAL_SETTING_SIGNATURE_FIELD_NUMBER = 23;
        private static final Parser<CMsgClientLogonResponse> PARSER;
        public static final int PUBLIC_IP_FIELD_NUMBER = 15;
        public static final int RTIME32_SERVER_TIME_FIELD_NUMBER = 5;
        public static final int STEAM2_TICKET_FIELD_NUMBER = 9;
        public static final int TOKEN_ID_FIELD_NUMBER = 30;
        public static final int USER_COUNTRY_FIELD_NUMBER = 16;
        public static final int VANITY_URL_FIELD_NUMBER = 14;
        private static final long serialVersionUID = 0;
        private int accountFlags_;
        private volatile Object agreementSessionUrl_;
        private int bitField0_;
        private int cellIdPingThreshold_;
        private int cellId_;
        private long clientInstanceId_;
        private long clientSuppliedSteamid_;
        private int countDisconnectsToMigrate_;
        private int countLoginfailuresToMigrate_;
        private int deprecatedPublicIp_;
        private boolean deprecatedUsePics_;
        private volatile Object emailDomain_;
        private int eresultExtended_;
        private int eresult_;
        private long familyGroupId_;
        private boolean forceClientUpdateCheck_;
        private int heartbeatSeconds_;
        private volatile Object ipCountryCode_;
        private int legacyOutOfGameHeartbeatSeconds_;
        private byte memoizedIsInitialized;
        private int ogsDataReportTimeWindow_;
        private ByteString parentalSettingSignature_;
        private ByteString parentalSettings_;
        private SteammessagesBase.CMsgIPAddress publicIp_;
        private int rtime32ServerTime_;
        private ByteString steam2Ticket_;
        private long tokenId_;
        private volatile Object userCountry_;
        private volatile Object vanityUrl_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLogonResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLogonResponse();
            PARSER = new AbstractParser<CMsgClientLogonResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLogonResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLogonResponse.newBuilder();
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

        private CMsgClientLogonResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.legacyOutOfGameHeartbeatSeconds_ = 0;
            this.heartbeatSeconds_ = 0;
            this.deprecatedPublicIp_ = 0;
            this.rtime32ServerTime_ = 0;
            this.accountFlags_ = 0;
            this.cellId_ = 0;
            this.emailDomain_ = "";
            ByteString byteString = ByteString.EMPTY;
            this.steam2Ticket_ = byteString;
            this.eresultExtended_ = 0;
            this.cellIdPingThreshold_ = 0;
            this.deprecatedUsePics_ = false;
            this.vanityUrl_ = "";
            this.userCountry_ = "";
            this.clientSuppliedSteamid_ = 0L;
            this.ipCountryCode_ = "";
            this.parentalSettings_ = byteString;
            this.parentalSettingSignature_ = byteString;
            this.countLoginfailuresToMigrate_ = 0;
            this.countDisconnectsToMigrate_ = 0;
            this.ogsDataReportTimeWindow_ = 0;
            this.clientInstanceId_ = 0L;
            this.forceClientUpdateCheck_ = false;
            this.agreementSessionUrl_ = "";
            this.tokenId_ = 0L;
            this.familyGroupId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLogonResponse() {
            this.eresult_ = 2;
            this.legacyOutOfGameHeartbeatSeconds_ = 0;
            this.heartbeatSeconds_ = 0;
            this.deprecatedPublicIp_ = 0;
            this.rtime32ServerTime_ = 0;
            this.accountFlags_ = 0;
            this.cellId_ = 0;
            this.emailDomain_ = "";
            ByteString byteString = ByteString.EMPTY;
            this.steam2Ticket_ = byteString;
            this.eresultExtended_ = 0;
            this.cellIdPingThreshold_ = 0;
            this.deprecatedUsePics_ = false;
            this.vanityUrl_ = "";
            this.userCountry_ = "";
            this.clientSuppliedSteamid_ = 0L;
            this.ipCountryCode_ = "";
            this.parentalSettings_ = byteString;
            this.parentalSettingSignature_ = byteString;
            this.countLoginfailuresToMigrate_ = 0;
            this.countDisconnectsToMigrate_ = 0;
            this.ogsDataReportTimeWindow_ = 0;
            this.clientInstanceId_ = 0L;
            this.forceClientUpdateCheck_ = false;
            this.agreementSessionUrl_ = "";
            this.tokenId_ = 0L;
            this.familyGroupId_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.emailDomain_ = "";
            this.steam2Ticket_ = byteString;
            this.vanityUrl_ = "";
            this.userCountry_ = "";
            this.ipCountryCode_ = "";
            this.parentalSettings_ = byteString;
            this.parentalSettingSignature_ = byteString;
            this.agreementSessionUrl_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLogonResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLogonResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLogonResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasLegacyOutOfGameHeartbeatSeconds() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getLegacyOutOfGameHeartbeatSeconds() {
            return this.legacyOutOfGameHeartbeatSeconds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasHeartbeatSeconds() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getHeartbeatSeconds() {
            return this.heartbeatSeconds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasDeprecatedPublicIp() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getDeprecatedPublicIp() {
            return this.deprecatedPublicIp_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasRtime32ServerTime() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getRtime32ServerTime() {
            return this.rtime32ServerTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasAccountFlags() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getAccountFlags() {
            return this.accountFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasCellId() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getCellId() {
            return this.cellId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasEmailDomain() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public String getEmailDomain() {
            Object obj = this.emailDomain_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.emailDomain_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getEmailDomainBytes() {
            Object obj = this.emailDomain_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.emailDomain_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasSteam2Ticket() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getSteam2Ticket() {
            return this.steam2Ticket_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasEresultExtended() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getEresultExtended() {
            return this.eresultExtended_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasCellIdPingThreshold() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getCellIdPingThreshold() {
            return this.cellIdPingThreshold_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasDeprecatedUsePics() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean getDeprecatedUsePics() {
            return this.deprecatedUsePics_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasVanityUrl() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getVanityUrlBytes() {
            Object obj = this.vanityUrl_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vanityUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasPublicIp() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public SteammessagesBase.CMsgIPAddress getPublicIp() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public SteammessagesBase.CMsgIPAddressOrBuilder getPublicIpOrBuilder() {
            SteammessagesBase.CMsgIPAddress cMsgIPAddress = this.publicIp_;
            return cMsgIPAddress == null ? SteammessagesBase.CMsgIPAddress.getDefaultInstance() : cMsgIPAddress;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasUserCountry() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public String getUserCountry() {
            Object obj = this.userCountry_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userCountry_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getUserCountryBytes() {
            Object obj = this.userCountry_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userCountry_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasClientSuppliedSteamid() {
            return (this.bitField0_ & 32768) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public long getClientSuppliedSteamid() {
            return this.clientSuppliedSteamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasIpCountryCode() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public String getIpCountryCode() {
            Object obj = this.ipCountryCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipCountryCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getIpCountryCodeBytes() {
            Object obj = this.ipCountryCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipCountryCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasParentalSettings() {
            return (this.bitField0_ & 131072) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getParentalSettings() {
            return this.parentalSettings_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasParentalSettingSignature() {
            return (this.bitField0_ & 262144) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getParentalSettingSignature() {
            return this.parentalSettingSignature_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasCountLoginfailuresToMigrate() {
            return (this.bitField0_ & 524288) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getCountLoginfailuresToMigrate() {
            return this.countLoginfailuresToMigrate_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasCountDisconnectsToMigrate() {
            return (this.bitField0_ & 1048576) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getCountDisconnectsToMigrate() {
            return this.countDisconnectsToMigrate_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasOgsDataReportTimeWindow() {
            return (this.bitField0_ & 2097152) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public int getOgsDataReportTimeWindow() {
            return this.ogsDataReportTimeWindow_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasClientInstanceId() {
            return (this.bitField0_ & 4194304) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public long getClientInstanceId() {
            return this.clientInstanceId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasForceClientUpdateCheck() {
            return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean getForceClientUpdateCheck() {
            return this.forceClientUpdateCheck_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasAgreementSessionUrl() {
            return (this.bitField0_ & 16777216) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public String getAgreementSessionUrl() {
            Object obj = this.agreementSessionUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.agreementSessionUrl_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public ByteString getAgreementSessionUrlBytes() {
            Object obj = this.agreementSessionUrl_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.agreementSessionUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasTokenId() {
            return (this.bitField0_ & 33554432) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public long getTokenId() {
            return this.tokenId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public boolean hasFamilyGroupId() {
            return (this.bitField0_ & 67108864) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
        public long getFamilyGroupId() {
            return this.familyGroupId_;
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
                codedOutputStream.writeInt32(2, this.legacyOutOfGameHeartbeatSeconds_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.heartbeatSeconds_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.deprecatedPublicIp_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed32(5, this.rtime32ServerTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.accountFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeUInt32(7, this.cellId_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 8, this.emailDomain_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeBytes(9, this.steam2Ticket_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeInt32(10, this.eresultExtended_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeUInt32(12, this.cellIdPingThreshold_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeBool(13, this.deprecatedUsePics_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 14, this.vanityUrl_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                codedOutputStream.writeMessage(15, getPublicIp());
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 16, this.userCountry_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                codedOutputStream.writeFixed64(20, this.clientSuppliedSteamid_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 21, this.ipCountryCode_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                codedOutputStream.writeBytes(22, this.parentalSettings_);
            }
            if ((this.bitField0_ & 262144) != 0) {
                codedOutputStream.writeBytes(23, this.parentalSettingSignature_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                codedOutputStream.writeInt32(24, this.countLoginfailuresToMigrate_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                codedOutputStream.writeInt32(25, this.countDisconnectsToMigrate_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                codedOutputStream.writeInt32(26, this.ogsDataReportTimeWindow_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                codedOutputStream.writeUInt64(27, this.clientInstanceId_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                codedOutputStream.writeBool(28, this.forceClientUpdateCheck_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 29, this.agreementSessionUrl_);
            }
            if ((this.bitField0_ & 33554432) != 0) {
                codedOutputStream.writeUInt64(30, this.tokenId_);
            }
            if ((this.bitField0_ & 67108864) != 0) {
                codedOutputStream.writeUInt64(31, this.familyGroupId_);
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
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.legacyOutOfGameHeartbeatSeconds_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(3, this.heartbeatSeconds_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(4, this.deprecatedPublicIp_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeInt32Size += CodedOutputStream.computeFixed32Size(5, this.rtime32ServerTime_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(6, this.accountFlags_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(7, this.cellId_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(8, this.emailDomain_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBytesSize(9, this.steam2Ticket_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(10, this.eresultExtended_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(12, this.cellIdPingThreshold_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBoolSize(13, this.deprecatedUsePics_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(14, this.vanityUrl_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(15, getPublicIp());
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(16, this.userCountry_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                iComputeInt32Size += CodedOutputStream.computeFixed64Size(20, this.clientSuppliedSteamid_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(21, this.ipCountryCode_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBytesSize(22, this.parentalSettings_);
            }
            if ((this.bitField0_ & 262144) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBytesSize(23, this.parentalSettingSignature_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(24, this.countLoginfailuresToMigrate_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(25, this.countDisconnectsToMigrate_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(26, this.ogsDataReportTimeWindow_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt64Size(27, this.clientInstanceId_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                iComputeInt32Size += CodedOutputStream.computeBoolSize(28, this.forceClientUpdateCheck_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(29, this.agreementSessionUrl_);
            }
            if ((this.bitField0_ & 33554432) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt64Size(30, this.tokenId_);
            }
            if ((this.bitField0_ & 67108864) != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt64Size(31, this.familyGroupId_);
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
            if (!(obj instanceof CMsgClientLogonResponse)) {
                return super.equals(obj);
            }
            CMsgClientLogonResponse cMsgClientLogonResponse = (CMsgClientLogonResponse) obj;
            if (hasEresult() != cMsgClientLogonResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientLogonResponse.getEresult()) || hasLegacyOutOfGameHeartbeatSeconds() != cMsgClientLogonResponse.hasLegacyOutOfGameHeartbeatSeconds()) {
                return false;
            }
            if ((hasLegacyOutOfGameHeartbeatSeconds() && getLegacyOutOfGameHeartbeatSeconds() != cMsgClientLogonResponse.getLegacyOutOfGameHeartbeatSeconds()) || hasHeartbeatSeconds() != cMsgClientLogonResponse.hasHeartbeatSeconds()) {
                return false;
            }
            if ((hasHeartbeatSeconds() && getHeartbeatSeconds() != cMsgClientLogonResponse.getHeartbeatSeconds()) || hasDeprecatedPublicIp() != cMsgClientLogonResponse.hasDeprecatedPublicIp()) {
                return false;
            }
            if ((hasDeprecatedPublicIp() && getDeprecatedPublicIp() != cMsgClientLogonResponse.getDeprecatedPublicIp()) || hasRtime32ServerTime() != cMsgClientLogonResponse.hasRtime32ServerTime()) {
                return false;
            }
            if ((hasRtime32ServerTime() && getRtime32ServerTime() != cMsgClientLogonResponse.getRtime32ServerTime()) || hasAccountFlags() != cMsgClientLogonResponse.hasAccountFlags()) {
                return false;
            }
            if ((hasAccountFlags() && getAccountFlags() != cMsgClientLogonResponse.getAccountFlags()) || hasCellId() != cMsgClientLogonResponse.hasCellId()) {
                return false;
            }
            if ((hasCellId() && getCellId() != cMsgClientLogonResponse.getCellId()) || hasEmailDomain() != cMsgClientLogonResponse.hasEmailDomain()) {
                return false;
            }
            if ((hasEmailDomain() && !getEmailDomain().equals(cMsgClientLogonResponse.getEmailDomain())) || hasSteam2Ticket() != cMsgClientLogonResponse.hasSteam2Ticket()) {
                return false;
            }
            if ((hasSteam2Ticket() && !getSteam2Ticket().equals(cMsgClientLogonResponse.getSteam2Ticket())) || hasEresultExtended() != cMsgClientLogonResponse.hasEresultExtended()) {
                return false;
            }
            if ((hasEresultExtended() && getEresultExtended() != cMsgClientLogonResponse.getEresultExtended()) || hasCellIdPingThreshold() != cMsgClientLogonResponse.hasCellIdPingThreshold()) {
                return false;
            }
            if ((hasCellIdPingThreshold() && getCellIdPingThreshold() != cMsgClientLogonResponse.getCellIdPingThreshold()) || hasDeprecatedUsePics() != cMsgClientLogonResponse.hasDeprecatedUsePics()) {
                return false;
            }
            if ((hasDeprecatedUsePics() && getDeprecatedUsePics() != cMsgClientLogonResponse.getDeprecatedUsePics()) || hasVanityUrl() != cMsgClientLogonResponse.hasVanityUrl()) {
                return false;
            }
            if ((hasVanityUrl() && !getVanityUrl().equals(cMsgClientLogonResponse.getVanityUrl())) || hasPublicIp() != cMsgClientLogonResponse.hasPublicIp()) {
                return false;
            }
            if ((hasPublicIp() && !getPublicIp().equals(cMsgClientLogonResponse.getPublicIp())) || hasUserCountry() != cMsgClientLogonResponse.hasUserCountry()) {
                return false;
            }
            if ((hasUserCountry() && !getUserCountry().equals(cMsgClientLogonResponse.getUserCountry())) || hasClientSuppliedSteamid() != cMsgClientLogonResponse.hasClientSuppliedSteamid()) {
                return false;
            }
            if ((hasClientSuppliedSteamid() && getClientSuppliedSteamid() != cMsgClientLogonResponse.getClientSuppliedSteamid()) || hasIpCountryCode() != cMsgClientLogonResponse.hasIpCountryCode()) {
                return false;
            }
            if ((hasIpCountryCode() && !getIpCountryCode().equals(cMsgClientLogonResponse.getIpCountryCode())) || hasParentalSettings() != cMsgClientLogonResponse.hasParentalSettings()) {
                return false;
            }
            if ((hasParentalSettings() && !getParentalSettings().equals(cMsgClientLogonResponse.getParentalSettings())) || hasParentalSettingSignature() != cMsgClientLogonResponse.hasParentalSettingSignature()) {
                return false;
            }
            if ((hasParentalSettingSignature() && !getParentalSettingSignature().equals(cMsgClientLogonResponse.getParentalSettingSignature())) || hasCountLoginfailuresToMigrate() != cMsgClientLogonResponse.hasCountLoginfailuresToMigrate()) {
                return false;
            }
            if ((hasCountLoginfailuresToMigrate() && getCountLoginfailuresToMigrate() != cMsgClientLogonResponse.getCountLoginfailuresToMigrate()) || hasCountDisconnectsToMigrate() != cMsgClientLogonResponse.hasCountDisconnectsToMigrate()) {
                return false;
            }
            if ((hasCountDisconnectsToMigrate() && getCountDisconnectsToMigrate() != cMsgClientLogonResponse.getCountDisconnectsToMigrate()) || hasOgsDataReportTimeWindow() != cMsgClientLogonResponse.hasOgsDataReportTimeWindow()) {
                return false;
            }
            if ((hasOgsDataReportTimeWindow() && getOgsDataReportTimeWindow() != cMsgClientLogonResponse.getOgsDataReportTimeWindow()) || hasClientInstanceId() != cMsgClientLogonResponse.hasClientInstanceId()) {
                return false;
            }
            if ((hasClientInstanceId() && getClientInstanceId() != cMsgClientLogonResponse.getClientInstanceId()) || hasForceClientUpdateCheck() != cMsgClientLogonResponse.hasForceClientUpdateCheck()) {
                return false;
            }
            if ((hasForceClientUpdateCheck() && getForceClientUpdateCheck() != cMsgClientLogonResponse.getForceClientUpdateCheck()) || hasAgreementSessionUrl() != cMsgClientLogonResponse.hasAgreementSessionUrl()) {
                return false;
            }
            if ((hasAgreementSessionUrl() && !getAgreementSessionUrl().equals(cMsgClientLogonResponse.getAgreementSessionUrl())) || hasTokenId() != cMsgClientLogonResponse.hasTokenId()) {
                return false;
            }
            if ((!hasTokenId() || getTokenId() == cMsgClientLogonResponse.getTokenId()) && hasFamilyGroupId() == cMsgClientLogonResponse.hasFamilyGroupId()) {
                return (!hasFamilyGroupId() || getFamilyGroupId() == cMsgClientLogonResponse.getFamilyGroupId()) && getUnknownFields().equals(cMsgClientLogonResponse.getUnknownFields());
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
            if (hasLegacyOutOfGameHeartbeatSeconds()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getLegacyOutOfGameHeartbeatSeconds();
            }
            if (hasHeartbeatSeconds()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getHeartbeatSeconds();
            }
            if (hasDeprecatedPublicIp()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getDeprecatedPublicIp();
            }
            if (hasRtime32ServerTime()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getRtime32ServerTime();
            }
            if (hasAccountFlags()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getAccountFlags();
            }
            if (hasCellId()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getCellId();
            }
            if (hasEmailDomain()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getEmailDomain().hashCode();
            }
            if (hasSteam2Ticket()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getSteam2Ticket().hashCode();
            }
            if (hasEresultExtended()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + getEresultExtended();
            }
            if (hasCellIdPingThreshold()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + getCellIdPingThreshold();
            }
            if (hasDeprecatedUsePics()) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + Internal.hashBoolean(getDeprecatedUsePics());
            }
            if (hasVanityUrl()) {
                iHashCode = (((iHashCode * 37) + 14) * 53) + getVanityUrl().hashCode();
            }
            if (hasPublicIp()) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getPublicIp().hashCode();
            }
            if (hasUserCountry()) {
                iHashCode = (((iHashCode * 37) + 16) * 53) + getUserCountry().hashCode();
            }
            if (hasClientSuppliedSteamid()) {
                iHashCode = (((iHashCode * 37) + 20) * 53) + Internal.hashLong(getClientSuppliedSteamid());
            }
            if (hasIpCountryCode()) {
                iHashCode = (((iHashCode * 37) + 21) * 53) + getIpCountryCode().hashCode();
            }
            if (hasParentalSettings()) {
                iHashCode = (((iHashCode * 37) + 22) * 53) + getParentalSettings().hashCode();
            }
            if (hasParentalSettingSignature()) {
                iHashCode = (((iHashCode * 37) + 23) * 53) + getParentalSettingSignature().hashCode();
            }
            if (hasCountLoginfailuresToMigrate()) {
                iHashCode = (((iHashCode * 37) + 24) * 53) + getCountLoginfailuresToMigrate();
            }
            if (hasCountDisconnectsToMigrate()) {
                iHashCode = (((iHashCode * 37) + 25) * 53) + getCountDisconnectsToMigrate();
            }
            if (hasOgsDataReportTimeWindow()) {
                iHashCode = (((iHashCode * 37) + 26) * 53) + getOgsDataReportTimeWindow();
            }
            if (hasClientInstanceId()) {
                iHashCode = (((iHashCode * 37) + 27) * 53) + Internal.hashLong(getClientInstanceId());
            }
            if (hasForceClientUpdateCheck()) {
                iHashCode = (((iHashCode * 37) + 28) * 53) + Internal.hashBoolean(getForceClientUpdateCheck());
            }
            if (hasAgreementSessionUrl()) {
                iHashCode = (((iHashCode * 37) + 29) * 53) + getAgreementSessionUrl().hashCode();
            }
            if (hasTokenId()) {
                iHashCode = (((iHashCode * 37) + 30) * 53) + Internal.hashLong(getTokenId());
            }
            if (hasFamilyGroupId()) {
                iHashCode = (((iHashCode * 37) + 31) * 53) + Internal.hashLong(getFamilyGroupId());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientLogonResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLogonResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLogonResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLogonResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLogonResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLogonResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLogonResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLogonResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLogonResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogonResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLogonResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLogonResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLogonResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogonResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLogonResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLogonResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLogonResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogonResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLogonResponse cMsgClientLogonResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLogonResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientLogonResponseOrBuilder {
            private int accountFlags_;
            private Object agreementSessionUrl_;
            private int bitField0_;
            private int cellIdPingThreshold_;
            private int cellId_;
            private long clientInstanceId_;
            private long clientSuppliedSteamid_;
            private int countDisconnectsToMigrate_;
            private int countLoginfailuresToMigrate_;
            private int deprecatedPublicIp_;
            private boolean deprecatedUsePics_;
            private Object emailDomain_;
            private int eresultExtended_;
            private int eresult_;
            private long familyGroupId_;
            private boolean forceClientUpdateCheck_;
            private int heartbeatSeconds_;
            private Object ipCountryCode_;
            private int legacyOutOfGameHeartbeatSeconds_;
            private int ogsDataReportTimeWindow_;
            private ByteString parentalSettingSignature_;
            private ByteString parentalSettings_;
            private SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> publicIpBuilder_;
            private SteammessagesBase.CMsgIPAddress publicIp_;
            private int rtime32ServerTime_;
            private ByteString steam2Ticket_;
            private long tokenId_;
            private Object userCountry_;
            private Object vanityUrl_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogonResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogonResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLogonResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.emailDomain_ = "";
                ByteString byteString = ByteString.EMPTY;
                this.steam2Ticket_ = byteString;
                this.vanityUrl_ = "";
                this.userCountry_ = "";
                this.ipCountryCode_ = "";
                this.parentalSettings_ = byteString;
                this.parentalSettingSignature_ = byteString;
                this.agreementSessionUrl_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.emailDomain_ = "";
                ByteString byteString = ByteString.EMPTY;
                this.steam2Ticket_ = byteString;
                this.vanityUrl_ = "";
                this.userCountry_ = "";
                this.ipCountryCode_ = "";
                this.parentalSettings_ = byteString;
                this.parentalSettingSignature_ = byteString;
                this.agreementSessionUrl_ = "";
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
                this.eresult_ = 2;
                this.legacyOutOfGameHeartbeatSeconds_ = 0;
                this.heartbeatSeconds_ = 0;
                this.deprecatedPublicIp_ = 0;
                this.rtime32ServerTime_ = 0;
                this.accountFlags_ = 0;
                this.cellId_ = 0;
                this.emailDomain_ = "";
                ByteString byteString = ByteString.EMPTY;
                this.steam2Ticket_ = byteString;
                this.eresultExtended_ = 0;
                this.cellIdPingThreshold_ = 0;
                this.deprecatedUsePics_ = false;
                this.vanityUrl_ = "";
                this.publicIp_ = null;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.publicIpBuilder_ = null;
                }
                this.userCountry_ = "";
                this.clientSuppliedSteamid_ = 0L;
                this.ipCountryCode_ = "";
                this.parentalSettings_ = byteString;
                this.parentalSettingSignature_ = byteString;
                this.countLoginfailuresToMigrate_ = 0;
                this.countDisconnectsToMigrate_ = 0;
                this.ogsDataReportTimeWindow_ = 0;
                this.clientInstanceId_ = 0L;
                this.forceClientUpdateCheck_ = false;
                this.agreementSessionUrl_ = "";
                this.tokenId_ = 0L;
                this.familyGroupId_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogonResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLogonResponse getDefaultInstanceForType() {
                return CMsgClientLogonResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLogonResponse build() {
                CMsgClientLogonResponse cMsgClientLogonResponseBuildPartial = buildPartial();
                if (cMsgClientLogonResponseBuildPartial.isInitialized()) {
                    return cMsgClientLogonResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLogonResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLogonResponse buildPartial() {
                CMsgClientLogonResponse cMsgClientLogonResponse = new CMsgClientLogonResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientLogonResponse);
                }
                onBuilt();
                return cMsgClientLogonResponse;
            }

            private void buildPartial0(CMsgClientLogonResponse cMsgClientLogonResponse) {
                int i;
                SteammessagesBase.CMsgIPAddress cMsgIPAddress;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientLogonResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientLogonResponse.legacyOutOfGameHeartbeatSeconds_ = this.legacyOutOfGameHeartbeatSeconds_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientLogonResponse.heartbeatSeconds_ = this.heartbeatSeconds_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientLogonResponse.deprecatedPublicIp_ = this.deprecatedPublicIp_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientLogonResponse.rtime32ServerTime_ = this.rtime32ServerTime_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientLogonResponse.accountFlags_ = this.accountFlags_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientLogonResponse.cellId_ = this.cellId_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientLogonResponse.emailDomain_ = this.emailDomain_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgClientLogonResponse.steam2Ticket_ = this.steam2Ticket_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgClientLogonResponse.eresultExtended_ = this.eresultExtended_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cMsgClientLogonResponse.cellIdPingThreshold_ = this.cellIdPingThreshold_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cMsgClientLogonResponse.deprecatedUsePics_ = this.deprecatedUsePics_;
                    i |= 2048;
                }
                if ((i2 & 4096) != 0) {
                    cMsgClientLogonResponse.vanityUrl_ = this.vanityUrl_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                    if (singleFieldBuilder == null) {
                        cMsgIPAddress = this.publicIp_;
                    } else {
                        cMsgIPAddress = (SteammessagesBase.CMsgIPAddress) singleFieldBuilder.build();
                    }
                    cMsgClientLogonResponse.publicIp_ = cMsgIPAddress;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    cMsgClientLogonResponse.userCountry_ = this.userCountry_;
                    i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                }
                if ((i2 & 32768) != 0) {
                    cMsgClientLogonResponse.clientSuppliedSteamid_ = this.clientSuppliedSteamid_;
                    i |= 32768;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    cMsgClientLogonResponse.ipCountryCode_ = this.ipCountryCode_;
                    i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                }
                if ((i2 & 131072) != 0) {
                    cMsgClientLogonResponse.parentalSettings_ = this.parentalSettings_;
                    i |= 131072;
                }
                if ((i2 & 262144) != 0) {
                    cMsgClientLogonResponse.parentalSettingSignature_ = this.parentalSettingSignature_;
                    i |= 262144;
                }
                if ((i2 & 524288) != 0) {
                    cMsgClientLogonResponse.countLoginfailuresToMigrate_ = this.countLoginfailuresToMigrate_;
                    i |= 524288;
                }
                if ((i2 & 1048576) != 0) {
                    cMsgClientLogonResponse.countDisconnectsToMigrate_ = this.countDisconnectsToMigrate_;
                    i |= 1048576;
                }
                if ((i2 & 2097152) != 0) {
                    cMsgClientLogonResponse.ogsDataReportTimeWindow_ = this.ogsDataReportTimeWindow_;
                    i |= 2097152;
                }
                if ((4194304 & i2) != 0) {
                    cMsgClientLogonResponse.clientInstanceId_ = this.clientInstanceId_;
                    i |= 4194304;
                }
                if ((8388608 & i2) != 0) {
                    cMsgClientLogonResponse.forceClientUpdateCheck_ = this.forceClientUpdateCheck_;
                    i |= LZMA2Options.DICT_SIZE_DEFAULT;
                }
                if ((16777216 & i2) != 0) {
                    cMsgClientLogonResponse.agreementSessionUrl_ = this.agreementSessionUrl_;
                    i |= 16777216;
                }
                if ((33554432 & i2) != 0) {
                    cMsgClientLogonResponse.tokenId_ = this.tokenId_;
                    i |= 33554432;
                }
                if ((i2 & 67108864) != 0) {
                    cMsgClientLogonResponse.familyGroupId_ = this.familyGroupId_;
                    i |= 67108864;
                }
                cMsgClientLogonResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLogonResponse) {
                    return mergeFrom((CMsgClientLogonResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLogonResponse cMsgClientLogonResponse) {
                if (cMsgClientLogonResponse == CMsgClientLogonResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientLogonResponse.hasEresult()) {
                    setEresult(cMsgClientLogonResponse.getEresult());
                }
                if (cMsgClientLogonResponse.hasLegacyOutOfGameHeartbeatSeconds()) {
                    setLegacyOutOfGameHeartbeatSeconds(cMsgClientLogonResponse.getLegacyOutOfGameHeartbeatSeconds());
                }
                if (cMsgClientLogonResponse.hasHeartbeatSeconds()) {
                    setHeartbeatSeconds(cMsgClientLogonResponse.getHeartbeatSeconds());
                }
                if (cMsgClientLogonResponse.hasDeprecatedPublicIp()) {
                    setDeprecatedPublicIp(cMsgClientLogonResponse.getDeprecatedPublicIp());
                }
                if (cMsgClientLogonResponse.hasRtime32ServerTime()) {
                    setRtime32ServerTime(cMsgClientLogonResponse.getRtime32ServerTime());
                }
                if (cMsgClientLogonResponse.hasAccountFlags()) {
                    setAccountFlags(cMsgClientLogonResponse.getAccountFlags());
                }
                if (cMsgClientLogonResponse.hasCellId()) {
                    setCellId(cMsgClientLogonResponse.getCellId());
                }
                if (cMsgClientLogonResponse.hasEmailDomain()) {
                    this.emailDomain_ = cMsgClientLogonResponse.emailDomain_;
                    this.bitField0_ |= 128;
                    onChanged();
                }
                if (cMsgClientLogonResponse.hasSteam2Ticket()) {
                    setSteam2Ticket(cMsgClientLogonResponse.getSteam2Ticket());
                }
                if (cMsgClientLogonResponse.hasEresultExtended()) {
                    setEresultExtended(cMsgClientLogonResponse.getEresultExtended());
                }
                if (cMsgClientLogonResponse.hasCellIdPingThreshold()) {
                    setCellIdPingThreshold(cMsgClientLogonResponse.getCellIdPingThreshold());
                }
                if (cMsgClientLogonResponse.hasDeprecatedUsePics()) {
                    setDeprecatedUsePics(cMsgClientLogonResponse.getDeprecatedUsePics());
                }
                if (cMsgClientLogonResponse.hasVanityUrl()) {
                    this.vanityUrl_ = cMsgClientLogonResponse.vanityUrl_;
                    this.bitField0_ |= 4096;
                    onChanged();
                }
                if (cMsgClientLogonResponse.hasPublicIp()) {
                    mergePublicIp(cMsgClientLogonResponse.getPublicIp());
                }
                if (cMsgClientLogonResponse.hasUserCountry()) {
                    this.userCountry_ = cMsgClientLogonResponse.userCountry_;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    onChanged();
                }
                if (cMsgClientLogonResponse.hasClientSuppliedSteamid()) {
                    setClientSuppliedSteamid(cMsgClientLogonResponse.getClientSuppliedSteamid());
                }
                if (cMsgClientLogonResponse.hasIpCountryCode()) {
                    this.ipCountryCode_ = cMsgClientLogonResponse.ipCountryCode_;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                    onChanged();
                }
                if (cMsgClientLogonResponse.hasParentalSettings()) {
                    setParentalSettings(cMsgClientLogonResponse.getParentalSettings());
                }
                if (cMsgClientLogonResponse.hasParentalSettingSignature()) {
                    setParentalSettingSignature(cMsgClientLogonResponse.getParentalSettingSignature());
                }
                if (cMsgClientLogonResponse.hasCountLoginfailuresToMigrate()) {
                    setCountLoginfailuresToMigrate(cMsgClientLogonResponse.getCountLoginfailuresToMigrate());
                }
                if (cMsgClientLogonResponse.hasCountDisconnectsToMigrate()) {
                    setCountDisconnectsToMigrate(cMsgClientLogonResponse.getCountDisconnectsToMigrate());
                }
                if (cMsgClientLogonResponse.hasOgsDataReportTimeWindow()) {
                    setOgsDataReportTimeWindow(cMsgClientLogonResponse.getOgsDataReportTimeWindow());
                }
                if (cMsgClientLogonResponse.hasClientInstanceId()) {
                    setClientInstanceId(cMsgClientLogonResponse.getClientInstanceId());
                }
                if (cMsgClientLogonResponse.hasForceClientUpdateCheck()) {
                    setForceClientUpdateCheck(cMsgClientLogonResponse.getForceClientUpdateCheck());
                }
                if (cMsgClientLogonResponse.hasAgreementSessionUrl()) {
                    this.agreementSessionUrl_ = cMsgClientLogonResponse.agreementSessionUrl_;
                    this.bitField0_ |= 16777216;
                    onChanged();
                }
                if (cMsgClientLogonResponse.hasTokenId()) {
                    setTokenId(cMsgClientLogonResponse.getTokenId());
                }
                if (cMsgClientLogonResponse.hasFamilyGroupId()) {
                    setFamilyGroupId(cMsgClientLogonResponse.getFamilyGroupId());
                }
                mergeUnknownFields(cMsgClientLogonResponse.getUnknownFields());
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
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.legacyOutOfGameHeartbeatSeconds_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.heartbeatSeconds_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 32:
                                    this.deprecatedPublicIp_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                    break;
                                case 45:
                                    this.rtime32ServerTime_ = codedInputStream.readFixed32();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.accountFlags_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.cellId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 64;
                                    break;
                                case SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER /* 66 */:
                                    this.emailDomain_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    break;
                                case 74:
                                    this.steam2Ticket_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.eresultExtended_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case 96:
                                    this.cellIdPingThreshold_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1024;
                                    break;
                                case CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    this.deprecatedUsePics_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2048;
                                    break;
                                case 114:
                                    this.vanityUrl_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4096;
                                    break;
                                case 122:
                                    codedInputStream.readMessage(internalGetPublicIpFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 130:
                                    this.userCountry_ = codedInputStream.readBytes();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case 161:
                                    this.clientSuppliedSteamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 32768;
                                    break;
                                case 170:
                                    this.ipCountryCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                    break;
                                case 178:
                                    this.parentalSettings_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 131072;
                                    break;
                                case 186:
                                    this.parentalSettingSignature_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 262144;
                                    break;
                                case BERTags.PRIVATE /* 192 */:
                                    this.countLoginfailuresToMigrate_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 524288;
                                    break;
                                case 200:
                                    this.countDisconnectsToMigrate_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 1048576;
                                    break;
                                case 208:
                                    this.ogsDataReportTimeWindow_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2097152;
                                    break;
                                case 216:
                                    this.clientInstanceId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4194304;
                                    break;
                                case BERTags.FLAGS /* 224 */:
                                    this.forceClientUpdateCheck_ = codedInputStream.readBool();
                                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                                    break;
                                case 234:
                                    this.agreementSessionUrl_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 16777216;
                                    break;
                                case 240:
                                    this.tokenId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 33554432;
                                    break;
                                case 248:
                                    this.familyGroupId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 67108864;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasLegacyOutOfGameHeartbeatSeconds() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getLegacyOutOfGameHeartbeatSeconds() {
                return this.legacyOutOfGameHeartbeatSeconds_;
            }

            public Builder setLegacyOutOfGameHeartbeatSeconds(int i) {
                this.legacyOutOfGameHeartbeatSeconds_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearLegacyOutOfGameHeartbeatSeconds() {
                this.bitField0_ &= -3;
                this.legacyOutOfGameHeartbeatSeconds_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasHeartbeatSeconds() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getHeartbeatSeconds() {
                return this.heartbeatSeconds_;
            }

            public Builder setHeartbeatSeconds(int i) {
                this.heartbeatSeconds_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearHeartbeatSeconds() {
                this.bitField0_ &= -5;
                this.heartbeatSeconds_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasDeprecatedPublicIp() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasRtime32ServerTime() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getRtime32ServerTime() {
                return this.rtime32ServerTime_;
            }

            public Builder setRtime32ServerTime(int i) {
                this.rtime32ServerTime_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearRtime32ServerTime() {
                this.bitField0_ &= -17;
                this.rtime32ServerTime_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasAccountFlags() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getAccountFlags() {
                return this.accountFlags_;
            }

            public Builder setAccountFlags(int i) {
                this.accountFlags_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearAccountFlags() {
                this.bitField0_ &= -33;
                this.accountFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasCellId() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getCellId() {
                return this.cellId_;
            }

            public Builder setCellId(int i) {
                this.cellId_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearCellId() {
                this.bitField0_ &= -65;
                this.cellId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasEmailDomain() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public String getEmailDomain() {
                Object obj = this.emailDomain_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.emailDomain_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public ByteString getEmailDomainBytes() {
                Object obj = this.emailDomain_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.emailDomain_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setEmailDomain(String str) {
                str.getClass();
                this.emailDomain_ = str;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearEmailDomain() {
                this.emailDomain_ = CMsgClientLogonResponse.getDefaultInstance().getEmailDomain();
                this.bitField0_ &= -129;
                onChanged();
                return this;
            }

            public Builder setEmailDomainBytes(ByteString byteString) {
                byteString.getClass();
                this.emailDomain_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasSteam2Ticket() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public ByteString getSteam2Ticket() {
                return this.steam2Ticket_;
            }

            public Builder setSteam2Ticket(ByteString byteString) {
                byteString.getClass();
                this.steam2Ticket_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearSteam2Ticket() {
                this.bitField0_ &= -257;
                this.steam2Ticket_ = CMsgClientLogonResponse.getDefaultInstance().getSteam2Ticket();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasEresultExtended() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getEresultExtended() {
                return this.eresultExtended_;
            }

            public Builder setEresultExtended(int i) {
                this.eresultExtended_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearEresultExtended() {
                this.bitField0_ &= -513;
                this.eresultExtended_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasCellIdPingThreshold() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getCellIdPingThreshold() {
                return this.cellIdPingThreshold_;
            }

            public Builder setCellIdPingThreshold(int i) {
                this.cellIdPingThreshold_ = i;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearCellIdPingThreshold() {
                this.bitField0_ &= -1025;
                this.cellIdPingThreshold_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasDeprecatedUsePics() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean getDeprecatedUsePics() {
                return this.deprecatedUsePics_;
            }

            public Builder setDeprecatedUsePics(boolean z) {
                this.deprecatedUsePics_ = z;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearDeprecatedUsePics() {
                this.bitField0_ &= -2049;
                this.deprecatedUsePics_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasVanityUrl() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
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
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearVanityUrl() {
                this.vanityUrl_ = CMsgClientLogonResponse.getDefaultInstance().getVanityUrl();
                this.bitField0_ &= -4097;
                onChanged();
                return this;
            }

            public Builder setVanityUrlBytes(ByteString byteString) {
                byteString.getClass();
                this.vanityUrl_ = byteString;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasPublicIp() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
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
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
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
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder mergePublicIp(SteammessagesBase.CMsgIPAddress cMsgIPAddress) {
                SteammessagesBase.CMsgIPAddress cMsgIPAddress2;
                SingleFieldBuilder<SteammessagesBase.CMsgIPAddress, SteammessagesBase.CMsgIPAddress.Builder, SteammessagesBase.CMsgIPAddressOrBuilder> singleFieldBuilder = this.publicIpBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0 && (cMsgIPAddress2 = this.publicIp_) != null && cMsgIPAddress2 != SteammessagesBase.CMsgIPAddress.getDefaultInstance()) {
                        getPublicIpBuilder().mergeFrom(cMsgIPAddress);
                    } else {
                        this.publicIp_ = cMsgIPAddress;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cMsgIPAddress);
                }
                if (this.publicIp_ != null) {
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                    onChanged();
                }
                return this;
            }

            public Builder clearPublicIp() {
                this.bitField0_ &= -8193;
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
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return (SteammessagesBase.CMsgIPAddress.Builder) internalGetPublicIpFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasUserCountry() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public String getUserCountry() {
                Object obj = this.userCountry_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.userCountry_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public ByteString getUserCountryBytes() {
                Object obj = this.userCountry_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.userCountry_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUserCountry(String str) {
                str.getClass();
                this.userCountry_ = str;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder clearUserCountry() {
                this.userCountry_ = CMsgClientLogonResponse.getDefaultInstance().getUserCountry();
                this.bitField0_ &= -16385;
                onChanged();
                return this;
            }

            public Builder setUserCountryBytes(ByteString byteString) {
                byteString.getClass();
                this.userCountry_ = byteString;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasClientSuppliedSteamid() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public long getClientSuppliedSteamid() {
                return this.clientSuppliedSteamid_;
            }

            public Builder setClientSuppliedSteamid(long j) {
                this.clientSuppliedSteamid_ = j;
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder clearClientSuppliedSteamid() {
                this.bitField0_ &= -32769;
                this.clientSuppliedSteamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasIpCountryCode() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public String getIpCountryCode() {
                Object obj = this.ipCountryCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.ipCountryCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public ByteString getIpCountryCodeBytes() {
                Object obj = this.ipCountryCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipCountryCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setIpCountryCode(String str) {
                str.getClass();
                this.ipCountryCode_ = str;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder clearIpCountryCode() {
                this.ipCountryCode_ = CMsgClientLogonResponse.getDefaultInstance().getIpCountryCode();
                this.bitField0_ &= -65537;
                onChanged();
                return this;
            }

            public Builder setIpCountryCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.ipCountryCode_ = byteString;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasParentalSettings() {
                return (this.bitField0_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public ByteString getParentalSettings() {
                return this.parentalSettings_;
            }

            public Builder setParentalSettings(ByteString byteString) {
                byteString.getClass();
                this.parentalSettings_ = byteString;
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder clearParentalSettings() {
                this.bitField0_ &= -131073;
                this.parentalSettings_ = CMsgClientLogonResponse.getDefaultInstance().getParentalSettings();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasParentalSettingSignature() {
                return (this.bitField0_ & 262144) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public ByteString getParentalSettingSignature() {
                return this.parentalSettingSignature_;
            }

            public Builder setParentalSettingSignature(ByteString byteString) {
                byteString.getClass();
                this.parentalSettingSignature_ = byteString;
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder clearParentalSettingSignature() {
                this.bitField0_ &= -262145;
                this.parentalSettingSignature_ = CMsgClientLogonResponse.getDefaultInstance().getParentalSettingSignature();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasCountLoginfailuresToMigrate() {
                return (this.bitField0_ & 524288) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getCountLoginfailuresToMigrate() {
                return this.countLoginfailuresToMigrate_;
            }

            public Builder setCountLoginfailuresToMigrate(int i) {
                this.countLoginfailuresToMigrate_ = i;
                this.bitField0_ |= 524288;
                onChanged();
                return this;
            }

            public Builder clearCountLoginfailuresToMigrate() {
                this.bitField0_ &= -524289;
                this.countLoginfailuresToMigrate_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasCountDisconnectsToMigrate() {
                return (this.bitField0_ & 1048576) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getCountDisconnectsToMigrate() {
                return this.countDisconnectsToMigrate_;
            }

            public Builder setCountDisconnectsToMigrate(int i) {
                this.countDisconnectsToMigrate_ = i;
                this.bitField0_ |= 1048576;
                onChanged();
                return this;
            }

            public Builder clearCountDisconnectsToMigrate() {
                this.bitField0_ &= -1048577;
                this.countDisconnectsToMigrate_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasOgsDataReportTimeWindow() {
                return (this.bitField0_ & 2097152) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public int getOgsDataReportTimeWindow() {
                return this.ogsDataReportTimeWindow_;
            }

            public Builder setOgsDataReportTimeWindow(int i) {
                this.ogsDataReportTimeWindow_ = i;
                this.bitField0_ |= 2097152;
                onChanged();
                return this;
            }

            public Builder clearOgsDataReportTimeWindow() {
                this.bitField0_ &= -2097153;
                this.ogsDataReportTimeWindow_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasClientInstanceId() {
                return (this.bitField0_ & 4194304) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public long getClientInstanceId() {
                return this.clientInstanceId_;
            }

            public Builder setClientInstanceId(long j) {
                this.clientInstanceId_ = j;
                this.bitField0_ |= 4194304;
                onChanged();
                return this;
            }

            public Builder clearClientInstanceId() {
                this.bitField0_ &= -4194305;
                this.clientInstanceId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasForceClientUpdateCheck() {
                return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean getForceClientUpdateCheck() {
                return this.forceClientUpdateCheck_;
            }

            public Builder setForceClientUpdateCheck(boolean z) {
                this.forceClientUpdateCheck_ = z;
                this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                onChanged();
                return this;
            }

            public Builder clearForceClientUpdateCheck() {
                this.bitField0_ &= -8388609;
                this.forceClientUpdateCheck_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasAgreementSessionUrl() {
                return (this.bitField0_ & 16777216) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public String getAgreementSessionUrl() {
                Object obj = this.agreementSessionUrl_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.agreementSessionUrl_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public ByteString getAgreementSessionUrlBytes() {
                Object obj = this.agreementSessionUrl_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.agreementSessionUrl_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAgreementSessionUrl(String str) {
                str.getClass();
                this.agreementSessionUrl_ = str;
                this.bitField0_ |= 16777216;
                onChanged();
                return this;
            }

            public Builder clearAgreementSessionUrl() {
                this.agreementSessionUrl_ = CMsgClientLogonResponse.getDefaultInstance().getAgreementSessionUrl();
                this.bitField0_ &= -16777217;
                onChanged();
                return this;
            }

            public Builder setAgreementSessionUrlBytes(ByteString byteString) {
                byteString.getClass();
                this.agreementSessionUrl_ = byteString;
                this.bitField0_ |= 16777216;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasTokenId() {
                return (this.bitField0_ & 33554432) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public long getTokenId() {
                return this.tokenId_;
            }

            public Builder setTokenId(long j) {
                this.tokenId_ = j;
                this.bitField0_ |= 33554432;
                onChanged();
                return this;
            }

            public Builder clearTokenId() {
                this.bitField0_ &= -33554433;
                this.tokenId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public boolean hasFamilyGroupId() {
                return (this.bitField0_ & 67108864) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogonResponseOrBuilder
            public long getFamilyGroupId() {
                return this.familyGroupId_;
            }

            public Builder setFamilyGroupId(long j) {
                this.familyGroupId_ = j;
                this.bitField0_ |= 67108864;
                onChanged();
                return this;
            }

            public Builder clearFamilyGroupId() {
                this.bitField0_ &= -67108865;
                this.familyGroupId_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CMsgClientLogonResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLogonResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLogonResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLogonResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientRequestWebAPIAuthenticateUserNonceResponse extends GeneratedMessage implements CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder {
        private static final CMsgClientRequestWebAPIAuthenticateUserNonceResponse DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientRequestWebAPIAuthenticateUserNonceResponse> PARSER;
        public static final int TOKEN_TYPE_FIELD_NUMBER = 3;
        public static final int WEBAPI_AUTHENTICATE_USER_NONCE_FIELD_NUMBER = 11;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;
        private int tokenType_;
        private volatile Object webapiAuthenticateUserNonce_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientRequestWebAPIAuthenticateUserNonceResponse.class.getName());
            DEFAULT_INSTANCE = new CMsgClientRequestWebAPIAuthenticateUserNonceResponse();
            PARSER = new AbstractParser<CMsgClientRequestWebAPIAuthenticateUserNonceResponse>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponse.1
                @Override // com.google.protobuf.Parser
                public CMsgClientRequestWebAPIAuthenticateUserNonceResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientRequestWebAPIAuthenticateUserNonceResponse.newBuilder();
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

        private CMsgClientRequestWebAPIAuthenticateUserNonceResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.webapiAuthenticateUserNonce_ = "";
            this.tokenType_ = -1;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientRequestWebAPIAuthenticateUserNonceResponse() {
            this.eresult_ = 2;
            this.webapiAuthenticateUserNonce_ = "";
            this.tokenType_ = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.webapiAuthenticateUserNonce_ = "";
            this.tokenType_ = -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestWebAPIAuthenticateUserNonceResponse.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
        public boolean hasWebapiAuthenticateUserNonce() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
        public String getWebapiAuthenticateUserNonce() {
            Object obj = this.webapiAuthenticateUserNonce_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.webapiAuthenticateUserNonce_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
        public ByteString getWebapiAuthenticateUserNonceBytes() {
            Object obj = this.webapiAuthenticateUserNonce_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.webapiAuthenticateUserNonce_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
        public boolean hasTokenType() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
        public int getTokenType() {
            return this.tokenType_;
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
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(3, this.tokenType_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 11, this.webapiAuthenticateUserNonce_);
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
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(3, this.tokenType_);
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += GeneratedMessage.computeStringSize(11, this.webapiAuthenticateUserNonce_);
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
            if (!(obj instanceof CMsgClientRequestWebAPIAuthenticateUserNonceResponse)) {
                return super.equals(obj);
            }
            CMsgClientRequestWebAPIAuthenticateUserNonceResponse cMsgClientRequestWebAPIAuthenticateUserNonceResponse = (CMsgClientRequestWebAPIAuthenticateUserNonceResponse) obj;
            if (hasEresult() != cMsgClientRequestWebAPIAuthenticateUserNonceResponse.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgClientRequestWebAPIAuthenticateUserNonceResponse.getEresult()) || hasWebapiAuthenticateUserNonce() != cMsgClientRequestWebAPIAuthenticateUserNonceResponse.hasWebapiAuthenticateUserNonce()) {
                return false;
            }
            if ((!hasWebapiAuthenticateUserNonce() || getWebapiAuthenticateUserNonce().equals(cMsgClientRequestWebAPIAuthenticateUserNonceResponse.getWebapiAuthenticateUserNonce())) && hasTokenType() == cMsgClientRequestWebAPIAuthenticateUserNonceResponse.hasTokenType()) {
                return (!hasTokenType() || getTokenType() == cMsgClientRequestWebAPIAuthenticateUserNonceResponse.getTokenType()) && getUnknownFields().equals(cMsgClientRequestWebAPIAuthenticateUserNonceResponse.getUnknownFields());
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
            if (hasWebapiAuthenticateUserNonce()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + getWebapiAuthenticateUserNonce().hashCode();
            }
            if (hasTokenType()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getTokenType();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestWebAPIAuthenticateUserNonceResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestWebAPIAuthenticateUserNonceResponse) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientRequestWebAPIAuthenticateUserNonceResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestWebAPIAuthenticateUserNonceResponse) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientRequestWebAPIAuthenticateUserNonceResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientRequestWebAPIAuthenticateUserNonceResponse) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientRequestWebAPIAuthenticateUserNonceResponse cMsgClientRequestWebAPIAuthenticateUserNonceResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientRequestWebAPIAuthenticateUserNonceResponse);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder {
            private int bitField0_;
            private int eresult_;
            private int tokenType_;
            private Object webapiAuthenticateUserNonce_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientRequestWebAPIAuthenticateUserNonceResponse.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                this.webapiAuthenticateUserNonce_ = "";
                this.tokenType_ = -1;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                this.webapiAuthenticateUserNonce_ = "";
                this.tokenType_ = -1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.eresult_ = 2;
                this.webapiAuthenticateUserNonce_ = "";
                this.tokenType_ = -1;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientRequestWebAPIAuthenticateUserNonceResponse_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientRequestWebAPIAuthenticateUserNonceResponse getDefaultInstanceForType() {
                return CMsgClientRequestWebAPIAuthenticateUserNonceResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestWebAPIAuthenticateUserNonceResponse build() {
                CMsgClientRequestWebAPIAuthenticateUserNonceResponse cMsgClientRequestWebAPIAuthenticateUserNonceResponseBuildPartial = buildPartial();
                if (cMsgClientRequestWebAPIAuthenticateUserNonceResponseBuildPartial.isInitialized()) {
                    return cMsgClientRequestWebAPIAuthenticateUserNonceResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientRequestWebAPIAuthenticateUserNonceResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientRequestWebAPIAuthenticateUserNonceResponse buildPartial() {
                CMsgClientRequestWebAPIAuthenticateUserNonceResponse cMsgClientRequestWebAPIAuthenticateUserNonceResponse = new CMsgClientRequestWebAPIAuthenticateUserNonceResponse(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientRequestWebAPIAuthenticateUserNonceResponse);
                }
                onBuilt();
                return cMsgClientRequestWebAPIAuthenticateUserNonceResponse;
            }

            private void buildPartial0(CMsgClientRequestWebAPIAuthenticateUserNonceResponse cMsgClientRequestWebAPIAuthenticateUserNonceResponse) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientRequestWebAPIAuthenticateUserNonceResponse.eresult_ = this.eresult_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientRequestWebAPIAuthenticateUserNonceResponse.webapiAuthenticateUserNonce_ = this.webapiAuthenticateUserNonce_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientRequestWebAPIAuthenticateUserNonceResponse.tokenType_ = this.tokenType_;
                    i |= 4;
                }
                cMsgClientRequestWebAPIAuthenticateUserNonceResponse.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientRequestWebAPIAuthenticateUserNonceResponse) {
                    return mergeFrom((CMsgClientRequestWebAPIAuthenticateUserNonceResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientRequestWebAPIAuthenticateUserNonceResponse cMsgClientRequestWebAPIAuthenticateUserNonceResponse) {
                if (cMsgClientRequestWebAPIAuthenticateUserNonceResponse == CMsgClientRequestWebAPIAuthenticateUserNonceResponse.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientRequestWebAPIAuthenticateUserNonceResponse.hasEresult()) {
                    setEresult(cMsgClientRequestWebAPIAuthenticateUserNonceResponse.getEresult());
                }
                if (cMsgClientRequestWebAPIAuthenticateUserNonceResponse.hasWebapiAuthenticateUserNonce()) {
                    this.webapiAuthenticateUserNonce_ = cMsgClientRequestWebAPIAuthenticateUserNonceResponse.webapiAuthenticateUserNonce_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cMsgClientRequestWebAPIAuthenticateUserNonceResponse.hasTokenType()) {
                    setTokenType(cMsgClientRequestWebAPIAuthenticateUserNonceResponse.getTokenType());
                }
                mergeUnknownFields(cMsgClientRequestWebAPIAuthenticateUserNonceResponse.getUnknownFields());
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
                                } else if (tag == 24) {
                                    this.tokenType_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 90) {
                                    this.webapiAuthenticateUserNonce_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
            public boolean hasWebapiAuthenticateUserNonce() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
            public String getWebapiAuthenticateUserNonce() {
                Object obj = this.webapiAuthenticateUserNonce_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.webapiAuthenticateUserNonce_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
            public ByteString getWebapiAuthenticateUserNonceBytes() {
                Object obj = this.webapiAuthenticateUserNonce_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.webapiAuthenticateUserNonce_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setWebapiAuthenticateUserNonce(String str) {
                str.getClass();
                this.webapiAuthenticateUserNonce_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearWebapiAuthenticateUserNonce() {
                this.webapiAuthenticateUserNonce_ = CMsgClientRequestWebAPIAuthenticateUserNonceResponse.getDefaultInstance().getWebapiAuthenticateUserNonce();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setWebapiAuthenticateUserNonceBytes(ByteString byteString) {
                byteString.getClass();
                this.webapiAuthenticateUserNonce_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
            public boolean hasTokenType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponseOrBuilder
            public int getTokenType() {
                return this.tokenType_;
            }

            public Builder setTokenType(int i) {
                this.tokenType_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearTokenType() {
                this.bitField0_ &= -5;
                this.tokenType_ = -1;
                onChanged();
                return this;
            }
        }

        public static CMsgClientRequestWebAPIAuthenticateUserNonceResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientRequestWebAPIAuthenticateUserNonceResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientRequestWebAPIAuthenticateUserNonceResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientRequestWebAPIAuthenticateUserNonceResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientLogOff extends GeneratedMessage implements MessageOrBuilder {
        private static final CMsgClientLogOff DEFAULT_INSTANCE;
        private static final Parser<CMsgClientLogOff> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLogOff.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLogOff();
            PARSER = new AbstractParser<CMsgClientLogOff>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLogOff.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLogOff parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLogOff.newBuilder();
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

        private CMsgClientLogOff(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLogOff() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLogOff_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLogOff_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLogOff.class, Builder.class);
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
            if (obj instanceof CMsgClientLogOff) {
                return getUnknownFields().equals(((CMsgClientLogOff) obj).getUnknownFields());
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

        public static CMsgClientLogOff parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLogOff parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLogOff parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLogOff parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLogOff parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLogOff parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLogOff parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLogOff) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLogOff parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogOff) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLogOff parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLogOff) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLogOff parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogOff) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLogOff parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLogOff) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLogOff parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLogOff) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLogOff cMsgClientLogOff) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLogOff);
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
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogOff_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogOff_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLogOff.class, Builder.class);
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
                return SteammessagesClientserverLogin.internal_static_CMsgClientLogOff_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLogOff getDefaultInstanceForType() {
                return CMsgClientLogOff.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLogOff build() {
                CMsgClientLogOff cMsgClientLogOffBuildPartial = buildPartial();
                if (cMsgClientLogOffBuildPartial.isInitialized()) {
                    return cMsgClientLogOffBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLogOffBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLogOff buildPartial() {
                CMsgClientLogOff cMsgClientLogOff = new CMsgClientLogOff(this);
                onBuilt();
                return cMsgClientLogOff;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLogOff) {
                    return mergeFrom((CMsgClientLogOff) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLogOff cMsgClientLogOff) {
                if (cMsgClientLogOff == CMsgClientLogOff.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cMsgClientLogOff.getUnknownFields());
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

        public static CMsgClientLogOff getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLogOff> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLogOff> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLogOff getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientLoggedOff extends GeneratedMessage implements CMsgClientLoggedOffOrBuilder {
        private static final CMsgClientLoggedOff DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 1;
        private static final Parser<CMsgClientLoggedOff> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientLoggedOff.class.getName());
            DEFAULT_INSTANCE = new CMsgClientLoggedOff();
            PARSER = new AbstractParser<CMsgClientLoggedOff>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLoggedOff.1
                @Override // com.google.protobuf.Parser
                public CMsgClientLoggedOff parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientLoggedOff.newBuilder();
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

        private CMsgClientLoggedOff(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.eresult_ = 2;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientLoggedOff() {
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLoggedOff_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientLoggedOff_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLoggedOff.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLoggedOffOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLoggedOffOrBuilder
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
                codedOutputStream.writeInt32(1, this.eresult_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.eresult_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeInt32Size;
            return iComputeInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgClientLoggedOff)) {
                return super.equals(obj);
            }
            CMsgClientLoggedOff cMsgClientLoggedOff = (CMsgClientLoggedOff) obj;
            if (hasEresult() != cMsgClientLoggedOff.hasEresult()) {
                return false;
            }
            return (!hasEresult() || getEresult() == cMsgClientLoggedOff.getEresult()) && getUnknownFields().equals(cMsgClientLoggedOff.getUnknownFields());
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

        public static CMsgClientLoggedOff parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientLoggedOff parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientLoggedOff parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientLoggedOff parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientLoggedOff parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientLoggedOff parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientLoggedOff parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLoggedOff) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLoggedOff parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLoggedOff) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLoggedOff parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientLoggedOff) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientLoggedOff parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLoggedOff) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientLoggedOff parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientLoggedOff) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientLoggedOff parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientLoggedOff) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientLoggedOff cMsgClientLoggedOff) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientLoggedOff);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientLoggedOffOrBuilder {
            private int bitField0_;
            private int eresult_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLoggedOff_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLoggedOff_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientLoggedOff.class, Builder.class);
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
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientLoggedOff_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientLoggedOff getDefaultInstanceForType() {
                return CMsgClientLoggedOff.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLoggedOff build() {
                CMsgClientLoggedOff cMsgClientLoggedOffBuildPartial = buildPartial();
                if (cMsgClientLoggedOffBuildPartial.isInitialized()) {
                    return cMsgClientLoggedOffBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientLoggedOffBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientLoggedOff buildPartial() {
                CMsgClientLoggedOff cMsgClientLoggedOff = new CMsgClientLoggedOff(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientLoggedOff);
                }
                onBuilt();
                return cMsgClientLoggedOff;
            }

            private void buildPartial0(CMsgClientLoggedOff cMsgClientLoggedOff) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cMsgClientLoggedOff.eresult_ = this.eresult_;
                } else {
                    i = 0;
                }
                cMsgClientLoggedOff.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientLoggedOff) {
                    return mergeFrom((CMsgClientLoggedOff) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientLoggedOff cMsgClientLoggedOff) {
                if (cMsgClientLoggedOff == CMsgClientLoggedOff.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientLoggedOff.hasEresult()) {
                    setEresult(cMsgClientLoggedOff.getEresult());
                }
                mergeUnknownFields(cMsgClientLoggedOff.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLoggedOffOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientLoggedOffOrBuilder
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
        }

        public static CMsgClientLoggedOff getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientLoggedOff> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientLoggedOff> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientLoggedOff getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgClientAccountInfo extends GeneratedMessage implements CMsgClientAccountInfoOrBuilder {
        public static final int ACCOUNT_FLAGS_FIELD_NUMBER = 7;
        public static final int COUNT_AUTHED_COMPUTERS_FIELD_NUMBER = 5;
        private static final CMsgClientAccountInfo DEFAULT_INSTANCE;
        public static final int FACEBOOK_ID_FIELD_NUMBER = 8;
        public static final int FACEBOOK_NAME_FIELD_NUMBER = 9;
        public static final int IP_COUNTRY_FIELD_NUMBER = 2;
        public static final int IS_PHONE_IDENTIFYING_FIELD_NUMBER = 18;
        public static final int IS_PHONE_NEEDING_REVERIFY_FIELD_NUMBER = 19;
        public static final int IS_PHONE_VERIFIED_FIELD_NUMBER = 16;
        private static final Parser<CMsgClientAccountInfo> PARSER;
        public static final int PERSONA_NAME_FIELD_NUMBER = 1;
        public static final int STEAMGUARD_MACHINE_NAME_USER_CHOSEN_FIELD_NUMBER = 15;
        public static final int TWO_FACTOR_STATE_FIELD_NUMBER = 17;
        private static final long serialVersionUID = 0;
        private int accountFlags_;
        private int bitField0_;
        private int countAuthedComputers_;
        private long facebookId_;
        private volatile Object facebookName_;
        private volatile Object ipCountry_;
        private boolean isPhoneIdentifying_;
        private boolean isPhoneNeedingReverify_;
        private boolean isPhoneVerified_;
        private byte memoizedIsInitialized;
        private volatile Object personaName_;
        private volatile Object steamguardMachineNameUserChosen_;
        private int twoFactorState_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgClientAccountInfo.class.getName());
            DEFAULT_INSTANCE = new CMsgClientAccountInfo();
            PARSER = new AbstractParser<CMsgClientAccountInfo>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfo.1
                @Override // com.google.protobuf.Parser
                public CMsgClientAccountInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgClientAccountInfo.newBuilder();
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

        private CMsgClientAccountInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.personaName_ = "";
            this.ipCountry_ = "";
            this.countAuthedComputers_ = 0;
            this.accountFlags_ = 0;
            this.facebookId_ = 0L;
            this.facebookName_ = "";
            this.steamguardMachineNameUserChosen_ = "";
            this.isPhoneVerified_ = false;
            this.twoFactorState_ = 0;
            this.isPhoneIdentifying_ = false;
            this.isPhoneNeedingReverify_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgClientAccountInfo() {
            this.personaName_ = "";
            this.ipCountry_ = "";
            this.countAuthedComputers_ = 0;
            this.accountFlags_ = 0;
            this.facebookId_ = 0L;
            this.facebookName_ = "";
            this.steamguardMachineNameUserChosen_ = "";
            this.isPhoneVerified_ = false;
            this.twoFactorState_ = 0;
            this.isPhoneIdentifying_ = false;
            this.isPhoneNeedingReverify_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.personaName_ = "";
            this.ipCountry_ = "";
            this.facebookName_ = "";
            this.steamguardMachineNameUserChosen_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientAccountInfo_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesClientserverLogin.internal_static_CMsgClientAccountInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientAccountInfo.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasPersonaName() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public ByteString getPersonaNameBytes() {
            Object obj = this.personaName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.personaName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasIpCountry() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public String getIpCountry() {
            Object obj = this.ipCountry_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipCountry_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public ByteString getIpCountryBytes() {
            Object obj = this.ipCountry_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipCountry_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasCountAuthedComputers() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public int getCountAuthedComputers() {
            return this.countAuthedComputers_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasAccountFlags() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public int getAccountFlags() {
            return this.accountFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasFacebookId() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public long getFacebookId() {
            return this.facebookId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasFacebookName() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public String getFacebookName() {
            Object obj = this.facebookName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.facebookName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public ByteString getFacebookNameBytes() {
            Object obj = this.facebookName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.facebookName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasSteamguardMachineNameUserChosen() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public String getSteamguardMachineNameUserChosen() {
            Object obj = this.steamguardMachineNameUserChosen_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.steamguardMachineNameUserChosen_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public ByteString getSteamguardMachineNameUserChosenBytes() {
            Object obj = this.steamguardMachineNameUserChosen_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.steamguardMachineNameUserChosen_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasIsPhoneVerified() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean getIsPhoneVerified() {
            return this.isPhoneVerified_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasTwoFactorState() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public int getTwoFactorState() {
            return this.twoFactorState_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasIsPhoneIdentifying() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean getIsPhoneIdentifying() {
            return this.isPhoneIdentifying_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean hasIsPhoneNeedingReverify() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
        public boolean getIsPhoneNeedingReverify() {
            return this.isPhoneNeedingReverify_;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.personaName_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.ipCountry_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeInt32(5, this.countAuthedComputers_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(7, this.accountFlags_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt64(8, this.facebookId_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 9, this.facebookName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 15, this.steamguardMachineNameUserChosen_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBool(16, this.isPhoneVerified_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(17, this.twoFactorState_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeBool(18, this.isPhoneIdentifying_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeBool(19, this.isPhoneNeedingReverify_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.personaName_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(2, this.ipCountry_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(5, this.countAuthedComputers_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(7, this.accountFlags_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(8, this.facebookId_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(9, this.facebookName_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeStringSize += GeneratedMessage.computeStringSize(15, this.steamguardMachineNameUserChosen_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(16, this.isPhoneVerified_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt32Size(17, this.twoFactorState_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(18, this.isPhoneIdentifying_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(19, this.isPhoneNeedingReverify_);
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
            if (!(obj instanceof CMsgClientAccountInfo)) {
                return super.equals(obj);
            }
            CMsgClientAccountInfo cMsgClientAccountInfo = (CMsgClientAccountInfo) obj;
            if (hasPersonaName() != cMsgClientAccountInfo.hasPersonaName()) {
                return false;
            }
            if ((hasPersonaName() && !getPersonaName().equals(cMsgClientAccountInfo.getPersonaName())) || hasIpCountry() != cMsgClientAccountInfo.hasIpCountry()) {
                return false;
            }
            if ((hasIpCountry() && !getIpCountry().equals(cMsgClientAccountInfo.getIpCountry())) || hasCountAuthedComputers() != cMsgClientAccountInfo.hasCountAuthedComputers()) {
                return false;
            }
            if ((hasCountAuthedComputers() && getCountAuthedComputers() != cMsgClientAccountInfo.getCountAuthedComputers()) || hasAccountFlags() != cMsgClientAccountInfo.hasAccountFlags()) {
                return false;
            }
            if ((hasAccountFlags() && getAccountFlags() != cMsgClientAccountInfo.getAccountFlags()) || hasFacebookId() != cMsgClientAccountInfo.hasFacebookId()) {
                return false;
            }
            if ((hasFacebookId() && getFacebookId() != cMsgClientAccountInfo.getFacebookId()) || hasFacebookName() != cMsgClientAccountInfo.hasFacebookName()) {
                return false;
            }
            if ((hasFacebookName() && !getFacebookName().equals(cMsgClientAccountInfo.getFacebookName())) || hasSteamguardMachineNameUserChosen() != cMsgClientAccountInfo.hasSteamguardMachineNameUserChosen()) {
                return false;
            }
            if ((hasSteamguardMachineNameUserChosen() && !getSteamguardMachineNameUserChosen().equals(cMsgClientAccountInfo.getSteamguardMachineNameUserChosen())) || hasIsPhoneVerified() != cMsgClientAccountInfo.hasIsPhoneVerified()) {
                return false;
            }
            if ((hasIsPhoneVerified() && getIsPhoneVerified() != cMsgClientAccountInfo.getIsPhoneVerified()) || hasTwoFactorState() != cMsgClientAccountInfo.hasTwoFactorState()) {
                return false;
            }
            if ((hasTwoFactorState() && getTwoFactorState() != cMsgClientAccountInfo.getTwoFactorState()) || hasIsPhoneIdentifying() != cMsgClientAccountInfo.hasIsPhoneIdentifying()) {
                return false;
            }
            if ((!hasIsPhoneIdentifying() || getIsPhoneIdentifying() == cMsgClientAccountInfo.getIsPhoneIdentifying()) && hasIsPhoneNeedingReverify() == cMsgClientAccountInfo.hasIsPhoneNeedingReverify()) {
                return (!hasIsPhoneNeedingReverify() || getIsPhoneNeedingReverify() == cMsgClientAccountInfo.getIsPhoneNeedingReverify()) && getUnknownFields().equals(cMsgClientAccountInfo.getUnknownFields());
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
            if (hasPersonaName()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPersonaName().hashCode();
            }
            if (hasIpCountry()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getIpCountry().hashCode();
            }
            if (hasCountAuthedComputers()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getCountAuthedComputers();
            }
            if (hasAccountFlags()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getAccountFlags();
            }
            if (hasFacebookId()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + Internal.hashLong(getFacebookId());
            }
            if (hasFacebookName()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getFacebookName().hashCode();
            }
            if (hasSteamguardMachineNameUserChosen()) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getSteamguardMachineNameUserChosen().hashCode();
            }
            if (hasIsPhoneVerified()) {
                iHashCode = (((iHashCode * 37) + 16) * 53) + Internal.hashBoolean(getIsPhoneVerified());
            }
            if (hasTwoFactorState()) {
                iHashCode = (((iHashCode * 37) + 17) * 53) + getTwoFactorState();
            }
            if (hasIsPhoneIdentifying()) {
                iHashCode = (((iHashCode * 37) + 18) * 53) + Internal.hashBoolean(getIsPhoneIdentifying());
            }
            if (hasIsPhoneNeedingReverify()) {
                iHashCode = (((iHashCode * 37) + 19) * 53) + Internal.hashBoolean(getIsPhoneNeedingReverify());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgClientAccountInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgClientAccountInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgClientAccountInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgClientAccountInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgClientAccountInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgClientAccountInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgClientAccountInfo parseFrom(InputStream inputStream) throws IOException {
            return (CMsgClientAccountInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgClientAccountInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAccountInfo) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientAccountInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgClientAccountInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgClientAccountInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAccountInfo) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgClientAccountInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgClientAccountInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgClientAccountInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgClientAccountInfo) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgClientAccountInfo cMsgClientAccountInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgClientAccountInfo);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgClientAccountInfoOrBuilder {
            private int accountFlags_;
            private int bitField0_;
            private int countAuthedComputers_;
            private long facebookId_;
            private Object facebookName_;
            private Object ipCountry_;
            private boolean isPhoneIdentifying_;
            private boolean isPhoneNeedingReverify_;
            private boolean isPhoneVerified_;
            private Object personaName_;
            private Object steamguardMachineNameUserChosen_;
            private int twoFactorState_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientAccountInfo_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientAccountInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgClientAccountInfo.class, Builder.class);
            }

            private Builder() {
                this.personaName_ = "";
                this.ipCountry_ = "";
                this.facebookName_ = "";
                this.steamguardMachineNameUserChosen_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.personaName_ = "";
                this.ipCountry_ = "";
                this.facebookName_ = "";
                this.steamguardMachineNameUserChosen_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.personaName_ = "";
                this.ipCountry_ = "";
                this.countAuthedComputers_ = 0;
                this.accountFlags_ = 0;
                this.facebookId_ = 0L;
                this.facebookName_ = "";
                this.steamguardMachineNameUserChosen_ = "";
                this.isPhoneVerified_ = false;
                this.twoFactorState_ = 0;
                this.isPhoneIdentifying_ = false;
                this.isPhoneNeedingReverify_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesClientserverLogin.internal_static_CMsgClientAccountInfo_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgClientAccountInfo getDefaultInstanceForType() {
                return CMsgClientAccountInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientAccountInfo build() {
                CMsgClientAccountInfo cMsgClientAccountInfoBuildPartial = buildPartial();
                if (cMsgClientAccountInfoBuildPartial.isInitialized()) {
                    return cMsgClientAccountInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgClientAccountInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgClientAccountInfo buildPartial() {
                CMsgClientAccountInfo cMsgClientAccountInfo = new CMsgClientAccountInfo(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgClientAccountInfo);
                }
                onBuilt();
                return cMsgClientAccountInfo;
            }

            private void buildPartial0(CMsgClientAccountInfo cMsgClientAccountInfo) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgClientAccountInfo.personaName_ = this.personaName_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgClientAccountInfo.ipCountry_ = this.ipCountry_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgClientAccountInfo.countAuthedComputers_ = this.countAuthedComputers_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgClientAccountInfo.accountFlags_ = this.accountFlags_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgClientAccountInfo.facebookId_ = this.facebookId_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgClientAccountInfo.facebookName_ = this.facebookName_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgClientAccountInfo.steamguardMachineNameUserChosen_ = this.steamguardMachineNameUserChosen_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgClientAccountInfo.isPhoneVerified_ = this.isPhoneVerified_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgClientAccountInfo.twoFactorState_ = this.twoFactorState_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgClientAccountInfo.isPhoneIdentifying_ = this.isPhoneIdentifying_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cMsgClientAccountInfo.isPhoneNeedingReverify_ = this.isPhoneNeedingReverify_;
                    i |= 1024;
                }
                cMsgClientAccountInfo.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgClientAccountInfo) {
                    return mergeFrom((CMsgClientAccountInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgClientAccountInfo cMsgClientAccountInfo) {
                if (cMsgClientAccountInfo == CMsgClientAccountInfo.getDefaultInstance()) {
                    return this;
                }
                if (cMsgClientAccountInfo.hasPersonaName()) {
                    this.personaName_ = cMsgClientAccountInfo.personaName_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cMsgClientAccountInfo.hasIpCountry()) {
                    this.ipCountry_ = cMsgClientAccountInfo.ipCountry_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cMsgClientAccountInfo.hasCountAuthedComputers()) {
                    setCountAuthedComputers(cMsgClientAccountInfo.getCountAuthedComputers());
                }
                if (cMsgClientAccountInfo.hasAccountFlags()) {
                    setAccountFlags(cMsgClientAccountInfo.getAccountFlags());
                }
                if (cMsgClientAccountInfo.hasFacebookId()) {
                    setFacebookId(cMsgClientAccountInfo.getFacebookId());
                }
                if (cMsgClientAccountInfo.hasFacebookName()) {
                    this.facebookName_ = cMsgClientAccountInfo.facebookName_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cMsgClientAccountInfo.hasSteamguardMachineNameUserChosen()) {
                    this.steamguardMachineNameUserChosen_ = cMsgClientAccountInfo.steamguardMachineNameUserChosen_;
                    this.bitField0_ |= 64;
                    onChanged();
                }
                if (cMsgClientAccountInfo.hasIsPhoneVerified()) {
                    setIsPhoneVerified(cMsgClientAccountInfo.getIsPhoneVerified());
                }
                if (cMsgClientAccountInfo.hasTwoFactorState()) {
                    setTwoFactorState(cMsgClientAccountInfo.getTwoFactorState());
                }
                if (cMsgClientAccountInfo.hasIsPhoneIdentifying()) {
                    setIsPhoneIdentifying(cMsgClientAccountInfo.getIsPhoneIdentifying());
                }
                if (cMsgClientAccountInfo.hasIsPhoneNeedingReverify()) {
                    setIsPhoneNeedingReverify(cMsgClientAccountInfo.getIsPhoneNeedingReverify());
                }
                mergeUnknownFields(cMsgClientAccountInfo.getUnknownFields());
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
                                    this.personaName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                    break;
                                case 18:
                                    this.ipCountry_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    break;
                                case 40:
                                    this.countAuthedComputers_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 56:
                                    this.accountFlags_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 8;
                                    break;
                                case 64:
                                    this.facebookId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 16;
                                    break;
                                case 74:
                                    this.facebookName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                    break;
                                case 122:
                                    this.steamguardMachineNameUserChosen_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                    break;
                                case 128:
                                    this.isPhoneVerified_ = codedInputStream.readBool();
                                    this.bitField0_ |= 128;
                                    break;
                                case 136:
                                    this.twoFactorState_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 256;
                                    break;
                                case 144:
                                    this.isPhoneIdentifying_ = codedInputStream.readBool();
                                    this.bitField0_ |= 512;
                                    break;
                                case 152:
                                    this.isPhoneNeedingReverify_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasPersonaName() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
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
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPersonaName() {
                this.personaName_ = CMsgClientAccountInfo.getDefaultInstance().getPersonaName();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setPersonaNameBytes(ByteString byteString) {
                byteString.getClass();
                this.personaName_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasIpCountry() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public String getIpCountry() {
                Object obj = this.ipCountry_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.ipCountry_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public ByteString getIpCountryBytes() {
                Object obj = this.ipCountry_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipCountry_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setIpCountry(String str) {
                str.getClass();
                this.ipCountry_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearIpCountry() {
                this.ipCountry_ = CMsgClientAccountInfo.getDefaultInstance().getIpCountry();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setIpCountryBytes(ByteString byteString) {
                byteString.getClass();
                this.ipCountry_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasCountAuthedComputers() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public int getCountAuthedComputers() {
                return this.countAuthedComputers_;
            }

            public Builder setCountAuthedComputers(int i) {
                this.countAuthedComputers_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearCountAuthedComputers() {
                this.bitField0_ &= -5;
                this.countAuthedComputers_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasAccountFlags() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public int getAccountFlags() {
                return this.accountFlags_;
            }

            public Builder setAccountFlags(int i) {
                this.accountFlags_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearAccountFlags() {
                this.bitField0_ &= -9;
                this.accountFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasFacebookId() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public long getFacebookId() {
                return this.facebookId_;
            }

            public Builder setFacebookId(long j) {
                this.facebookId_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearFacebookId() {
                this.bitField0_ &= -17;
                this.facebookId_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasFacebookName() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public String getFacebookName() {
                Object obj = this.facebookName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.facebookName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public ByteString getFacebookNameBytes() {
                Object obj = this.facebookName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.facebookName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFacebookName(String str) {
                str.getClass();
                this.facebookName_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearFacebookName() {
                this.facebookName_ = CMsgClientAccountInfo.getDefaultInstance().getFacebookName();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setFacebookNameBytes(ByteString byteString) {
                byteString.getClass();
                this.facebookName_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasSteamguardMachineNameUserChosen() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public String getSteamguardMachineNameUserChosen() {
                Object obj = this.steamguardMachineNameUserChosen_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.steamguardMachineNameUserChosen_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public ByteString getSteamguardMachineNameUserChosenBytes() {
                Object obj = this.steamguardMachineNameUserChosen_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.steamguardMachineNameUserChosen_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSteamguardMachineNameUserChosen(String str) {
                str.getClass();
                this.steamguardMachineNameUserChosen_ = str;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSteamguardMachineNameUserChosen() {
                this.steamguardMachineNameUserChosen_ = CMsgClientAccountInfo.getDefaultInstance().getSteamguardMachineNameUserChosen();
                this.bitField0_ &= -65;
                onChanged();
                return this;
            }

            public Builder setSteamguardMachineNameUserChosenBytes(ByteString byteString) {
                byteString.getClass();
                this.steamguardMachineNameUserChosen_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasIsPhoneVerified() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean getIsPhoneVerified() {
                return this.isPhoneVerified_;
            }

            public Builder setIsPhoneVerified(boolean z) {
                this.isPhoneVerified_ = z;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearIsPhoneVerified() {
                this.bitField0_ &= -129;
                this.isPhoneVerified_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasTwoFactorState() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public int getTwoFactorState() {
                return this.twoFactorState_;
            }

            public Builder setTwoFactorState(int i) {
                this.twoFactorState_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearTwoFactorState() {
                this.bitField0_ &= -257;
                this.twoFactorState_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasIsPhoneIdentifying() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean getIsPhoneIdentifying() {
                return this.isPhoneIdentifying_;
            }

            public Builder setIsPhoneIdentifying(boolean z) {
                this.isPhoneIdentifying_ = z;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearIsPhoneIdentifying() {
                this.bitField0_ &= -513;
                this.isPhoneIdentifying_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean hasIsPhoneNeedingReverify() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin.CMsgClientAccountInfoOrBuilder
            public boolean getIsPhoneNeedingReverify() {
                return this.isPhoneNeedingReverify_;
            }

            public Builder setIsPhoneNeedingReverify(boolean z) {
                this.isPhoneNeedingReverify_ = z;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearIsPhoneNeedingReverify() {
                this.bitField0_ &= -1025;
                this.isPhoneNeedingReverify_ = false;
                onChanged();
                return this;
            }
        }

        public static CMsgClientAccountInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgClientAccountInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgClientAccountInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgClientAccountInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
