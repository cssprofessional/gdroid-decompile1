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
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesUseraccountSteamclient {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CEmbeddedClient_AuthorizeDevice_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CEmbeddedClient_AuthorizeDevice_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CEmbeddedClient_Token_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CEmbeddedClient_Token_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_CancelLicenseForApp_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_CancelLicenseForApp_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_CancelLicenseForApp_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_CancelLicenseForApp_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_CreateFriendInviteToken_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_CreateFriendInviteToken_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_CreateFriendInviteToken_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_CreateFriendInviteToken_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetAccountLinkStatus_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetAccountLinkStatus_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetAccountLinkStatus_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetAccountLinkStatus_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetClientWalletDetails_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetClientWalletDetails_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetFriendInviteTokens_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetFriendInviteTokens_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetFriendInviteTokens_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetFriendInviteTokens_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetUserCountry_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetUserCountry_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetUserCountry_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetUserCountry_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_GetWalletDetails_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_GetWalletDetails_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_RedeemFriendInviteToken_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_RedeemFriendInviteToken_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_RedeemFriendInviteToken_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_RedeemFriendInviteToken_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_RegisterCompatTool_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_RegisterCompatTool_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_RegisterCompatTool_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_RegisterCompatTool_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_RevokeFriendInviteToken_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_RevokeFriendInviteToken_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_RevokeFriendInviteToken_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_RevokeFriendInviteToken_Response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_ViewFriendInviteToken_Request_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_ViewFriendInviteToken_Request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CUserAccount_ViewFriendInviteToken_Response_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CUserAccount_ViewFriendInviteToken_Response_fieldAccessorTable;

    public interface CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getDeviceInfo();

        ByteString getDeviceInfoBytes();

        int getDeviceid();

        long getSteamid();

        boolean hasAppid();

        boolean hasDeviceInfo();

        boolean hasDeviceid();

        boolean hasSteamid();
    }

    public interface CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder extends MessageOrBuilder {
        int getResult();

        CEmbeddedClient_Token getToken();

        CEmbeddedClient_TokenOrBuilder getTokenOrBuilder();

        boolean hasResult();

        boolean hasToken();
    }

    public interface CEmbeddedClient_TokenOrBuilder extends MessageOrBuilder {
        ByteString getClientToken();

        int getDeviceid();

        int getExpiry();

        long getSteamid();

        boolean hasClientToken();

        boolean hasDeviceid();

        boolean hasExpiry();

        boolean hasSteamid();
    }

    public interface CUserAccount_CancelLicenseForApp_RequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        boolean hasAppid();
    }

    public interface CUserAccount_CreateFriendInviteToken_RequestOrBuilder extends MessageOrBuilder {
        int getInviteDuration();

        int getInviteLimit();

        String getInviteNote();

        ByteString getInviteNoteBytes();

        boolean hasInviteDuration();

        boolean hasInviteLimit();

        boolean hasInviteNote();
    }

    public interface CUserAccount_CreateFriendInviteToken_ResponseOrBuilder extends MessageOrBuilder {
        long getInviteDuration();

        long getInviteLimit();

        String getInviteToken();

        ByteString getInviteTokenBytes();

        int getTimeCreated();

        boolean getValid();

        boolean hasInviteDuration();

        boolean hasInviteLimit();

        boolean hasInviteToken();

        boolean hasTimeCreated();

        boolean hasValid();
    }

    public interface CUserAccount_GetAccountLinkStatus_ResponseOrBuilder extends MessageOrBuilder {
        int getIdentityVerification();

        boolean getPerformedAgeVerification();

        int getPwid();

        boolean hasIdentityVerification();

        boolean hasPerformedAgeVerification();

        boolean hasPwid();
    }

    public interface CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder extends MessageOrBuilder {
        String getCountryCode();

        ByteString getCountryCodeBytes();

        boolean hasCountryCode();
    }

    public interface CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder extends MessageOrBuilder {
        CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetails getPromotions(int i);

        int getPromotionsCount();

        List<CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetails> getPromotionsList();

        CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder getPromotionsOrBuilder(int i);

        List<? extends CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder> getPromotionsOrBuilderList();
    }

    public interface CUserAccount_GetClientWalletDetails_RequestOrBuilder extends MessageOrBuilder {
        boolean getIncludeBalanceInUsd();

        boolean getIncludeFormattedBalance();

        int getWalletRegion();

        boolean hasIncludeBalanceInUsd();

        boolean hasIncludeFormattedBalance();

        boolean hasWalletRegion();
    }

    public interface CUserAccount_GetFriendInviteTokens_ResponseOrBuilder extends MessageOrBuilder {
        CUserAccount_CreateFriendInviteToken_Response getTokens(int i);

        int getTokensCount();

        List<CUserAccount_CreateFriendInviteToken_Response> getTokensList();

        CUserAccount_CreateFriendInviteToken_ResponseOrBuilder getTokensOrBuilder(int i);

        List<? extends CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> getTokensOrBuilderList();
    }

    public interface CUserAccount_GetUserCountry_RequestOrBuilder extends MessageOrBuilder {
        long getSteamid();

        boolean hasSteamid();
    }

    public interface CUserAccount_GetUserCountry_ResponseOrBuilder extends MessageOrBuilder {
        String getCountry();

        ByteString getCountryBytes();

        boolean hasCountry();
    }

    public interface CUserAccount_GetWalletDetails_ResponseOrBuilder extends MessageOrBuilder {
        long getBalance();

        long getBalanceInUsd();

        int getCurrencyCode();

        long getDelayedBalance();

        int getDelayedBalanceAvailableMaxTime();

        int getDelayedBalanceAvailableMinTime();

        long getDelayedBalanceInUsd();

        int getDelayedBalanceNewestSource();

        String getFormattedBalance();

        ByteString getFormattedBalanceBytes();

        String getFormattedDelayedBalance();

        ByteString getFormattedDelayedBalanceBytes();

        boolean getHasWallet();

        boolean getHasWalletInOtherRegions();

        long getMostRecentTxnid();

        int getOtherRegions(int i);

        int getOtherRegionsCount();

        List<Integer> getOtherRegionsList();

        int getTimeMostRecentTxn();

        String getUserCountryCode();

        ByteString getUserCountryCodeBytes();

        String getWalletCountryCode();

        ByteString getWalletCountryCodeBytes();

        String getWalletState();

        ByteString getWalletStateBytes();

        boolean hasBalance();

        boolean hasBalanceInUsd();

        boolean hasCurrencyCode();

        boolean hasDelayedBalance();

        boolean hasDelayedBalanceAvailableMaxTime();

        boolean hasDelayedBalanceAvailableMinTime();

        boolean hasDelayedBalanceInUsd();

        boolean hasDelayedBalanceNewestSource();

        boolean hasFormattedBalance();

        boolean hasFormattedDelayedBalance();

        boolean hasHasWallet();

        boolean hasHasWalletInOtherRegions();

        boolean hasMostRecentTxnid();

        boolean hasTimeMostRecentTxn();

        boolean hasUserCountryCode();

        boolean hasWalletCountryCode();

        boolean hasWalletState();
    }

    public interface CUserAccount_RedeemFriendInviteToken_RequestOrBuilder extends MessageOrBuilder {
        String getInviteToken();

        ByteString getInviteTokenBytes();

        long getSteamid();

        boolean hasInviteToken();

        boolean hasSteamid();
    }

    public interface CUserAccount_RegisterCompatTool_RequestOrBuilder extends MessageOrBuilder {
        int getCompatTool();

        boolean hasCompatTool();
    }

    public interface CUserAccount_RevokeFriendInviteToken_RequestOrBuilder extends MessageOrBuilder {
        String getInviteToken();

        ByteString getInviteTokenBytes();

        boolean hasInviteToken();
    }

    public interface CUserAccount_ViewFriendInviteToken_RequestOrBuilder extends MessageOrBuilder {
        String getInviteToken();

        ByteString getInviteTokenBytes();

        long getSteamid();

        boolean hasInviteToken();

        boolean hasSteamid();
    }

    public interface CUserAccount_ViewFriendInviteToken_ResponseOrBuilder extends MessageOrBuilder {
        long getInviteDuration();

        long getSteamid();

        boolean getValid();

        boolean hasInviteDuration();

        boolean hasSteamid();

        boolean hasValid();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private SteammessagesUseraccountSteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesUseraccountSteamclient.class.getName());
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nXin/dragonbra/javasteam/protobufs/steamclient/steammessages_useraccount.steamclient.proto\u001aEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001aYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\"P\n8CUserAccount_GetAvailableValveDiscountPromotions_Request\u0012\u0014\n\fcountry_code\u0018\u0001 \u0001(\t\"\u0085\u0004\n9CUserAccount_GetAvailableValveDiscountPromotions_Response\u0012l\n\npromotions\u0018\u0001 \u0003(\u000b2X.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetails\u001aÙ\u0002\n\u001dValveDiscountPromotionDetails\u0012\u0013\n\u000bpromotionid\u0018\u0001 \u0001(\r\u0012\u001d\n\u0015promotion_description\u0018\u0002 \u0001(\t\u0012\u001b\n\u0013minimum_cart_amount\u0018\u0003 \u0001(\u0003\u0012'\n\u001fminimum_cart_amount_for_display\u0018\u0004 \u0001(\u0003\u0012\u0017\n\u000fdiscount_amount\u0018\u0005 \u0001(\u0003\u0012\u0015\n\rcurrency_code\u0018\u0006 \u0001(\u0005\u0012\u001b\n\u0013available_use_count\u0018\u0007 \u0001(\u0005\u0012!\n\u0019promotional_discount_type\u0018\b \u0001(\u0005\u0012\u0019\n\u0011loyalty_reward_id\u0018\t \u0001(\u0005\u0012\u001c\n\u0014localized_name_token\u0018\n \u0001(\t\u0012\u0015\n\rmax_use_count\u0018\u000b \u0001(\u0005\"\u008a\u0001\n+CUserAccount_GetClientWalletDetails_Request\u0012\u001e\n\u0016include_balance_in_usd\u0018\u0001 \u0001(\b\u0012\u0018\n\rwallet_region\u0018\u0002 \u0001(\u0005:\u00011\u0012!\n\u0019include_formatted_balance\u0018\u0003 \u0001(\b\"µ\u0004\n&CUserAccount_GetWalletDetails_Response\u0012\u0012\n\nhas_wallet\u0018\u0001 \u0001(\b\u0012\u0019\n\u0011user_country_code\u0018\u0002 \u0001(\t\u0012\u001b\n\u0013wallet_country_code\u0018\u0003 \u0001(\t\u0012\u0014\n\fwallet_state\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007balance\u0018\u0005 \u0001(\u0003\u0012\u0017\n\u000fdelayed_balance\u0018\u0006 \u0001(\u0003\u0012\u0015\n\rcurrency_code\u0018\u0007 \u0001(\u0005\u0012\u001c\n\u0014time_most_recent_txn\u0018\b \u0001(\r\u0012\u0019\n\u0011most_recent_txnid\u0018\t \u0001(\u0004\u0012\u0016\n\u000ebalance_in_usd\u0018\n \u0001(\u0003\u0012\u001e\n\u0016delayed_balance_in_usd\u0018\u000b \u0001(\u0003\u0012#\n\u001bhas_wallet_in_other_regions\u0018\f \u0001(\b\u0012\u0015\n\rother_regions\u0018\r \u0003(\u0005\u0012\u0019\n\u0011formatted_balance\u0018\u000e \u0001(\t\u0012!\n\u0019formatted_delayed_balance\u0018\u000f \u0001(\t\u0012*\n\"delayed_balance_available_min_time\u0018\u0010 \u0001(\u0005\u0012*\n\"delayed_balance_available_max_time\u0018\u0011 \u0001(\u0005\u0012%\n\u001ddelayed_balance_newest_source\u0018\u0012 \u0001(\u0005\"+\n)CUserAccount_GetAccountLinkStatus_Request\"}\n*CUserAccount_GetAccountLinkStatus_Response\u0012\f\n\u0004pwid\u0018\u0001 \u0001(\r\u0012\u001d\n\u0015identity_verification\u0018\u0002 \u0001(\r\u0012\"\n\u001aperformed_age_verification\u0018\u0003 \u0001(\b\"9\n(CUserAccount_CancelLicenseForApp_Request\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\"+\n)CUserAccount_CancelLicenseForApp_Response\"6\n#CUserAccount_GetUserCountry_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\"7\n$CUserAccount_GetUserCountry_Response\u0012\u000f\n\u0007country\u0018\u0001 \u0001(\t\"r\n,CUserAccount_CreateFriendInviteToken_Request\u0012\u0014\n\finvite_limit\u0018\u0001 \u0001(\r\u0012\u0017\n\u000finvite_duration\u0018\u0002 \u0001(\r\u0012\u0013\n\u000binvite_note\u0018\u0003 \u0001(\t\"\u0099\u0001\n-CUserAccount_CreateFriendInviteToken_Response\u0012\u0014\n\finvite_token\u0018\u0001 \u0001(\t\u0012\u0014\n\finvite_limit\u0018\u0002 \u0001(\u0004\u0012\u0017\n\u000finvite_duration\u0018\u0003 \u0001(\u0004\u0012\u0014\n\ftime_created\u0018\u0004 \u0001(\u0007\u0012\r\n\u0005valid\u0018\u0005 \u0001(\b\",\n*CUserAccount_GetFriendInviteTokens_Request\"m\n+CUserAccount_GetFriendInviteTokens_Response\u0012>\n\u0006tokens\u0018\u0001 \u0003(\u000b2..CUserAccount_CreateFriendInviteToken_Response\"S\n*CUserAccount_ViewFriendInviteToken_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0014\n\finvite_token\u0018\u0002 \u0001(\t\"f\n+CUserAccount_ViewFriendInviteToken_Response\u0012\r\n\u0005valid\u0018\u0001 \u0001(\b\u0012\u000f\n\u0007steamid\u0018\u0002 \u0001(\u0004\u0012\u0017\n\u000finvite_duration\u0018\u0003 \u0001(\u0004\"U\n,CUserAccount_RedeemFriendInviteToken_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0014\n\finvite_token\u0018\u0002 \u0001(\t\"/\n-CUserAccount_RedeemFriendInviteToken_Response\"D\n,CUserAccount_RevokeFriendInviteToken_Request\u0012\u0014\n\finvite_token\u0018\u0001 \u0001(\t\"/\n-CUserAccount_RevokeFriendInviteToken_Response\">\n'CUserAccount_RegisterCompatTool_Request\u0012\u0013\n\u000bcompat_tool\u0018\u0001 \u0001(\r\"*\n(CUserAccount_RegisterCompatTool_Response\"w\n.CEmbeddedClient_AuthorizeCurrentDevice_Request\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\r\n\u0005appid\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bdevice_info\u0018\u0003 \u0001(\t\u0012\u0010\n\bdeviceid\u0018\u0004 \u0001(\r\"`\n\u0015CEmbeddedClient_Token\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0014\n\fclient_token\u0018\u0002 \u0001(\f\u0012\u000e\n\u0006expiry\u0018\u0003 \u0001(\r\u0012\u0010\n\bdeviceid\u0018\u0004 \u0001(\r\"a\n(CEmbeddedClient_AuthorizeDevice_Response\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\r\u0012%\n\u0005token\u0018\u0002 \u0001(\u000b2\u0016.CEmbeddedClient_Token2\u009c\n\n\u000bUserAccount\u0012\u009c\u0001\n#GetAvailableValveDiscountPromotions\u00129.CUserAccount_GetAvailableValveDiscountPromotions_Request\u001a:.CUserAccount_GetAvailableValveDiscountPromotions_Response\u0012o\n\u0016GetClientWalletDetails\u0012,.CUserAccount_GetClientWalletDetails_Request\u001a'.CUserAccount_GetWalletDetails_Response\u0012o\n\u0014GetAccountLinkStatus\u0012*.CUserAccount_GetAccountLinkStatus_Request\u001a+.CUserAccount_GetAccountLinkStatus_Response\u0012l\n\u0013CancelLicenseForApp\u0012).CUserAccount_CancelLicenseForApp_Request\u001a*.CUserAccount_CancelLicenseForApp_Response\u0012]\n\u000eGetUserCountry\u0012$.CUserAccount_GetUserCountry_Request\u001a%.CUserAccount_GetUserCountry_Response\u0012x\n\u0017CreateFriendInviteToken\u0012-.CUserAccount_CreateFriendInviteToken_Request\u001a..CUserAccount_CreateFriendInviteToken_Response\u0012r\n\u0015GetFriendInviteTokens\u0012+.CUserAccount_GetFriendInviteTokens_Request\u001a,.CUserAccount_GetFriendInviteTokens_Response\u0012r\n\u0015ViewFriendInviteToken\u0012+.CUserAccount_ViewFriendInviteToken_Request\u001a,.CUserAccount_ViewFriendInviteToken_Response\u0012x\n\u0017RedeemFriendInviteToken\u0012-.CUserAccount_RedeemFriendInviteToken_Request\u001a..CUserAccount_RedeemFriendInviteToken_Response\u0012x\n\u0017RevokeFriendInviteToken\u0012-.CUserAccount_RevokeFriendInviteToken_Request\u001a..CUserAccount_RevokeFriendInviteToken_Response\u0012i\n\u0012RegisterCompatTool\u0012(.CUserAccount_RegisterCompatTool_Request\u001a).CUserAccount_RegisterCompatTool_Response2\u0086\u0001\n\u000eEmbeddedClient\u0012t\n\u0016AuthorizeCurrentDevice\u0012/.CEmbeddedClient_AuthorizeCurrentDevice_Request\u001a).CEmbeddedClient_AuthorizeDevice_ResponseB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{SteammessagesBase.getDescriptor(), SteammessagesUnifiedBaseSteamclient.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_descriptor = descriptor2;
        internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"CountryCode"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_descriptor = descriptor3;
        internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Promotions"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_descriptor = descriptor4;
        internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Promotionid", "PromotionDescription", "MinimumCartAmount", "MinimumCartAmountForDisplay", "DiscountAmount", "CurrencyCode", "AvailableUseCount", "PromotionalDiscountType", "LoyaltyRewardId", "LocalizedNameToken", "MaxUseCount"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(2);
        internal_static_CUserAccount_GetClientWalletDetails_Request_descriptor = descriptor5;
        internal_static_CUserAccount_GetClientWalletDetails_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"IncludeBalanceInUsd", "WalletRegion", "IncludeFormattedBalance"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(3);
        internal_static_CUserAccount_GetWalletDetails_Response_descriptor = descriptor6;
        internal_static_CUserAccount_GetWalletDetails_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"HasWallet", "UserCountryCode", "WalletCountryCode", "WalletState", "Balance", "DelayedBalance", "CurrencyCode", "TimeMostRecentTxn", "MostRecentTxnid", "BalanceInUsd", "DelayedBalanceInUsd", "HasWalletInOtherRegions", "OtherRegions", "FormattedBalance", "FormattedDelayedBalance", "DelayedBalanceAvailableMinTime", "DelayedBalanceAvailableMaxTime", "DelayedBalanceNewestSource"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(4);
        internal_static_CUserAccount_GetAccountLinkStatus_Request_descriptor = descriptor7;
        internal_static_CUserAccount_GetAccountLinkStatus_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[0]);
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(5);
        internal_static_CUserAccount_GetAccountLinkStatus_Response_descriptor = descriptor8;
        internal_static_CUserAccount_GetAccountLinkStatus_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Pwid", "IdentityVerification", "PerformedAgeVerification"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(6);
        internal_static_CUserAccount_CancelLicenseForApp_Request_descriptor = descriptor9;
        internal_static_CUserAccount_CancelLicenseForApp_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Appid"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(7);
        internal_static_CUserAccount_CancelLicenseForApp_Response_descriptor = descriptor10;
        internal_static_CUserAccount_CancelLicenseForApp_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[0]);
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(8);
        internal_static_CUserAccount_GetUserCountry_Request_descriptor = descriptor11;
        internal_static_CUserAccount_GetUserCountry_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Steamid"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(9);
        internal_static_CUserAccount_GetUserCountry_Response_descriptor = descriptor12;
        internal_static_CUserAccount_GetUserCountry_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Country"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(10);
        internal_static_CUserAccount_CreateFriendInviteToken_Request_descriptor = descriptor13;
        internal_static_CUserAccount_CreateFriendInviteToken_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"InviteLimit", "InviteDuration", "InviteNote"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(11);
        internal_static_CUserAccount_CreateFriendInviteToken_Response_descriptor = descriptor14;
        internal_static_CUserAccount_CreateFriendInviteToken_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"InviteToken", "InviteLimit", "InviteDuration", "TimeCreated", "Valid"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(12);
        internal_static_CUserAccount_GetFriendInviteTokens_Request_descriptor = descriptor15;
        internal_static_CUserAccount_GetFriendInviteTokens_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[0]);
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(13);
        internal_static_CUserAccount_GetFriendInviteTokens_Response_descriptor = descriptor16;
        internal_static_CUserAccount_GetFriendInviteTokens_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Tokens"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(14);
        internal_static_CUserAccount_ViewFriendInviteToken_Request_descriptor = descriptor17;
        internal_static_CUserAccount_ViewFriendInviteToken_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Steamid", "InviteToken"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(15);
        internal_static_CUserAccount_ViewFriendInviteToken_Response_descriptor = descriptor18;
        internal_static_CUserAccount_ViewFriendInviteToken_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"Valid", "Steamid", "InviteDuration"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(16);
        internal_static_CUserAccount_RedeemFriendInviteToken_Request_descriptor = descriptor19;
        internal_static_CUserAccount_RedeemFriendInviteToken_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"Steamid", "InviteToken"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(17);
        internal_static_CUserAccount_RedeemFriendInviteToken_Response_descriptor = descriptor20;
        internal_static_CUserAccount_RedeemFriendInviteToken_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[0]);
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(18);
        internal_static_CUserAccount_RevokeFriendInviteToken_Request_descriptor = descriptor21;
        internal_static_CUserAccount_RevokeFriendInviteToken_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"InviteToken"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(19);
        internal_static_CUserAccount_RevokeFriendInviteToken_Response_descriptor = descriptor22;
        internal_static_CUserAccount_RevokeFriendInviteToken_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[0]);
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(20);
        internal_static_CUserAccount_RegisterCompatTool_Request_descriptor = descriptor23;
        internal_static_CUserAccount_RegisterCompatTool_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"CompatTool"});
        Descriptors.Descriptor descriptor24 = getDescriptor().getMessageTypes().get(21);
        internal_static_CUserAccount_RegisterCompatTool_Response_descriptor = descriptor24;
        internal_static_CUserAccount_RegisterCompatTool_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[0]);
        Descriptors.Descriptor descriptor25 = getDescriptor().getMessageTypes().get(22);
        internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_descriptor = descriptor25;
        internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor25, new String[]{"Steamid", "Appid", "DeviceInfo", "Deviceid"});
        Descriptors.Descriptor descriptor26 = getDescriptor().getMessageTypes().get(23);
        internal_static_CEmbeddedClient_Token_descriptor = descriptor26;
        internal_static_CEmbeddedClient_Token_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor26, new String[]{"Steamid", "ClientToken", "Expiry", "Deviceid"});
        Descriptors.Descriptor descriptor27 = getDescriptor().getMessageTypes().get(24);
        internal_static_CEmbeddedClient_AuthorizeDevice_Response_descriptor = descriptor27;
        internal_static_CEmbeddedClient_AuthorizeDevice_Response_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor27, new String[]{"Result", "Token"});
        descriptor.resolveAllFeaturesImmutable();
        SteammessagesBase.getDescriptor();
        SteammessagesUnifiedBaseSteamclient.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class CUserAccount_GetAvailableValveDiscountPromotions_Request extends GeneratedMessage implements CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder {
        public static final int COUNTRY_CODE_FIELD_NUMBER = 1;
        private static final CUserAccount_GetAvailableValveDiscountPromotions_Request DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_GetAvailableValveDiscountPromotions_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object countryCode_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetAvailableValveDiscountPromotions_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetAvailableValveDiscountPromotions_Request();
            PARSER = new AbstractParser<CUserAccount_GetAvailableValveDiscountPromotions_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetAvailableValveDiscountPromotions_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetAvailableValveDiscountPromotions_Request.newBuilder();
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

        private CUserAccount_GetAvailableValveDiscountPromotions_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.countryCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetAvailableValveDiscountPromotions_Request() {
            this.countryCode_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.countryCode_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAvailableValveDiscountPromotions_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder
        public boolean hasCountryCode() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder
        public String getCountryCode() {
            Object obj = this.countryCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.countryCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder
        public ByteString getCountryCodeBytes() {
            Object obj = this.countryCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.countryCode_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.countryCode_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.countryCode_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CUserAccount_GetAvailableValveDiscountPromotions_Request)) {
                return super.equals(obj);
            }
            CUserAccount_GetAvailableValveDiscountPromotions_Request cUserAccount_GetAvailableValveDiscountPromotions_Request = (CUserAccount_GetAvailableValveDiscountPromotions_Request) obj;
            if (hasCountryCode() != cUserAccount_GetAvailableValveDiscountPromotions_Request.hasCountryCode()) {
                return false;
            }
            return (!hasCountryCode() || getCountryCode().equals(cUserAccount_GetAvailableValveDiscountPromotions_Request.getCountryCode())) && getUnknownFields().equals(cUserAccount_GetAvailableValveDiscountPromotions_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasCountryCode()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCountryCode().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetAvailableValveDiscountPromotions_Request cUserAccount_GetAvailableValveDiscountPromotions_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetAvailableValveDiscountPromotions_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder {
            private int bitField0_;
            private Object countryCode_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAvailableValveDiscountPromotions_Request.class, Builder.class);
            }

            private Builder() {
                this.countryCode_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.countryCode_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.countryCode_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetAvailableValveDiscountPromotions_Request getDefaultInstanceForType() {
                return CUserAccount_GetAvailableValveDiscountPromotions_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAvailableValveDiscountPromotions_Request build() {
                CUserAccount_GetAvailableValveDiscountPromotions_Request cUserAccount_GetAvailableValveDiscountPromotions_RequestBuildPartial = buildPartial();
                if (cUserAccount_GetAvailableValveDiscountPromotions_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_GetAvailableValveDiscountPromotions_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetAvailableValveDiscountPromotions_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAvailableValveDiscountPromotions_Request buildPartial() {
                CUserAccount_GetAvailableValveDiscountPromotions_Request cUserAccount_GetAvailableValveDiscountPromotions_Request = new CUserAccount_GetAvailableValveDiscountPromotions_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetAvailableValveDiscountPromotions_Request);
                }
                onBuilt();
                return cUserAccount_GetAvailableValveDiscountPromotions_Request;
            }

            private void buildPartial0(CUserAccount_GetAvailableValveDiscountPromotions_Request cUserAccount_GetAvailableValveDiscountPromotions_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cUserAccount_GetAvailableValveDiscountPromotions_Request.countryCode_ = this.countryCode_;
                } else {
                    i = 0;
                }
                cUserAccount_GetAvailableValveDiscountPromotions_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetAvailableValveDiscountPromotions_Request) {
                    return mergeFrom((CUserAccount_GetAvailableValveDiscountPromotions_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetAvailableValveDiscountPromotions_Request cUserAccount_GetAvailableValveDiscountPromotions_Request) {
                if (cUserAccount_GetAvailableValveDiscountPromotions_Request == CUserAccount_GetAvailableValveDiscountPromotions_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_GetAvailableValveDiscountPromotions_Request.hasCountryCode()) {
                    this.countryCode_ = cUserAccount_GetAvailableValveDiscountPromotions_Request.countryCode_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cUserAccount_GetAvailableValveDiscountPromotions_Request.getUnknownFields());
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
                                    this.countryCode_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder
            public boolean hasCountryCode() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder
            public String getCountryCode() {
                Object obj = this.countryCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.countryCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_RequestOrBuilder
            public ByteString getCountryCodeBytes() {
                Object obj = this.countryCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.countryCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCountryCode(String str) {
                str.getClass();
                this.countryCode_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCountryCode() {
                this.countryCode_ = CUserAccount_GetAvailableValveDiscountPromotions_Request.getDefaultInstance().getCountryCode();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setCountryCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.countryCode_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetAvailableValveDiscountPromotions_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetAvailableValveDiscountPromotions_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetAvailableValveDiscountPromotions_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetAvailableValveDiscountPromotions_Response extends GeneratedMessage implements CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder {
        private static final CUserAccount_GetAvailableValveDiscountPromotions_Response DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_GetAvailableValveDiscountPromotions_Response> PARSER;
        public static final int PROMOTIONS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<ValveDiscountPromotionDetails> promotions_;

        public interface ValveDiscountPromotionDetailsOrBuilder extends MessageOrBuilder {
            int getAvailableUseCount();

            int getCurrencyCode();

            long getDiscountAmount();

            String getLocalizedNameToken();

            ByteString getLocalizedNameTokenBytes();

            int getLoyaltyRewardId();

            int getMaxUseCount();

            long getMinimumCartAmount();

            long getMinimumCartAmountForDisplay();

            String getPromotionDescription();

            ByteString getPromotionDescriptionBytes();

            int getPromotionalDiscountType();

            int getPromotionid();

            boolean hasAvailableUseCount();

            boolean hasCurrencyCode();

            boolean hasDiscountAmount();

            boolean hasLocalizedNameToken();

            boolean hasLoyaltyRewardId();

            boolean hasMaxUseCount();

            boolean hasMinimumCartAmount();

            boolean hasMinimumCartAmountForDisplay();

            boolean hasPromotionDescription();

            boolean hasPromotionalDiscountType();

            boolean hasPromotionid();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetAvailableValveDiscountPromotions_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetAvailableValveDiscountPromotions_Response();
            PARSER = new AbstractParser<CUserAccount_GetAvailableValveDiscountPromotions_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetAvailableValveDiscountPromotions_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetAvailableValveDiscountPromotions_Response.newBuilder();
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

        private CUserAccount_GetAvailableValveDiscountPromotions_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetAvailableValveDiscountPromotions_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.promotions_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAvailableValveDiscountPromotions_Response.class, Builder.class);
        }

        public static final class ValveDiscountPromotionDetails extends GeneratedMessage implements ValveDiscountPromotionDetailsOrBuilder {
            public static final int AVAILABLE_USE_COUNT_FIELD_NUMBER = 7;
            public static final int CURRENCY_CODE_FIELD_NUMBER = 6;
            private static final ValveDiscountPromotionDetails DEFAULT_INSTANCE;
            public static final int DISCOUNT_AMOUNT_FIELD_NUMBER = 5;
            public static final int LOCALIZED_NAME_TOKEN_FIELD_NUMBER = 10;
            public static final int LOYALTY_REWARD_ID_FIELD_NUMBER = 9;
            public static final int MAX_USE_COUNT_FIELD_NUMBER = 11;
            public static final int MINIMUM_CART_AMOUNT_FIELD_NUMBER = 3;
            public static final int MINIMUM_CART_AMOUNT_FOR_DISPLAY_FIELD_NUMBER = 4;
            private static final Parser<ValveDiscountPromotionDetails> PARSER;
            public static final int PROMOTIONAL_DISCOUNT_TYPE_FIELD_NUMBER = 8;
            public static final int PROMOTIONID_FIELD_NUMBER = 1;
            public static final int PROMOTION_DESCRIPTION_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int availableUseCount_;
            private int bitField0_;
            private int currencyCode_;
            private long discountAmount_;
            private volatile Object localizedNameToken_;
            private int loyaltyRewardId_;
            private int maxUseCount_;
            private byte memoizedIsInitialized;
            private long minimumCartAmountForDisplay_;
            private long minimumCartAmount_;
            private volatile Object promotionDescription_;
            private int promotionalDiscountType_;
            private int promotionid_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ValveDiscountPromotionDetails.class.getName());
                DEFAULT_INSTANCE = new ValveDiscountPromotionDetails();
                PARSER = new AbstractParser<ValveDiscountPromotionDetails>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetails.1
                    @Override // com.google.protobuf.Parser
                    public ValveDiscountPromotionDetails parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = ValveDiscountPromotionDetails.newBuilder();
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

            private ValveDiscountPromotionDetails(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.promotionid_ = 0;
                this.promotionDescription_ = "";
                this.minimumCartAmount_ = 0L;
                this.minimumCartAmountForDisplay_ = 0L;
                this.discountAmount_ = 0L;
                this.currencyCode_ = 0;
                this.availableUseCount_ = 0;
                this.promotionalDiscountType_ = 0;
                this.loyaltyRewardId_ = 0;
                this.localizedNameToken_ = "";
                this.maxUseCount_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private ValveDiscountPromotionDetails() {
                this.promotionid_ = 0;
                this.promotionDescription_ = "";
                this.minimumCartAmount_ = 0L;
                this.minimumCartAmountForDisplay_ = 0L;
                this.discountAmount_ = 0L;
                this.currencyCode_ = 0;
                this.availableUseCount_ = 0;
                this.promotionalDiscountType_ = 0;
                this.loyaltyRewardId_ = 0;
                this.localizedNameToken_ = "";
                this.maxUseCount_ = 0;
                this.memoizedIsInitialized = (byte) -1;
                this.promotionDescription_ = "";
                this.localizedNameToken_ = "";
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(ValveDiscountPromotionDetails.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasPromotionid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public int getPromotionid() {
                return this.promotionid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasPromotionDescription() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public String getPromotionDescription() {
                Object obj = this.promotionDescription_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.promotionDescription_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public ByteString getPromotionDescriptionBytes() {
                Object obj = this.promotionDescription_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.promotionDescription_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasMinimumCartAmount() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public long getMinimumCartAmount() {
                return this.minimumCartAmount_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasMinimumCartAmountForDisplay() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public long getMinimumCartAmountForDisplay() {
                return this.minimumCartAmountForDisplay_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasDiscountAmount() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public long getDiscountAmount() {
                return this.discountAmount_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasCurrencyCode() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public int getCurrencyCode() {
                return this.currencyCode_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasAvailableUseCount() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public int getAvailableUseCount() {
                return this.availableUseCount_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasPromotionalDiscountType() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public int getPromotionalDiscountType() {
                return this.promotionalDiscountType_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasLoyaltyRewardId() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public int getLoyaltyRewardId() {
                return this.loyaltyRewardId_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasLocalizedNameToken() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public String getLocalizedNameToken() {
                Object obj = this.localizedNameToken_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.localizedNameToken_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public ByteString getLocalizedNameTokenBytes() {
                Object obj = this.localizedNameToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.localizedNameToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public boolean hasMaxUseCount() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
            public int getMaxUseCount() {
                return this.maxUseCount_;
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
                    codedOutputStream.writeUInt32(1, this.promotionid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 2, this.promotionDescription_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    codedOutputStream.writeInt64(3, this.minimumCartAmount_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.writeInt64(4, this.minimumCartAmountForDisplay_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    codedOutputStream.writeInt64(5, this.discountAmount_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    codedOutputStream.writeInt32(6, this.currencyCode_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    codedOutputStream.writeInt32(7, this.availableUseCount_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    codedOutputStream.writeInt32(8, this.promotionalDiscountType_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    codedOutputStream.writeInt32(9, this.loyaltyRewardId_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    GeneratedMessage.writeString(codedOutputStream, 10, this.localizedNameToken_);
                }
                if ((this.bitField0_ & 1024) != 0) {
                    codedOutputStream.writeInt32(11, this.maxUseCount_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.promotionid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(2, this.promotionDescription_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt64Size(3, this.minimumCartAmount_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt64Size(4, this.minimumCartAmountForDisplay_);
                }
                if ((this.bitField0_ & 16) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt64Size(5, this.discountAmount_);
                }
                if ((this.bitField0_ & 32) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt32Size(6, this.currencyCode_);
                }
                if ((this.bitField0_ & 64) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt32Size(7, this.availableUseCount_);
                }
                if ((this.bitField0_ & 128) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt32Size(8, this.promotionalDiscountType_);
                }
                if ((this.bitField0_ & 256) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt32Size(9, this.loyaltyRewardId_);
                }
                if ((this.bitField0_ & 512) != 0) {
                    iComputeUInt32Size += GeneratedMessage.computeStringSize(10, this.localizedNameToken_);
                }
                if ((this.bitField0_ & 1024) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeInt32Size(11, this.maxUseCount_);
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
                if (!(obj instanceof ValveDiscountPromotionDetails)) {
                    return super.equals(obj);
                }
                ValveDiscountPromotionDetails valveDiscountPromotionDetails = (ValveDiscountPromotionDetails) obj;
                if (hasPromotionid() != valveDiscountPromotionDetails.hasPromotionid()) {
                    return false;
                }
                if ((hasPromotionid() && getPromotionid() != valveDiscountPromotionDetails.getPromotionid()) || hasPromotionDescription() != valveDiscountPromotionDetails.hasPromotionDescription()) {
                    return false;
                }
                if ((hasPromotionDescription() && !getPromotionDescription().equals(valveDiscountPromotionDetails.getPromotionDescription())) || hasMinimumCartAmount() != valveDiscountPromotionDetails.hasMinimumCartAmount()) {
                    return false;
                }
                if ((hasMinimumCartAmount() && getMinimumCartAmount() != valveDiscountPromotionDetails.getMinimumCartAmount()) || hasMinimumCartAmountForDisplay() != valveDiscountPromotionDetails.hasMinimumCartAmountForDisplay()) {
                    return false;
                }
                if ((hasMinimumCartAmountForDisplay() && getMinimumCartAmountForDisplay() != valveDiscountPromotionDetails.getMinimumCartAmountForDisplay()) || hasDiscountAmount() != valveDiscountPromotionDetails.hasDiscountAmount()) {
                    return false;
                }
                if ((hasDiscountAmount() && getDiscountAmount() != valveDiscountPromotionDetails.getDiscountAmount()) || hasCurrencyCode() != valveDiscountPromotionDetails.hasCurrencyCode()) {
                    return false;
                }
                if ((hasCurrencyCode() && getCurrencyCode() != valveDiscountPromotionDetails.getCurrencyCode()) || hasAvailableUseCount() != valveDiscountPromotionDetails.hasAvailableUseCount()) {
                    return false;
                }
                if ((hasAvailableUseCount() && getAvailableUseCount() != valveDiscountPromotionDetails.getAvailableUseCount()) || hasPromotionalDiscountType() != valveDiscountPromotionDetails.hasPromotionalDiscountType()) {
                    return false;
                }
                if ((hasPromotionalDiscountType() && getPromotionalDiscountType() != valveDiscountPromotionDetails.getPromotionalDiscountType()) || hasLoyaltyRewardId() != valveDiscountPromotionDetails.hasLoyaltyRewardId()) {
                    return false;
                }
                if ((hasLoyaltyRewardId() && getLoyaltyRewardId() != valveDiscountPromotionDetails.getLoyaltyRewardId()) || hasLocalizedNameToken() != valveDiscountPromotionDetails.hasLocalizedNameToken()) {
                    return false;
                }
                if ((!hasLocalizedNameToken() || getLocalizedNameToken().equals(valveDiscountPromotionDetails.getLocalizedNameToken())) && hasMaxUseCount() == valveDiscountPromotionDetails.hasMaxUseCount()) {
                    return (!hasMaxUseCount() || getMaxUseCount() == valveDiscountPromotionDetails.getMaxUseCount()) && getUnknownFields().equals(valveDiscountPromotionDetails.getUnknownFields());
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
                if (hasPromotionid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getPromotionid();
                }
                if (hasPromotionDescription()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getPromotionDescription().hashCode();
                }
                if (hasMinimumCartAmount()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getMinimumCartAmount());
                }
                if (hasMinimumCartAmountForDisplay()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getMinimumCartAmountForDisplay());
                }
                if (hasDiscountAmount()) {
                    iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getDiscountAmount());
                }
                if (hasCurrencyCode()) {
                    iHashCode = (((iHashCode * 37) + 6) * 53) + getCurrencyCode();
                }
                if (hasAvailableUseCount()) {
                    iHashCode = (((iHashCode * 37) + 7) * 53) + getAvailableUseCount();
                }
                if (hasPromotionalDiscountType()) {
                    iHashCode = (((iHashCode * 37) + 8) * 53) + getPromotionalDiscountType();
                }
                if (hasLoyaltyRewardId()) {
                    iHashCode = (((iHashCode * 37) + 9) * 53) + getLoyaltyRewardId();
                }
                if (hasLocalizedNameToken()) {
                    iHashCode = (((iHashCode * 37) + 10) * 53) + getLocalizedNameToken().hashCode();
                }
                if (hasMaxUseCount()) {
                    iHashCode = (((iHashCode * 37) + 11) * 53) + getMaxUseCount();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static ValveDiscountPromotionDetails parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static ValveDiscountPromotionDetails parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static ValveDiscountPromotionDetails parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static ValveDiscountPromotionDetails parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static ValveDiscountPromotionDetails parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static ValveDiscountPromotionDetails parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ValveDiscountPromotionDetails parseFrom(InputStream inputStream) throws IOException {
                return (ValveDiscountPromotionDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static ValveDiscountPromotionDetails parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ValveDiscountPromotionDetails) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ValveDiscountPromotionDetails parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ValveDiscountPromotionDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ValveDiscountPromotionDetails parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ValveDiscountPromotionDetails) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ValveDiscountPromotionDetails parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ValveDiscountPromotionDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static ValveDiscountPromotionDetails parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ValveDiscountPromotionDetails) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(ValveDiscountPromotionDetails valveDiscountPromotionDetails) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(valveDiscountPromotionDetails);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements ValveDiscountPromotionDetailsOrBuilder {
                private int availableUseCount_;
                private int bitField0_;
                private int currencyCode_;
                private long discountAmount_;
                private Object localizedNameToken_;
                private int loyaltyRewardId_;
                private int maxUseCount_;
                private long minimumCartAmountForDisplay_;
                private long minimumCartAmount_;
                private Object promotionDescription_;
                private int promotionalDiscountType_;
                private int promotionid_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_fieldAccessorTable.ensureFieldAccessorsInitialized(ValveDiscountPromotionDetails.class, Builder.class);
                }

                private Builder() {
                    this.promotionDescription_ = "";
                    this.localizedNameToken_ = "";
                }

                private Builder(AbstractMessage.BuilderParent builderParent) {
                    super(builderParent);
                    this.promotionDescription_ = "";
                    this.localizedNameToken_ = "";
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.bitField0_ = 0;
                    this.promotionid_ = 0;
                    this.promotionDescription_ = "";
                    this.minimumCartAmount_ = 0L;
                    this.minimumCartAmountForDisplay_ = 0L;
                    this.discountAmount_ = 0L;
                    this.currencyCode_ = 0;
                    this.availableUseCount_ = 0;
                    this.promotionalDiscountType_ = 0;
                    this.loyaltyRewardId_ = 0;
                    this.localizedNameToken_ = "";
                    this.maxUseCount_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_ValveDiscountPromotionDetails_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ValveDiscountPromotionDetails getDefaultInstanceForType() {
                    return ValveDiscountPromotionDetails.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ValveDiscountPromotionDetails build() {
                    ValveDiscountPromotionDetails valveDiscountPromotionDetailsBuildPartial = buildPartial();
                    if (valveDiscountPromotionDetailsBuildPartial.isInitialized()) {
                        return valveDiscountPromotionDetailsBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) valveDiscountPromotionDetailsBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ValveDiscountPromotionDetails buildPartial() {
                    ValveDiscountPromotionDetails valveDiscountPromotionDetails = new ValveDiscountPromotionDetails(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(valveDiscountPromotionDetails);
                    }
                    onBuilt();
                    return valveDiscountPromotionDetails;
                }

                private void buildPartial0(ValveDiscountPromotionDetails valveDiscountPromotionDetails) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        valveDiscountPromotionDetails.promotionid_ = this.promotionid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        valveDiscountPromotionDetails.promotionDescription_ = this.promotionDescription_;
                        i |= 2;
                    }
                    if ((i2 & 4) != 0) {
                        valveDiscountPromotionDetails.minimumCartAmount_ = this.minimumCartAmount_;
                        i |= 4;
                    }
                    if ((i2 & 8) != 0) {
                        valveDiscountPromotionDetails.minimumCartAmountForDisplay_ = this.minimumCartAmountForDisplay_;
                        i |= 8;
                    }
                    if ((i2 & 16) != 0) {
                        valveDiscountPromotionDetails.discountAmount_ = this.discountAmount_;
                        i |= 16;
                    }
                    if ((i2 & 32) != 0) {
                        valveDiscountPromotionDetails.currencyCode_ = this.currencyCode_;
                        i |= 32;
                    }
                    if ((i2 & 64) != 0) {
                        valveDiscountPromotionDetails.availableUseCount_ = this.availableUseCount_;
                        i |= 64;
                    }
                    if ((i2 & 128) != 0) {
                        valveDiscountPromotionDetails.promotionalDiscountType_ = this.promotionalDiscountType_;
                        i |= 128;
                    }
                    if ((i2 & 256) != 0) {
                        valveDiscountPromotionDetails.loyaltyRewardId_ = this.loyaltyRewardId_;
                        i |= 256;
                    }
                    if ((i2 & 512) != 0) {
                        valveDiscountPromotionDetails.localizedNameToken_ = this.localizedNameToken_;
                        i |= 512;
                    }
                    if ((i2 & 1024) != 0) {
                        valveDiscountPromotionDetails.maxUseCount_ = this.maxUseCount_;
                        i |= 1024;
                    }
                    valveDiscountPromotionDetails.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof ValveDiscountPromotionDetails) {
                        return mergeFrom((ValveDiscountPromotionDetails) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(ValveDiscountPromotionDetails valveDiscountPromotionDetails) {
                    if (valveDiscountPromotionDetails == ValveDiscountPromotionDetails.getDefaultInstance()) {
                        return this;
                    }
                    if (valveDiscountPromotionDetails.hasPromotionid()) {
                        setPromotionid(valveDiscountPromotionDetails.getPromotionid());
                    }
                    if (valveDiscountPromotionDetails.hasPromotionDescription()) {
                        this.promotionDescription_ = valveDiscountPromotionDetails.promotionDescription_;
                        this.bitField0_ |= 2;
                        onChanged();
                    }
                    if (valveDiscountPromotionDetails.hasMinimumCartAmount()) {
                        setMinimumCartAmount(valveDiscountPromotionDetails.getMinimumCartAmount());
                    }
                    if (valveDiscountPromotionDetails.hasMinimumCartAmountForDisplay()) {
                        setMinimumCartAmountForDisplay(valveDiscountPromotionDetails.getMinimumCartAmountForDisplay());
                    }
                    if (valveDiscountPromotionDetails.hasDiscountAmount()) {
                        setDiscountAmount(valveDiscountPromotionDetails.getDiscountAmount());
                    }
                    if (valveDiscountPromotionDetails.hasCurrencyCode()) {
                        setCurrencyCode(valveDiscountPromotionDetails.getCurrencyCode());
                    }
                    if (valveDiscountPromotionDetails.hasAvailableUseCount()) {
                        setAvailableUseCount(valveDiscountPromotionDetails.getAvailableUseCount());
                    }
                    if (valveDiscountPromotionDetails.hasPromotionalDiscountType()) {
                        setPromotionalDiscountType(valveDiscountPromotionDetails.getPromotionalDiscountType());
                    }
                    if (valveDiscountPromotionDetails.hasLoyaltyRewardId()) {
                        setLoyaltyRewardId(valveDiscountPromotionDetails.getLoyaltyRewardId());
                    }
                    if (valveDiscountPromotionDetails.hasLocalizedNameToken()) {
                        this.localizedNameToken_ = valveDiscountPromotionDetails.localizedNameToken_;
                        this.bitField0_ |= 512;
                        onChanged();
                    }
                    if (valveDiscountPromotionDetails.hasMaxUseCount()) {
                        setMaxUseCount(valveDiscountPromotionDetails.getMaxUseCount());
                    }
                    mergeUnknownFields(valveDiscountPromotionDetails.getUnknownFields());
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
                                        this.promotionid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                        break;
                                    case 18:
                                        this.promotionDescription_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 2;
                                        break;
                                    case 24:
                                        this.minimumCartAmount_ = codedInputStream.readInt64();
                                        this.bitField0_ |= 4;
                                        break;
                                    case 32:
                                        this.minimumCartAmountForDisplay_ = codedInputStream.readInt64();
                                        this.bitField0_ |= 8;
                                        break;
                                    case 40:
                                        this.discountAmount_ = codedInputStream.readInt64();
                                        this.bitField0_ |= 16;
                                        break;
                                    case 48:
                                        this.currencyCode_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 32;
                                        break;
                                    case 56:
                                        this.availableUseCount_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 64;
                                        break;
                                    case 64:
                                        this.promotionalDiscountType_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 128;
                                        break;
                                    case 72:
                                        this.loyaltyRewardId_ = codedInputStream.readInt32();
                                        this.bitField0_ |= 256;
                                        break;
                                    case 82:
                                        this.localizedNameToken_ = codedInputStream.readBytes();
                                        this.bitField0_ |= 512;
                                        break;
                                    case SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER /* 88 */:
                                        this.maxUseCount_ = codedInputStream.readInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasPromotionid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public int getPromotionid() {
                    return this.promotionid_;
                }

                public Builder setPromotionid(int i) {
                    this.promotionid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearPromotionid() {
                    this.bitField0_ &= -2;
                    this.promotionid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasPromotionDescription() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public String getPromotionDescription() {
                    Object obj = this.promotionDescription_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.promotionDescription_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public ByteString getPromotionDescriptionBytes() {
                    Object obj = this.promotionDescription_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.promotionDescription_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setPromotionDescription(String str) {
                    str.getClass();
                    this.promotionDescription_ = str;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearPromotionDescription() {
                    this.promotionDescription_ = ValveDiscountPromotionDetails.getDefaultInstance().getPromotionDescription();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder setPromotionDescriptionBytes(ByteString byteString) {
                    byteString.getClass();
                    this.promotionDescription_ = byteString;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasMinimumCartAmount() {
                    return (this.bitField0_ & 4) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public long getMinimumCartAmount() {
                    return this.minimumCartAmount_;
                }

                public Builder setMinimumCartAmount(long j) {
                    this.minimumCartAmount_ = j;
                    this.bitField0_ |= 4;
                    onChanged();
                    return this;
                }

                public Builder clearMinimumCartAmount() {
                    this.bitField0_ &= -5;
                    this.minimumCartAmount_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasMinimumCartAmountForDisplay() {
                    return (this.bitField0_ & 8) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public long getMinimumCartAmountForDisplay() {
                    return this.minimumCartAmountForDisplay_;
                }

                public Builder setMinimumCartAmountForDisplay(long j) {
                    this.minimumCartAmountForDisplay_ = j;
                    this.bitField0_ |= 8;
                    onChanged();
                    return this;
                }

                public Builder clearMinimumCartAmountForDisplay() {
                    this.bitField0_ &= -9;
                    this.minimumCartAmountForDisplay_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasDiscountAmount() {
                    return (this.bitField0_ & 16) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public long getDiscountAmount() {
                    return this.discountAmount_;
                }

                public Builder setDiscountAmount(long j) {
                    this.discountAmount_ = j;
                    this.bitField0_ |= 16;
                    onChanged();
                    return this;
                }

                public Builder clearDiscountAmount() {
                    this.bitField0_ &= -17;
                    this.discountAmount_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasCurrencyCode() {
                    return (this.bitField0_ & 32) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public int getCurrencyCode() {
                    return this.currencyCode_;
                }

                public Builder setCurrencyCode(int i) {
                    this.currencyCode_ = i;
                    this.bitField0_ |= 32;
                    onChanged();
                    return this;
                }

                public Builder clearCurrencyCode() {
                    this.bitField0_ &= -33;
                    this.currencyCode_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasAvailableUseCount() {
                    return (this.bitField0_ & 64) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public int getAvailableUseCount() {
                    return this.availableUseCount_;
                }

                public Builder setAvailableUseCount(int i) {
                    this.availableUseCount_ = i;
                    this.bitField0_ |= 64;
                    onChanged();
                    return this;
                }

                public Builder clearAvailableUseCount() {
                    this.bitField0_ &= -65;
                    this.availableUseCount_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasPromotionalDiscountType() {
                    return (this.bitField0_ & 128) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public int getPromotionalDiscountType() {
                    return this.promotionalDiscountType_;
                }

                public Builder setPromotionalDiscountType(int i) {
                    this.promotionalDiscountType_ = i;
                    this.bitField0_ |= 128;
                    onChanged();
                    return this;
                }

                public Builder clearPromotionalDiscountType() {
                    this.bitField0_ &= -129;
                    this.promotionalDiscountType_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasLoyaltyRewardId() {
                    return (this.bitField0_ & 256) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public int getLoyaltyRewardId() {
                    return this.loyaltyRewardId_;
                }

                public Builder setLoyaltyRewardId(int i) {
                    this.loyaltyRewardId_ = i;
                    this.bitField0_ |= 256;
                    onChanged();
                    return this;
                }

                public Builder clearLoyaltyRewardId() {
                    this.bitField0_ &= -257;
                    this.loyaltyRewardId_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasLocalizedNameToken() {
                    return (this.bitField0_ & 512) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public String getLocalizedNameToken() {
                    Object obj = this.localizedNameToken_;
                    if (!(obj instanceof String)) {
                        ByteString byteString = (ByteString) obj;
                        String stringUtf8 = byteString.toStringUtf8();
                        if (byteString.isValidUtf8()) {
                            this.localizedNameToken_ = stringUtf8;
                        }
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public ByteString getLocalizedNameTokenBytes() {
                    Object obj = this.localizedNameToken_;
                    if (obj instanceof String) {
                        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.localizedNameToken_ = byteStringCopyFromUtf8;
                        return byteStringCopyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setLocalizedNameToken(String str) {
                    str.getClass();
                    this.localizedNameToken_ = str;
                    this.bitField0_ |= 512;
                    onChanged();
                    return this;
                }

                public Builder clearLocalizedNameToken() {
                    this.localizedNameToken_ = ValveDiscountPromotionDetails.getDefaultInstance().getLocalizedNameToken();
                    this.bitField0_ &= -513;
                    onChanged();
                    return this;
                }

                public Builder setLocalizedNameTokenBytes(ByteString byteString) {
                    byteString.getClass();
                    this.localizedNameToken_ = byteString;
                    this.bitField0_ |= 512;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public boolean hasMaxUseCount() {
                    return (this.bitField0_ & 1024) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.ValveDiscountPromotionDetailsOrBuilder
                public int getMaxUseCount() {
                    return this.maxUseCount_;
                }

                public Builder setMaxUseCount(int i) {
                    this.maxUseCount_ = i;
                    this.bitField0_ |= 1024;
                    onChanged();
                    return this;
                }

                public Builder clearMaxUseCount() {
                    this.bitField0_ &= -1025;
                    this.maxUseCount_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static ValveDiscountPromotionDetails getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ValveDiscountPromotionDetails> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<ValveDiscountPromotionDetails> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ValveDiscountPromotionDetails getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
        public List<ValveDiscountPromotionDetails> getPromotionsList() {
            return this.promotions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
        public List<? extends ValveDiscountPromotionDetailsOrBuilder> getPromotionsOrBuilderList() {
            return this.promotions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
        public int getPromotionsCount() {
            return this.promotions_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
        public ValveDiscountPromotionDetails getPromotions(int i) {
            return this.promotions_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
        public ValveDiscountPromotionDetailsOrBuilder getPromotionsOrBuilder(int i) {
            return this.promotions_.get(i);
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
            for (int i = 0; i < this.promotions_.size(); i++) {
                codedOutputStream.writeMessage(1, this.promotions_.get(i));
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
            for (int i2 = 0; i2 < this.promotions_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.promotions_.get(i2));
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
            if (!(obj instanceof CUserAccount_GetAvailableValveDiscountPromotions_Response)) {
                return super.equals(obj);
            }
            CUserAccount_GetAvailableValveDiscountPromotions_Response cUserAccount_GetAvailableValveDiscountPromotions_Response = (CUserAccount_GetAvailableValveDiscountPromotions_Response) obj;
            return getPromotionsList().equals(cUserAccount_GetAvailableValveDiscountPromotions_Response.getPromotionsList()) && getUnknownFields().equals(cUserAccount_GetAvailableValveDiscountPromotions_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getPromotionsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPromotionsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAvailableValveDiscountPromotions_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetAvailableValveDiscountPromotions_Response cUserAccount_GetAvailableValveDiscountPromotions_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetAvailableValveDiscountPromotions_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> promotionsBuilder_;
            private List<ValveDiscountPromotionDetails> promotions_;

            private void buildPartial0(CUserAccount_GetAvailableValveDiscountPromotions_Response cUserAccount_GetAvailableValveDiscountPromotions_Response) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAvailableValveDiscountPromotions_Response.class, Builder.class);
            }

            private Builder() {
                this.promotions_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.promotions_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.promotions_ = Collections.emptyList();
                } else {
                    this.promotions_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAvailableValveDiscountPromotions_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetAvailableValveDiscountPromotions_Response getDefaultInstanceForType() {
                return CUserAccount_GetAvailableValveDiscountPromotions_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAvailableValveDiscountPromotions_Response build() {
                CUserAccount_GetAvailableValveDiscountPromotions_Response cUserAccount_GetAvailableValveDiscountPromotions_ResponseBuildPartial = buildPartial();
                if (cUserAccount_GetAvailableValveDiscountPromotions_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_GetAvailableValveDiscountPromotions_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetAvailableValveDiscountPromotions_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAvailableValveDiscountPromotions_Response buildPartial() {
                CUserAccount_GetAvailableValveDiscountPromotions_Response cUserAccount_GetAvailableValveDiscountPromotions_Response = new CUserAccount_GetAvailableValveDiscountPromotions_Response(this);
                buildPartialRepeatedFields(cUserAccount_GetAvailableValveDiscountPromotions_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetAvailableValveDiscountPromotions_Response);
                }
                onBuilt();
                return cUserAccount_GetAvailableValveDiscountPromotions_Response;
            }

            private void buildPartialRepeatedFields(CUserAccount_GetAvailableValveDiscountPromotions_Response cUserAccount_GetAvailableValveDiscountPromotions_Response) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.promotions_ = Collections.unmodifiableList(this.promotions_);
                        this.bitField0_ &= -2;
                    }
                    cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_ = this.promotions_;
                    return;
                }
                cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetAvailableValveDiscountPromotions_Response) {
                    return mergeFrom((CUserAccount_GetAvailableValveDiscountPromotions_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetAvailableValveDiscountPromotions_Response cUserAccount_GetAvailableValveDiscountPromotions_Response) {
                if (cUserAccount_GetAvailableValveDiscountPromotions_Response == CUserAccount_GetAvailableValveDiscountPromotions_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.promotionsBuilder_ == null) {
                    if (!cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_.isEmpty()) {
                        if (this.promotions_.isEmpty()) {
                            this.promotions_ = cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_;
                            this.bitField0_ &= -2;
                        } else {
                            ensurePromotionsIsMutable();
                            this.promotions_.addAll(cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_);
                        }
                        onChanged();
                    }
                } else if (!cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_.isEmpty()) {
                    if (this.promotionsBuilder_.isEmpty()) {
                        this.promotionsBuilder_.dispose();
                        this.promotionsBuilder_ = null;
                        this.promotions_ = cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_;
                        this.bitField0_ &= -2;
                        this.promotionsBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetPromotionsFieldBuilder() : null;
                    } else {
                        this.promotionsBuilder_.addAllMessages(cUserAccount_GetAvailableValveDiscountPromotions_Response.promotions_);
                    }
                }
                mergeUnknownFields(cUserAccount_GetAvailableValveDiscountPromotions_Response.getUnknownFields());
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
                                    ValveDiscountPromotionDetails valveDiscountPromotionDetails = (ValveDiscountPromotionDetails) codedInputStream.readMessage(ValveDiscountPromotionDetails.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensurePromotionsIsMutable();
                                        this.promotions_.add(valveDiscountPromotionDetails);
                                    } else {
                                        repeatedFieldBuilder.addMessage(valveDiscountPromotionDetails);
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

            private void ensurePromotionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.promotions_ = new ArrayList(this.promotions_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
            public List<ValveDiscountPromotionDetails> getPromotionsList() {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.promotions_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
            public int getPromotionsCount() {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.promotions_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
            public ValveDiscountPromotionDetails getPromotions(int i) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.promotions_.get(i);
                }
                return (ValveDiscountPromotionDetails) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setPromotions(int i, ValveDiscountPromotionDetails valveDiscountPromotionDetails) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    valveDiscountPromotionDetails.getClass();
                    ensurePromotionsIsMutable();
                    this.promotions_.set(i, valveDiscountPromotionDetails);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, valveDiscountPromotionDetails);
                }
                return this;
            }

            public Builder setPromotions(int i, ValveDiscountPromotionDetails.Builder builder) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePromotionsIsMutable();
                    this.promotions_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addPromotions(ValveDiscountPromotionDetails valveDiscountPromotionDetails) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    valveDiscountPromotionDetails.getClass();
                    ensurePromotionsIsMutable();
                    this.promotions_.add(valveDiscountPromotionDetails);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(valveDiscountPromotionDetails);
                }
                return this;
            }

            public Builder addPromotions(int i, ValveDiscountPromotionDetails valveDiscountPromotionDetails) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    valveDiscountPromotionDetails.getClass();
                    ensurePromotionsIsMutable();
                    this.promotions_.add(i, valveDiscountPromotionDetails);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, valveDiscountPromotionDetails);
                }
                return this;
            }

            public Builder addPromotions(ValveDiscountPromotionDetails.Builder builder) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePromotionsIsMutable();
                    this.promotions_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addPromotions(int i, ValveDiscountPromotionDetails.Builder builder) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePromotionsIsMutable();
                    this.promotions_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllPromotions(Iterable<? extends ValveDiscountPromotionDetails> iterable) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePromotionsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.promotions_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearPromotions() {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.promotions_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removePromotions(int i) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensurePromotionsIsMutable();
                    this.promotions_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public ValveDiscountPromotionDetails.Builder getPromotionsBuilder(int i) {
                return (ValveDiscountPromotionDetails.Builder) internalGetPromotionsFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
            public ValveDiscountPromotionDetailsOrBuilder getPromotionsOrBuilder(int i) {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.promotions_.get(i);
                }
                return (ValveDiscountPromotionDetailsOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_ResponseOrBuilder
            public List<? extends ValveDiscountPromotionDetailsOrBuilder> getPromotionsOrBuilderList() {
                RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> repeatedFieldBuilder = this.promotionsBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.promotions_);
            }

            public ValveDiscountPromotionDetails.Builder addPromotionsBuilder() {
                return (ValveDiscountPromotionDetails.Builder) internalGetPromotionsFieldBuilder().addBuilder(ValveDiscountPromotionDetails.getDefaultInstance());
            }

            public ValveDiscountPromotionDetails.Builder addPromotionsBuilder(int i) {
                return (ValveDiscountPromotionDetails.Builder) internalGetPromotionsFieldBuilder().addBuilder(i, ValveDiscountPromotionDetails.getDefaultInstance());
            }

            public List<ValveDiscountPromotionDetails.Builder> getPromotionsBuilderList() {
                return internalGetPromotionsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ValveDiscountPromotionDetails, ValveDiscountPromotionDetails.Builder, ValveDiscountPromotionDetailsOrBuilder> internalGetPromotionsFieldBuilder() {
                if (this.promotionsBuilder_ == null) {
                    this.promotionsBuilder_ = new RepeatedFieldBuilder<>(this.promotions_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.promotions_ = null;
                }
                return this.promotionsBuilder_;
            }
        }

        public static CUserAccount_GetAvailableValveDiscountPromotions_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetAvailableValveDiscountPromotions_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetAvailableValveDiscountPromotions_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetAvailableValveDiscountPromotions_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetClientWalletDetails_Request extends GeneratedMessage implements CUserAccount_GetClientWalletDetails_RequestOrBuilder {
        private static final CUserAccount_GetClientWalletDetails_Request DEFAULT_INSTANCE;
        public static final int INCLUDE_BALANCE_IN_USD_FIELD_NUMBER = 1;
        public static final int INCLUDE_FORMATTED_BALANCE_FIELD_NUMBER = 3;
        private static final Parser<CUserAccount_GetClientWalletDetails_Request> PARSER;
        public static final int WALLET_REGION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean includeBalanceInUsd_;
        private boolean includeFormattedBalance_;
        private byte memoizedIsInitialized;
        private int walletRegion_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetClientWalletDetails_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetClientWalletDetails_Request();
            PARSER = new AbstractParser<CUserAccount_GetClientWalletDetails_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetClientWalletDetails_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetClientWalletDetails_Request.newBuilder();
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

        private CUserAccount_GetClientWalletDetails_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.includeBalanceInUsd_ = false;
            this.walletRegion_ = 1;
            this.includeFormattedBalance_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetClientWalletDetails_Request() {
            this.includeBalanceInUsd_ = false;
            this.includeFormattedBalance_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.walletRegion_ = 1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetClientWalletDetails_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetClientWalletDetails_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetClientWalletDetails_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
        public boolean hasIncludeBalanceInUsd() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
        public boolean getIncludeBalanceInUsd() {
            return this.includeBalanceInUsd_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
        public boolean hasWalletRegion() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
        public int getWalletRegion() {
            return this.walletRegion_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
        public boolean hasIncludeFormattedBalance() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
        public boolean getIncludeFormattedBalance() {
            return this.includeFormattedBalance_;
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
                codedOutputStream.writeBool(1, this.includeBalanceInUsd_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.walletRegion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.includeFormattedBalance_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.includeBalanceInUsd_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt32Size(2, this.walletRegion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(3, this.includeFormattedBalance_);
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
            if (!(obj instanceof CUserAccount_GetClientWalletDetails_Request)) {
                return super.equals(obj);
            }
            CUserAccount_GetClientWalletDetails_Request cUserAccount_GetClientWalletDetails_Request = (CUserAccount_GetClientWalletDetails_Request) obj;
            if (hasIncludeBalanceInUsd() != cUserAccount_GetClientWalletDetails_Request.hasIncludeBalanceInUsd()) {
                return false;
            }
            if ((hasIncludeBalanceInUsd() && getIncludeBalanceInUsd() != cUserAccount_GetClientWalletDetails_Request.getIncludeBalanceInUsd()) || hasWalletRegion() != cUserAccount_GetClientWalletDetails_Request.hasWalletRegion()) {
                return false;
            }
            if ((!hasWalletRegion() || getWalletRegion() == cUserAccount_GetClientWalletDetails_Request.getWalletRegion()) && hasIncludeFormattedBalance() == cUserAccount_GetClientWalletDetails_Request.hasIncludeFormattedBalance()) {
                return (!hasIncludeFormattedBalance() || getIncludeFormattedBalance() == cUserAccount_GetClientWalletDetails_Request.getIncludeFormattedBalance()) && getUnknownFields().equals(cUserAccount_GetClientWalletDetails_Request.getUnknownFields());
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
            if (hasIncludeBalanceInUsd()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getIncludeBalanceInUsd());
            }
            if (hasWalletRegion()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getWalletRegion();
            }
            if (hasIncludeFormattedBalance()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getIncludeFormattedBalance());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetClientWalletDetails_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetClientWalletDetails_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetClientWalletDetails_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetClientWalletDetails_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetClientWalletDetails_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetClientWalletDetails_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetClientWalletDetails_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetClientWalletDetails_Request cUserAccount_GetClientWalletDetails_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetClientWalletDetails_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetClientWalletDetails_RequestOrBuilder {
            private int bitField0_;
            private boolean includeBalanceInUsd_;
            private boolean includeFormattedBalance_;
            private int walletRegion_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetClientWalletDetails_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetClientWalletDetails_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetClientWalletDetails_Request.class, Builder.class);
            }

            private Builder() {
                this.walletRegion_ = 1;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.walletRegion_ = 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.includeBalanceInUsd_ = false;
                this.walletRegion_ = 1;
                this.includeFormattedBalance_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetClientWalletDetails_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetClientWalletDetails_Request getDefaultInstanceForType() {
                return CUserAccount_GetClientWalletDetails_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetClientWalletDetails_Request build() {
                CUserAccount_GetClientWalletDetails_Request cUserAccount_GetClientWalletDetails_RequestBuildPartial = buildPartial();
                if (cUserAccount_GetClientWalletDetails_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_GetClientWalletDetails_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetClientWalletDetails_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetClientWalletDetails_Request buildPartial() {
                CUserAccount_GetClientWalletDetails_Request cUserAccount_GetClientWalletDetails_Request = new CUserAccount_GetClientWalletDetails_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetClientWalletDetails_Request);
                }
                onBuilt();
                return cUserAccount_GetClientWalletDetails_Request;
            }

            private void buildPartial0(CUserAccount_GetClientWalletDetails_Request cUserAccount_GetClientWalletDetails_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_GetClientWalletDetails_Request.includeBalanceInUsd_ = this.includeBalanceInUsd_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_GetClientWalletDetails_Request.walletRegion_ = this.walletRegion_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cUserAccount_GetClientWalletDetails_Request.includeFormattedBalance_ = this.includeFormattedBalance_;
                    i |= 4;
                }
                cUserAccount_GetClientWalletDetails_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetClientWalletDetails_Request) {
                    return mergeFrom((CUserAccount_GetClientWalletDetails_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetClientWalletDetails_Request cUserAccount_GetClientWalletDetails_Request) {
                if (cUserAccount_GetClientWalletDetails_Request == CUserAccount_GetClientWalletDetails_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_GetClientWalletDetails_Request.hasIncludeBalanceInUsd()) {
                    setIncludeBalanceInUsd(cUserAccount_GetClientWalletDetails_Request.getIncludeBalanceInUsd());
                }
                if (cUserAccount_GetClientWalletDetails_Request.hasWalletRegion()) {
                    setWalletRegion(cUserAccount_GetClientWalletDetails_Request.getWalletRegion());
                }
                if (cUserAccount_GetClientWalletDetails_Request.hasIncludeFormattedBalance()) {
                    setIncludeFormattedBalance(cUserAccount_GetClientWalletDetails_Request.getIncludeFormattedBalance());
                }
                mergeUnknownFields(cUserAccount_GetClientWalletDetails_Request.getUnknownFields());
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
                                    this.includeBalanceInUsd_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.walletRegion_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.includeFormattedBalance_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
            public boolean hasIncludeBalanceInUsd() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
            public boolean getIncludeBalanceInUsd() {
                return this.includeBalanceInUsd_;
            }

            public Builder setIncludeBalanceInUsd(boolean z) {
                this.includeBalanceInUsd_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearIncludeBalanceInUsd() {
                this.bitField0_ &= -2;
                this.includeBalanceInUsd_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
            public boolean hasWalletRegion() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
            public int getWalletRegion() {
                return this.walletRegion_;
            }

            public Builder setWalletRegion(int i) {
                this.walletRegion_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearWalletRegion() {
                this.bitField0_ &= -3;
                this.walletRegion_ = 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
            public boolean hasIncludeFormattedBalance() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_RequestOrBuilder
            public boolean getIncludeFormattedBalance() {
                return this.includeFormattedBalance_;
            }

            public Builder setIncludeFormattedBalance(boolean z) {
                this.includeFormattedBalance_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearIncludeFormattedBalance() {
                this.bitField0_ &= -5;
                this.includeFormattedBalance_ = false;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_GetClientWalletDetails_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetClientWalletDetails_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetClientWalletDetails_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetClientWalletDetails_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetWalletDetails_Response extends GeneratedMessage implements CUserAccount_GetWalletDetails_ResponseOrBuilder {
        public static final int BALANCE_FIELD_NUMBER = 5;
        public static final int BALANCE_IN_USD_FIELD_NUMBER = 10;
        public static final int CURRENCY_CODE_FIELD_NUMBER = 7;
        private static final CUserAccount_GetWalletDetails_Response DEFAULT_INSTANCE;
        public static final int DELAYED_BALANCE_AVAILABLE_MAX_TIME_FIELD_NUMBER = 17;
        public static final int DELAYED_BALANCE_AVAILABLE_MIN_TIME_FIELD_NUMBER = 16;
        public static final int DELAYED_BALANCE_FIELD_NUMBER = 6;
        public static final int DELAYED_BALANCE_IN_USD_FIELD_NUMBER = 11;
        public static final int DELAYED_BALANCE_NEWEST_SOURCE_FIELD_NUMBER = 18;
        public static final int FORMATTED_BALANCE_FIELD_NUMBER = 14;
        public static final int FORMATTED_DELAYED_BALANCE_FIELD_NUMBER = 15;
        public static final int HAS_WALLET_FIELD_NUMBER = 1;
        public static final int HAS_WALLET_IN_OTHER_REGIONS_FIELD_NUMBER = 12;
        public static final int MOST_RECENT_TXNID_FIELD_NUMBER = 9;
        public static final int OTHER_REGIONS_FIELD_NUMBER = 13;
        private static final Parser<CUserAccount_GetWalletDetails_Response> PARSER;
        public static final int TIME_MOST_RECENT_TXN_FIELD_NUMBER = 8;
        public static final int USER_COUNTRY_CODE_FIELD_NUMBER = 2;
        public static final int WALLET_COUNTRY_CODE_FIELD_NUMBER = 3;
        public static final int WALLET_STATE_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private long balanceInUsd_;
        private long balance_;
        private int bitField0_;
        private int currencyCode_;
        private int delayedBalanceAvailableMaxTime_;
        private int delayedBalanceAvailableMinTime_;
        private long delayedBalanceInUsd_;
        private int delayedBalanceNewestSource_;
        private long delayedBalance_;
        private volatile Object formattedBalance_;
        private volatile Object formattedDelayedBalance_;
        private boolean hasWalletInOtherRegions_;
        private boolean hasWallet_;
        private byte memoizedIsInitialized;
        private long mostRecentTxnid_;
        private Internal.IntList otherRegions_;
        private int timeMostRecentTxn_;
        private volatile Object userCountryCode_;
        private volatile Object walletCountryCode_;
        private volatile Object walletState_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetWalletDetails_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetWalletDetails_Response();
            PARSER = new AbstractParser<CUserAccount_GetWalletDetails_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetWalletDetails_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetWalletDetails_Response.newBuilder();
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

        private CUserAccount_GetWalletDetails_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.hasWallet_ = false;
            this.userCountryCode_ = "";
            this.walletCountryCode_ = "";
            this.walletState_ = "";
            this.balance_ = 0L;
            this.delayedBalance_ = 0L;
            this.currencyCode_ = 0;
            this.timeMostRecentTxn_ = 0;
            this.mostRecentTxnid_ = 0L;
            this.balanceInUsd_ = 0L;
            this.delayedBalanceInUsd_ = 0L;
            this.hasWalletInOtherRegions_ = false;
            this.otherRegions_ = GeneratedMessage.emptyIntList();
            this.formattedBalance_ = "";
            this.formattedDelayedBalance_ = "";
            this.delayedBalanceAvailableMinTime_ = 0;
            this.delayedBalanceAvailableMaxTime_ = 0;
            this.delayedBalanceNewestSource_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetWalletDetails_Response() {
            this.hasWallet_ = false;
            this.userCountryCode_ = "";
            this.walletCountryCode_ = "";
            this.walletState_ = "";
            this.balance_ = 0L;
            this.delayedBalance_ = 0L;
            this.currencyCode_ = 0;
            this.timeMostRecentTxn_ = 0;
            this.mostRecentTxnid_ = 0L;
            this.balanceInUsd_ = 0L;
            this.delayedBalanceInUsd_ = 0L;
            this.hasWalletInOtherRegions_ = false;
            this.otherRegions_ = GeneratedMessage.emptyIntList();
            this.formattedBalance_ = "";
            this.formattedDelayedBalance_ = "";
            this.delayedBalanceAvailableMinTime_ = 0;
            this.delayedBalanceAvailableMaxTime_ = 0;
            this.delayedBalanceNewestSource_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.userCountryCode_ = "";
            this.walletCountryCode_ = "";
            this.walletState_ = "";
            this.otherRegions_ = GeneratedMessage.emptyIntList();
            this.formattedBalance_ = "";
            this.formattedDelayedBalance_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetWalletDetails_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetWalletDetails_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetWalletDetails_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasHasWallet() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean getHasWallet() {
            return this.hasWallet_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasUserCountryCode() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public String getUserCountryCode() {
            Object obj = this.userCountryCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userCountryCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public ByteString getUserCountryCodeBytes() {
            Object obj = this.userCountryCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userCountryCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasWalletCountryCode() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public String getWalletCountryCode() {
            Object obj = this.walletCountryCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.walletCountryCode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public ByteString getWalletCountryCodeBytes() {
            Object obj = this.walletCountryCode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.walletCountryCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasWalletState() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public String getWalletState() {
            Object obj = this.walletState_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.walletState_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public ByteString getWalletStateBytes() {
            Object obj = this.walletState_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.walletState_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasBalance() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public long getBalance() {
            return this.balance_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasDelayedBalance() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public long getDelayedBalance() {
            return this.delayedBalance_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasCurrencyCode() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public int getCurrencyCode() {
            return this.currencyCode_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasTimeMostRecentTxn() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public int getTimeMostRecentTxn() {
            return this.timeMostRecentTxn_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasMostRecentTxnid() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public long getMostRecentTxnid() {
            return this.mostRecentTxnid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasBalanceInUsd() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public long getBalanceInUsd() {
            return this.balanceInUsd_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasDelayedBalanceInUsd() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public long getDelayedBalanceInUsd() {
            return this.delayedBalanceInUsd_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasHasWalletInOtherRegions() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean getHasWalletInOtherRegions() {
            return this.hasWalletInOtherRegions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public List<Integer> getOtherRegionsList() {
            return this.otherRegions_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public int getOtherRegionsCount() {
            return this.otherRegions_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public int getOtherRegions(int i) {
            return this.otherRegions_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasFormattedBalance() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public String getFormattedBalance() {
            Object obj = this.formattedBalance_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.formattedBalance_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public ByteString getFormattedBalanceBytes() {
            Object obj = this.formattedBalance_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.formattedBalance_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasFormattedDelayedBalance() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public String getFormattedDelayedBalance() {
            Object obj = this.formattedDelayedBalance_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.formattedDelayedBalance_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public ByteString getFormattedDelayedBalanceBytes() {
            Object obj = this.formattedDelayedBalance_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.formattedDelayedBalance_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasDelayedBalanceAvailableMinTime() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public int getDelayedBalanceAvailableMinTime() {
            return this.delayedBalanceAvailableMinTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasDelayedBalanceAvailableMaxTime() {
            return (this.bitField0_ & 32768) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public int getDelayedBalanceAvailableMaxTime() {
            return this.delayedBalanceAvailableMaxTime_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public boolean hasDelayedBalanceNewestSource() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
        public int getDelayedBalanceNewestSource() {
            return this.delayedBalanceNewestSource_;
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
                codedOutputStream.writeBool(1, this.hasWallet_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 2, this.userCountryCode_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.walletCountryCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 4, this.walletState_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeInt64(5, this.balance_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeInt64(6, this.delayedBalance_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeInt32(7, this.currencyCode_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeUInt32(8, this.timeMostRecentTxn_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt64(9, this.mostRecentTxnid_);
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeInt64(10, this.balanceInUsd_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeInt64(11, this.delayedBalanceInUsd_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeBool(12, this.hasWalletInOtherRegions_);
            }
            for (int i = 0; i < this.otherRegions_.size(); i++) {
                codedOutputStream.writeInt32(13, this.otherRegions_.getInt(i));
            }
            if ((this.bitField0_ & 4096) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 14, this.formattedBalance_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 15, this.formattedDelayedBalance_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                codedOutputStream.writeInt32(16, this.delayedBalanceAvailableMinTime_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                codedOutputStream.writeInt32(17, this.delayedBalanceAvailableMaxTime_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                codedOutputStream.writeInt32(18, this.delayedBalanceNewestSource_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.hasWallet_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += GeneratedMessage.computeStringSize(2, this.userCountryCode_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += GeneratedMessage.computeStringSize(3, this.walletCountryCode_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeBoolSize += GeneratedMessage.computeStringSize(4, this.walletState_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(5, this.balance_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(6, this.delayedBalance_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt32Size(7, this.currencyCode_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt32Size(8, this.timeMostRecentTxn_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt64Size(9, this.mostRecentTxnid_);
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(10, this.balanceInUsd_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(11, this.delayedBalanceInUsd_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(12, this.hasWalletInOtherRegions_);
            }
            int iComputeInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.otherRegions_.size(); i2++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.otherRegions_.getInt(i2));
            }
            int size = iComputeBoolSize + iComputeInt32SizeNoTag + getOtherRegionsList().size();
            if ((this.bitField0_ & 4096) != 0) {
                size += GeneratedMessage.computeStringSize(14, this.formattedBalance_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                size += GeneratedMessage.computeStringSize(15, this.formattedDelayedBalance_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                size += CodedOutputStream.computeInt32Size(16, this.delayedBalanceAvailableMinTime_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                size += CodedOutputStream.computeInt32Size(17, this.delayedBalanceAvailableMaxTime_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                size += CodedOutputStream.computeInt32Size(18, this.delayedBalanceNewestSource_);
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
            if (!(obj instanceof CUserAccount_GetWalletDetails_Response)) {
                return super.equals(obj);
            }
            CUserAccount_GetWalletDetails_Response cUserAccount_GetWalletDetails_Response = (CUserAccount_GetWalletDetails_Response) obj;
            if (hasHasWallet() != cUserAccount_GetWalletDetails_Response.hasHasWallet()) {
                return false;
            }
            if ((hasHasWallet() && getHasWallet() != cUserAccount_GetWalletDetails_Response.getHasWallet()) || hasUserCountryCode() != cUserAccount_GetWalletDetails_Response.hasUserCountryCode()) {
                return false;
            }
            if ((hasUserCountryCode() && !getUserCountryCode().equals(cUserAccount_GetWalletDetails_Response.getUserCountryCode())) || hasWalletCountryCode() != cUserAccount_GetWalletDetails_Response.hasWalletCountryCode()) {
                return false;
            }
            if ((hasWalletCountryCode() && !getWalletCountryCode().equals(cUserAccount_GetWalletDetails_Response.getWalletCountryCode())) || hasWalletState() != cUserAccount_GetWalletDetails_Response.hasWalletState()) {
                return false;
            }
            if ((hasWalletState() && !getWalletState().equals(cUserAccount_GetWalletDetails_Response.getWalletState())) || hasBalance() != cUserAccount_GetWalletDetails_Response.hasBalance()) {
                return false;
            }
            if ((hasBalance() && getBalance() != cUserAccount_GetWalletDetails_Response.getBalance()) || hasDelayedBalance() != cUserAccount_GetWalletDetails_Response.hasDelayedBalance()) {
                return false;
            }
            if ((hasDelayedBalance() && getDelayedBalance() != cUserAccount_GetWalletDetails_Response.getDelayedBalance()) || hasCurrencyCode() != cUserAccount_GetWalletDetails_Response.hasCurrencyCode()) {
                return false;
            }
            if ((hasCurrencyCode() && getCurrencyCode() != cUserAccount_GetWalletDetails_Response.getCurrencyCode()) || hasTimeMostRecentTxn() != cUserAccount_GetWalletDetails_Response.hasTimeMostRecentTxn()) {
                return false;
            }
            if ((hasTimeMostRecentTxn() && getTimeMostRecentTxn() != cUserAccount_GetWalletDetails_Response.getTimeMostRecentTxn()) || hasMostRecentTxnid() != cUserAccount_GetWalletDetails_Response.hasMostRecentTxnid()) {
                return false;
            }
            if ((hasMostRecentTxnid() && getMostRecentTxnid() != cUserAccount_GetWalletDetails_Response.getMostRecentTxnid()) || hasBalanceInUsd() != cUserAccount_GetWalletDetails_Response.hasBalanceInUsd()) {
                return false;
            }
            if ((hasBalanceInUsd() && getBalanceInUsd() != cUserAccount_GetWalletDetails_Response.getBalanceInUsd()) || hasDelayedBalanceInUsd() != cUserAccount_GetWalletDetails_Response.hasDelayedBalanceInUsd()) {
                return false;
            }
            if ((hasDelayedBalanceInUsd() && getDelayedBalanceInUsd() != cUserAccount_GetWalletDetails_Response.getDelayedBalanceInUsd()) || hasHasWalletInOtherRegions() != cUserAccount_GetWalletDetails_Response.hasHasWalletInOtherRegions()) {
                return false;
            }
            if ((hasHasWalletInOtherRegions() && getHasWalletInOtherRegions() != cUserAccount_GetWalletDetails_Response.getHasWalletInOtherRegions()) || !getOtherRegionsList().equals(cUserAccount_GetWalletDetails_Response.getOtherRegionsList()) || hasFormattedBalance() != cUserAccount_GetWalletDetails_Response.hasFormattedBalance()) {
                return false;
            }
            if ((hasFormattedBalance() && !getFormattedBalance().equals(cUserAccount_GetWalletDetails_Response.getFormattedBalance())) || hasFormattedDelayedBalance() != cUserAccount_GetWalletDetails_Response.hasFormattedDelayedBalance()) {
                return false;
            }
            if ((hasFormattedDelayedBalance() && !getFormattedDelayedBalance().equals(cUserAccount_GetWalletDetails_Response.getFormattedDelayedBalance())) || hasDelayedBalanceAvailableMinTime() != cUserAccount_GetWalletDetails_Response.hasDelayedBalanceAvailableMinTime()) {
                return false;
            }
            if ((hasDelayedBalanceAvailableMinTime() && getDelayedBalanceAvailableMinTime() != cUserAccount_GetWalletDetails_Response.getDelayedBalanceAvailableMinTime()) || hasDelayedBalanceAvailableMaxTime() != cUserAccount_GetWalletDetails_Response.hasDelayedBalanceAvailableMaxTime()) {
                return false;
            }
            if ((!hasDelayedBalanceAvailableMaxTime() || getDelayedBalanceAvailableMaxTime() == cUserAccount_GetWalletDetails_Response.getDelayedBalanceAvailableMaxTime()) && hasDelayedBalanceNewestSource() == cUserAccount_GetWalletDetails_Response.hasDelayedBalanceNewestSource()) {
                return (!hasDelayedBalanceNewestSource() || getDelayedBalanceNewestSource() == cUserAccount_GetWalletDetails_Response.getDelayedBalanceNewestSource()) && getUnknownFields().equals(cUserAccount_GetWalletDetails_Response.getUnknownFields());
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
            if (hasHasWallet()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getHasWallet());
            }
            if (hasUserCountryCode()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getUserCountryCode().hashCode();
            }
            if (hasWalletCountryCode()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getWalletCountryCode().hashCode();
            }
            if (hasWalletState()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getWalletState().hashCode();
            }
            if (hasBalance()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashLong(getBalance());
            }
            if (hasDelayedBalance()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + Internal.hashLong(getDelayedBalance());
            }
            if (hasCurrencyCode()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getCurrencyCode();
            }
            if (hasTimeMostRecentTxn()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getTimeMostRecentTxn();
            }
            if (hasMostRecentTxnid()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + Internal.hashLong(getMostRecentTxnid());
            }
            if (hasBalanceInUsd()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getBalanceInUsd());
            }
            if (hasDelayedBalanceInUsd()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + Internal.hashLong(getDelayedBalanceInUsd());
            }
            if (hasHasWalletInOtherRegions()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + Internal.hashBoolean(getHasWalletInOtherRegions());
            }
            if (getOtherRegionsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + getOtherRegionsList().hashCode();
            }
            if (hasFormattedBalance()) {
                iHashCode = (((iHashCode * 37) + 14) * 53) + getFormattedBalance().hashCode();
            }
            if (hasFormattedDelayedBalance()) {
                iHashCode = (((iHashCode * 37) + 15) * 53) + getFormattedDelayedBalance().hashCode();
            }
            if (hasDelayedBalanceAvailableMinTime()) {
                iHashCode = (((iHashCode * 37) + 16) * 53) + getDelayedBalanceAvailableMinTime();
            }
            if (hasDelayedBalanceAvailableMaxTime()) {
                iHashCode = (((iHashCode * 37) + 17) * 53) + getDelayedBalanceAvailableMaxTime();
            }
            if (hasDelayedBalanceNewestSource()) {
                iHashCode = (((iHashCode * 37) + 18) * 53) + getDelayedBalanceNewestSource();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetWalletDetails_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetWalletDetails_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetWalletDetails_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetWalletDetails_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetWalletDetails_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetWalletDetails_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetWalletDetails_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetWalletDetails_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetWalletDetails_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetWalletDetails_Response cUserAccount_GetWalletDetails_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetWalletDetails_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetWalletDetails_ResponseOrBuilder {
            private long balanceInUsd_;
            private long balance_;
            private int bitField0_;
            private int currencyCode_;
            private int delayedBalanceAvailableMaxTime_;
            private int delayedBalanceAvailableMinTime_;
            private long delayedBalanceInUsd_;
            private int delayedBalanceNewestSource_;
            private long delayedBalance_;
            private Object formattedBalance_;
            private Object formattedDelayedBalance_;
            private boolean hasWalletInOtherRegions_;
            private boolean hasWallet_;
            private long mostRecentTxnid_;
            private Internal.IntList otherRegions_;
            private int timeMostRecentTxn_;
            private Object userCountryCode_;
            private Object walletCountryCode_;
            private Object walletState_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetWalletDetails_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetWalletDetails_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetWalletDetails_Response.class, Builder.class);
            }

            private Builder() {
                this.userCountryCode_ = "";
                this.walletCountryCode_ = "";
                this.walletState_ = "";
                this.otherRegions_ = GeneratedMessage.emptyIntList();
                this.formattedBalance_ = "";
                this.formattedDelayedBalance_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.userCountryCode_ = "";
                this.walletCountryCode_ = "";
                this.walletState_ = "";
                this.otherRegions_ = GeneratedMessage.emptyIntList();
                this.formattedBalance_ = "";
                this.formattedDelayedBalance_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.hasWallet_ = false;
                this.userCountryCode_ = "";
                this.walletCountryCode_ = "";
                this.walletState_ = "";
                this.balance_ = 0L;
                this.delayedBalance_ = 0L;
                this.currencyCode_ = 0;
                this.timeMostRecentTxn_ = 0;
                this.mostRecentTxnid_ = 0L;
                this.balanceInUsd_ = 0L;
                this.delayedBalanceInUsd_ = 0L;
                this.hasWalletInOtherRegions_ = false;
                this.otherRegions_ = GeneratedMessage.emptyIntList();
                this.formattedBalance_ = "";
                this.formattedDelayedBalance_ = "";
                this.delayedBalanceAvailableMinTime_ = 0;
                this.delayedBalanceAvailableMaxTime_ = 0;
                this.delayedBalanceNewestSource_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetWalletDetails_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetWalletDetails_Response getDefaultInstanceForType() {
                return CUserAccount_GetWalletDetails_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetWalletDetails_Response build() {
                CUserAccount_GetWalletDetails_Response cUserAccount_GetWalletDetails_ResponseBuildPartial = buildPartial();
                if (cUserAccount_GetWalletDetails_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_GetWalletDetails_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetWalletDetails_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetWalletDetails_Response buildPartial() {
                CUserAccount_GetWalletDetails_Response cUserAccount_GetWalletDetails_Response = new CUserAccount_GetWalletDetails_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetWalletDetails_Response);
                }
                onBuilt();
                return cUserAccount_GetWalletDetails_Response;
            }

            private void buildPartial0(CUserAccount_GetWalletDetails_Response cUserAccount_GetWalletDetails_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_GetWalletDetails_Response.hasWallet_ = this.hasWallet_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_GetWalletDetails_Response.userCountryCode_ = this.userCountryCode_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cUserAccount_GetWalletDetails_Response.walletCountryCode_ = this.walletCountryCode_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cUserAccount_GetWalletDetails_Response.walletState_ = this.walletState_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cUserAccount_GetWalletDetails_Response.balance_ = this.balance_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cUserAccount_GetWalletDetails_Response.delayedBalance_ = this.delayedBalance_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cUserAccount_GetWalletDetails_Response.currencyCode_ = this.currencyCode_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cUserAccount_GetWalletDetails_Response.timeMostRecentTxn_ = this.timeMostRecentTxn_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cUserAccount_GetWalletDetails_Response.mostRecentTxnid_ = this.mostRecentTxnid_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cUserAccount_GetWalletDetails_Response.balanceInUsd_ = this.balanceInUsd_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cUserAccount_GetWalletDetails_Response.delayedBalanceInUsd_ = this.delayedBalanceInUsd_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cUserAccount_GetWalletDetails_Response.hasWalletInOtherRegions_ = this.hasWalletInOtherRegions_;
                    i |= 2048;
                }
                if ((i2 & 4096) != 0) {
                    this.otherRegions_.makeImmutable();
                    cUserAccount_GetWalletDetails_Response.otherRegions_ = this.otherRegions_;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    cUserAccount_GetWalletDetails_Response.formattedBalance_ = this.formattedBalance_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    cUserAccount_GetWalletDetails_Response.formattedDelayedBalance_ = this.formattedDelayedBalance_;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((i2 & 32768) != 0) {
                    cUserAccount_GetWalletDetails_Response.delayedBalanceAvailableMinTime_ = this.delayedBalanceAvailableMinTime_;
                    i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    cUserAccount_GetWalletDetails_Response.delayedBalanceAvailableMaxTime_ = this.delayedBalanceAvailableMaxTime_;
                    i |= 32768;
                }
                if ((i2 & 131072) != 0) {
                    cUserAccount_GetWalletDetails_Response.delayedBalanceNewestSource_ = this.delayedBalanceNewestSource_;
                    i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                }
                cUserAccount_GetWalletDetails_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetWalletDetails_Response) {
                    return mergeFrom((CUserAccount_GetWalletDetails_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetWalletDetails_Response cUserAccount_GetWalletDetails_Response) {
                if (cUserAccount_GetWalletDetails_Response == CUserAccount_GetWalletDetails_Response.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_GetWalletDetails_Response.hasHasWallet()) {
                    setHasWallet(cUserAccount_GetWalletDetails_Response.getHasWallet());
                }
                if (cUserAccount_GetWalletDetails_Response.hasUserCountryCode()) {
                    this.userCountryCode_ = cUserAccount_GetWalletDetails_Response.userCountryCode_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                if (cUserAccount_GetWalletDetails_Response.hasWalletCountryCode()) {
                    this.walletCountryCode_ = cUserAccount_GetWalletDetails_Response.walletCountryCode_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cUserAccount_GetWalletDetails_Response.hasWalletState()) {
                    this.walletState_ = cUserAccount_GetWalletDetails_Response.walletState_;
                    this.bitField0_ |= 8;
                    onChanged();
                }
                if (cUserAccount_GetWalletDetails_Response.hasBalance()) {
                    setBalance(cUserAccount_GetWalletDetails_Response.getBalance());
                }
                if (cUserAccount_GetWalletDetails_Response.hasDelayedBalance()) {
                    setDelayedBalance(cUserAccount_GetWalletDetails_Response.getDelayedBalance());
                }
                if (cUserAccount_GetWalletDetails_Response.hasCurrencyCode()) {
                    setCurrencyCode(cUserAccount_GetWalletDetails_Response.getCurrencyCode());
                }
                if (cUserAccount_GetWalletDetails_Response.hasTimeMostRecentTxn()) {
                    setTimeMostRecentTxn(cUserAccount_GetWalletDetails_Response.getTimeMostRecentTxn());
                }
                if (cUserAccount_GetWalletDetails_Response.hasMostRecentTxnid()) {
                    setMostRecentTxnid(cUserAccount_GetWalletDetails_Response.getMostRecentTxnid());
                }
                if (cUserAccount_GetWalletDetails_Response.hasBalanceInUsd()) {
                    setBalanceInUsd(cUserAccount_GetWalletDetails_Response.getBalanceInUsd());
                }
                if (cUserAccount_GetWalletDetails_Response.hasDelayedBalanceInUsd()) {
                    setDelayedBalanceInUsd(cUserAccount_GetWalletDetails_Response.getDelayedBalanceInUsd());
                }
                if (cUserAccount_GetWalletDetails_Response.hasHasWalletInOtherRegions()) {
                    setHasWalletInOtherRegions(cUserAccount_GetWalletDetails_Response.getHasWalletInOtherRegions());
                }
                if (!cUserAccount_GetWalletDetails_Response.otherRegions_.isEmpty()) {
                    if (this.otherRegions_.isEmpty()) {
                        Internal.IntList intList = cUserAccount_GetWalletDetails_Response.otherRegions_;
                        this.otherRegions_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 4096;
                    } else {
                        ensureOtherRegionsIsMutable();
                        this.otherRegions_.addAll(cUserAccount_GetWalletDetails_Response.otherRegions_);
                    }
                    onChanged();
                }
                if (cUserAccount_GetWalletDetails_Response.hasFormattedBalance()) {
                    this.formattedBalance_ = cUserAccount_GetWalletDetails_Response.formattedBalance_;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                    onChanged();
                }
                if (cUserAccount_GetWalletDetails_Response.hasFormattedDelayedBalance()) {
                    this.formattedDelayedBalance_ = cUserAccount_GetWalletDetails_Response.formattedDelayedBalance_;
                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                    onChanged();
                }
                if (cUserAccount_GetWalletDetails_Response.hasDelayedBalanceAvailableMinTime()) {
                    setDelayedBalanceAvailableMinTime(cUserAccount_GetWalletDetails_Response.getDelayedBalanceAvailableMinTime());
                }
                if (cUserAccount_GetWalletDetails_Response.hasDelayedBalanceAvailableMaxTime()) {
                    setDelayedBalanceAvailableMaxTime(cUserAccount_GetWalletDetails_Response.getDelayedBalanceAvailableMaxTime());
                }
                if (cUserAccount_GetWalletDetails_Response.hasDelayedBalanceNewestSource()) {
                    setDelayedBalanceNewestSource(cUserAccount_GetWalletDetails_Response.getDelayedBalanceNewestSource());
                }
                mergeUnknownFields(cUserAccount_GetWalletDetails_Response.getUnknownFields());
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
                                    this.hasWallet_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                    break;
                                case 18:
                                    this.userCountryCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    break;
                                case 26:
                                    this.walletCountryCode_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    break;
                                case 34:
                                    this.walletState_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    break;
                                case 40:
                                    this.balance_ = codedInputStream.readInt64();
                                    this.bitField0_ |= 16;
                                    break;
                                case 48:
                                    this.delayedBalance_ = codedInputStream.readInt64();
                                    this.bitField0_ |= 32;
                                    break;
                                case 56:
                                    this.currencyCode_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 64;
                                    break;
                                case 64:
                                    this.timeMostRecentTxn_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 128;
                                    break;
                                case 72:
                                    this.mostRecentTxnid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 256;
                                    break;
                                case 80:
                                    this.balanceInUsd_ = codedInputStream.readInt64();
                                    this.bitField0_ |= 512;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER /* 88 */:
                                    this.delayedBalanceInUsd_ = codedInputStream.readInt64();
                                    this.bitField0_ |= 1024;
                                    break;
                                case 96:
                                    this.hasWalletInOtherRegions_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2048;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    int int32 = codedInputStream.readInt32();
                                    ensureOtherRegionsIsMutable();
                                    this.otherRegions_.addInt(int32);
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER /* 106 */:
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureOtherRegionsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.otherRegions_.addInt(codedInputStream.readInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                    break;
                                case 114:
                                    this.formattedBalance_ = codedInputStream.readBytes();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 122:
                                    this.formattedDelayedBalance_ = codedInputStream.readBytes();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case 128:
                                    this.delayedBalanceAvailableMinTime_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 32768;
                                    break;
                                case 136:
                                    this.delayedBalanceAvailableMaxTime_ = codedInputStream.readInt32();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                    break;
                                case 144:
                                    this.delayedBalanceNewestSource_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 131072;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasHasWallet() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean getHasWallet() {
                return this.hasWallet_;
            }

            public Builder setHasWallet(boolean z) {
                this.hasWallet_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearHasWallet() {
                this.bitField0_ &= -2;
                this.hasWallet_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasUserCountryCode() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public String getUserCountryCode() {
                Object obj = this.userCountryCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.userCountryCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public ByteString getUserCountryCodeBytes() {
                Object obj = this.userCountryCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.userCountryCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUserCountryCode(String str) {
                str.getClass();
                this.userCountryCode_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearUserCountryCode() {
                this.userCountryCode_ = CUserAccount_GetWalletDetails_Response.getDefaultInstance().getUserCountryCode();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setUserCountryCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.userCountryCode_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasWalletCountryCode() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public String getWalletCountryCode() {
                Object obj = this.walletCountryCode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.walletCountryCode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public ByteString getWalletCountryCodeBytes() {
                Object obj = this.walletCountryCode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.walletCountryCode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setWalletCountryCode(String str) {
                str.getClass();
                this.walletCountryCode_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearWalletCountryCode() {
                this.walletCountryCode_ = CUserAccount_GetWalletDetails_Response.getDefaultInstance().getWalletCountryCode();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setWalletCountryCodeBytes(ByteString byteString) {
                byteString.getClass();
                this.walletCountryCode_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasWalletState() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public String getWalletState() {
                Object obj = this.walletState_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.walletState_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public ByteString getWalletStateBytes() {
                Object obj = this.walletState_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.walletState_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setWalletState(String str) {
                str.getClass();
                this.walletState_ = str;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearWalletState() {
                this.walletState_ = CUserAccount_GetWalletDetails_Response.getDefaultInstance().getWalletState();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder setWalletStateBytes(ByteString byteString) {
                byteString.getClass();
                this.walletState_ = byteString;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasBalance() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public long getBalance() {
                return this.balance_;
            }

            public Builder setBalance(long j) {
                this.balance_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearBalance() {
                this.bitField0_ &= -17;
                this.balance_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasDelayedBalance() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public long getDelayedBalance() {
                return this.delayedBalance_;
            }

            public Builder setDelayedBalance(long j) {
                this.delayedBalance_ = j;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearDelayedBalance() {
                this.bitField0_ &= -33;
                this.delayedBalance_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasCurrencyCode() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public int getCurrencyCode() {
                return this.currencyCode_;
            }

            public Builder setCurrencyCode(int i) {
                this.currencyCode_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearCurrencyCode() {
                this.bitField0_ &= -65;
                this.currencyCode_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasTimeMostRecentTxn() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public int getTimeMostRecentTxn() {
                return this.timeMostRecentTxn_;
            }

            public Builder setTimeMostRecentTxn(int i) {
                this.timeMostRecentTxn_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearTimeMostRecentTxn() {
                this.bitField0_ &= -129;
                this.timeMostRecentTxn_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasMostRecentTxnid() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public long getMostRecentTxnid() {
                return this.mostRecentTxnid_;
            }

            public Builder setMostRecentTxnid(long j) {
                this.mostRecentTxnid_ = j;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearMostRecentTxnid() {
                this.bitField0_ &= -257;
                this.mostRecentTxnid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasBalanceInUsd() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public long getBalanceInUsd() {
                return this.balanceInUsd_;
            }

            public Builder setBalanceInUsd(long j) {
                this.balanceInUsd_ = j;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearBalanceInUsd() {
                this.bitField0_ &= -513;
                this.balanceInUsd_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasDelayedBalanceInUsd() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public long getDelayedBalanceInUsd() {
                return this.delayedBalanceInUsd_;
            }

            public Builder setDelayedBalanceInUsd(long j) {
                this.delayedBalanceInUsd_ = j;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearDelayedBalanceInUsd() {
                this.bitField0_ &= -1025;
                this.delayedBalanceInUsd_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasHasWalletInOtherRegions() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean getHasWalletInOtherRegions() {
                return this.hasWalletInOtherRegions_;
            }

            public Builder setHasWalletInOtherRegions(boolean z) {
                this.hasWalletInOtherRegions_ = z;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearHasWalletInOtherRegions() {
                this.bitField0_ &= -2049;
                this.hasWalletInOtherRegions_ = false;
                onChanged();
                return this;
            }

            private void ensureOtherRegionsIsMutable() {
                if (!this.otherRegions_.isModifiable()) {
                    this.otherRegions_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.otherRegions_);
                }
                this.bitField0_ |= 4096;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public List<Integer> getOtherRegionsList() {
                this.otherRegions_.makeImmutable();
                return this.otherRegions_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public int getOtherRegionsCount() {
                return this.otherRegions_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public int getOtherRegions(int i) {
                return this.otherRegions_.getInt(i);
            }

            public Builder setOtherRegions(int i, int i2) {
                ensureOtherRegionsIsMutable();
                this.otherRegions_.setInt(i, i2);
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder addOtherRegions(int i) {
                ensureOtherRegionsIsMutable();
                this.otherRegions_.addInt(i);
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder addAllOtherRegions(Iterable<? extends Integer> iterable) {
                ensureOtherRegionsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.otherRegions_);
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearOtherRegions() {
                this.otherRegions_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -4097;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasFormattedBalance() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public String getFormattedBalance() {
                Object obj = this.formattedBalance_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.formattedBalance_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public ByteString getFormattedBalanceBytes() {
                Object obj = this.formattedBalance_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.formattedBalance_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFormattedBalance(String str) {
                str.getClass();
                this.formattedBalance_ = str;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearFormattedBalance() {
                this.formattedBalance_ = CUserAccount_GetWalletDetails_Response.getDefaultInstance().getFormattedBalance();
                this.bitField0_ &= -8193;
                onChanged();
                return this;
            }

            public Builder setFormattedBalanceBytes(ByteString byteString) {
                byteString.getClass();
                this.formattedBalance_ = byteString;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasFormattedDelayedBalance() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public String getFormattedDelayedBalance() {
                Object obj = this.formattedDelayedBalance_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.formattedDelayedBalance_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public ByteString getFormattedDelayedBalanceBytes() {
                Object obj = this.formattedDelayedBalance_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.formattedDelayedBalance_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setFormattedDelayedBalance(String str) {
                str.getClass();
                this.formattedDelayedBalance_ = str;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder clearFormattedDelayedBalance() {
                this.formattedDelayedBalance_ = CUserAccount_GetWalletDetails_Response.getDefaultInstance().getFormattedDelayedBalance();
                this.bitField0_ &= -16385;
                onChanged();
                return this;
            }

            public Builder setFormattedDelayedBalanceBytes(ByteString byteString) {
                byteString.getClass();
                this.formattedDelayedBalance_ = byteString;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasDelayedBalanceAvailableMinTime() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public int getDelayedBalanceAvailableMinTime() {
                return this.delayedBalanceAvailableMinTime_;
            }

            public Builder setDelayedBalanceAvailableMinTime(int i) {
                this.delayedBalanceAvailableMinTime_ = i;
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder clearDelayedBalanceAvailableMinTime() {
                this.bitField0_ &= -32769;
                this.delayedBalanceAvailableMinTime_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasDelayedBalanceAvailableMaxTime() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public int getDelayedBalanceAvailableMaxTime() {
                return this.delayedBalanceAvailableMaxTime_;
            }

            public Builder setDelayedBalanceAvailableMaxTime(int i) {
                this.delayedBalanceAvailableMaxTime_ = i;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder clearDelayedBalanceAvailableMaxTime() {
                this.bitField0_ &= -65537;
                this.delayedBalanceAvailableMaxTime_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public boolean hasDelayedBalanceNewestSource() {
                return (this.bitField0_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_ResponseOrBuilder
            public int getDelayedBalanceNewestSource() {
                return this.delayedBalanceNewestSource_;
            }

            public Builder setDelayedBalanceNewestSource(int i) {
                this.delayedBalanceNewestSource_ = i;
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder clearDelayedBalanceNewestSource() {
                this.bitField0_ &= -131073;
                this.delayedBalanceNewestSource_ = 0;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_GetWalletDetails_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetWalletDetails_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetWalletDetails_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetWalletDetails_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetAccountLinkStatus_Request extends GeneratedMessage implements MessageOrBuilder {
        private static final CUserAccount_GetAccountLinkStatus_Request DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_GetAccountLinkStatus_Request> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetAccountLinkStatus_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetAccountLinkStatus_Request();
            PARSER = new AbstractParser<CUserAccount_GetAccountLinkStatus_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetAccountLinkStatus_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetAccountLinkStatus_Request.newBuilder();
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

        private CUserAccount_GetAccountLinkStatus_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetAccountLinkStatus_Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAccountLinkStatus_Request.class, Builder.class);
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
            if (obj instanceof CUserAccount_GetAccountLinkStatus_Request) {
                return getUnknownFields().equals(((CUserAccount_GetAccountLinkStatus_Request) obj).getUnknownFields());
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

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetAccountLinkStatus_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetAccountLinkStatus_Request cUserAccount_GetAccountLinkStatus_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetAccountLinkStatus_Request);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAccountLinkStatus_Request.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetAccountLinkStatus_Request getDefaultInstanceForType() {
                return CUserAccount_GetAccountLinkStatus_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAccountLinkStatus_Request build() {
                CUserAccount_GetAccountLinkStatus_Request cUserAccount_GetAccountLinkStatus_RequestBuildPartial = buildPartial();
                if (cUserAccount_GetAccountLinkStatus_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_GetAccountLinkStatus_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetAccountLinkStatus_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAccountLinkStatus_Request buildPartial() {
                CUserAccount_GetAccountLinkStatus_Request cUserAccount_GetAccountLinkStatus_Request = new CUserAccount_GetAccountLinkStatus_Request(this);
                onBuilt();
                return cUserAccount_GetAccountLinkStatus_Request;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetAccountLinkStatus_Request) {
                    return mergeFrom((CUserAccount_GetAccountLinkStatus_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetAccountLinkStatus_Request cUserAccount_GetAccountLinkStatus_Request) {
                if (cUserAccount_GetAccountLinkStatus_Request == CUserAccount_GetAccountLinkStatus_Request.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cUserAccount_GetAccountLinkStatus_Request.getUnknownFields());
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

        public static CUserAccount_GetAccountLinkStatus_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetAccountLinkStatus_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetAccountLinkStatus_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetAccountLinkStatus_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetAccountLinkStatus_Response extends GeneratedMessage implements CUserAccount_GetAccountLinkStatus_ResponseOrBuilder {
        private static final CUserAccount_GetAccountLinkStatus_Response DEFAULT_INSTANCE;
        public static final int IDENTITY_VERIFICATION_FIELD_NUMBER = 2;
        private static final Parser<CUserAccount_GetAccountLinkStatus_Response> PARSER;
        public static final int PERFORMED_AGE_VERIFICATION_FIELD_NUMBER = 3;
        public static final int PWID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int identityVerification_;
        private byte memoizedIsInitialized;
        private boolean performedAgeVerification_;
        private int pwid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetAccountLinkStatus_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetAccountLinkStatus_Response();
            PARSER = new AbstractParser<CUserAccount_GetAccountLinkStatus_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetAccountLinkStatus_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetAccountLinkStatus_Response.newBuilder();
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

        private CUserAccount_GetAccountLinkStatus_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.pwid_ = 0;
            this.identityVerification_ = 0;
            this.performedAgeVerification_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetAccountLinkStatus_Response() {
            this.pwid_ = 0;
            this.identityVerification_ = 0;
            this.performedAgeVerification_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAccountLinkStatus_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
        public boolean hasPwid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
        public int getPwid() {
            return this.pwid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
        public boolean hasIdentityVerification() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
        public int getIdentityVerification() {
            return this.identityVerification_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
        public boolean hasPerformedAgeVerification() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
        public boolean getPerformedAgeVerification() {
            return this.performedAgeVerification_;
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
                codedOutputStream.writeUInt32(1, this.pwid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.identityVerification_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(3, this.performedAgeVerification_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.pwid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.identityVerification_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBoolSize(3, this.performedAgeVerification_);
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
            if (!(obj instanceof CUserAccount_GetAccountLinkStatus_Response)) {
                return super.equals(obj);
            }
            CUserAccount_GetAccountLinkStatus_Response cUserAccount_GetAccountLinkStatus_Response = (CUserAccount_GetAccountLinkStatus_Response) obj;
            if (hasPwid() != cUserAccount_GetAccountLinkStatus_Response.hasPwid()) {
                return false;
            }
            if ((hasPwid() && getPwid() != cUserAccount_GetAccountLinkStatus_Response.getPwid()) || hasIdentityVerification() != cUserAccount_GetAccountLinkStatus_Response.hasIdentityVerification()) {
                return false;
            }
            if ((!hasIdentityVerification() || getIdentityVerification() == cUserAccount_GetAccountLinkStatus_Response.getIdentityVerification()) && hasPerformedAgeVerification() == cUserAccount_GetAccountLinkStatus_Response.hasPerformedAgeVerification()) {
                return (!hasPerformedAgeVerification() || getPerformedAgeVerification() == cUserAccount_GetAccountLinkStatus_Response.getPerformedAgeVerification()) && getUnknownFields().equals(cUserAccount_GetAccountLinkStatus_Response.getUnknownFields());
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
            if (hasPwid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPwid();
            }
            if (hasIdentityVerification()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getIdentityVerification();
            }
            if (hasPerformedAgeVerification()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashBoolean(getPerformedAgeVerification());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetAccountLinkStatus_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetAccountLinkStatus_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetAccountLinkStatus_Response cUserAccount_GetAccountLinkStatus_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetAccountLinkStatus_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetAccountLinkStatus_ResponseOrBuilder {
            private int bitField0_;
            private int identityVerification_;
            private boolean performedAgeVerification_;
            private int pwid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetAccountLinkStatus_Response.class, Builder.class);
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
                this.pwid_ = 0;
                this.identityVerification_ = 0;
                this.performedAgeVerification_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetAccountLinkStatus_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetAccountLinkStatus_Response getDefaultInstanceForType() {
                return CUserAccount_GetAccountLinkStatus_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAccountLinkStatus_Response build() {
                CUserAccount_GetAccountLinkStatus_Response cUserAccount_GetAccountLinkStatus_ResponseBuildPartial = buildPartial();
                if (cUserAccount_GetAccountLinkStatus_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_GetAccountLinkStatus_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetAccountLinkStatus_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetAccountLinkStatus_Response buildPartial() {
                CUserAccount_GetAccountLinkStatus_Response cUserAccount_GetAccountLinkStatus_Response = new CUserAccount_GetAccountLinkStatus_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetAccountLinkStatus_Response);
                }
                onBuilt();
                return cUserAccount_GetAccountLinkStatus_Response;
            }

            private void buildPartial0(CUserAccount_GetAccountLinkStatus_Response cUserAccount_GetAccountLinkStatus_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_GetAccountLinkStatus_Response.pwid_ = this.pwid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_GetAccountLinkStatus_Response.identityVerification_ = this.identityVerification_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cUserAccount_GetAccountLinkStatus_Response.performedAgeVerification_ = this.performedAgeVerification_;
                    i |= 4;
                }
                cUserAccount_GetAccountLinkStatus_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetAccountLinkStatus_Response) {
                    return mergeFrom((CUserAccount_GetAccountLinkStatus_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetAccountLinkStatus_Response cUserAccount_GetAccountLinkStatus_Response) {
                if (cUserAccount_GetAccountLinkStatus_Response == CUserAccount_GetAccountLinkStatus_Response.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_GetAccountLinkStatus_Response.hasPwid()) {
                    setPwid(cUserAccount_GetAccountLinkStatus_Response.getPwid());
                }
                if (cUserAccount_GetAccountLinkStatus_Response.hasIdentityVerification()) {
                    setIdentityVerification(cUserAccount_GetAccountLinkStatus_Response.getIdentityVerification());
                }
                if (cUserAccount_GetAccountLinkStatus_Response.hasPerformedAgeVerification()) {
                    setPerformedAgeVerification(cUserAccount_GetAccountLinkStatus_Response.getPerformedAgeVerification());
                }
                mergeUnknownFields(cUserAccount_GetAccountLinkStatus_Response.getUnknownFields());
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
                                    this.pwid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.identityVerification_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.performedAgeVerification_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
            public boolean hasPwid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
            public int getPwid() {
                return this.pwid_;
            }

            public Builder setPwid(int i) {
                this.pwid_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearPwid() {
                this.bitField0_ &= -2;
                this.pwid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
            public boolean hasIdentityVerification() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
            public int getIdentityVerification() {
                return this.identityVerification_;
            }

            public Builder setIdentityVerification(int i) {
                this.identityVerification_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearIdentityVerification() {
                this.bitField0_ &= -3;
                this.identityVerification_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
            public boolean hasPerformedAgeVerification() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_ResponseOrBuilder
            public boolean getPerformedAgeVerification() {
                return this.performedAgeVerification_;
            }

            public Builder setPerformedAgeVerification(boolean z) {
                this.performedAgeVerification_ = z;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearPerformedAgeVerification() {
                this.bitField0_ &= -5;
                this.performedAgeVerification_ = false;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_GetAccountLinkStatus_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetAccountLinkStatus_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetAccountLinkStatus_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetAccountLinkStatus_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_CancelLicenseForApp_Request extends GeneratedMessage implements CUserAccount_CancelLicenseForApp_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        private static final CUserAccount_CancelLicenseForApp_Request DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_CancelLicenseForApp_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_CancelLicenseForApp_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_CancelLicenseForApp_Request();
            PARSER = new AbstractParser<CUserAccount_CancelLicenseForApp_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_CancelLicenseForApp_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_CancelLicenseForApp_Request.newBuilder();
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

        private CUserAccount_CancelLicenseForApp_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_CancelLicenseForApp_Request() {
            this.appid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CancelLicenseForApp_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_RequestOrBuilder
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
            if (!(obj instanceof CUserAccount_CancelLicenseForApp_Request)) {
                return super.equals(obj);
            }
            CUserAccount_CancelLicenseForApp_Request cUserAccount_CancelLicenseForApp_Request = (CUserAccount_CancelLicenseForApp_Request) obj;
            if (hasAppid() != cUserAccount_CancelLicenseForApp_Request.hasAppid()) {
                return false;
            }
            return (!hasAppid() || getAppid() == cUserAccount_CancelLicenseForApp_Request.getAppid()) && getUnknownFields().equals(cUserAccount_CancelLicenseForApp_Request.getUnknownFields());
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

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_CancelLicenseForApp_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_CancelLicenseForApp_Request cUserAccount_CancelLicenseForApp_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_CancelLicenseForApp_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_CancelLicenseForApp_RequestOrBuilder {
            private int appid_;
            private int bitField0_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CancelLicenseForApp_Request.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_CancelLicenseForApp_Request getDefaultInstanceForType() {
                return CUserAccount_CancelLicenseForApp_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CancelLicenseForApp_Request build() {
                CUserAccount_CancelLicenseForApp_Request cUserAccount_CancelLicenseForApp_RequestBuildPartial = buildPartial();
                if (cUserAccount_CancelLicenseForApp_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_CancelLicenseForApp_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_CancelLicenseForApp_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CancelLicenseForApp_Request buildPartial() {
                CUserAccount_CancelLicenseForApp_Request cUserAccount_CancelLicenseForApp_Request = new CUserAccount_CancelLicenseForApp_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_CancelLicenseForApp_Request);
                }
                onBuilt();
                return cUserAccount_CancelLicenseForApp_Request;
            }

            private void buildPartial0(CUserAccount_CancelLicenseForApp_Request cUserAccount_CancelLicenseForApp_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cUserAccount_CancelLicenseForApp_Request.appid_ = this.appid_;
                } else {
                    i = 0;
                }
                cUserAccount_CancelLicenseForApp_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_CancelLicenseForApp_Request) {
                    return mergeFrom((CUserAccount_CancelLicenseForApp_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_CancelLicenseForApp_Request cUserAccount_CancelLicenseForApp_Request) {
                if (cUserAccount_CancelLicenseForApp_Request == CUserAccount_CancelLicenseForApp_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_CancelLicenseForApp_Request.hasAppid()) {
                    setAppid(cUserAccount_CancelLicenseForApp_Request.getAppid());
                }
                mergeUnknownFields(cUserAccount_CancelLicenseForApp_Request.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_RequestOrBuilder
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

        public static CUserAccount_CancelLicenseForApp_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_CancelLicenseForApp_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_CancelLicenseForApp_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_CancelLicenseForApp_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_CancelLicenseForApp_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CUserAccount_CancelLicenseForApp_Response DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_CancelLicenseForApp_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_CancelLicenseForApp_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_CancelLicenseForApp_Response();
            PARSER = new AbstractParser<CUserAccount_CancelLicenseForApp_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_CancelLicenseForApp_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_CancelLicenseForApp_Response.newBuilder();
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

        private CUserAccount_CancelLicenseForApp_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_CancelLicenseForApp_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CancelLicenseForApp_Response.class, Builder.class);
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
            if (obj instanceof CUserAccount_CancelLicenseForApp_Response) {
                return getUnknownFields().equals(((CUserAccount_CancelLicenseForApp_Response) obj).getUnknownFields());
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

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_CancelLicenseForApp_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CancelLicenseForApp_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_CancelLicenseForApp_Response cUserAccount_CancelLicenseForApp_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_CancelLicenseForApp_Response);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CancelLicenseForApp_Response.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CancelLicenseForApp_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_CancelLicenseForApp_Response getDefaultInstanceForType() {
                return CUserAccount_CancelLicenseForApp_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CancelLicenseForApp_Response build() {
                CUserAccount_CancelLicenseForApp_Response cUserAccount_CancelLicenseForApp_ResponseBuildPartial = buildPartial();
                if (cUserAccount_CancelLicenseForApp_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_CancelLicenseForApp_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_CancelLicenseForApp_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CancelLicenseForApp_Response buildPartial() {
                CUserAccount_CancelLicenseForApp_Response cUserAccount_CancelLicenseForApp_Response = new CUserAccount_CancelLicenseForApp_Response(this);
                onBuilt();
                return cUserAccount_CancelLicenseForApp_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_CancelLicenseForApp_Response) {
                    return mergeFrom((CUserAccount_CancelLicenseForApp_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_CancelLicenseForApp_Response cUserAccount_CancelLicenseForApp_Response) {
                if (cUserAccount_CancelLicenseForApp_Response == CUserAccount_CancelLicenseForApp_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cUserAccount_CancelLicenseForApp_Response.getUnknownFields());
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

        public static CUserAccount_CancelLicenseForApp_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_CancelLicenseForApp_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_CancelLicenseForApp_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_CancelLicenseForApp_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetUserCountry_Request extends GeneratedMessage implements CUserAccount_GetUserCountry_RequestOrBuilder {
        private static final CUserAccount_GetUserCountry_Request DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_GetUserCountry_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetUserCountry_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetUserCountry_Request();
            PARSER = new AbstractParser<CUserAccount_GetUserCountry_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetUserCountry_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetUserCountry_Request.newBuilder();
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

        private CUserAccount_GetUserCountry_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetUserCountry_Request() {
            this.steamid_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetUserCountry_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_RequestOrBuilder
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
            if (!(obj instanceof CUserAccount_GetUserCountry_Request)) {
                return super.equals(obj);
            }
            CUserAccount_GetUserCountry_Request cUserAccount_GetUserCountry_Request = (CUserAccount_GetUserCountry_Request) obj;
            if (hasSteamid() != cUserAccount_GetUserCountry_Request.hasSteamid()) {
                return false;
            }
            return (!hasSteamid() || getSteamid() == cUserAccount_GetUserCountry_Request.getSteamid()) && getUnknownFields().equals(cUserAccount_GetUserCountry_Request.getUnknownFields());
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

        public static CUserAccount_GetUserCountry_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetUserCountry_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetUserCountry_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetUserCountry_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetUserCountry_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetUserCountry_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetUserCountry_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetUserCountry_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetUserCountry_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetUserCountry_Request cUserAccount_GetUserCountry_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetUserCountry_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetUserCountry_RequestOrBuilder {
            private int bitField0_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetUserCountry_Request.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetUserCountry_Request getDefaultInstanceForType() {
                return CUserAccount_GetUserCountry_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetUserCountry_Request build() {
                CUserAccount_GetUserCountry_Request cUserAccount_GetUserCountry_RequestBuildPartial = buildPartial();
                if (cUserAccount_GetUserCountry_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_GetUserCountry_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetUserCountry_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetUserCountry_Request buildPartial() {
                CUserAccount_GetUserCountry_Request cUserAccount_GetUserCountry_Request = new CUserAccount_GetUserCountry_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetUserCountry_Request);
                }
                onBuilt();
                return cUserAccount_GetUserCountry_Request;
            }

            private void buildPartial0(CUserAccount_GetUserCountry_Request cUserAccount_GetUserCountry_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cUserAccount_GetUserCountry_Request.steamid_ = this.steamid_;
                } else {
                    i = 0;
                }
                cUserAccount_GetUserCountry_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetUserCountry_Request) {
                    return mergeFrom((CUserAccount_GetUserCountry_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetUserCountry_Request cUserAccount_GetUserCountry_Request) {
                if (cUserAccount_GetUserCountry_Request == CUserAccount_GetUserCountry_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_GetUserCountry_Request.hasSteamid()) {
                    setSteamid(cUserAccount_GetUserCountry_Request.getSteamid());
                }
                mergeUnknownFields(cUserAccount_GetUserCountry_Request.getUnknownFields());
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_RequestOrBuilder
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

        public static CUserAccount_GetUserCountry_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetUserCountry_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetUserCountry_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetUserCountry_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetUserCountry_Response extends GeneratedMessage implements CUserAccount_GetUserCountry_ResponseOrBuilder {
        public static final int COUNTRY_FIELD_NUMBER = 1;
        private static final CUserAccount_GetUserCountry_Response DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_GetUserCountry_Response> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object country_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetUserCountry_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetUserCountry_Response();
            PARSER = new AbstractParser<CUserAccount_GetUserCountry_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetUserCountry_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetUserCountry_Response.newBuilder();
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

        private CUserAccount_GetUserCountry_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.country_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetUserCountry_Response() {
            this.country_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.country_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetUserCountry_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_ResponseOrBuilder
        public boolean hasCountry() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_ResponseOrBuilder
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

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_ResponseOrBuilder
        public ByteString getCountryBytes() {
            Object obj = this.country_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.country_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.country_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.country_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CUserAccount_GetUserCountry_Response)) {
                return super.equals(obj);
            }
            CUserAccount_GetUserCountry_Response cUserAccount_GetUserCountry_Response = (CUserAccount_GetUserCountry_Response) obj;
            if (hasCountry() != cUserAccount_GetUserCountry_Response.hasCountry()) {
                return false;
            }
            return (!hasCountry() || getCountry().equals(cUserAccount_GetUserCountry_Response.getCountry())) && getUnknownFields().equals(cUserAccount_GetUserCountry_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasCountry()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCountry().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetUserCountry_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetUserCountry_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetUserCountry_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetUserCountry_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetUserCountry_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetUserCountry_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetUserCountry_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetUserCountry_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetUserCountry_Response cUserAccount_GetUserCountry_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetUserCountry_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetUserCountry_ResponseOrBuilder {
            private int bitField0_;
            private Object country_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetUserCountry_Response.class, Builder.class);
            }

            private Builder() {
                this.country_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.country_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.country_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetUserCountry_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetUserCountry_Response getDefaultInstanceForType() {
                return CUserAccount_GetUserCountry_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetUserCountry_Response build() {
                CUserAccount_GetUserCountry_Response cUserAccount_GetUserCountry_ResponseBuildPartial = buildPartial();
                if (cUserAccount_GetUserCountry_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_GetUserCountry_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetUserCountry_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetUserCountry_Response buildPartial() {
                CUserAccount_GetUserCountry_Response cUserAccount_GetUserCountry_Response = new CUserAccount_GetUserCountry_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetUserCountry_Response);
                }
                onBuilt();
                return cUserAccount_GetUserCountry_Response;
            }

            private void buildPartial0(CUserAccount_GetUserCountry_Response cUserAccount_GetUserCountry_Response) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cUserAccount_GetUserCountry_Response.country_ = this.country_;
                } else {
                    i = 0;
                }
                cUserAccount_GetUserCountry_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetUserCountry_Response) {
                    return mergeFrom((CUserAccount_GetUserCountry_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetUserCountry_Response cUserAccount_GetUserCountry_Response) {
                if (cUserAccount_GetUserCountry_Response == CUserAccount_GetUserCountry_Response.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_GetUserCountry_Response.hasCountry()) {
                    this.country_ = cUserAccount_GetUserCountry_Response.country_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cUserAccount_GetUserCountry_Response.getUnknownFields());
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
                                    this.country_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_ResponseOrBuilder
            public boolean hasCountry() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_ResponseOrBuilder
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
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCountry() {
                this.country_ = CUserAccount_GetUserCountry_Response.getDefaultInstance().getCountry();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setCountryBytes(ByteString byteString) {
                byteString.getClass();
                this.country_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_GetUserCountry_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetUserCountry_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetUserCountry_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetUserCountry_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_CreateFriendInviteToken_Request extends GeneratedMessage implements CUserAccount_CreateFriendInviteToken_RequestOrBuilder {
        private static final CUserAccount_CreateFriendInviteToken_Request DEFAULT_INSTANCE;
        public static final int INVITE_DURATION_FIELD_NUMBER = 2;
        public static final int INVITE_LIMIT_FIELD_NUMBER = 1;
        public static final int INVITE_NOTE_FIELD_NUMBER = 3;
        private static final Parser<CUserAccount_CreateFriendInviteToken_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int inviteDuration_;
        private int inviteLimit_;
        private volatile Object inviteNote_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_CreateFriendInviteToken_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_CreateFriendInviteToken_Request();
            PARSER = new AbstractParser<CUserAccount_CreateFriendInviteToken_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_CreateFriendInviteToken_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_CreateFriendInviteToken_Request.newBuilder();
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

        private CUserAccount_CreateFriendInviteToken_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.inviteLimit_ = 0;
            this.inviteDuration_ = 0;
            this.inviteNote_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_CreateFriendInviteToken_Request() {
            this.inviteLimit_ = 0;
            this.inviteDuration_ = 0;
            this.inviteNote_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.inviteNote_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CreateFriendInviteToken_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
        public boolean hasInviteLimit() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
        public int getInviteLimit() {
            return this.inviteLimit_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
        public boolean hasInviteDuration() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
        public int getInviteDuration() {
            return this.inviteDuration_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
        public boolean hasInviteNote() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
        public String getInviteNote() {
            Object obj = this.inviteNote_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.inviteNote_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
        public ByteString getInviteNoteBytes() {
            Object obj = this.inviteNote_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.inviteNote_ = byteStringCopyFromUtf8;
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
                codedOutputStream.writeUInt32(1, this.inviteLimit_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.inviteDuration_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.inviteNote_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.inviteLimit_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.inviteDuration_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += GeneratedMessage.computeStringSize(3, this.inviteNote_);
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
            if (!(obj instanceof CUserAccount_CreateFriendInviteToken_Request)) {
                return super.equals(obj);
            }
            CUserAccount_CreateFriendInviteToken_Request cUserAccount_CreateFriendInviteToken_Request = (CUserAccount_CreateFriendInviteToken_Request) obj;
            if (hasInviteLimit() != cUserAccount_CreateFriendInviteToken_Request.hasInviteLimit()) {
                return false;
            }
            if ((hasInviteLimit() && getInviteLimit() != cUserAccount_CreateFriendInviteToken_Request.getInviteLimit()) || hasInviteDuration() != cUserAccount_CreateFriendInviteToken_Request.hasInviteDuration()) {
                return false;
            }
            if ((!hasInviteDuration() || getInviteDuration() == cUserAccount_CreateFriendInviteToken_Request.getInviteDuration()) && hasInviteNote() == cUserAccount_CreateFriendInviteToken_Request.hasInviteNote()) {
                return (!hasInviteNote() || getInviteNote().equals(cUserAccount_CreateFriendInviteToken_Request.getInviteNote())) && getUnknownFields().equals(cUserAccount_CreateFriendInviteToken_Request.getUnknownFields());
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
            if (hasInviteLimit()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getInviteLimit();
            }
            if (hasInviteDuration()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getInviteDuration();
            }
            if (hasInviteNote()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getInviteNote().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_CreateFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_CreateFriendInviteToken_Request cUserAccount_CreateFriendInviteToken_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_CreateFriendInviteToken_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_CreateFriendInviteToken_RequestOrBuilder {
            private int bitField0_;
            private int inviteDuration_;
            private int inviteLimit_;
            private Object inviteNote_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CreateFriendInviteToken_Request.class, Builder.class);
            }

            private Builder() {
                this.inviteNote_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.inviteNote_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.inviteLimit_ = 0;
                this.inviteDuration_ = 0;
                this.inviteNote_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_CreateFriendInviteToken_Request getDefaultInstanceForType() {
                return CUserAccount_CreateFriendInviteToken_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CreateFriendInviteToken_Request build() {
                CUserAccount_CreateFriendInviteToken_Request cUserAccount_CreateFriendInviteToken_RequestBuildPartial = buildPartial();
                if (cUserAccount_CreateFriendInviteToken_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_CreateFriendInviteToken_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_CreateFriendInviteToken_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CreateFriendInviteToken_Request buildPartial() {
                CUserAccount_CreateFriendInviteToken_Request cUserAccount_CreateFriendInviteToken_Request = new CUserAccount_CreateFriendInviteToken_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_CreateFriendInviteToken_Request);
                }
                onBuilt();
                return cUserAccount_CreateFriendInviteToken_Request;
            }

            private void buildPartial0(CUserAccount_CreateFriendInviteToken_Request cUserAccount_CreateFriendInviteToken_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_CreateFriendInviteToken_Request.inviteLimit_ = this.inviteLimit_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_CreateFriendInviteToken_Request.inviteDuration_ = this.inviteDuration_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cUserAccount_CreateFriendInviteToken_Request.inviteNote_ = this.inviteNote_;
                    i |= 4;
                }
                cUserAccount_CreateFriendInviteToken_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_CreateFriendInviteToken_Request) {
                    return mergeFrom((CUserAccount_CreateFriendInviteToken_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_CreateFriendInviteToken_Request cUserAccount_CreateFriendInviteToken_Request) {
                if (cUserAccount_CreateFriendInviteToken_Request == CUserAccount_CreateFriendInviteToken_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_CreateFriendInviteToken_Request.hasInviteLimit()) {
                    setInviteLimit(cUserAccount_CreateFriendInviteToken_Request.getInviteLimit());
                }
                if (cUserAccount_CreateFriendInviteToken_Request.hasInviteDuration()) {
                    setInviteDuration(cUserAccount_CreateFriendInviteToken_Request.getInviteDuration());
                }
                if (cUserAccount_CreateFriendInviteToken_Request.hasInviteNote()) {
                    this.inviteNote_ = cUserAccount_CreateFriendInviteToken_Request.inviteNote_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                mergeUnknownFields(cUserAccount_CreateFriendInviteToken_Request.getUnknownFields());
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
                                    this.inviteLimit_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.inviteDuration_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 26) {
                                    this.inviteNote_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
            public boolean hasInviteLimit() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
            public int getInviteLimit() {
                return this.inviteLimit_;
            }

            public Builder setInviteLimit(int i) {
                this.inviteLimit_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearInviteLimit() {
                this.bitField0_ &= -2;
                this.inviteLimit_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
            public boolean hasInviteDuration() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
            public int getInviteDuration() {
                return this.inviteDuration_;
            }

            public Builder setInviteDuration(int i) {
                this.inviteDuration_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearInviteDuration() {
                this.bitField0_ &= -3;
                this.inviteDuration_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
            public boolean hasInviteNote() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
            public String getInviteNote() {
                Object obj = this.inviteNote_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.inviteNote_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_RequestOrBuilder
            public ByteString getInviteNoteBytes() {
                Object obj = this.inviteNote_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.inviteNote_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setInviteNote(String str) {
                str.getClass();
                this.inviteNote_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearInviteNote() {
                this.inviteNote_ = CUserAccount_CreateFriendInviteToken_Request.getDefaultInstance().getInviteNote();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setInviteNoteBytes(ByteString byteString) {
                byteString.getClass();
                this.inviteNote_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_CreateFriendInviteToken_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_CreateFriendInviteToken_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_CreateFriendInviteToken_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_CreateFriendInviteToken_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_CreateFriendInviteToken_Response extends GeneratedMessage implements CUserAccount_CreateFriendInviteToken_ResponseOrBuilder {
        private static final CUserAccount_CreateFriendInviteToken_Response DEFAULT_INSTANCE;
        public static final int INVITE_DURATION_FIELD_NUMBER = 3;
        public static final int INVITE_LIMIT_FIELD_NUMBER = 2;
        public static final int INVITE_TOKEN_FIELD_NUMBER = 1;
        private static final Parser<CUserAccount_CreateFriendInviteToken_Response> PARSER;
        public static final int TIME_CREATED_FIELD_NUMBER = 4;
        public static final int VALID_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long inviteDuration_;
        private long inviteLimit_;
        private volatile Object inviteToken_;
        private byte memoizedIsInitialized;
        private int timeCreated_;
        private boolean valid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_CreateFriendInviteToken_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_CreateFriendInviteToken_Response();
            PARSER = new AbstractParser<CUserAccount_CreateFriendInviteToken_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_CreateFriendInviteToken_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_CreateFriendInviteToken_Response.newBuilder();
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

        private CUserAccount_CreateFriendInviteToken_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.inviteToken_ = "";
            this.inviteLimit_ = 0L;
            this.inviteDuration_ = 0L;
            this.timeCreated_ = 0;
            this.valid_ = false;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_CreateFriendInviteToken_Response() {
            this.inviteToken_ = "";
            this.inviteLimit_ = 0L;
            this.inviteDuration_ = 0L;
            this.timeCreated_ = 0;
            this.valid_ = false;
            this.memoizedIsInitialized = (byte) -1;
            this.inviteToken_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CreateFriendInviteToken_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public boolean hasInviteToken() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public String getInviteToken() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.inviteToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public ByteString getInviteTokenBytes() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.inviteToken_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public boolean hasInviteLimit() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public long getInviteLimit() {
            return this.inviteLimit_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public boolean hasInviteDuration() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public long getInviteDuration() {
            return this.inviteDuration_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public boolean hasTimeCreated() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public int getTimeCreated() {
            return this.timeCreated_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public boolean hasValid() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
        public boolean getValid() {
            return this.valid_;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.inviteToken_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.inviteLimit_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.inviteDuration_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed32(4, this.timeCreated_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeBool(5, this.valid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.inviteToken_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(2, this.inviteLimit_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(3, this.inviteDuration_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeFixed32Size(4, this.timeCreated_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(5, this.valid_);
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
            if (!(obj instanceof CUserAccount_CreateFriendInviteToken_Response)) {
                return super.equals(obj);
            }
            CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response = (CUserAccount_CreateFriendInviteToken_Response) obj;
            if (hasInviteToken() != cUserAccount_CreateFriendInviteToken_Response.hasInviteToken()) {
                return false;
            }
            if ((hasInviteToken() && !getInviteToken().equals(cUserAccount_CreateFriendInviteToken_Response.getInviteToken())) || hasInviteLimit() != cUserAccount_CreateFriendInviteToken_Response.hasInviteLimit()) {
                return false;
            }
            if ((hasInviteLimit() && getInviteLimit() != cUserAccount_CreateFriendInviteToken_Response.getInviteLimit()) || hasInviteDuration() != cUserAccount_CreateFriendInviteToken_Response.hasInviteDuration()) {
                return false;
            }
            if ((hasInviteDuration() && getInviteDuration() != cUserAccount_CreateFriendInviteToken_Response.getInviteDuration()) || hasTimeCreated() != cUserAccount_CreateFriendInviteToken_Response.hasTimeCreated()) {
                return false;
            }
            if ((!hasTimeCreated() || getTimeCreated() == cUserAccount_CreateFriendInviteToken_Response.getTimeCreated()) && hasValid() == cUserAccount_CreateFriendInviteToken_Response.hasValid()) {
                return (!hasValid() || getValid() == cUserAccount_CreateFriendInviteToken_Response.getValid()) && getUnknownFields().equals(cUserAccount_CreateFriendInviteToken_Response.getUnknownFields());
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
            if (hasInviteToken()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getInviteToken().hashCode();
            }
            if (hasInviteLimit()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getInviteLimit());
            }
            if (hasInviteDuration()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getInviteDuration());
            }
            if (hasTimeCreated()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getTimeCreated();
            }
            if (hasValid()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + Internal.hashBoolean(getValid());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_CreateFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_CreateFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_CreateFriendInviteToken_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_CreateFriendInviteToken_ResponseOrBuilder {
            private int bitField0_;
            private long inviteDuration_;
            private long inviteLimit_;
            private Object inviteToken_;
            private int timeCreated_;
            private boolean valid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_CreateFriendInviteToken_Response.class, Builder.class);
            }

            private Builder() {
                this.inviteToken_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.inviteToken_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.inviteToken_ = "";
                this.inviteLimit_ = 0L;
                this.inviteDuration_ = 0L;
                this.timeCreated_ = 0;
                this.valid_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_CreateFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_CreateFriendInviteToken_Response getDefaultInstanceForType() {
                return CUserAccount_CreateFriendInviteToken_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CreateFriendInviteToken_Response build() {
                CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_ResponseBuildPartial = buildPartial();
                if (cUserAccount_CreateFriendInviteToken_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_CreateFriendInviteToken_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_CreateFriendInviteToken_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_CreateFriendInviteToken_Response buildPartial() {
                CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response = new CUserAccount_CreateFriendInviteToken_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_CreateFriendInviteToken_Response);
                }
                onBuilt();
                return cUserAccount_CreateFriendInviteToken_Response;
            }

            private void buildPartial0(CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_CreateFriendInviteToken_Response.inviteToken_ = this.inviteToken_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_CreateFriendInviteToken_Response.inviteLimit_ = this.inviteLimit_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cUserAccount_CreateFriendInviteToken_Response.inviteDuration_ = this.inviteDuration_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cUserAccount_CreateFriendInviteToken_Response.timeCreated_ = this.timeCreated_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cUserAccount_CreateFriendInviteToken_Response.valid_ = this.valid_;
                    i |= 16;
                }
                cUserAccount_CreateFriendInviteToken_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_CreateFriendInviteToken_Response) {
                    return mergeFrom((CUserAccount_CreateFriendInviteToken_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response) {
                if (cUserAccount_CreateFriendInviteToken_Response == CUserAccount_CreateFriendInviteToken_Response.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_CreateFriendInviteToken_Response.hasInviteToken()) {
                    this.inviteToken_ = cUserAccount_CreateFriendInviteToken_Response.inviteToken_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                if (cUserAccount_CreateFriendInviteToken_Response.hasInviteLimit()) {
                    setInviteLimit(cUserAccount_CreateFriendInviteToken_Response.getInviteLimit());
                }
                if (cUserAccount_CreateFriendInviteToken_Response.hasInviteDuration()) {
                    setInviteDuration(cUserAccount_CreateFriendInviteToken_Response.getInviteDuration());
                }
                if (cUserAccount_CreateFriendInviteToken_Response.hasTimeCreated()) {
                    setTimeCreated(cUserAccount_CreateFriendInviteToken_Response.getTimeCreated());
                }
                if (cUserAccount_CreateFriendInviteToken_Response.hasValid()) {
                    setValid(cUserAccount_CreateFriendInviteToken_Response.getValid());
                }
                mergeUnknownFields(cUserAccount_CreateFriendInviteToken_Response.getUnknownFields());
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
                                    this.inviteToken_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.inviteLimit_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.inviteDuration_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 37) {
                                    this.timeCreated_ = codedInputStream.readFixed32();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.valid_ = codedInputStream.readBool();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public boolean hasInviteToken() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public String getInviteToken() {
                Object obj = this.inviteToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.inviteToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public ByteString getInviteTokenBytes() {
                Object obj = this.inviteToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.inviteToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setInviteToken(String str) {
                str.getClass();
                this.inviteToken_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearInviteToken() {
                this.inviteToken_ = CUserAccount_CreateFriendInviteToken_Response.getDefaultInstance().getInviteToken();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setInviteTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.inviteToken_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public boolean hasInviteLimit() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public long getInviteLimit() {
                return this.inviteLimit_;
            }

            public Builder setInviteLimit(long j) {
                this.inviteLimit_ = j;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearInviteLimit() {
                this.bitField0_ &= -3;
                this.inviteLimit_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public boolean hasInviteDuration() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public long getInviteDuration() {
                return this.inviteDuration_;
            }

            public Builder setInviteDuration(long j) {
                this.inviteDuration_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearInviteDuration() {
                this.bitField0_ &= -5;
                this.inviteDuration_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public boolean hasTimeCreated() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public int getTimeCreated() {
                return this.timeCreated_;
            }

            public Builder setTimeCreated(int i) {
                this.timeCreated_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearTimeCreated() {
                this.bitField0_ &= -9;
                this.timeCreated_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public boolean hasValid() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_ResponseOrBuilder
            public boolean getValid() {
                return this.valid_;
            }

            public Builder setValid(boolean z) {
                this.valid_ = z;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearValid() {
                this.bitField0_ &= -17;
                this.valid_ = false;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_CreateFriendInviteToken_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_CreateFriendInviteToken_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_CreateFriendInviteToken_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_CreateFriendInviteToken_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetFriendInviteTokens_Request extends GeneratedMessage implements MessageOrBuilder {
        private static final CUserAccount_GetFriendInviteTokens_Request DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_GetFriendInviteTokens_Request> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetFriendInviteTokens_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetFriendInviteTokens_Request();
            PARSER = new AbstractParser<CUserAccount_GetFriendInviteTokens_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetFriendInviteTokens_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetFriendInviteTokens_Request.newBuilder();
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

        private CUserAccount_GetFriendInviteTokens_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetFriendInviteTokens_Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetFriendInviteTokens_Request.class, Builder.class);
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
            if (obj instanceof CUserAccount_GetFriendInviteTokens_Request) {
                return getUnknownFields().equals(((CUserAccount_GetFriendInviteTokens_Request) obj).getUnknownFields());
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

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetFriendInviteTokens_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetFriendInviteTokens_Request cUserAccount_GetFriendInviteTokens_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetFriendInviteTokens_Request);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetFriendInviteTokens_Request.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetFriendInviteTokens_Request getDefaultInstanceForType() {
                return CUserAccount_GetFriendInviteTokens_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetFriendInviteTokens_Request build() {
                CUserAccount_GetFriendInviteTokens_Request cUserAccount_GetFriendInviteTokens_RequestBuildPartial = buildPartial();
                if (cUserAccount_GetFriendInviteTokens_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_GetFriendInviteTokens_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetFriendInviteTokens_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetFriendInviteTokens_Request buildPartial() {
                CUserAccount_GetFriendInviteTokens_Request cUserAccount_GetFriendInviteTokens_Request = new CUserAccount_GetFriendInviteTokens_Request(this);
                onBuilt();
                return cUserAccount_GetFriendInviteTokens_Request;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetFriendInviteTokens_Request) {
                    return mergeFrom((CUserAccount_GetFriendInviteTokens_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetFriendInviteTokens_Request cUserAccount_GetFriendInviteTokens_Request) {
                if (cUserAccount_GetFriendInviteTokens_Request == CUserAccount_GetFriendInviteTokens_Request.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cUserAccount_GetFriendInviteTokens_Request.getUnknownFields());
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

        public static CUserAccount_GetFriendInviteTokens_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetFriendInviteTokens_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetFriendInviteTokens_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetFriendInviteTokens_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_GetFriendInviteTokens_Response extends GeneratedMessage implements CUserAccount_GetFriendInviteTokens_ResponseOrBuilder {
        private static final CUserAccount_GetFriendInviteTokens_Response DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_GetFriendInviteTokens_Response> PARSER;
        public static final int TOKENS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<CUserAccount_CreateFriendInviteToken_Response> tokens_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_GetFriendInviteTokens_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_GetFriendInviteTokens_Response();
            PARSER = new AbstractParser<CUserAccount_GetFriendInviteTokens_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_GetFriendInviteTokens_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_GetFriendInviteTokens_Response.newBuilder();
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

        private CUserAccount_GetFriendInviteTokens_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_GetFriendInviteTokens_Response() {
            this.memoizedIsInitialized = (byte) -1;
            this.tokens_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetFriendInviteTokens_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
        public List<CUserAccount_CreateFriendInviteToken_Response> getTokensList() {
            return this.tokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
        public List<? extends CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> getTokensOrBuilderList() {
            return this.tokens_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
        public int getTokensCount() {
            return this.tokens_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
        public CUserAccount_CreateFriendInviteToken_Response getTokens(int i) {
            return this.tokens_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
        public CUserAccount_CreateFriendInviteToken_ResponseOrBuilder getTokensOrBuilder(int i) {
            return this.tokens_.get(i);
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
            for (int i = 0; i < this.tokens_.size(); i++) {
                codedOutputStream.writeMessage(1, this.tokens_.get(i));
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
            for (int i2 = 0; i2 < this.tokens_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.tokens_.get(i2));
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
            if (!(obj instanceof CUserAccount_GetFriendInviteTokens_Response)) {
                return super.equals(obj);
            }
            CUserAccount_GetFriendInviteTokens_Response cUserAccount_GetFriendInviteTokens_Response = (CUserAccount_GetFriendInviteTokens_Response) obj;
            return getTokensList().equals(cUserAccount_GetFriendInviteTokens_Response.getTokensList()) && getUnknownFields().equals(cUserAccount_GetFriendInviteTokens_Response.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getTokensCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getTokensList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_GetFriendInviteTokens_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_GetFriendInviteTokens_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_GetFriendInviteTokens_Response cUserAccount_GetFriendInviteTokens_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_GetFriendInviteTokens_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_GetFriendInviteTokens_ResponseOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> tokensBuilder_;
            private List<CUserAccount_CreateFriendInviteToken_Response> tokens_;

            private void buildPartial0(CUserAccount_GetFriendInviteTokens_Response cUserAccount_GetFriendInviteTokens_Response) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_GetFriendInviteTokens_Response.class, Builder.class);
            }

            private Builder() {
                this.tokens_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.tokens_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.tokens_ = Collections.emptyList();
                } else {
                    this.tokens_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_GetFriendInviteTokens_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_GetFriendInviteTokens_Response getDefaultInstanceForType() {
                return CUserAccount_GetFriendInviteTokens_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetFriendInviteTokens_Response build() {
                CUserAccount_GetFriendInviteTokens_Response cUserAccount_GetFriendInviteTokens_ResponseBuildPartial = buildPartial();
                if (cUserAccount_GetFriendInviteTokens_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_GetFriendInviteTokens_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_GetFriendInviteTokens_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_GetFriendInviteTokens_Response buildPartial() {
                CUserAccount_GetFriendInviteTokens_Response cUserAccount_GetFriendInviteTokens_Response = new CUserAccount_GetFriendInviteTokens_Response(this);
                buildPartialRepeatedFields(cUserAccount_GetFriendInviteTokens_Response);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_GetFriendInviteTokens_Response);
                }
                onBuilt();
                return cUserAccount_GetFriendInviteTokens_Response;
            }

            private void buildPartialRepeatedFields(CUserAccount_GetFriendInviteTokens_Response cUserAccount_GetFriendInviteTokens_Response) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.tokens_ = Collections.unmodifiableList(this.tokens_);
                        this.bitField0_ &= -2;
                    }
                    cUserAccount_GetFriendInviteTokens_Response.tokens_ = this.tokens_;
                    return;
                }
                cUserAccount_GetFriendInviteTokens_Response.tokens_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_GetFriendInviteTokens_Response) {
                    return mergeFrom((CUserAccount_GetFriendInviteTokens_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_GetFriendInviteTokens_Response cUserAccount_GetFriendInviteTokens_Response) {
                if (cUserAccount_GetFriendInviteTokens_Response == CUserAccount_GetFriendInviteTokens_Response.getDefaultInstance()) {
                    return this;
                }
                if (this.tokensBuilder_ == null) {
                    if (!cUserAccount_GetFriendInviteTokens_Response.tokens_.isEmpty()) {
                        if (this.tokens_.isEmpty()) {
                            this.tokens_ = cUserAccount_GetFriendInviteTokens_Response.tokens_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureTokensIsMutable();
                            this.tokens_.addAll(cUserAccount_GetFriendInviteTokens_Response.tokens_);
                        }
                        onChanged();
                    }
                } else if (!cUserAccount_GetFriendInviteTokens_Response.tokens_.isEmpty()) {
                    if (this.tokensBuilder_.isEmpty()) {
                        this.tokensBuilder_.dispose();
                        this.tokensBuilder_ = null;
                        this.tokens_ = cUserAccount_GetFriendInviteTokens_Response.tokens_;
                        this.bitField0_ &= -2;
                        this.tokensBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetTokensFieldBuilder() : null;
                    } else {
                        this.tokensBuilder_.addAllMessages(cUserAccount_GetFriendInviteTokens_Response.tokens_);
                    }
                }
                mergeUnknownFields(cUserAccount_GetFriendInviteTokens_Response.getUnknownFields());
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
                                    CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response = (CUserAccount_CreateFriendInviteToken_Response) codedInputStream.readMessage(CUserAccount_CreateFriendInviteToken_Response.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureTokensIsMutable();
                                        this.tokens_.add(cUserAccount_CreateFriendInviteToken_Response);
                                    } else {
                                        repeatedFieldBuilder.addMessage(cUserAccount_CreateFriendInviteToken_Response);
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

            private void ensureTokensIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.tokens_ = new ArrayList(this.tokens_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
            public List<CUserAccount_CreateFriendInviteToken_Response> getTokensList() {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.tokens_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
            public int getTokensCount() {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tokens_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
            public CUserAccount_CreateFriendInviteToken_Response getTokens(int i) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tokens_.get(i);
                }
                return (CUserAccount_CreateFriendInviteToken_Response) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setTokens(int i, CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    cUserAccount_CreateFriendInviteToken_Response.getClass();
                    ensureTokensIsMutable();
                    this.tokens_.set(i, cUserAccount_CreateFriendInviteToken_Response);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, cUserAccount_CreateFriendInviteToken_Response);
                }
                return this;
            }

            public Builder setTokens(int i, CUserAccount_CreateFriendInviteToken_Response.Builder builder) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTokensIsMutable();
                    this.tokens_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addTokens(CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    cUserAccount_CreateFriendInviteToken_Response.getClass();
                    ensureTokensIsMutable();
                    this.tokens_.add(cUserAccount_CreateFriendInviteToken_Response);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(cUserAccount_CreateFriendInviteToken_Response);
                }
                return this;
            }

            public Builder addTokens(int i, CUserAccount_CreateFriendInviteToken_Response cUserAccount_CreateFriendInviteToken_Response) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    cUserAccount_CreateFriendInviteToken_Response.getClass();
                    ensureTokensIsMutable();
                    this.tokens_.add(i, cUserAccount_CreateFriendInviteToken_Response);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, cUserAccount_CreateFriendInviteToken_Response);
                }
                return this;
            }

            public Builder addTokens(CUserAccount_CreateFriendInviteToken_Response.Builder builder) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTokensIsMutable();
                    this.tokens_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addTokens(int i, CUserAccount_CreateFriendInviteToken_Response.Builder builder) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTokensIsMutable();
                    this.tokens_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllTokens(Iterable<? extends CUserAccount_CreateFriendInviteToken_Response> iterable) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTokensIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.tokens_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearTokens() {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.tokens_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeTokens(int i) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureTokensIsMutable();
                    this.tokens_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public CUserAccount_CreateFriendInviteToken_Response.Builder getTokensBuilder(int i) {
                return (CUserAccount_CreateFriendInviteToken_Response.Builder) internalGetTokensFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
            public CUserAccount_CreateFriendInviteToken_ResponseOrBuilder getTokensOrBuilder(int i) {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.tokens_.get(i);
                }
                return (CUserAccount_CreateFriendInviteToken_ResponseOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_ResponseOrBuilder
            public List<? extends CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> getTokensOrBuilderList() {
                RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> repeatedFieldBuilder = this.tokensBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.tokens_);
            }

            public CUserAccount_CreateFriendInviteToken_Response.Builder addTokensBuilder() {
                return (CUserAccount_CreateFriendInviteToken_Response.Builder) internalGetTokensFieldBuilder().addBuilder(CUserAccount_CreateFriendInviteToken_Response.getDefaultInstance());
            }

            public CUserAccount_CreateFriendInviteToken_Response.Builder addTokensBuilder(int i) {
                return (CUserAccount_CreateFriendInviteToken_Response.Builder) internalGetTokensFieldBuilder().addBuilder(i, CUserAccount_CreateFriendInviteToken_Response.getDefaultInstance());
            }

            public List<CUserAccount_CreateFriendInviteToken_Response.Builder> getTokensBuilderList() {
                return internalGetTokensFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<CUserAccount_CreateFriendInviteToken_Response, CUserAccount_CreateFriendInviteToken_Response.Builder, CUserAccount_CreateFriendInviteToken_ResponseOrBuilder> internalGetTokensFieldBuilder() {
                if (this.tokensBuilder_ == null) {
                    this.tokensBuilder_ = new RepeatedFieldBuilder<>(this.tokens_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.tokens_ = null;
                }
                return this.tokensBuilder_;
            }
        }

        public static CUserAccount_GetFriendInviteTokens_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_GetFriendInviteTokens_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_GetFriendInviteTokens_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_GetFriendInviteTokens_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_ViewFriendInviteToken_Request extends GeneratedMessage implements CUserAccount_ViewFriendInviteToken_RequestOrBuilder {
        private static final CUserAccount_ViewFriendInviteToken_Request DEFAULT_INSTANCE;
        public static final int INVITE_TOKEN_FIELD_NUMBER = 2;
        private static final Parser<CUserAccount_ViewFriendInviteToken_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object inviteToken_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_ViewFriendInviteToken_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_ViewFriendInviteToken_Request();
            PARSER = new AbstractParser<CUserAccount_ViewFriendInviteToken_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_ViewFriendInviteToken_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_ViewFriendInviteToken_Request.newBuilder();
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

        private CUserAccount_ViewFriendInviteToken_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.inviteToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_ViewFriendInviteToken_Request() {
            this.steamid_ = 0L;
            this.inviteToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.inviteToken_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_ViewFriendInviteToken_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
        public boolean hasInviteToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
        public String getInviteToken() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.inviteToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
        public ByteString getInviteTokenBytes() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.inviteToken_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.inviteToken_);
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
                iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.inviteToken_);
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
            if (!(obj instanceof CUserAccount_ViewFriendInviteToken_Request)) {
                return super.equals(obj);
            }
            CUserAccount_ViewFriendInviteToken_Request cUserAccount_ViewFriendInviteToken_Request = (CUserAccount_ViewFriendInviteToken_Request) obj;
            if (hasSteamid() != cUserAccount_ViewFriendInviteToken_Request.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cUserAccount_ViewFriendInviteToken_Request.getSteamid()) && hasInviteToken() == cUserAccount_ViewFriendInviteToken_Request.hasInviteToken()) {
                return (!hasInviteToken() || getInviteToken().equals(cUserAccount_ViewFriendInviteToken_Request.getInviteToken())) && getUnknownFields().equals(cUserAccount_ViewFriendInviteToken_Request.getUnknownFields());
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
            if (hasInviteToken()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getInviteToken().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_ViewFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_ViewFriendInviteToken_Request cUserAccount_ViewFriendInviteToken_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_ViewFriendInviteToken_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_ViewFriendInviteToken_RequestOrBuilder {
            private int bitField0_;
            private Object inviteToken_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_ViewFriendInviteToken_Request.class, Builder.class);
            }

            private Builder() {
                this.inviteToken_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.inviteToken_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.inviteToken_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_ViewFriendInviteToken_Request getDefaultInstanceForType() {
                return CUserAccount_ViewFriendInviteToken_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_ViewFriendInviteToken_Request build() {
                CUserAccount_ViewFriendInviteToken_Request cUserAccount_ViewFriendInviteToken_RequestBuildPartial = buildPartial();
                if (cUserAccount_ViewFriendInviteToken_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_ViewFriendInviteToken_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_ViewFriendInviteToken_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_ViewFriendInviteToken_Request buildPartial() {
                CUserAccount_ViewFriendInviteToken_Request cUserAccount_ViewFriendInviteToken_Request = new CUserAccount_ViewFriendInviteToken_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_ViewFriendInviteToken_Request);
                }
                onBuilt();
                return cUserAccount_ViewFriendInviteToken_Request;
            }

            private void buildPartial0(CUserAccount_ViewFriendInviteToken_Request cUserAccount_ViewFriendInviteToken_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_ViewFriendInviteToken_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_ViewFriendInviteToken_Request.inviteToken_ = this.inviteToken_;
                    i |= 2;
                }
                cUserAccount_ViewFriendInviteToken_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_ViewFriendInviteToken_Request) {
                    return mergeFrom((CUserAccount_ViewFriendInviteToken_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_ViewFriendInviteToken_Request cUserAccount_ViewFriendInviteToken_Request) {
                if (cUserAccount_ViewFriendInviteToken_Request == CUserAccount_ViewFriendInviteToken_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_ViewFriendInviteToken_Request.hasSteamid()) {
                    setSteamid(cUserAccount_ViewFriendInviteToken_Request.getSteamid());
                }
                if (cUserAccount_ViewFriendInviteToken_Request.hasInviteToken()) {
                    this.inviteToken_ = cUserAccount_ViewFriendInviteToken_Request.inviteToken_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cUserAccount_ViewFriendInviteToken_Request.getUnknownFields());
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
                                    this.inviteToken_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
            public boolean hasInviteToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
            public String getInviteToken() {
                Object obj = this.inviteToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.inviteToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_RequestOrBuilder
            public ByteString getInviteTokenBytes() {
                Object obj = this.inviteToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.inviteToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setInviteToken(String str) {
                str.getClass();
                this.inviteToken_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearInviteToken() {
                this.inviteToken_ = CUserAccount_ViewFriendInviteToken_Request.getDefaultInstance().getInviteToken();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setInviteTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.inviteToken_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_ViewFriendInviteToken_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_ViewFriendInviteToken_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_ViewFriendInviteToken_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_ViewFriendInviteToken_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_ViewFriendInviteToken_Response extends GeneratedMessage implements CUserAccount_ViewFriendInviteToken_ResponseOrBuilder {
        private static final CUserAccount_ViewFriendInviteToken_Response DEFAULT_INSTANCE;
        public static final int INVITE_DURATION_FIELD_NUMBER = 3;
        private static final Parser<CUserAccount_ViewFriendInviteToken_Response> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 2;
        public static final int VALID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long inviteDuration_;
        private byte memoizedIsInitialized;
        private long steamid_;
        private boolean valid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_ViewFriendInviteToken_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_ViewFriendInviteToken_Response();
            PARSER = new AbstractParser<CUserAccount_ViewFriendInviteToken_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_ViewFriendInviteToken_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_ViewFriendInviteToken_Response.newBuilder();
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

        private CUserAccount_ViewFriendInviteToken_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.valid_ = false;
            this.steamid_ = 0L;
            this.inviteDuration_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_ViewFriendInviteToken_Response() {
            this.valid_ = false;
            this.steamid_ = 0L;
            this.inviteDuration_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_ViewFriendInviteToken_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
        public boolean hasValid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
        public boolean getValid() {
            return this.valid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
        public boolean hasInviteDuration() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
        public long getInviteDuration() {
            return this.inviteDuration_;
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
                codedOutputStream.writeBool(1, this.valid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt64(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt64(3, this.inviteDuration_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeBoolSize(1, this.valid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt64Size(2, this.steamid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeBoolSize += CodedOutputStream.computeUInt64Size(3, this.inviteDuration_);
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
            if (!(obj instanceof CUserAccount_ViewFriendInviteToken_Response)) {
                return super.equals(obj);
            }
            CUserAccount_ViewFriendInviteToken_Response cUserAccount_ViewFriendInviteToken_Response = (CUserAccount_ViewFriendInviteToken_Response) obj;
            if (hasValid() != cUserAccount_ViewFriendInviteToken_Response.hasValid()) {
                return false;
            }
            if ((hasValid() && getValid() != cUserAccount_ViewFriendInviteToken_Response.getValid()) || hasSteamid() != cUserAccount_ViewFriendInviteToken_Response.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cUserAccount_ViewFriendInviteToken_Response.getSteamid()) && hasInviteDuration() == cUserAccount_ViewFriendInviteToken_Response.hasInviteDuration()) {
                return (!hasInviteDuration() || getInviteDuration() == cUserAccount_ViewFriendInviteToken_Response.getInviteDuration()) && getUnknownFields().equals(cUserAccount_ViewFriendInviteToken_Response.getUnknownFields());
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
            if (hasValid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashBoolean(getValid());
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasInviteDuration()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getInviteDuration());
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_ViewFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_ViewFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_ViewFriendInviteToken_Response cUserAccount_ViewFriendInviteToken_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_ViewFriendInviteToken_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_ViewFriendInviteToken_ResponseOrBuilder {
            private int bitField0_;
            private long inviteDuration_;
            private long steamid_;
            private boolean valid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_ViewFriendInviteToken_Response.class, Builder.class);
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
                this.valid_ = false;
                this.steamid_ = 0L;
                this.inviteDuration_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_ViewFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_ViewFriendInviteToken_Response getDefaultInstanceForType() {
                return CUserAccount_ViewFriendInviteToken_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_ViewFriendInviteToken_Response build() {
                CUserAccount_ViewFriendInviteToken_Response cUserAccount_ViewFriendInviteToken_ResponseBuildPartial = buildPartial();
                if (cUserAccount_ViewFriendInviteToken_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_ViewFriendInviteToken_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_ViewFriendInviteToken_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_ViewFriendInviteToken_Response buildPartial() {
                CUserAccount_ViewFriendInviteToken_Response cUserAccount_ViewFriendInviteToken_Response = new CUserAccount_ViewFriendInviteToken_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_ViewFriendInviteToken_Response);
                }
                onBuilt();
                return cUserAccount_ViewFriendInviteToken_Response;
            }

            private void buildPartial0(CUserAccount_ViewFriendInviteToken_Response cUserAccount_ViewFriendInviteToken_Response) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_ViewFriendInviteToken_Response.valid_ = this.valid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_ViewFriendInviteToken_Response.steamid_ = this.steamid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cUserAccount_ViewFriendInviteToken_Response.inviteDuration_ = this.inviteDuration_;
                    i |= 4;
                }
                cUserAccount_ViewFriendInviteToken_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_ViewFriendInviteToken_Response) {
                    return mergeFrom((CUserAccount_ViewFriendInviteToken_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_ViewFriendInviteToken_Response cUserAccount_ViewFriendInviteToken_Response) {
                if (cUserAccount_ViewFriendInviteToken_Response == CUserAccount_ViewFriendInviteToken_Response.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_ViewFriendInviteToken_Response.hasValid()) {
                    setValid(cUserAccount_ViewFriendInviteToken_Response.getValid());
                }
                if (cUserAccount_ViewFriendInviteToken_Response.hasSteamid()) {
                    setSteamid(cUserAccount_ViewFriendInviteToken_Response.getSteamid());
                }
                if (cUserAccount_ViewFriendInviteToken_Response.hasInviteDuration()) {
                    setInviteDuration(cUserAccount_ViewFriendInviteToken_Response.getInviteDuration());
                }
                mergeUnknownFields(cUserAccount_ViewFriendInviteToken_Response.getUnknownFields());
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
                                    this.valid_ = codedInputStream.readBool();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.steamid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.inviteDuration_ = codedInputStream.readUInt64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
            public boolean hasValid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
            public boolean getValid() {
                return this.valid_;
            }

            public Builder setValid(boolean z) {
                this.valid_ = z;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearValid() {
                this.bitField0_ &= -2;
                this.valid_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
            public boolean hasInviteDuration() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_ResponseOrBuilder
            public long getInviteDuration() {
                return this.inviteDuration_;
            }

            public Builder setInviteDuration(long j) {
                this.inviteDuration_ = j;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearInviteDuration() {
                this.bitField0_ &= -5;
                this.inviteDuration_ = 0L;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_ViewFriendInviteToken_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_ViewFriendInviteToken_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_ViewFriendInviteToken_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_ViewFriendInviteToken_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_RedeemFriendInviteToken_Request extends GeneratedMessage implements CUserAccount_RedeemFriendInviteToken_RequestOrBuilder {
        private static final CUserAccount_RedeemFriendInviteToken_Request DEFAULT_INSTANCE;
        public static final int INVITE_TOKEN_FIELD_NUMBER = 2;
        private static final Parser<CUserAccount_RedeemFriendInviteToken_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object inviteToken_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_RedeemFriendInviteToken_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_RedeemFriendInviteToken_Request();
            PARSER = new AbstractParser<CUserAccount_RedeemFriendInviteToken_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_RedeemFriendInviteToken_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_RedeemFriendInviteToken_Request.newBuilder();
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

        private CUserAccount_RedeemFriendInviteToken_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.inviteToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_RedeemFriendInviteToken_Request() {
            this.steamid_ = 0L;
            this.inviteToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.inviteToken_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RedeemFriendInviteToken_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
        public boolean hasInviteToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
        public String getInviteToken() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.inviteToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
        public ByteString getInviteTokenBytes() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.inviteToken_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 2, this.inviteToken_);
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
                iComputeFixed64Size += GeneratedMessage.computeStringSize(2, this.inviteToken_);
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
            if (!(obj instanceof CUserAccount_RedeemFriendInviteToken_Request)) {
                return super.equals(obj);
            }
            CUserAccount_RedeemFriendInviteToken_Request cUserAccount_RedeemFriendInviteToken_Request = (CUserAccount_RedeemFriendInviteToken_Request) obj;
            if (hasSteamid() != cUserAccount_RedeemFriendInviteToken_Request.hasSteamid()) {
                return false;
            }
            if ((!hasSteamid() || getSteamid() == cUserAccount_RedeemFriendInviteToken_Request.getSteamid()) && hasInviteToken() == cUserAccount_RedeemFriendInviteToken_Request.hasInviteToken()) {
                return (!hasInviteToken() || getInviteToken().equals(cUserAccount_RedeemFriendInviteToken_Request.getInviteToken())) && getUnknownFields().equals(cUserAccount_RedeemFriendInviteToken_Request.getUnknownFields());
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
            if (hasInviteToken()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getInviteToken().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_RedeemFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_RedeemFriendInviteToken_Request cUserAccount_RedeemFriendInviteToken_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_RedeemFriendInviteToken_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_RedeemFriendInviteToken_RequestOrBuilder {
            private int bitField0_;
            private Object inviteToken_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RedeemFriendInviteToken_Request.class, Builder.class);
            }

            private Builder() {
                this.inviteToken_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.inviteToken_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.inviteToken_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_RedeemFriendInviteToken_Request getDefaultInstanceForType() {
                return CUserAccount_RedeemFriendInviteToken_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RedeemFriendInviteToken_Request build() {
                CUserAccount_RedeemFriendInviteToken_Request cUserAccount_RedeemFriendInviteToken_RequestBuildPartial = buildPartial();
                if (cUserAccount_RedeemFriendInviteToken_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_RedeemFriendInviteToken_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_RedeemFriendInviteToken_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RedeemFriendInviteToken_Request buildPartial() {
                CUserAccount_RedeemFriendInviteToken_Request cUserAccount_RedeemFriendInviteToken_Request = new CUserAccount_RedeemFriendInviteToken_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_RedeemFriendInviteToken_Request);
                }
                onBuilt();
                return cUserAccount_RedeemFriendInviteToken_Request;
            }

            private void buildPartial0(CUserAccount_RedeemFriendInviteToken_Request cUserAccount_RedeemFriendInviteToken_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cUserAccount_RedeemFriendInviteToken_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cUserAccount_RedeemFriendInviteToken_Request.inviteToken_ = this.inviteToken_;
                    i |= 2;
                }
                cUserAccount_RedeemFriendInviteToken_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_RedeemFriendInviteToken_Request) {
                    return mergeFrom((CUserAccount_RedeemFriendInviteToken_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_RedeemFriendInviteToken_Request cUserAccount_RedeemFriendInviteToken_Request) {
                if (cUserAccount_RedeemFriendInviteToken_Request == CUserAccount_RedeemFriendInviteToken_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_RedeemFriendInviteToken_Request.hasSteamid()) {
                    setSteamid(cUserAccount_RedeemFriendInviteToken_Request.getSteamid());
                }
                if (cUserAccount_RedeemFriendInviteToken_Request.hasInviteToken()) {
                    this.inviteToken_ = cUserAccount_RedeemFriendInviteToken_Request.inviteToken_;
                    this.bitField0_ |= 2;
                    onChanged();
                }
                mergeUnknownFields(cUserAccount_RedeemFriendInviteToken_Request.getUnknownFields());
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
                                    this.inviteToken_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
            public boolean hasInviteToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
            public String getInviteToken() {
                Object obj = this.inviteToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.inviteToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_RequestOrBuilder
            public ByteString getInviteTokenBytes() {
                Object obj = this.inviteToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.inviteToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setInviteToken(String str) {
                str.getClass();
                this.inviteToken_ = str;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearInviteToken() {
                this.inviteToken_ = CUserAccount_RedeemFriendInviteToken_Request.getDefaultInstance().getInviteToken();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder setInviteTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.inviteToken_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_RedeemFriendInviteToken_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_RedeemFriendInviteToken_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_RedeemFriendInviteToken_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_RedeemFriendInviteToken_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_RedeemFriendInviteToken_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CUserAccount_RedeemFriendInviteToken_Response DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_RedeemFriendInviteToken_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_RedeemFriendInviteToken_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_RedeemFriendInviteToken_Response();
            PARSER = new AbstractParser<CUserAccount_RedeemFriendInviteToken_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_RedeemFriendInviteToken_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_RedeemFriendInviteToken_Response.newBuilder();
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

        private CUserAccount_RedeemFriendInviteToken_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_RedeemFriendInviteToken_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RedeemFriendInviteToken_Response.class, Builder.class);
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
            if (obj instanceof CUserAccount_RedeemFriendInviteToken_Response) {
                return getUnknownFields().equals(((CUserAccount_RedeemFriendInviteToken_Response) obj).getUnknownFields());
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

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_RedeemFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RedeemFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_RedeemFriendInviteToken_Response cUserAccount_RedeemFriendInviteToken_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_RedeemFriendInviteToken_Response);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RedeemFriendInviteToken_Response.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RedeemFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_RedeemFriendInviteToken_Response getDefaultInstanceForType() {
                return CUserAccount_RedeemFriendInviteToken_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RedeemFriendInviteToken_Response build() {
                CUserAccount_RedeemFriendInviteToken_Response cUserAccount_RedeemFriendInviteToken_ResponseBuildPartial = buildPartial();
                if (cUserAccount_RedeemFriendInviteToken_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_RedeemFriendInviteToken_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_RedeemFriendInviteToken_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RedeemFriendInviteToken_Response buildPartial() {
                CUserAccount_RedeemFriendInviteToken_Response cUserAccount_RedeemFriendInviteToken_Response = new CUserAccount_RedeemFriendInviteToken_Response(this);
                onBuilt();
                return cUserAccount_RedeemFriendInviteToken_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_RedeemFriendInviteToken_Response) {
                    return mergeFrom((CUserAccount_RedeemFriendInviteToken_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_RedeemFriendInviteToken_Response cUserAccount_RedeemFriendInviteToken_Response) {
                if (cUserAccount_RedeemFriendInviteToken_Response == CUserAccount_RedeemFriendInviteToken_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cUserAccount_RedeemFriendInviteToken_Response.getUnknownFields());
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

        public static CUserAccount_RedeemFriendInviteToken_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_RedeemFriendInviteToken_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_RedeemFriendInviteToken_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_RedeemFriendInviteToken_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_RevokeFriendInviteToken_Request extends GeneratedMessage implements CUserAccount_RevokeFriendInviteToken_RequestOrBuilder {
        private static final CUserAccount_RevokeFriendInviteToken_Request DEFAULT_INSTANCE;
        public static final int INVITE_TOKEN_FIELD_NUMBER = 1;
        private static final Parser<CUserAccount_RevokeFriendInviteToken_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object inviteToken_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_RevokeFriendInviteToken_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_RevokeFriendInviteToken_Request();
            PARSER = new AbstractParser<CUserAccount_RevokeFriendInviteToken_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_RevokeFriendInviteToken_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_RevokeFriendInviteToken_Request.newBuilder();
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

        private CUserAccount_RevokeFriendInviteToken_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.inviteToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_RevokeFriendInviteToken_Request() {
            this.inviteToken_ = "";
            this.memoizedIsInitialized = (byte) -1;
            this.inviteToken_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RevokeFriendInviteToken_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_RequestOrBuilder
        public boolean hasInviteToken() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_RequestOrBuilder
        public String getInviteToken() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.inviteToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_RequestOrBuilder
        public ByteString getInviteTokenBytes() {
            Object obj = this.inviteToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.inviteToken_ = byteStringCopyFromUtf8;
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
                GeneratedMessage.writeString(codedOutputStream, 1, this.inviteToken_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = ((this.bitField0_ & 1) != 0 ? GeneratedMessage.computeStringSize(1, this.inviteToken_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeStringSize;
            return iComputeStringSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CUserAccount_RevokeFriendInviteToken_Request)) {
                return super.equals(obj);
            }
            CUserAccount_RevokeFriendInviteToken_Request cUserAccount_RevokeFriendInviteToken_Request = (CUserAccount_RevokeFriendInviteToken_Request) obj;
            if (hasInviteToken() != cUserAccount_RevokeFriendInviteToken_Request.hasInviteToken()) {
                return false;
            }
            return (!hasInviteToken() || getInviteToken().equals(cUserAccount_RevokeFriendInviteToken_Request.getInviteToken())) && getUnknownFields().equals(cUserAccount_RevokeFriendInviteToken_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasInviteToken()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getInviteToken().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_RevokeFriendInviteToken_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_RevokeFriendInviteToken_Request cUserAccount_RevokeFriendInviteToken_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_RevokeFriendInviteToken_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_RevokeFriendInviteToken_RequestOrBuilder {
            private int bitField0_;
            private Object inviteToken_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RevokeFriendInviteToken_Request.class, Builder.class);
            }

            private Builder() {
                this.inviteToken_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.inviteToken_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.inviteToken_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_RevokeFriendInviteToken_Request getDefaultInstanceForType() {
                return CUserAccount_RevokeFriendInviteToken_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RevokeFriendInviteToken_Request build() {
                CUserAccount_RevokeFriendInviteToken_Request cUserAccount_RevokeFriendInviteToken_RequestBuildPartial = buildPartial();
                if (cUserAccount_RevokeFriendInviteToken_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_RevokeFriendInviteToken_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_RevokeFriendInviteToken_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RevokeFriendInviteToken_Request buildPartial() {
                CUserAccount_RevokeFriendInviteToken_Request cUserAccount_RevokeFriendInviteToken_Request = new CUserAccount_RevokeFriendInviteToken_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_RevokeFriendInviteToken_Request);
                }
                onBuilt();
                return cUserAccount_RevokeFriendInviteToken_Request;
            }

            private void buildPartial0(CUserAccount_RevokeFriendInviteToken_Request cUserAccount_RevokeFriendInviteToken_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cUserAccount_RevokeFriendInviteToken_Request.inviteToken_ = this.inviteToken_;
                } else {
                    i = 0;
                }
                cUserAccount_RevokeFriendInviteToken_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_RevokeFriendInviteToken_Request) {
                    return mergeFrom((CUserAccount_RevokeFriendInviteToken_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_RevokeFriendInviteToken_Request cUserAccount_RevokeFriendInviteToken_Request) {
                if (cUserAccount_RevokeFriendInviteToken_Request == CUserAccount_RevokeFriendInviteToken_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_RevokeFriendInviteToken_Request.hasInviteToken()) {
                    this.inviteToken_ = cUserAccount_RevokeFriendInviteToken_Request.inviteToken_;
                    this.bitField0_ |= 1;
                    onChanged();
                }
                mergeUnknownFields(cUserAccount_RevokeFriendInviteToken_Request.getUnknownFields());
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
                                    this.inviteToken_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_RequestOrBuilder
            public boolean hasInviteToken() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_RequestOrBuilder
            public String getInviteToken() {
                Object obj = this.inviteToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.inviteToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_RequestOrBuilder
            public ByteString getInviteTokenBytes() {
                Object obj = this.inviteToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.inviteToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setInviteToken(String str) {
                str.getClass();
                this.inviteToken_ = str;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearInviteToken() {
                this.inviteToken_ = CUserAccount_RevokeFriendInviteToken_Request.getDefaultInstance().getInviteToken();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder setInviteTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.inviteToken_ = byteString;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_RevokeFriendInviteToken_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_RevokeFriendInviteToken_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_RevokeFriendInviteToken_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_RevokeFriendInviteToken_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_RevokeFriendInviteToken_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CUserAccount_RevokeFriendInviteToken_Response DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_RevokeFriendInviteToken_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_RevokeFriendInviteToken_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_RevokeFriendInviteToken_Response();
            PARSER = new AbstractParser<CUserAccount_RevokeFriendInviteToken_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_RevokeFriendInviteToken_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_RevokeFriendInviteToken_Response.newBuilder();
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

        private CUserAccount_RevokeFriendInviteToken_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_RevokeFriendInviteToken_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RevokeFriendInviteToken_Response.class, Builder.class);
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
            if (obj instanceof CUserAccount_RevokeFriendInviteToken_Response) {
                return getUnknownFields().equals(((CUserAccount_RevokeFriendInviteToken_Response) obj).getUnknownFields());
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

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_RevokeFriendInviteToken_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RevokeFriendInviteToken_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_RevokeFriendInviteToken_Response cUserAccount_RevokeFriendInviteToken_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_RevokeFriendInviteToken_Response);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RevokeFriendInviteToken_Response.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RevokeFriendInviteToken_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_RevokeFriendInviteToken_Response getDefaultInstanceForType() {
                return CUserAccount_RevokeFriendInviteToken_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RevokeFriendInviteToken_Response build() {
                CUserAccount_RevokeFriendInviteToken_Response cUserAccount_RevokeFriendInviteToken_ResponseBuildPartial = buildPartial();
                if (cUserAccount_RevokeFriendInviteToken_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_RevokeFriendInviteToken_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_RevokeFriendInviteToken_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RevokeFriendInviteToken_Response buildPartial() {
                CUserAccount_RevokeFriendInviteToken_Response cUserAccount_RevokeFriendInviteToken_Response = new CUserAccount_RevokeFriendInviteToken_Response(this);
                onBuilt();
                return cUserAccount_RevokeFriendInviteToken_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_RevokeFriendInviteToken_Response) {
                    return mergeFrom((CUserAccount_RevokeFriendInviteToken_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_RevokeFriendInviteToken_Response cUserAccount_RevokeFriendInviteToken_Response) {
                if (cUserAccount_RevokeFriendInviteToken_Response == CUserAccount_RevokeFriendInviteToken_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cUserAccount_RevokeFriendInviteToken_Response.getUnknownFields());
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

        public static CUserAccount_RevokeFriendInviteToken_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_RevokeFriendInviteToken_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_RevokeFriendInviteToken_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_RevokeFriendInviteToken_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_RegisterCompatTool_Request extends GeneratedMessage implements CUserAccount_RegisterCompatTool_RequestOrBuilder {
        public static final int COMPAT_TOOL_FIELD_NUMBER = 1;
        private static final CUserAccount_RegisterCompatTool_Request DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_RegisterCompatTool_Request> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int compatTool_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_RegisterCompatTool_Request.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_RegisterCompatTool_Request();
            PARSER = new AbstractParser<CUserAccount_RegisterCompatTool_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_Request.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_RegisterCompatTool_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_RegisterCompatTool_Request.newBuilder();
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

        private CUserAccount_RegisterCompatTool_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.compatTool_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_RegisterCompatTool_Request() {
            this.compatTool_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RegisterCompatTool_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_RequestOrBuilder
        public boolean hasCompatTool() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_RequestOrBuilder
        public int getCompatTool() {
            return this.compatTool_;
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
                codedOutputStream.writeUInt32(1, this.compatTool_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = ((this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.compatTool_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSize = iComputeUInt32Size;
            return iComputeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CUserAccount_RegisterCompatTool_Request)) {
                return super.equals(obj);
            }
            CUserAccount_RegisterCompatTool_Request cUserAccount_RegisterCompatTool_Request = (CUserAccount_RegisterCompatTool_Request) obj;
            if (hasCompatTool() != cUserAccount_RegisterCompatTool_Request.hasCompatTool()) {
                return false;
            }
            return (!hasCompatTool() || getCompatTool() == cUserAccount_RegisterCompatTool_Request.getCompatTool()) && getUnknownFields().equals(cUserAccount_RegisterCompatTool_Request.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasCompatTool()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getCompatTool();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RegisterCompatTool_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RegisterCompatTool_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RegisterCompatTool_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RegisterCompatTool_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RegisterCompatTool_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_RegisterCompatTool_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_RegisterCompatTool_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RegisterCompatTool_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_RegisterCompatTool_Request cUserAccount_RegisterCompatTool_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_RegisterCompatTool_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CUserAccount_RegisterCompatTool_RequestOrBuilder {
            private int bitField0_;
            private int compatTool_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RegisterCompatTool_Request.class, Builder.class);
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
                this.compatTool_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_RegisterCompatTool_Request getDefaultInstanceForType() {
                return CUserAccount_RegisterCompatTool_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RegisterCompatTool_Request build() {
                CUserAccount_RegisterCompatTool_Request cUserAccount_RegisterCompatTool_RequestBuildPartial = buildPartial();
                if (cUserAccount_RegisterCompatTool_RequestBuildPartial.isInitialized()) {
                    return cUserAccount_RegisterCompatTool_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_RegisterCompatTool_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RegisterCompatTool_Request buildPartial() {
                CUserAccount_RegisterCompatTool_Request cUserAccount_RegisterCompatTool_Request = new CUserAccount_RegisterCompatTool_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cUserAccount_RegisterCompatTool_Request);
                }
                onBuilt();
                return cUserAccount_RegisterCompatTool_Request;
            }

            private void buildPartial0(CUserAccount_RegisterCompatTool_Request cUserAccount_RegisterCompatTool_Request) {
                int i = 1;
                if ((this.bitField0_ & 1) != 0) {
                    cUserAccount_RegisterCompatTool_Request.compatTool_ = this.compatTool_;
                } else {
                    i = 0;
                }
                cUserAccount_RegisterCompatTool_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_RegisterCompatTool_Request) {
                    return mergeFrom((CUserAccount_RegisterCompatTool_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_RegisterCompatTool_Request cUserAccount_RegisterCompatTool_Request) {
                if (cUserAccount_RegisterCompatTool_Request == CUserAccount_RegisterCompatTool_Request.getDefaultInstance()) {
                    return this;
                }
                if (cUserAccount_RegisterCompatTool_Request.hasCompatTool()) {
                    setCompatTool(cUserAccount_RegisterCompatTool_Request.getCompatTool());
                }
                mergeUnknownFields(cUserAccount_RegisterCompatTool_Request.getUnknownFields());
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
                                    this.compatTool_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_RequestOrBuilder
            public boolean hasCompatTool() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_RequestOrBuilder
            public int getCompatTool() {
                return this.compatTool_;
            }

            public Builder setCompatTool(int i) {
                this.compatTool_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearCompatTool() {
                this.bitField0_ &= -2;
                this.compatTool_ = 0;
                onChanged();
                return this;
            }
        }

        public static CUserAccount_RegisterCompatTool_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_RegisterCompatTool_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_RegisterCompatTool_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_RegisterCompatTool_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CUserAccount_RegisterCompatTool_Response extends GeneratedMessage implements MessageOrBuilder {
        private static final CUserAccount_RegisterCompatTool_Response DEFAULT_INSTANCE;
        private static final Parser<CUserAccount_RegisterCompatTool_Response> PARSER;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CUserAccount_RegisterCompatTool_Response.class.getName());
            DEFAULT_INSTANCE = new CUserAccount_RegisterCompatTool_Response();
            PARSER = new AbstractParser<CUserAccount_RegisterCompatTool_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_Response.1
                @Override // com.google.protobuf.Parser
                public CUserAccount_RegisterCompatTool_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CUserAccount_RegisterCompatTool_Response.newBuilder();
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

        private CUserAccount_RegisterCompatTool_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private CUserAccount_RegisterCompatTool_Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RegisterCompatTool_Response.class, Builder.class);
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
            if (obj instanceof CUserAccount_RegisterCompatTool_Response) {
                return getUnknownFields().equals(((CUserAccount_RegisterCompatTool_Response) obj).getUnknownFields());
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

        public static CUserAccount_RegisterCompatTool_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RegisterCompatTool_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RegisterCompatTool_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CUserAccount_RegisterCompatTool_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CUserAccount_RegisterCompatTool_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RegisterCompatTool_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CUserAccount_RegisterCompatTool_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CUserAccount_RegisterCompatTool_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CUserAccount_RegisterCompatTool_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CUserAccount_RegisterCompatTool_Response cUserAccount_RegisterCompatTool_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cUserAccount_RegisterCompatTool_Response);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CUserAccount_RegisterCompatTool_Response.class, Builder.class);
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
                return SteammessagesUseraccountSteamclient.internal_static_CUserAccount_RegisterCompatTool_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CUserAccount_RegisterCompatTool_Response getDefaultInstanceForType() {
                return CUserAccount_RegisterCompatTool_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RegisterCompatTool_Response build() {
                CUserAccount_RegisterCompatTool_Response cUserAccount_RegisterCompatTool_ResponseBuildPartial = buildPartial();
                if (cUserAccount_RegisterCompatTool_ResponseBuildPartial.isInitialized()) {
                    return cUserAccount_RegisterCompatTool_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cUserAccount_RegisterCompatTool_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CUserAccount_RegisterCompatTool_Response buildPartial() {
                CUserAccount_RegisterCompatTool_Response cUserAccount_RegisterCompatTool_Response = new CUserAccount_RegisterCompatTool_Response(this);
                onBuilt();
                return cUserAccount_RegisterCompatTool_Response;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CUserAccount_RegisterCompatTool_Response) {
                    return mergeFrom((CUserAccount_RegisterCompatTool_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CUserAccount_RegisterCompatTool_Response cUserAccount_RegisterCompatTool_Response) {
                if (cUserAccount_RegisterCompatTool_Response == CUserAccount_RegisterCompatTool_Response.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(cUserAccount_RegisterCompatTool_Response.getUnknownFields());
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

        public static CUserAccount_RegisterCompatTool_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CUserAccount_RegisterCompatTool_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CUserAccount_RegisterCompatTool_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CUserAccount_RegisterCompatTool_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CEmbeddedClient_AuthorizeCurrentDevice_Request extends GeneratedMessage implements CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        private static final CEmbeddedClient_AuthorizeCurrentDevice_Request DEFAULT_INSTANCE;
        public static final int DEVICEID_FIELD_NUMBER = 4;
        public static final int DEVICE_INFO_FIELD_NUMBER = 3;
        private static final Parser<CEmbeddedClient_AuthorizeCurrentDevice_Request> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int appid_;
        private int bitField0_;
        private volatile Object deviceInfo_;
        private int deviceid_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CEmbeddedClient_AuthorizeCurrentDevice_Request.class.getName());
            DEFAULT_INSTANCE = new CEmbeddedClient_AuthorizeCurrentDevice_Request();
            PARSER = new AbstractParser<CEmbeddedClient_AuthorizeCurrentDevice_Request>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_Request.1
                @Override // com.google.protobuf.Parser
                public CEmbeddedClient_AuthorizeCurrentDevice_Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CEmbeddedClient_AuthorizeCurrentDevice_Request.newBuilder();
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

        private CEmbeddedClient_AuthorizeCurrentDevice_Request(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.appid_ = 0;
            this.deviceInfo_ = "";
            this.deviceid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CEmbeddedClient_AuthorizeCurrentDevice_Request() {
            this.steamid_ = 0L;
            this.appid_ = 0;
            this.deviceInfo_ = "";
            this.deviceid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.deviceInfo_ = "";
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CEmbeddedClient_AuthorizeCurrentDevice_Request.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public boolean hasAppid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public int getAppid() {
            return this.appid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public boolean hasDeviceInfo() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public String getDeviceInfo() {
            Object obj = this.deviceInfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceInfo_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public ByteString getDeviceInfoBytes() {
            Object obj = this.deviceInfo_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceInfo_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public boolean hasDeviceid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
        public int getDeviceid() {
            return this.deviceid_;
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
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 3, this.deviceInfo_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.deviceid_);
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
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(3, this.deviceInfo_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(4, this.deviceid_);
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
            if (!(obj instanceof CEmbeddedClient_AuthorizeCurrentDevice_Request)) {
                return super.equals(obj);
            }
            CEmbeddedClient_AuthorizeCurrentDevice_Request cEmbeddedClient_AuthorizeCurrentDevice_Request = (CEmbeddedClient_AuthorizeCurrentDevice_Request) obj;
            if (hasSteamid() != cEmbeddedClient_AuthorizeCurrentDevice_Request.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cEmbeddedClient_AuthorizeCurrentDevice_Request.getSteamid()) || hasAppid() != cEmbeddedClient_AuthorizeCurrentDevice_Request.hasAppid()) {
                return false;
            }
            if ((hasAppid() && getAppid() != cEmbeddedClient_AuthorizeCurrentDevice_Request.getAppid()) || hasDeviceInfo() != cEmbeddedClient_AuthorizeCurrentDevice_Request.hasDeviceInfo()) {
                return false;
            }
            if ((!hasDeviceInfo() || getDeviceInfo().equals(cEmbeddedClient_AuthorizeCurrentDevice_Request.getDeviceInfo())) && hasDeviceid() == cEmbeddedClient_AuthorizeCurrentDevice_Request.hasDeviceid()) {
                return (!hasDeviceid() || getDeviceid() == cEmbeddedClient_AuthorizeCurrentDevice_Request.getDeviceid()) && getUnknownFields().equals(cEmbeddedClient_AuthorizeCurrentDevice_Request.getUnknownFields());
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
            if (hasDeviceInfo()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getDeviceInfo().hashCode();
            }
            if (hasDeviceid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getDeviceid();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(InputStream inputStream) throws IOException {
            return (CEmbeddedClient_AuthorizeCurrentDevice_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_AuthorizeCurrentDevice_Request) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CEmbeddedClient_AuthorizeCurrentDevice_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_AuthorizeCurrentDevice_Request) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CEmbeddedClient_AuthorizeCurrentDevice_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_AuthorizeCurrentDevice_Request) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CEmbeddedClient_AuthorizeCurrentDevice_Request cEmbeddedClient_AuthorizeCurrentDevice_Request) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cEmbeddedClient_AuthorizeCurrentDevice_Request);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object deviceInfo_;
            private int deviceid_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(CEmbeddedClient_AuthorizeCurrentDevice_Request.class, Builder.class);
            }

            private Builder() {
                this.deviceInfo_ = "";
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.deviceInfo_ = "";
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.appid_ = 0;
                this.deviceInfo_ = "";
                this.deviceid_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeCurrentDevice_Request_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CEmbeddedClient_AuthorizeCurrentDevice_Request getDefaultInstanceForType() {
                return CEmbeddedClient_AuthorizeCurrentDevice_Request.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CEmbeddedClient_AuthorizeCurrentDevice_Request build() {
                CEmbeddedClient_AuthorizeCurrentDevice_Request cEmbeddedClient_AuthorizeCurrentDevice_RequestBuildPartial = buildPartial();
                if (cEmbeddedClient_AuthorizeCurrentDevice_RequestBuildPartial.isInitialized()) {
                    return cEmbeddedClient_AuthorizeCurrentDevice_RequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cEmbeddedClient_AuthorizeCurrentDevice_RequestBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CEmbeddedClient_AuthorizeCurrentDevice_Request buildPartial() {
                CEmbeddedClient_AuthorizeCurrentDevice_Request cEmbeddedClient_AuthorizeCurrentDevice_Request = new CEmbeddedClient_AuthorizeCurrentDevice_Request(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cEmbeddedClient_AuthorizeCurrentDevice_Request);
                }
                onBuilt();
                return cEmbeddedClient_AuthorizeCurrentDevice_Request;
            }

            private void buildPartial0(CEmbeddedClient_AuthorizeCurrentDevice_Request cEmbeddedClient_AuthorizeCurrentDevice_Request) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cEmbeddedClient_AuthorizeCurrentDevice_Request.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cEmbeddedClient_AuthorizeCurrentDevice_Request.appid_ = this.appid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cEmbeddedClient_AuthorizeCurrentDevice_Request.deviceInfo_ = this.deviceInfo_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cEmbeddedClient_AuthorizeCurrentDevice_Request.deviceid_ = this.deviceid_;
                    i |= 8;
                }
                cEmbeddedClient_AuthorizeCurrentDevice_Request.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CEmbeddedClient_AuthorizeCurrentDevice_Request) {
                    return mergeFrom((CEmbeddedClient_AuthorizeCurrentDevice_Request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CEmbeddedClient_AuthorizeCurrentDevice_Request cEmbeddedClient_AuthorizeCurrentDevice_Request) {
                if (cEmbeddedClient_AuthorizeCurrentDevice_Request == CEmbeddedClient_AuthorizeCurrentDevice_Request.getDefaultInstance()) {
                    return this;
                }
                if (cEmbeddedClient_AuthorizeCurrentDevice_Request.hasSteamid()) {
                    setSteamid(cEmbeddedClient_AuthorizeCurrentDevice_Request.getSteamid());
                }
                if (cEmbeddedClient_AuthorizeCurrentDevice_Request.hasAppid()) {
                    setAppid(cEmbeddedClient_AuthorizeCurrentDevice_Request.getAppid());
                }
                if (cEmbeddedClient_AuthorizeCurrentDevice_Request.hasDeviceInfo()) {
                    this.deviceInfo_ = cEmbeddedClient_AuthorizeCurrentDevice_Request.deviceInfo_;
                    this.bitField0_ |= 4;
                    onChanged();
                }
                if (cEmbeddedClient_AuthorizeCurrentDevice_Request.hasDeviceid()) {
                    setDeviceid(cEmbeddedClient_AuthorizeCurrentDevice_Request.getDeviceid());
                }
                mergeUnknownFields(cEmbeddedClient_AuthorizeCurrentDevice_Request.getUnknownFields());
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
                                } else if (tag == 26) {
                                    this.deviceInfo_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.deviceid_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
            public boolean hasAppid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
            public boolean hasDeviceInfo() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
            public String getDeviceInfo() {
                Object obj = this.deviceInfo_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.deviceInfo_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
            public ByteString getDeviceInfoBytes() {
                Object obj = this.deviceInfo_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.deviceInfo_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDeviceInfo(String str) {
                str.getClass();
                this.deviceInfo_ = str;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearDeviceInfo() {
                this.deviceInfo_ = CEmbeddedClient_AuthorizeCurrentDevice_Request.getDefaultInstance().getDeviceInfo();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder setDeviceInfoBytes(ByteString byteString) {
                byteString.getClass();
                this.deviceInfo_ = byteString;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
            public boolean hasDeviceid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeCurrentDevice_RequestOrBuilder
            public int getDeviceid() {
                return this.deviceid_;
            }

            public Builder setDeviceid(int i) {
                this.deviceid_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearDeviceid() {
                this.bitField0_ &= -9;
                this.deviceid_ = 0;
                onChanged();
                return this;
            }
        }

        public static CEmbeddedClient_AuthorizeCurrentDevice_Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CEmbeddedClient_AuthorizeCurrentDevice_Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CEmbeddedClient_AuthorizeCurrentDevice_Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CEmbeddedClient_AuthorizeCurrentDevice_Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CEmbeddedClient_Token extends GeneratedMessage implements CEmbeddedClient_TokenOrBuilder {
        public static final int CLIENT_TOKEN_FIELD_NUMBER = 2;
        private static final CEmbeddedClient_Token DEFAULT_INSTANCE;
        public static final int DEVICEID_FIELD_NUMBER = 4;
        public static final int EXPIRY_FIELD_NUMBER = 3;
        private static final Parser<CEmbeddedClient_Token> PARSER;
        public static final int STEAMID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private ByteString clientToken_;
        private int deviceid_;
        private int expiry_;
        private byte memoizedIsInitialized;
        private long steamid_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CEmbeddedClient_Token.class.getName());
            DEFAULT_INSTANCE = new CEmbeddedClient_Token();
            PARSER = new AbstractParser<CEmbeddedClient_Token>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_Token.1
                @Override // com.google.protobuf.Parser
                public CEmbeddedClient_Token parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CEmbeddedClient_Token.newBuilder();
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

        private CEmbeddedClient_Token(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.steamid_ = 0L;
            this.clientToken_ = ByteString.EMPTY;
            this.expiry_ = 0;
            this.deviceid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CEmbeddedClient_Token() {
            this.steamid_ = 0L;
            ByteString byteString = ByteString.EMPTY;
            this.expiry_ = 0;
            this.deviceid_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.clientToken_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_Token_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_Token_fieldAccessorTable.ensureFieldAccessorsInitialized(CEmbeddedClient_Token.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public boolean hasClientToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public ByteString getClientToken() {
            return this.clientToken_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public boolean hasExpiry() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public int getExpiry() {
            return this.expiry_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public boolean hasDeviceid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
        public int getDeviceid() {
            return this.deviceid_;
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
                codedOutputStream.writeBytes(2, this.clientToken_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.expiry_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeUInt32(4, this.deviceid_);
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
                iComputeFixed64Size += CodedOutputStream.computeBytesSize(2, this.clientToken_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.expiry_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(4, this.deviceid_);
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
            if (!(obj instanceof CEmbeddedClient_Token)) {
                return super.equals(obj);
            }
            CEmbeddedClient_Token cEmbeddedClient_Token = (CEmbeddedClient_Token) obj;
            if (hasSteamid() != cEmbeddedClient_Token.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cEmbeddedClient_Token.getSteamid()) || hasClientToken() != cEmbeddedClient_Token.hasClientToken()) {
                return false;
            }
            if ((hasClientToken() && !getClientToken().equals(cEmbeddedClient_Token.getClientToken())) || hasExpiry() != cEmbeddedClient_Token.hasExpiry()) {
                return false;
            }
            if ((!hasExpiry() || getExpiry() == cEmbeddedClient_Token.getExpiry()) && hasDeviceid() == cEmbeddedClient_Token.hasDeviceid()) {
                return (!hasDeviceid() || getDeviceid() == cEmbeddedClient_Token.getDeviceid()) && getUnknownFields().equals(cEmbeddedClient_Token.getUnknownFields());
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
            if (hasClientToken()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getClientToken().hashCode();
            }
            if (hasExpiry()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getExpiry();
            }
            if (hasDeviceid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getDeviceid();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CEmbeddedClient_Token parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CEmbeddedClient_Token parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CEmbeddedClient_Token parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CEmbeddedClient_Token parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CEmbeddedClient_Token parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CEmbeddedClient_Token parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CEmbeddedClient_Token parseFrom(InputStream inputStream) throws IOException {
            return (CEmbeddedClient_Token) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CEmbeddedClient_Token parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_Token) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CEmbeddedClient_Token parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CEmbeddedClient_Token) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CEmbeddedClient_Token parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_Token) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CEmbeddedClient_Token parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CEmbeddedClient_Token) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CEmbeddedClient_Token parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_Token) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CEmbeddedClient_Token cEmbeddedClient_Token) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cEmbeddedClient_Token);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CEmbeddedClient_TokenOrBuilder {
            private int bitField0_;
            private ByteString clientToken_;
            private int deviceid_;
            private int expiry_;
            private long steamid_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_Token_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_Token_fieldAccessorTable.ensureFieldAccessorsInitialized(CEmbeddedClient_Token.class, Builder.class);
            }

            private Builder() {
                this.clientToken_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.clientToken_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.steamid_ = 0L;
                this.clientToken_ = ByteString.EMPTY;
                this.expiry_ = 0;
                this.deviceid_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_Token_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CEmbeddedClient_Token getDefaultInstanceForType() {
                return CEmbeddedClient_Token.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CEmbeddedClient_Token build() {
                CEmbeddedClient_Token cEmbeddedClient_TokenBuildPartial = buildPartial();
                if (cEmbeddedClient_TokenBuildPartial.isInitialized()) {
                    return cEmbeddedClient_TokenBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cEmbeddedClient_TokenBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CEmbeddedClient_Token buildPartial() {
                CEmbeddedClient_Token cEmbeddedClient_Token = new CEmbeddedClient_Token(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cEmbeddedClient_Token);
                }
                onBuilt();
                return cEmbeddedClient_Token;
            }

            private void buildPartial0(CEmbeddedClient_Token cEmbeddedClient_Token) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cEmbeddedClient_Token.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cEmbeddedClient_Token.clientToken_ = this.clientToken_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cEmbeddedClient_Token.expiry_ = this.expiry_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cEmbeddedClient_Token.deviceid_ = this.deviceid_;
                    i |= 8;
                }
                cEmbeddedClient_Token.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CEmbeddedClient_Token) {
                    return mergeFrom((CEmbeddedClient_Token) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CEmbeddedClient_Token cEmbeddedClient_Token) {
                if (cEmbeddedClient_Token == CEmbeddedClient_Token.getDefaultInstance()) {
                    return this;
                }
                if (cEmbeddedClient_Token.hasSteamid()) {
                    setSteamid(cEmbeddedClient_Token.getSteamid());
                }
                if (cEmbeddedClient_Token.hasClientToken()) {
                    setClientToken(cEmbeddedClient_Token.getClientToken());
                }
                if (cEmbeddedClient_Token.hasExpiry()) {
                    setExpiry(cEmbeddedClient_Token.getExpiry());
                }
                if (cEmbeddedClient_Token.hasDeviceid()) {
                    setDeviceid(cEmbeddedClient_Token.getDeviceid());
                }
                mergeUnknownFields(cEmbeddedClient_Token.getUnknownFields());
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
                                    this.clientToken_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                } else if (tag == 24) {
                                    this.expiry_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                } else if (tag == 32) {
                                    this.deviceid_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
            public boolean hasClientToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
            public ByteString getClientToken() {
                return this.clientToken_;
            }

            public Builder setClientToken(ByteString byteString) {
                byteString.getClass();
                this.clientToken_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearClientToken() {
                this.bitField0_ &= -3;
                this.clientToken_ = CEmbeddedClient_Token.getDefaultInstance().getClientToken();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
            public boolean hasExpiry() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
            public int getExpiry() {
                return this.expiry_;
            }

            public Builder setExpiry(int i) {
                this.expiry_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearExpiry() {
                this.bitField0_ &= -5;
                this.expiry_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
            public boolean hasDeviceid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_TokenOrBuilder
            public int getDeviceid() {
                return this.deviceid_;
            }

            public Builder setDeviceid(int i) {
                this.deviceid_ = i;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearDeviceid() {
                this.bitField0_ &= -9;
                this.deviceid_ = 0;
                onChanged();
                return this;
            }
        }

        public static CEmbeddedClient_Token getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CEmbeddedClient_Token> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CEmbeddedClient_Token> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CEmbeddedClient_Token getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CEmbeddedClient_AuthorizeDevice_Response extends GeneratedMessage implements CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder {
        private static final CEmbeddedClient_AuthorizeDevice_Response DEFAULT_INSTANCE;
        private static final Parser<CEmbeddedClient_AuthorizeDevice_Response> PARSER;
        public static final int RESULT_FIELD_NUMBER = 1;
        public static final int TOKEN_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int result_;
        private CEmbeddedClient_Token token_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CEmbeddedClient_AuthorizeDevice_Response.class.getName());
            DEFAULT_INSTANCE = new CEmbeddedClient_AuthorizeDevice_Response();
            PARSER = new AbstractParser<CEmbeddedClient_AuthorizeDevice_Response>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_Response.1
                @Override // com.google.protobuf.Parser
                public CEmbeddedClient_AuthorizeDevice_Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CEmbeddedClient_AuthorizeDevice_Response.newBuilder();
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

        private CEmbeddedClient_AuthorizeDevice_Response(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.result_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CEmbeddedClient_AuthorizeDevice_Response() {
            this.result_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeDevice_Response_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeDevice_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CEmbeddedClient_AuthorizeDevice_Response.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
        public int getResult() {
            return this.result_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
        public CEmbeddedClient_Token getToken() {
            CEmbeddedClient_Token cEmbeddedClient_Token = this.token_;
            return cEmbeddedClient_Token == null ? CEmbeddedClient_Token.getDefaultInstance() : cEmbeddedClient_Token;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
        public CEmbeddedClient_TokenOrBuilder getTokenOrBuilder() {
            CEmbeddedClient_Token cEmbeddedClient_Token = this.token_;
            return cEmbeddedClient_Token == null ? CEmbeddedClient_Token.getDefaultInstance() : cEmbeddedClient_Token;
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
                codedOutputStream.writeMessage(2, getToken());
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
                iComputeUInt32Size += CodedOutputStream.computeMessageSize(2, getToken());
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
            if (!(obj instanceof CEmbeddedClient_AuthorizeDevice_Response)) {
                return super.equals(obj);
            }
            CEmbeddedClient_AuthorizeDevice_Response cEmbeddedClient_AuthorizeDevice_Response = (CEmbeddedClient_AuthorizeDevice_Response) obj;
            if (hasResult() != cEmbeddedClient_AuthorizeDevice_Response.hasResult()) {
                return false;
            }
            if ((!hasResult() || getResult() == cEmbeddedClient_AuthorizeDevice_Response.getResult()) && hasToken() == cEmbeddedClient_AuthorizeDevice_Response.hasToken()) {
                return (!hasToken() || getToken().equals(cEmbeddedClient_AuthorizeDevice_Response.getToken())) && getUnknownFields().equals(cEmbeddedClient_AuthorizeDevice_Response.getUnknownFields());
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
            if (hasToken()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getToken().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(InputStream inputStream) throws IOException {
            return (CEmbeddedClient_AuthorizeDevice_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_AuthorizeDevice_Response) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CEmbeddedClient_AuthorizeDevice_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_AuthorizeDevice_Response) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CEmbeddedClient_AuthorizeDevice_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CEmbeddedClient_AuthorizeDevice_Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CEmbeddedClient_AuthorizeDevice_Response) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CEmbeddedClient_AuthorizeDevice_Response cEmbeddedClient_AuthorizeDevice_Response) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cEmbeddedClient_AuthorizeDevice_Response);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder {
            private int bitField0_;
            private int result_;
            private SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> tokenBuilder_;
            private CEmbeddedClient_Token token_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeDevice_Response_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeDevice_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(CEmbeddedClient_AuthorizeDevice_Response.class, Builder.class);
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
                    internalGetTokenFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.result_ = 0;
                this.token_ = null;
                SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.tokenBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesUseraccountSteamclient.internal_static_CEmbeddedClient_AuthorizeDevice_Response_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CEmbeddedClient_AuthorizeDevice_Response getDefaultInstanceForType() {
                return CEmbeddedClient_AuthorizeDevice_Response.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CEmbeddedClient_AuthorizeDevice_Response build() {
                CEmbeddedClient_AuthorizeDevice_Response cEmbeddedClient_AuthorizeDevice_ResponseBuildPartial = buildPartial();
                if (cEmbeddedClient_AuthorizeDevice_ResponseBuildPartial.isInitialized()) {
                    return cEmbeddedClient_AuthorizeDevice_ResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cEmbeddedClient_AuthorizeDevice_ResponseBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CEmbeddedClient_AuthorizeDevice_Response buildPartial() {
                CEmbeddedClient_AuthorizeDevice_Response cEmbeddedClient_AuthorizeDevice_Response = new CEmbeddedClient_AuthorizeDevice_Response(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cEmbeddedClient_AuthorizeDevice_Response);
                }
                onBuilt();
                return cEmbeddedClient_AuthorizeDevice_Response;
            }

            private void buildPartial0(CEmbeddedClient_AuthorizeDevice_Response cEmbeddedClient_AuthorizeDevice_Response) {
                int i;
                CEmbeddedClient_Token cEmbeddedClient_Token;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cEmbeddedClient_AuthorizeDevice_Response.result_ = this.result_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                    if (singleFieldBuilder == null) {
                        cEmbeddedClient_Token = this.token_;
                    } else {
                        cEmbeddedClient_Token = (CEmbeddedClient_Token) singleFieldBuilder.build();
                    }
                    cEmbeddedClient_AuthorizeDevice_Response.token_ = cEmbeddedClient_Token;
                    i |= 2;
                }
                cEmbeddedClient_AuthorizeDevice_Response.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CEmbeddedClient_AuthorizeDevice_Response) {
                    return mergeFrom((CEmbeddedClient_AuthorizeDevice_Response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CEmbeddedClient_AuthorizeDevice_Response cEmbeddedClient_AuthorizeDevice_Response) {
                if (cEmbeddedClient_AuthorizeDevice_Response == CEmbeddedClient_AuthorizeDevice_Response.getDefaultInstance()) {
                    return this;
                }
                if (cEmbeddedClient_AuthorizeDevice_Response.hasResult()) {
                    setResult(cEmbeddedClient_AuthorizeDevice_Response.getResult());
                }
                if (cEmbeddedClient_AuthorizeDevice_Response.hasToken()) {
                    mergeToken(cEmbeddedClient_AuthorizeDevice_Response.getToken());
                }
                mergeUnknownFields(cEmbeddedClient_AuthorizeDevice_Response.getUnknownFields());
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
                                    codedInputStream.readMessage(internalGetTokenFieldBuilder().getBuilder(), extensionRegistryLite);
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
            public CEmbeddedClient_Token getToken() {
                SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                if (singleFieldBuilder == null) {
                    CEmbeddedClient_Token cEmbeddedClient_Token = this.token_;
                    return cEmbeddedClient_Token == null ? CEmbeddedClient_Token.getDefaultInstance() : cEmbeddedClient_Token;
                }
                return (CEmbeddedClient_Token) singleFieldBuilder.getMessage();
            }

            public Builder setToken(CEmbeddedClient_Token cEmbeddedClient_Token) {
                SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                if (singleFieldBuilder == null) {
                    cEmbeddedClient_Token.getClass();
                    this.token_ = cEmbeddedClient_Token;
                } else {
                    singleFieldBuilder.setMessage(cEmbeddedClient_Token);
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder setToken(CEmbeddedClient_Token.Builder builder) {
                SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                if (singleFieldBuilder == null) {
                    this.token_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder mergeToken(CEmbeddedClient_Token cEmbeddedClient_Token) {
                CEmbeddedClient_Token cEmbeddedClient_Token2;
                SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 0 && (cEmbeddedClient_Token2 = this.token_) != null && cEmbeddedClient_Token2 != CEmbeddedClient_Token.getDefaultInstance()) {
                        getTokenBuilder().mergeFrom(cEmbeddedClient_Token);
                    } else {
                        this.token_ = cEmbeddedClient_Token;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cEmbeddedClient_Token);
                }
                if (this.token_ != null) {
                    this.bitField0_ |= 2;
                    onChanged();
                }
                return this;
            }

            public Builder clearToken() {
                this.bitField0_ &= -3;
                this.token_ = null;
                SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.tokenBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CEmbeddedClient_Token.Builder getTokenBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (CEmbeddedClient_Token.Builder) internalGetTokenFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient.CEmbeddedClient_AuthorizeDevice_ResponseOrBuilder
            public CEmbeddedClient_TokenOrBuilder getTokenOrBuilder() {
                SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> singleFieldBuilder = this.tokenBuilder_;
                if (singleFieldBuilder != null) {
                    return (CEmbeddedClient_TokenOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CEmbeddedClient_Token cEmbeddedClient_Token = this.token_;
                return cEmbeddedClient_Token == null ? CEmbeddedClient_Token.getDefaultInstance() : cEmbeddedClient_Token;
            }

            private SingleFieldBuilder<CEmbeddedClient_Token, CEmbeddedClient_Token.Builder, CEmbeddedClient_TokenOrBuilder> internalGetTokenFieldBuilder() {
                if (this.tokenBuilder_ == null) {
                    this.tokenBuilder_ = new SingleFieldBuilder<>(getToken(), getParentForChildren(), isClean());
                    this.token_ = null;
                }
                return this.tokenBuilder_;
            }
        }

        public static CEmbeddedClient_AuthorizeDevice_Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CEmbeddedClient_AuthorizeDevice_Response> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CEmbeddedClient_AuthorizeDevice_Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CEmbeddedClient_AuthorizeDevice_Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
