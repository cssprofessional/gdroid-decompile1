package in.dragonbra.javasteam.protobufs.steamclient;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.DescriptorProtos;
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
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.asn1.BERTags;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: loaded from: classes.dex */
public final class SteammessagesBase {
    public static final int ALLOW_FIELD_NAMED_STEAM_ID_FIELD_NUMBER = 50024;
    public static final int MSGPOOL_HARD_LIMIT_FIELD_NUMBER = 50001;
    public static final int MSGPOOL_SOFT_LIMIT_FIELD_NUMBER = 50000;
    public static final int PHP_OUTPUT_ALWAYS_NUMBER_FIELD_NUMBER = 50020;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.FieldOptions, Boolean> allowFieldNamedSteamId;
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_CBilling_Address_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CBilling_Address_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CCDDBAppDetailCommon_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CCDDBAppDetailCommon_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClanEventData_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClanEventData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClanEventUserNewsTuple_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClanEventUserNewsTuple_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CClanMatchEventByRange_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CClanMatchEventByRange_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CCommunity_ClanAnnouncementInfo_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CCommunity_ClanAnnouncementInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CCuratorPreferences_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CCuratorPreferences_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CLocalizationToken_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CLocalizationToken_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgAppRights_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgAppRights_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgAuthTicket_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgAuthTicket_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgGCRoutingProtoBufHeader_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgGCRoutingProtoBufHeader_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgIPAddressBucket_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgIPAddressBucket_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgIPAddress_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgIPAddress_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgKeyValuePair_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgKeyValuePair_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgKeyValueSet_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgKeyValueSet_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgKubeRPCPacket_Hdr_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgKubeRPCPacket_Hdr_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgKubeRPCPacket_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgKubeRPCPacket_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgMulti_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgMulti_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgProtoBufHeader_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgProtoBufHeader_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CMsgProtobufWrapped_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CMsgProtobufWrapped_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_CPackageReservationStatus_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_CPackageReservationStatus_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_UserContentDescriptorPreferences_ContentDescriptor_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_UserContentDescriptorPreferences_ContentDescriptor_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_UserContentDescriptorPreferences_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_UserContentDescriptorPreferences_fieldAccessorTable;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, Integer> msgpoolHardLimit;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, Integer> msgpoolSoftLimit;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.FieldOptions, Boolean> phpOutputAlwaysNumber;

    public interface CMsgAuthTicketOrBuilder extends MessageOrBuilder {
        int getEresult();

        int getEstate();

        long getGameid();

        int getHSteamPipe();

        ByteString getServerSecret();

        long getSteamid();

        ByteString getTicket();

        int getTicketCrc();

        int getTicketType();

        boolean hasEresult();

        boolean hasEstate();

        boolean hasGameid();

        boolean hasHSteamPipe();

        boolean hasServerSecret();

        boolean hasSteamid();

        boolean hasTicket();

        boolean hasTicketCrc();

        boolean hasTicketType();
    }

    public interface CMsgGCRoutingProtoBufHeaderOrBuilder extends MessageOrBuilder {
        int getDstGcDirIndex();

        long getDstGcidQueue();

        boolean hasDstGcDirIndex();

        boolean hasDstGcidQueue();
    }

    public interface CMsgIPAddressOrBuilder extends MessageOrBuilder {
        CMsgIPAddress.IpCase getIpCase();

        int getV4();

        ByteString getV6();

        boolean hasV4();

        boolean hasV6();
    }

    public interface CMsgMultiOrBuilder extends MessageOrBuilder {
        ByteString getMessageBody();

        int getSizeUnzipped();

        boolean hasMessageBody();

        boolean hasSizeUnzipped();
    }

    public interface CMsgProtoBufHeaderOrBuilder extends MessageOrBuilder {
        long getAdminRequestSpoofingSteamid();

        boolean getAdminSpoofingUser();

        int getAuthAccountFlags();

        int getClientSessionid();

        int getCmSysid();

        String getDebugSource();

        ByteString getDebugSourceBytes();

        int getDebugSourceStringIndex();

        int getEresult();

        String getErrorMessage();

        ByteString getErrorMessageBytes();

        int getExcludeClientSessionids(int i);

        int getExcludeClientSessionidsCount();

        List<Integer> getExcludeClientSessionidsList();

        int getForwardToSysid(int i);

        int getForwardToSysidCount();

        List<Integer> getForwardToSysidList();

        int getIp();

        CMsgProtoBufHeader.IpAddrCase getIpAddrCase();

        ByteString getIpV6();

        boolean getIsFromExternalSource();

        boolean getIsValveds();

        long getJobidSource();

        long getJobidTarget();

        int getLauncherType();

        long getMessageid();

        int getPublisherGroupId();

        int getRealm();

        int getRoutingAppid();

        CMsgGCRoutingProtoBufHeader getRoutingGc();

        CMsgGCRoutingProtoBufHeaderOrBuilder getRoutingGcOrBuilder();

        int getSeqNum();

        CMsgProtoBufHeader.ESessionDisposition getSessionDisposition();

        long getSteamid();

        int getSysid();

        String getTargetJobName();

        ByteString getTargetJobNameBytes();

        int getTimeoutMs();

        long getTokenId();

        int getTokenSource();

        long getTraceTag();

        int getTransportError();

        int getWebapiKeyId();

        String getWebuiAuthKey();

        ByteString getWebuiAuthKeyBytes();

        String getWgToken();

        ByteString getWgTokenBytes();

        boolean hasAdminRequestSpoofingSteamid();

        boolean hasAdminSpoofingUser();

        boolean hasAuthAccountFlags();

        boolean hasClientSessionid();

        boolean hasCmSysid();

        boolean hasDebugSource();

        boolean hasDebugSourceStringIndex();

        boolean hasEresult();

        boolean hasErrorMessage();

        boolean hasIp();

        boolean hasIpV6();

        boolean hasIsFromExternalSource();

        boolean hasIsValveds();

        boolean hasJobidSource();

        boolean hasJobidTarget();

        boolean hasLauncherType();

        boolean hasMessageid();

        boolean hasPublisherGroupId();

        boolean hasRealm();

        boolean hasRoutingAppid();

        boolean hasRoutingGc();

        boolean hasSeqNum();

        boolean hasSessionDisposition();

        boolean hasSteamid();

        boolean hasSysid();

        boolean hasTargetJobName();

        boolean hasTimeoutMs();

        boolean hasTokenId();

        boolean hasTokenSource();

        boolean hasTraceTag();

        boolean hasTransportError();

        boolean hasWebapiKeyId();

        boolean hasWebuiAuthKey();

        boolean hasWgToken();
    }

    public interface UserContentDescriptorPreferencesOrBuilder extends MessageOrBuilder {
        UserContentDescriptorPreferences.ContentDescriptor getContentDescriptorsToExclude(int i);

        int getContentDescriptorsToExcludeCount();

        List<UserContentDescriptorPreferences.ContentDescriptor> getContentDescriptorsToExcludeList();

        UserContentDescriptorPreferences.ContentDescriptorOrBuilder getContentDescriptorsToExcludeOrBuilder(int i);

        List<? extends UserContentDescriptorPreferences.ContentDescriptorOrBuilder> getContentDescriptorsToExcludeOrBuilderList();
    }

    private SteammessagesBase() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesBase.class.getName());
        GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, Integer> generatedExtensionNewFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(Integer.class, null);
        msgpoolSoftLimit = generatedExtensionNewFileScopedGeneratedExtension;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, Integer> generatedExtensionNewFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(Integer.class, null);
        msgpoolHardLimit = generatedExtensionNewFileScopedGeneratedExtension2;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.FieldOptions, Boolean> generatedExtensionNewFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        phpOutputAlwaysNumber = generatedExtensionNewFileScopedGeneratedExtension3;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.FieldOptions, Boolean> generatedExtensionNewFileScopedGeneratedExtension4 = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        allowFieldNamedSteamId = generatedExtensionNewFileScopedGeneratedExtension4;
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nEin/dragonbra/javasteam/protobufs/steamclient/steammessages_base.proto\u001a google/protobuf/descriptor.proto\"1\n\rCMsgIPAddress\u0012\f\n\u0002v4\u0018\u0001 \u0001(\u0007H\u0000\u0012\f\n\u0002v6\u0018\u0002 \u0001(\fH\u0000B\u0004\n\u0002ip\"R\n\u0013CMsgIPAddressBucket\u0012+\n\u0013original_ip_address\u0018\u0001 \u0001(\u000b2\u000e.CMsgIPAddress\u0012\u000e\n\u0006bucket\u0018\u0002 \u0001(\u0006\"O\n\u001bCMsgGCRoutingProtoBufHeader\u0012\u0016\n\u000edst_gcid_queue\u0018\u0001 \u0001(\u0004\u0012\u0018\n\u0010dst_gc_dir_index\u0018\u0002 \u0001(\r\"í\b\n\u0012CMsgProtoBufHeader\u0012\u000f\n\u0007steamid\u0018\u0001 \u0001(\u0006\u0012\u0018\n\u0010client_sessionid\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rrouting_appid\u0018\u0003 \u0001(\r\u0012*\n\fjobid_source\u0018\n \u0001(\u0006:\u001418446744073709551615\u0012*\n\fjobid_target\u0018\u000b \u0001(\u0006:\u001418446744073709551615\u0012\u0017\n\u000ftarget_job_name\u0018\f \u0001(\t\u0012\u000f\n\u0007seq_num\u0018\u0018 \u0001(\u0005\u0012\u0012\n\u0007eresult\u0018\r \u0001(\u0005:\u00012\u0012\u0015\n\rerror_message\u0018\u000e \u0001(\t\u0012\u001a\n\u0012auth_account_flags\u0018\u0010 \u0001(\r\u0012\u0014\n\ftoken_source\u0018\u0016 \u0001(\r\u0012\u001b\n\u0013admin_spoofing_user\u0018\u0017 \u0001(\b\u0012\u001a\n\u000ftransport_error\u0018\u0011 \u0001(\u0005:\u00011\u0012'\n\tmessageid\u0018\u0012 \u0001(\u0004:\u001418446744073709551615\u0012\u001a\n\u0012publisher_group_id\u0018\u0013 \u0001(\r\u0012\r\n\u0005sysid\u0018\u0014 \u0001(\r\u0012\u0015\n\rwebapi_key_id\u0018\u0019 \u0001(\r\u0012\u001f\n\u0017is_from_external_source\u0018\u001a \u0001(\b\u0012\u0018\n\u0010forward_to_sysid\u0018\u001b \u0003(\r\u0012\u0010\n\bcm_sysid\u0018\u001c \u0001(\r\u0012\u0018\n\rlauncher_type\u0018\u001f \u0001(\r:\u00010\u0012\u0010\n\u0005realm\u0018  \u0001(\r:\u00010\u0012\u0016\n\ntimeout_ms\u0018! \u0001(\u0005:\u0002-1\u0012\u0014\n\fdebug_source\u0018\" \u0001(\t\u0012!\n\u0019debug_source_string_index\u0018# \u0001(\r\u0012\u0010\n\btoken_id\u0018$ \u0001(\u0004\u00120\n\nrouting_gc\u0018% \u0001(\u000b2\u001c.CMsgGCRoutingProtoBufHeader\u0012a\n\u0013session_disposition\u0018& \u0001(\u000e2'.CMsgProtoBufHeader.ESessionDisposition:\u001bk_ESessionDispositionNormal\u0012\u0010\n\bwg_token\u0018' \u0001(\t\u0012\u0016\n\u000ewebui_auth_key\u0018( \u0001(\t\u0012!\n\u0019exclude_client_sessionids\u0018) \u0003(\u0005\u0012&\n\u001eadmin_request_spoofing_steamid\u0018+ \u0001(\u0006\u0012\u0012\n\nis_valveds\u0018, \u0001(\b\u0012\u0011\n\ttrace_tag\u0018- \u0001(\u0006\u0012\f\n\u0002ip\u0018\u000f \u0001(\rH\u0000\u0012\u000f\n\u0005ip_v6\u0018\u001d \u0001(\fH\u0000\"[\n\u0013ESessionDisposition\u0012\u001f\n\u001bk_ESessionDispositionNormal\u0010\u0000\u0012#\n\u001fk_ESessionDispositionDisconnect\u0010\u0001B\t\n\u0007ip_addr\"\u0084\u0002\n\u0011CMsgKubeRPCPacket\u0012#\n\u0003hdr\u0018\u0001 \u0001(\u000b2\u0016.CMsgKubeRPCPacket.Hdr\u0012\u000f\n\u0007payload\u0018\u0002 \u0001(\f\u001a¸\u0001\n\u0003Hdr\u0012*\n\fjobid_source\u0018\n \u0001(\u0006:\u001418446744073709551615\u0012*\n\fjobid_target\u0018\u000b \u0001(\u0006:\u001418446744073709551615\u0012\u0012\n\u0007eresult\u0018\r \u0001(\u0005:\u00012\u0012\u0017\n\u000ftarget_job_name\u0018\f \u0001(\t\u0012\u0015\n\rerror_message\u0018\u000e \u0001(\t\u0012\u0015\n\rreply_address\u0018* \u0001(\t\"8\n\tCMsgMulti\u0012\u0015\n\rsize_unzipped\u0018\u0001 \u0001(\r\u0012\u0014\n\fmessage_body\u0018\u0002 \u0001(\f\"+\n\u0013CMsgProtobufWrapped\u0012\u0014\n\fmessage_body\u0018\u0001 \u0001(\f\"»\u0001\n\u000eCMsgAuthTicket\u0012\u000e\n\u0006estate\u0018\u0001 \u0001(\r\u0012\u0012\n\u0007eresult\u0018\u0002 \u0001(\r:\u00012\u0012\u000f\n\u0007steamid\u0018\u0003 \u0001(\u0006\u0012\u000e\n\u0006gameid\u0018\u0004 \u0001(\u0006\u0012\u0014\n\fh_steam_pipe\u0018\u0005 \u0001(\r\u0012\u0012\n\nticket_crc\u0018\u0006 \u0001(\r\u0012\u000e\n\u0006ticket\u0018\u0007 \u0001(\f\u0012\u0015\n\rserver_secret\u0018\b \u0001(\f\u0012\u0013\n\u000bticket_type\u0018\t \u0001(\r\"\u0098\u0003\n\u0014CCDDBAppDetailCommon\u0012\r\n\u0005appid\u0018\u0001 \u0001(\r\u0012\f\n\u0004name\u0018\u0002 \u0001(\t\u0012\f\n\u0004icon\u0018\u0003 \u0001(\t\u0012\f\n\u0004tool\u0018\u0006 \u0001(\b\u0012\f\n\u0004demo\u0018\u0007 \u0001(\b\u0012\r\n\u0005media\u0018\b \u0001(\b\u0012\u001f\n\u0017community_visible_stats\u0018\t \u0001(\b\u0012\u0015\n\rfriendly_name\u0018\n \u0001(\t\u0012\u0013\n\u000bpropagation\u0018\u000b \u0001(\t\u0012\u0019\n\u0011has_adult_content\u0018\f \u0001(\b\u0012!\n\u0019is_visible_in_steam_china\u0018\r \u0001(\b\u0012\u0010\n\bapp_type\u0018\u000e \u0001(\r\u0012\u001d\n\u0015has_adult_content_sex\u0018\u000f \u0001(\b\u0012\"\n\u001ahas_adult_content_violence\u0018\u0010 \u0001(\b\u0012\u001d\n\u0015content_descriptorids\u0018\u0011 \u0003(\r\u0012+\n#content_descriptorids_including_dlc\u0018\u0012 \u0003(\r\"³\u0003\n\rCMsgAppRights\u0012\u0011\n\tedit_info\u0018\u0001 \u0001(\b\u0012\u000f\n\u0007publish\u0018\u0002 \u0001(\b\u0012\u0017\n\u000fview_error_data\u0018\u0003 \u0001(\b\u0012\u0010\n\bdownload\u0018\u0004 \u0001(\b\u0012\u0015\n\rupload_cdkeys\u0018\u0005 \u0001(\b\u0012\u0017\n\u000fgenerate_cdkeys\u0018\u0006 \u0001(\b\u0012\u0017\n\u000fview_financials\u0018\u0007 \u0001(\b\u0012\u0012\n\nmanage_ceg\u0018\b \u0001(\b\u0012\u0016\n\u000emanage_signing\u0018\t \u0001(\b\u0012\u0015\n\rmanage_cdkeys\u0018\n \u0001(\b\u0012\u0016\n\u000eedit_marketing\u0018\u000b \u0001(\b\u0012\u0017\n\u000feconomy_support\u0018\f \u0001(\b\u0012\"\n\u001aeconomy_support_supervisor\u0018\r \u0001(\b\u0012\u0016\n\u000emanage_pricing\u0018\u000e \u0001(\b\u0012\u0016\n\u000ebroadcast_live\u0018\u000f \u0001(\b\u0012\u001e\n\u0016view_marketing_traffic\u0018\u0010 \u0001(\b\u0012\"\n\u001aedit_store_display_content\u0018\u0011 \u0001(\b\"ñ\u0002\n\u0013CCuratorPreferences\u0012\u001b\n\u0013supported_languages\u0018\u0001 \u0001(\r\u0012\u0018\n\u0010platform_windows\u0018\u0002 \u0001(\b\u0012\u0014\n\fplatform_mac\u0018\u0003 \u0001(\b\u0012\u0016\n\u000eplatform_linux\u0018\u0004 \u0001(\b\u0012\u0012\n\nvr_content\u0018\u0005 \u0001(\b\u0012\u001e\n\u0016adult_content_violence\u0018\u0006 \u0001(\b\u0012\u0019\n\u0011adult_content_sex\u0018\u0007 \u0001(\b\u0012\u0019\n\u0011timestamp_updated\u0018\b \u0001(\r\u0012\u0016\n\u000etagids_curated\u0018\t \u0003(\r\u0012\u0017\n\u000ftagids_filtered\u0018\n \u0003(\r\u0012\u0015\n\rwebsite_title\u0018\u000b \u0001(\t\u0012\u0013\n\u000bwebsite_url\u0018\f \u0001(\t\u0012\u0016\n\u000ediscussion_url\u0018\r \u0001(\t\u0012\u0016\n\u000eshow_broadcast\u0018\u000e \u0001(\b\"@\n\u0012CLocalizationToken\u0012\u0010\n\blanguage\u0018\u0001 \u0001(\r\u0012\u0018\n\u0010localized_string\u0018\u0002 \u0001(\t\"ì\u0001\n\u0017CClanEventUserNewsTuple\u0012\u000e\n\u0006clanid\u0018\u0001 \u0001(\r\u0012\u0011\n\tevent_gid\u0018\u0002 \u0001(\u0006\u0012\u0018\n\u0010announcement_gid\u0018\u0003 \u0001(\u0006\u0012\u0013\n\u000brtime_start\u0018\u0004 \u0001(\r\u0012\u0011\n\trtime_end\u0018\u0005 \u0001(\r\u0012\u0016\n\u000epriority_score\u0018\u0006 \u0001(\r\u0012\f\n\u0004type\u0018\u0007 \u0001(\r\u0012\u0018\n\u0010clamp_range_slot\u0018\b \u0001(\r\u0012\r\n\u0005appid\u0018\t \u0001(\r\u0012\u001d\n\u0015rtime32_last_modified\u0018\n \u0001(\r\"\u0080\u0001\n\u0016CClanMatchEventByRange\u0012\u0014\n\frtime_before\u0018\u0001 \u0001(\r\u0012\u0013\n\u000brtime_after\u0018\u0002 \u0001(\r\u0012\u0011\n\tqualified\u0018\u0003 \u0001(\r\u0012(\n\u0006events\u0018\u0004 \u0003(\u000b2\u0018.CClanEventUserNewsTuple\"\u009b\u0003\n\u001fCCommunity_ClanAnnouncementInfo\u0012\u000b\n\u0003gid\u0018\u0001 \u0001(\u0004\u0012\u000e\n\u0006clanid\u0018\u0002 \u0001(\u0004\u0012\u0010\n\bposterid\u0018\u0003 \u0001(\u0004\u0012\u0010\n\bheadline\u0018\u0004 \u0001(\t\u0012\u0010\n\bposttime\u0018\u0005 \u0001(\r\u0012\u0012\n\nupdatetime\u0018\u0006 \u0001(\r\u0012\f\n\u0004body\u0018\u0007 \u0001(\t\u0012\u0014\n\fcommentcount\u0018\b \u0001(\u0005\u0012\f\n\u0004tags\u0018\t \u0003(\t\u0012\u0010\n\blanguage\u0018\n \u0001(\u0005\u0012\u000e\n\u0006hidden\u0018\u000b \u0001(\b\u0012\u0016\n\u000eforum_topic_id\u0018\f \u0001(\u0006\u0012\u0011\n\tevent_gid\u0018\r \u0001(\u0006\u0012\u0013\n\u000bvoteupcount\u0018\u000e \u0001(\u0005\u0012\u0015\n\rvotedowncount\u0018\u000f \u0001(\u0005\u0012V\n\u0010ban_check_result\u0018\u0010 \u0001(\u000e2\u0017.EBanContentCheckResult:#k_EBanContentCheckResult_NotScanned\u0012\u000e\n\u0006banned\u0018\u0011 \u0001(\b\"¸\u0006\n\u000eCClanEventData\u0012\u000b\n\u0003gid\u0018\u0001 \u0001(\u0006\u0012\u0014\n\fclan_steamid\u0018\u0002 \u0001(\u0006\u0012\u0012\n\nevent_name\u0018\u0003 \u0001(\t\u0012;\n\nevent_type\u0018\u0004 \u0001(\u000e2\u0014.EProtoClanEventType:\u0011k_EClanOtherEvent\u0012\r\n\u0005appid\u0018\u0005 \u0001(\r\u0012\u0016\n\u000eserver_address\u0018\u0006 \u0001(\t\u0012\u0017\n\u000fserver_password\u0018\u0007 \u0001(\t\u0012\u001a\n\u0012rtime32_start_time\u0018\b \u0001(\r\u0012\u0018\n\u0010rtime32_end_time\u0018\t \u0001(\r\u0012\u0015\n\rcomment_count\u0018\n \u0001(\u0005\u0012\u0017\n\u000fcreator_steamid\u0018\u000b \u0001(\u0006\u0012\u001b\n\u0013last_update_steamid\u0018\f \u0001(\u0006\u0012\u0013\n\u000bevent_notes\u0018\r \u0001(\t\u0012\u0010\n\bjsondata\u0018\u000e \u0001(\t\u0012;\n\u0011announcement_body\u0018\u000f \u0001(\u000b2 .CCommunity_ClanAnnouncementInfo\u0012\u0011\n\tpublished\u0018\u0010 \u0001(\b\u0012\u000e\n\u0006hidden\u0018\u0011 \u0001(\b\u0012 \n\u0018rtime32_visibility_start\u0018\u0012 \u0001(\r\u0012\u001e\n\u0016rtime32_visibility_end\u0018\u0013 \u0001(\r\u0012\u001d\n\u0015broadcaster_accountid\u0018\u0014 \u0001(\r\u0012\u0016\n\u000efollower_count\u0018\u0015 \u0001(\r\u0012\u0014\n\fignore_count\u0018\u0016 \u0001(\r\u0012\u0016\n\u000eforum_topic_id\u0018\u0017 \u0001(\u0006\u0012\u001d\n\u0015rtime32_last_modified\u0018\u0018 \u0001(\r\u0012\u0015\n\rnews_post_gid\u0018\u0019 \u0001(\u0006\u0012\u001a\n\u0012rtime_mod_reviewed\u0018\u001a \u0001(\r\u0012\u001a\n\u0012featured_app_tagid\u0018\u001b \u0001(\r\u0012\u0019\n\u0011referenced_appids\u0018\u001c \u0003(\r\u0012\u0010\n\bbuild_id\u0018\u001d \u0001(\r\u0012\u0014\n\fbuild_branch\u0018\u001e \u0001(\t\u0012\u0010\n\bunlisted\u0018\u001f \u0001(\b\"Ç\u0001\n\u0010CBilling_Address\u0012\u0012\n\nfirst_name\u0018\u0001 \u0001(\t\u0012\u0011\n\tlast_name\u0018\u0002 \u0001(\t\u0012\u0010\n\baddress1\u0018\u0003 \u0001(\t\u0012\u0010\n\baddress2\u0018\u0004 \u0001(\t\u0012\f\n\u0004city\u0018\u0005 \u0001(\t\u0012\u0010\n\bus_state\u0018\u0006 \u0001(\t\u0012\u0014\n\fcountry_code\u0018\u0007 \u0001(\t\u0012\u0010\n\bpostcode\u0018\b \u0001(\t\u0012\u0011\n\tzip_plus4\u0018\t \u0001(\u0005\u0012\r\n\u0005phone\u0018\n \u0001(\t\"\u009c\u0002\n\u0019CPackageReservationStatus\u0012\u0011\n\tpackageid\u0018\u0001 \u0001(\r\u0012\u0019\n\u0011reservation_state\u0018\u0002 \u0001(\u0005\u0012\u0016\n\u000equeue_position\u0018\u0003 \u0001(\u0005\u0012\u0018\n\u0010total_queue_size\u0018\u0004 \u0001(\u0005\u0012 \n\u0018reservation_country_code\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007expired\u0018\u0006 \u0001(\b\u0012\u0014\n\ftime_expires\u0018\u0007 \u0001(\r\u0012\u0015\n\rtime_reserved\u0018\b \u0001(\r\u0012$\n\u001crtime_estimated_notification\u0018\t \u0001(\r\u0012\u0019\n\u0011notificaton_token\u0018\n \u0001(\t\"/\n\u0010CMsgKeyValuePair\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"3\n\u000fCMsgKeyValueSet\u0012 \n\u0005pairs\u0018\u0001 \u0003(\u000b2\u0011.CMsgKeyValuePair\"Ë\u0001\n UserContentDescriptorPreferences\u0012[\n\u001econtent_descriptors_to_exclude\u0018\u0001 \u0003(\u000b23.UserContentDescriptorPreferences.ContentDescriptor\u001aJ\n\u0011ContentDescriptor\u0012\u001c\n\u0014content_descriptorid\u0018\u0001 \u0001(\r\u0012\u0017\n\u000ftimestamp_added\u0018\u0002 \u0001(\r*Ø\u0002\n\u0016EBanContentCheckResult\u0012'\n#k_EBanContentCheckResult_NotScanned\u0010\u0000\u0012\"\n\u001ek_EBanContentCheckResult_Reset\u0010\u0001\u0012*\n&k_EBanContentCheckResult_NeedsChecking\u0010\u0002\u0012)\n%k_EBanContentCheckResult_VeryUnlikely\u0010\u0005\u0012%\n!k_EBanContentCheckResult_Unlikely\u0010\u001e\u0012%\n!k_EBanContentCheckResult_Possible\u00102\u0012#\n\u001fk_EBanContentCheckResult_Likely\u0010K\u0012'\n#k_EBanContentCheckResult_VeryLikely\u0010d*ë\u0007\n\u0013EProtoClanEventType\u0012\u0015\n\u0011k_EClanOtherEvent\u0010\u0001\u0012\u0014\n\u0010k_EClanGameEvent\u0010\u0002\u0012\u0015\n\u0011k_EClanPartyEvent\u0010\u0003\u0012\u0017\n\u0013k_EClanMeetingEvent\u0010\u0004\u0012\u001c\n\u0018k_EClanSpecialCauseEvent\u0010\u0005\u0012\u001c\n\u0018k_EClanMusicAndArtsEvent\u0010\u0006\u0012\u0016\n\u0012k_EClanSportsEvent\u0010\u0007\u0012\u0014\n\u0010k_EClanTripEvent\u0010\b\u0012\u0014\n\u0010k_EClanChatEvent\u0010\t\u0012\u001b\n\u0017k_EClanGameReleaseEvent\u0010\n\u0012\u0019\n\u0015k_EClanBroadcastEvent\u0010\u000b\u0012\u001b\n\u0017k_EClanSmallUpdateEvent\u0010\f\u0012&\n\"k_EClanPreAnnounceMajorUpdateEvent\u0010\r\u0012\u001b\n\u0017k_EClanMajorUpdateEvent\u0010\u000e\u0012\u001a\n\u0016k_EClanDLCReleaseEvent\u0010\u000f\u0012\u001d\n\u0019k_EClanFutureReleaseEvent\u0010\u0010\u0012&\n\"k_EClanESportTournamentStreamEvent\u0010\u0011\u0012\u0019\n\u0015k_EClanDevStreamEvent\u0010\u0012\u0012\u001c\n\u0018k_EClanFamousStreamEvent\u0010\u0013\u0012\u0019\n\u0015k_EClanGameSalesEvent\u0010\u0014\u0012\u001d\n\u0019k_EClanGameItemSalesEvent\u0010\u0015\u0012\u001d\n\u0019k_EClanInGameBonusXPEvent\u0010\u0016\u0012\u001a\n\u0016k_EClanInGameLootEvent\u0010\u0017\u0012\u001b\n\u0017k_EClanInGamePerksEvent\u0010\u0018\u0012\u001f\n\u001bk_EClanInGameChallengeEvent\u0010\u0019\u0012\u001d\n\u0019k_EClanInGameContestEvent\u0010\u001a\u0012\u0013\n\u000fk_EClanIRLEvent\u0010\u001b\u0012\u0014\n\u0010k_EClanNewsEvent\u0010\u001c\u0012\u001b\n\u0017k_EClanBetaReleaseEvent\u0010\u001d\u0012$\n k_EClanInGameContentReleaseEvent\u0010\u001e\u0012\u0014\n\u0010k_EClanFreeTrial\u0010\u001f\u0012\u0018\n\u0014k_EClanSeasonRelease\u0010 \u0012\u0017\n\u0013k_EClanSeasonUpdate\u0010!\u0012\u0019\n\u0015k_EClanCrosspostEvent\u0010\"\u0012\u001d\n\u0019k_EClanInGameEventGeneral\u0010#*\u0081\u0001\n\u001cPartnerEventNotificationType\u0012\u0011\n\rk_EEventStart\u0010\u0000\u0012\u001a\n\u0016k_EEventBroadcastStart\u0010\u0001\u0012\u0016\n\u0012k_EEventMatchStart\u0010\u0002\u0012\u001a\n\u0016k_EEventPartnerMaxType\u0010\u0003:A\n\u0012msgpool_soft_limit\u0012\u001f.google.protobuf.MessageOptions\u0018Ð\u0086\u0003 \u0001(\u0005:\u000232:B\n\u0012msgpool_hard_limit\u0012\u001f.google.protobuf.MessageOptions\u0018Ñ\u0086\u0003 \u0001(\u0005:\u0003384:H\n\u0018php_output_always_number\u0012\u001d.google.protobuf.FieldOptions\u0018ä\u0086\u0003 \u0001(\b:\u0005false:J\n\u001aallow_field_named_steam_id\u0012\u001d.google.protobuf.FieldOptions\u0018è\u0086\u0003 \u0001(\b:\u0005falseB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{DescriptorProtos.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_CMsgIPAddress_descriptor = descriptor2;
        internal_static_CMsgIPAddress_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"V4", "V6", "Ip"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_CMsgIPAddressBucket_descriptor = descriptor3;
        internal_static_CMsgIPAddressBucket_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"OriginalIpAddress", "Bucket"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_CMsgGCRoutingProtoBufHeader_descriptor = descriptor4;
        internal_static_CMsgGCRoutingProtoBufHeader_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"DstGcidQueue", "DstGcDirIndex"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_CMsgProtoBufHeader_descriptor = descriptor5;
        internal_static_CMsgProtoBufHeader_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Steamid", "ClientSessionid", "RoutingAppid", "JobidSource", "JobidTarget", "TargetJobName", "SeqNum", "Eresult", "ErrorMessage", "AuthAccountFlags", "TokenSource", "AdminSpoofingUser", "TransportError", "Messageid", "PublisherGroupId", "Sysid", "WebapiKeyId", "IsFromExternalSource", "ForwardToSysid", "CmSysid", "LauncherType", "Realm", "TimeoutMs", "DebugSource", "DebugSourceStringIndex", "TokenId", "RoutingGc", "SessionDisposition", "WgToken", "WebuiAuthKey", "ExcludeClientSessionids", "AdminRequestSpoofingSteamid", "IsValveds", "TraceTag", "Ip", "IpV6", "IpAddr"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_CMsgKubeRPCPacket_descriptor = descriptor6;
        internal_static_CMsgKubeRPCPacket_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Hdr", "Payload"});
        Descriptors.Descriptor descriptor7 = descriptor6.getNestedTypes().get(0);
        internal_static_CMsgKubeRPCPacket_Hdr_descriptor = descriptor7;
        internal_static_CMsgKubeRPCPacket_Hdr_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"JobidSource", "JobidTarget", "Eresult", "TargetJobName", "ErrorMessage", "ReplyAddress"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(5);
        internal_static_CMsgMulti_descriptor = descriptor8;
        internal_static_CMsgMulti_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"SizeUnzipped", "MessageBody"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(6);
        internal_static_CMsgProtobufWrapped_descriptor = descriptor9;
        internal_static_CMsgProtobufWrapped_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"MessageBody"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(7);
        internal_static_CMsgAuthTicket_descriptor = descriptor10;
        internal_static_CMsgAuthTicket_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Estate", "Eresult", "Steamid", "Gameid", "HSteamPipe", "TicketCrc", "Ticket", "ServerSecret", "TicketType"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(8);
        internal_static_CCDDBAppDetailCommon_descriptor = descriptor11;
        internal_static_CCDDBAppDetailCommon_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Appid", "Name", "Icon", "Tool", "Demo", "Media", "CommunityVisibleStats", "FriendlyName", "Propagation", "HasAdultContent", "IsVisibleInSteamChina", "AppType", "HasAdultContentSex", "HasAdultContentViolence", "ContentDescriptorids", "ContentDescriptoridsIncludingDlc"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(9);
        internal_static_CMsgAppRights_descriptor = descriptor12;
        internal_static_CMsgAppRights_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"EditInfo", "Publish", "ViewErrorData", "Download", "UploadCdkeys", "GenerateCdkeys", "ViewFinancials", "ManageCeg", "ManageSigning", "ManageCdkeys", "EditMarketing", "EconomySupport", "EconomySupportSupervisor", "ManagePricing", "BroadcastLive", "ViewMarketingTraffic", "EditStoreDisplayContent"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(10);
        internal_static_CCuratorPreferences_descriptor = descriptor13;
        internal_static_CCuratorPreferences_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"SupportedLanguages", "PlatformWindows", "PlatformMac", "PlatformLinux", "VrContent", "AdultContentViolence", "AdultContentSex", "TimestampUpdated", "TagidsCurated", "TagidsFiltered", "WebsiteTitle", "WebsiteUrl", "DiscussionUrl", "ShowBroadcast"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(11);
        internal_static_CLocalizationToken_descriptor = descriptor14;
        internal_static_CLocalizationToken_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Language", "LocalizedString"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(12);
        internal_static_CClanEventUserNewsTuple_descriptor = descriptor15;
        internal_static_CClanEventUserNewsTuple_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Clanid", "EventGid", "AnnouncementGid", "RtimeStart", "RtimeEnd", "PriorityScore", "Type", "ClampRangeSlot", "Appid", "Rtime32LastModified"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(13);
        internal_static_CClanMatchEventByRange_descriptor = descriptor16;
        internal_static_CClanMatchEventByRange_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"RtimeBefore", "RtimeAfter", "Qualified", "Events"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(14);
        internal_static_CCommunity_ClanAnnouncementInfo_descriptor = descriptor17;
        internal_static_CCommunity_ClanAnnouncementInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Gid", "Clanid", "Posterid", "Headline", "Posttime", "Updatetime", "Body", "Commentcount", "Tags", "Language", "Hidden", "ForumTopicId", "EventGid", "Voteupcount", "Votedowncount", "BanCheckResult", "Banned"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(15);
        internal_static_CClanEventData_descriptor = descriptor18;
        internal_static_CClanEventData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor18, new String[]{"Gid", "ClanSteamid", "EventName", "EventType", "Appid", "ServerAddress", "ServerPassword", "Rtime32StartTime", "Rtime32EndTime", "CommentCount", "CreatorSteamid", "LastUpdateSteamid", "EventNotes", "Jsondata", "AnnouncementBody", "Published", "Hidden", "Rtime32VisibilityStart", "Rtime32VisibilityEnd", "BroadcasterAccountid", "FollowerCount", "IgnoreCount", "ForumTopicId", "Rtime32LastModified", "NewsPostGid", "RtimeModReviewed", "FeaturedAppTagid", "ReferencedAppids", "BuildId", "BuildBranch", "Unlisted"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(16);
        internal_static_CBilling_Address_descriptor = descriptor19;
        internal_static_CBilling_Address_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor19, new String[]{"FirstName", "LastName", "Address1", "Address2", "City", "UsState", "CountryCode", "Postcode", "ZipPlus4", "Phone"});
        Descriptors.Descriptor descriptor20 = getDescriptor().getMessageTypes().get(17);
        internal_static_CPackageReservationStatus_descriptor = descriptor20;
        internal_static_CPackageReservationStatus_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor20, new String[]{"Packageid", "ReservationState", "QueuePosition", "TotalQueueSize", "ReservationCountryCode", "Expired", "TimeExpires", "TimeReserved", "RtimeEstimatedNotification", "NotificatonToken"});
        Descriptors.Descriptor descriptor21 = getDescriptor().getMessageTypes().get(18);
        internal_static_CMsgKeyValuePair_descriptor = descriptor21;
        internal_static_CMsgKeyValuePair_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor21, new String[]{"Name", "Value"});
        Descriptors.Descriptor descriptor22 = getDescriptor().getMessageTypes().get(19);
        internal_static_CMsgKeyValueSet_descriptor = descriptor22;
        internal_static_CMsgKeyValueSet_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor22, new String[]{"Pairs"});
        Descriptors.Descriptor descriptor23 = getDescriptor().getMessageTypes().get(20);
        internal_static_UserContentDescriptorPreferences_descriptor = descriptor23;
        internal_static_UserContentDescriptorPreferences_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor23, new String[]{"ContentDescriptorsToExclude"});
        Descriptors.Descriptor descriptor24 = descriptor23.getNestedTypes().get(0);
        internal_static_UserContentDescriptorPreferences_ContentDescriptor_descriptor = descriptor24;
        internal_static_UserContentDescriptorPreferences_ContentDescriptor_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor24, new String[]{"ContentDescriptorid", "TimestampAdded"});
        generatedExtensionNewFileScopedGeneratedExtension.internalInit(descriptor.getExtensions().get(0));
        generatedExtensionNewFileScopedGeneratedExtension2.internalInit(descriptor.getExtensions().get(1));
        generatedExtensionNewFileScopedGeneratedExtension3.internalInit(descriptor.getExtensions().get(2));
        generatedExtensionNewFileScopedGeneratedExtension4.internalInit(descriptor.getExtensions().get(3));
        descriptor.resolveAllFeaturesImmutable();
        DescriptorProtos.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
        extensionRegistryLite.add(msgpoolSoftLimit);
        extensionRegistryLite.add(msgpoolHardLimit);
        extensionRegistryLite.add(phpOutputAlwaysNumber);
        extensionRegistryLite.add(allowFieldNamedSteamId);
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum EBanContentCheckResult implements ProtocolMessageEnum {
        k_EBanContentCheckResult_NotScanned(0),
        k_EBanContentCheckResult_Reset(1),
        k_EBanContentCheckResult_NeedsChecking(2),
        k_EBanContentCheckResult_VeryUnlikely(5),
        k_EBanContentCheckResult_Unlikely(30),
        k_EBanContentCheckResult_Possible(50),
        k_EBanContentCheckResult_Likely(75),
        k_EBanContentCheckResult_VeryLikely(100);

        private static final EBanContentCheckResult[] VALUES;
        private static final Internal.EnumLiteMap<EBanContentCheckResult> internalValueMap;
        public static final int k_EBanContentCheckResult_Likely_VALUE = 75;
        public static final int k_EBanContentCheckResult_NeedsChecking_VALUE = 2;
        public static final int k_EBanContentCheckResult_NotScanned_VALUE = 0;
        public static final int k_EBanContentCheckResult_Possible_VALUE = 50;
        public static final int k_EBanContentCheckResult_Reset_VALUE = 1;
        public static final int k_EBanContentCheckResult_Unlikely_VALUE = 30;
        public static final int k_EBanContentCheckResult_VeryLikely_VALUE = 100;
        public static final int k_EBanContentCheckResult_VeryUnlikely_VALUE = 5;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EBanContentCheckResult.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EBanContentCheckResult>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.EBanContentCheckResult.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EBanContentCheckResult findValueByNumber(int i) {
                    return EBanContentCheckResult.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EBanContentCheckResult valueOf(int i) {
            return forNumber(i);
        }

        public static EBanContentCheckResult forNumber(int i) {
            if (i == 0) {
                return k_EBanContentCheckResult_NotScanned;
            }
            if (i == 1) {
                return k_EBanContentCheckResult_Reset;
            }
            if (i == 2) {
                return k_EBanContentCheckResult_NeedsChecking;
            }
            if (i == 5) {
                return k_EBanContentCheckResult_VeryUnlikely;
            }
            if (i == 30) {
                return k_EBanContentCheckResult_Unlikely;
            }
            if (i == 50) {
                return k_EBanContentCheckResult_Possible;
            }
            if (i == 75) {
                return k_EBanContentCheckResult_Likely;
            }
            if (i != 100) {
                return null;
            }
            return k_EBanContentCheckResult_VeryLikely;
        }

        public static Internal.EnumLiteMap<EBanContentCheckResult> internalGetValueMap() {
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
            return SteammessagesBase.getDescriptor().getEnumTypes().get(0);
        }

        public static EBanContentCheckResult valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EBanContentCheckResult(int i) {
            this.value = i;
        }
    }

    public static final class CMsgIPAddress extends GeneratedMessage implements CMsgIPAddressOrBuilder {
        private static final CMsgIPAddress DEFAULT_INSTANCE;
        private static final Parser<CMsgIPAddress> PARSER;
        public static final int V4_FIELD_NUMBER = 1;
        public static final int V6_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int ipCase_;
        private Object ip_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgIPAddress.class.getName());
            DEFAULT_INSTANCE = new CMsgIPAddress();
            PARSER = new AbstractParser<CMsgIPAddress>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddress.1
                @Override // com.google.protobuf.Parser
                public CMsgIPAddress parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgIPAddress.newBuilder();
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

        private CMsgIPAddress(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.ipCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgIPAddress() {
            this.ipCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesBase.internal_static_CMsgIPAddress_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesBase.internal_static_CMsgIPAddress_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgIPAddress.class, Builder.class);
        }

        public enum IpCase implements Internal.EnumLite, AbstractMessageLite.InternalOneOfEnum {
            V4(1),
            V6(2),
            IP_NOT_SET(0);

            private final int value;

            IpCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static IpCase valueOf(int i) {
                return forNumber(i);
            }

            public static IpCase forNumber(int i) {
                if (i == 0) {
                    return IP_NOT_SET;
                }
                if (i == 1) {
                    return V4;
                }
                if (i != 2) {
                    return null;
                }
                return V6;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public int getNumber() {
                return this.value;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
        public IpCase getIpCase() {
            return IpCase.forNumber(this.ipCase_);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
        public boolean hasV4() {
            return this.ipCase_ == 1;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
        public int getV4() {
            if (this.ipCase_ == 1) {
                return ((Integer) this.ip_).intValue();
            }
            return 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
        public boolean hasV6() {
            return this.ipCase_ == 2;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
        public ByteString getV6() {
            if (this.ipCase_ == 2) {
                return (ByteString) this.ip_;
            }
            return ByteString.EMPTY;
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
            if (this.ipCase_ == 1) {
                codedOutputStream.writeFixed32(1, ((Integer) this.ip_).intValue());
            }
            if (this.ipCase_ == 2) {
                codedOutputStream.writeBytes(2, (ByteString) this.ip_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeFixed32Size = this.ipCase_ == 1 ? CodedOutputStream.computeFixed32Size(1, ((Integer) this.ip_).intValue()) : 0;
            if (this.ipCase_ == 2) {
                iComputeFixed32Size += CodedOutputStream.computeBytesSize(2, (ByteString) this.ip_);
            }
            int serializedSize = iComputeFixed32Size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgIPAddress)) {
                return super.equals(obj);
            }
            CMsgIPAddress cMsgIPAddress = (CMsgIPAddress) obj;
            if (!getIpCase().equals(cMsgIPAddress.getIpCase())) {
                return false;
            }
            int i = this.ipCase_;
            if (i == 1) {
                if (getV4() != cMsgIPAddress.getV4()) {
                    return false;
                }
            } else if (i == 2 && !getV6().equals(cMsgIPAddress.getV6())) {
                return false;
            }
            return getUnknownFields().equals(cMsgIPAddress.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i;
            int v4;
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            int i3 = this.ipCase_;
            if (i3 == 1) {
                i = ((iHashCode * 37) + 1) * 53;
                v4 = getV4();
            } else {
                if (i3 == 2) {
                    i = ((iHashCode * 37) + 2) * 53;
                    v4 = getV6().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }
            iHashCode = i + v4;
            int iHashCode22 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode22;
            return iHashCode22;
        }

        public static CMsgIPAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgIPAddress parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgIPAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgIPAddress parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgIPAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgIPAddress parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgIPAddress parseFrom(InputStream inputStream) throws IOException {
            return (CMsgIPAddress) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgIPAddress parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgIPAddress) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgIPAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgIPAddress) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgIPAddress parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgIPAddress) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgIPAddress parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgIPAddress) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgIPAddress parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgIPAddress) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgIPAddress cMsgIPAddress) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgIPAddress);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgIPAddressOrBuilder {
            private int bitField0_;
            private int ipCase_;
            private Object ip_;

            private void buildPartial0(CMsgIPAddress cMsgIPAddress) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesBase.internal_static_CMsgIPAddress_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesBase.internal_static_CMsgIPAddress_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgIPAddress.class, Builder.class);
            }

            private Builder() {
                this.ipCase_ = 0;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ipCase_ = 0;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.ipCase_ = 0;
                this.ip_ = null;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesBase.internal_static_CMsgIPAddress_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgIPAddress getDefaultInstanceForType() {
                return CMsgIPAddress.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgIPAddress build() {
                CMsgIPAddress cMsgIPAddressBuildPartial = buildPartial();
                if (cMsgIPAddressBuildPartial.isInitialized()) {
                    return cMsgIPAddressBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgIPAddressBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgIPAddress buildPartial() {
                CMsgIPAddress cMsgIPAddress = new CMsgIPAddress(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgIPAddress);
                }
                buildPartialOneofs(cMsgIPAddress);
                onBuilt();
                return cMsgIPAddress;
            }

            private void buildPartialOneofs(CMsgIPAddress cMsgIPAddress) {
                cMsgIPAddress.ipCase_ = this.ipCase_;
                cMsgIPAddress.ip_ = this.ip_;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgIPAddress) {
                    return mergeFrom((CMsgIPAddress) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgIPAddress cMsgIPAddress) {
                if (cMsgIPAddress == CMsgIPAddress.getDefaultInstance()) {
                    return this;
                }
                int iOrdinal = cMsgIPAddress.getIpCase().ordinal();
                if (iOrdinal == 0) {
                    setV4(cMsgIPAddress.getV4());
                } else if (iOrdinal == 1) {
                    setV6(cMsgIPAddress.getV6());
                }
                mergeUnknownFields(cMsgIPAddress.getUnknownFields());
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
                                if (tag == 13) {
                                    this.ip_ = Integer.valueOf(codedInputStream.readFixed32());
                                    this.ipCase_ = 1;
                                } else if (tag == 18) {
                                    this.ip_ = codedInputStream.readBytes();
                                    this.ipCase_ = 2;
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
            public IpCase getIpCase() {
                return IpCase.forNumber(this.ipCase_);
            }

            public Builder clearIp() {
                this.ipCase_ = 0;
                this.ip_ = null;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
            public boolean hasV4() {
                return this.ipCase_ == 1;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
            public int getV4() {
                if (this.ipCase_ == 1) {
                    return ((Integer) this.ip_).intValue();
                }
                return 0;
            }

            public Builder setV4(int i) {
                this.ipCase_ = 1;
                this.ip_ = Integer.valueOf(i);
                onChanged();
                return this;
            }

            public Builder clearV4() {
                if (this.ipCase_ == 1) {
                    this.ipCase_ = 0;
                    this.ip_ = null;
                    onChanged();
                }
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
            public boolean hasV6() {
                return this.ipCase_ == 2;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgIPAddressOrBuilder
            public ByteString getV6() {
                if (this.ipCase_ == 2) {
                    return (ByteString) this.ip_;
                }
                return ByteString.EMPTY;
            }

            public Builder setV6(ByteString byteString) {
                byteString.getClass();
                this.ipCase_ = 2;
                this.ip_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearV6() {
                if (this.ipCase_ == 2) {
                    this.ipCase_ = 0;
                    this.ip_ = null;
                    onChanged();
                }
                return this;
            }
        }

        public static CMsgIPAddress getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgIPAddress> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgIPAddress> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgIPAddress getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgGCRoutingProtoBufHeader extends GeneratedMessage implements CMsgGCRoutingProtoBufHeaderOrBuilder {
        private static final CMsgGCRoutingProtoBufHeader DEFAULT_INSTANCE;
        public static final int DST_GCID_QUEUE_FIELD_NUMBER = 1;
        public static final int DST_GC_DIR_INDEX_FIELD_NUMBER = 2;
        private static final Parser<CMsgGCRoutingProtoBufHeader> PARSER;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int dstGcDirIndex_;
        private long dstGcidQueue_;
        private byte memoizedIsInitialized;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgGCRoutingProtoBufHeader.class.getName());
            DEFAULT_INSTANCE = new CMsgGCRoutingProtoBufHeader();
            PARSER = new AbstractParser<CMsgGCRoutingProtoBufHeader>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeader.1
                @Override // com.google.protobuf.Parser
                public CMsgGCRoutingProtoBufHeader parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgGCRoutingProtoBufHeader.newBuilder();
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

        private CMsgGCRoutingProtoBufHeader(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.dstGcidQueue_ = 0L;
            this.dstGcDirIndex_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgGCRoutingProtoBufHeader() {
            this.dstGcidQueue_ = 0L;
            this.dstGcDirIndex_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesBase.internal_static_CMsgGCRoutingProtoBufHeader_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesBase.internal_static_CMsgGCRoutingProtoBufHeader_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGCRoutingProtoBufHeader.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
        public boolean hasDstGcidQueue() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
        public long getDstGcidQueue() {
            return this.dstGcidQueue_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
        public boolean hasDstGcDirIndex() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
        public int getDstGcDirIndex() {
            return this.dstGcDirIndex_;
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
                codedOutputStream.writeUInt64(1, this.dstGcidQueue_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.dstGcDirIndex_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt64Size(1, this.dstGcidQueue_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt64Size += CodedOutputStream.computeUInt32Size(2, this.dstGcDirIndex_);
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
            if (!(obj instanceof CMsgGCRoutingProtoBufHeader)) {
                return super.equals(obj);
            }
            CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader = (CMsgGCRoutingProtoBufHeader) obj;
            if (hasDstGcidQueue() != cMsgGCRoutingProtoBufHeader.hasDstGcidQueue()) {
                return false;
            }
            if ((!hasDstGcidQueue() || getDstGcidQueue() == cMsgGCRoutingProtoBufHeader.getDstGcidQueue()) && hasDstGcDirIndex() == cMsgGCRoutingProtoBufHeader.hasDstGcDirIndex()) {
                return (!hasDstGcDirIndex() || getDstGcDirIndex() == cMsgGCRoutingProtoBufHeader.getDstGcDirIndex()) && getUnknownFields().equals(cMsgGCRoutingProtoBufHeader.getUnknownFields());
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
            if (hasDstGcidQueue()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getDstGcidQueue());
            }
            if (hasDstGcDirIndex()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getDstGcDirIndex();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(InputStream inputStream) throws IOException {
            return (CMsgGCRoutingProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGCRoutingProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGCRoutingProtoBufHeader parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgGCRoutingProtoBufHeader) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgGCRoutingProtoBufHeader parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGCRoutingProtoBufHeader) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgGCRoutingProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgGCRoutingProtoBufHeader parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgGCRoutingProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgGCRoutingProtoBufHeader);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgGCRoutingProtoBufHeaderOrBuilder {
            private int bitField0_;
            private int dstGcDirIndex_;
            private long dstGcidQueue_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesBase.internal_static_CMsgGCRoutingProtoBufHeader_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesBase.internal_static_CMsgGCRoutingProtoBufHeader_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgGCRoutingProtoBufHeader.class, Builder.class);
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
                this.dstGcidQueue_ = 0L;
                this.dstGcDirIndex_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesBase.internal_static_CMsgGCRoutingProtoBufHeader_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgGCRoutingProtoBufHeader getDefaultInstanceForType() {
                return CMsgGCRoutingProtoBufHeader.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGCRoutingProtoBufHeader build() {
                CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeaderBuildPartial = buildPartial();
                if (cMsgGCRoutingProtoBufHeaderBuildPartial.isInitialized()) {
                    return cMsgGCRoutingProtoBufHeaderBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgGCRoutingProtoBufHeaderBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgGCRoutingProtoBufHeader buildPartial() {
                CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader = new CMsgGCRoutingProtoBufHeader(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgGCRoutingProtoBufHeader);
                }
                onBuilt();
                return cMsgGCRoutingProtoBufHeader;
            }

            private void buildPartial0(CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgGCRoutingProtoBufHeader.dstGcidQueue_ = this.dstGcidQueue_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgGCRoutingProtoBufHeader.dstGcDirIndex_ = this.dstGcDirIndex_;
                    i |= 2;
                }
                cMsgGCRoutingProtoBufHeader.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgGCRoutingProtoBufHeader) {
                    return mergeFrom((CMsgGCRoutingProtoBufHeader) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader) {
                if (cMsgGCRoutingProtoBufHeader == CMsgGCRoutingProtoBufHeader.getDefaultInstance()) {
                    return this;
                }
                if (cMsgGCRoutingProtoBufHeader.hasDstGcidQueue()) {
                    setDstGcidQueue(cMsgGCRoutingProtoBufHeader.getDstGcidQueue());
                }
                if (cMsgGCRoutingProtoBufHeader.hasDstGcDirIndex()) {
                    setDstGcDirIndex(cMsgGCRoutingProtoBufHeader.getDstGcDirIndex());
                }
                mergeUnknownFields(cMsgGCRoutingProtoBufHeader.getUnknownFields());
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
                                    this.dstGcidQueue_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.dstGcDirIndex_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
            public boolean hasDstGcidQueue() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
            public long getDstGcidQueue() {
                return this.dstGcidQueue_;
            }

            public Builder setDstGcidQueue(long j) {
                this.dstGcidQueue_ = j;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearDstGcidQueue() {
                this.bitField0_ &= -2;
                this.dstGcidQueue_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
            public boolean hasDstGcDirIndex() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgGCRoutingProtoBufHeaderOrBuilder
            public int getDstGcDirIndex() {
                return this.dstGcDirIndex_;
            }

            public Builder setDstGcDirIndex(int i) {
                this.dstGcDirIndex_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearDstGcDirIndex() {
                this.bitField0_ &= -3;
                this.dstGcDirIndex_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgGCRoutingProtoBufHeader getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgGCRoutingProtoBufHeader> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgGCRoutingProtoBufHeader> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgGCRoutingProtoBufHeader getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgProtoBufHeader extends GeneratedMessage implements CMsgProtoBufHeaderOrBuilder {
        public static final int ADMIN_REQUEST_SPOOFING_STEAMID_FIELD_NUMBER = 43;
        public static final int ADMIN_SPOOFING_USER_FIELD_NUMBER = 23;
        public static final int AUTH_ACCOUNT_FLAGS_FIELD_NUMBER = 16;
        public static final int CLIENT_SESSIONID_FIELD_NUMBER = 2;
        public static final int CM_SYSID_FIELD_NUMBER = 28;
        public static final int DEBUG_SOURCE_FIELD_NUMBER = 34;
        public static final int DEBUG_SOURCE_STRING_INDEX_FIELD_NUMBER = 35;
        private static final CMsgProtoBufHeader DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 13;
        public static final int ERROR_MESSAGE_FIELD_NUMBER = 14;
        public static final int EXCLUDE_CLIENT_SESSIONIDS_FIELD_NUMBER = 41;
        public static final int FORWARD_TO_SYSID_FIELD_NUMBER = 27;
        public static final int IP_FIELD_NUMBER = 15;
        public static final int IP_V6_FIELD_NUMBER = 29;
        public static final int IS_FROM_EXTERNAL_SOURCE_FIELD_NUMBER = 26;
        public static final int IS_VALVEDS_FIELD_NUMBER = 44;
        public static final int JOBID_SOURCE_FIELD_NUMBER = 10;
        public static final int JOBID_TARGET_FIELD_NUMBER = 11;
        public static final int LAUNCHER_TYPE_FIELD_NUMBER = 31;
        public static final int MESSAGEID_FIELD_NUMBER = 18;
        private static final Parser<CMsgProtoBufHeader> PARSER;
        public static final int PUBLISHER_GROUP_ID_FIELD_NUMBER = 19;
        public static final int REALM_FIELD_NUMBER = 32;
        public static final int ROUTING_APPID_FIELD_NUMBER = 3;
        public static final int ROUTING_GC_FIELD_NUMBER = 37;
        public static final int SEQ_NUM_FIELD_NUMBER = 24;
        public static final int SESSION_DISPOSITION_FIELD_NUMBER = 38;
        public static final int STEAMID_FIELD_NUMBER = 1;
        public static final int SYSID_FIELD_NUMBER = 20;
        public static final int TARGET_JOB_NAME_FIELD_NUMBER = 12;
        public static final int TIMEOUT_MS_FIELD_NUMBER = 33;
        public static final int TOKEN_ID_FIELD_NUMBER = 36;
        public static final int TOKEN_SOURCE_FIELD_NUMBER = 22;
        public static final int TRACE_TAG_FIELD_NUMBER = 45;
        public static final int TRANSPORT_ERROR_FIELD_NUMBER = 17;
        public static final int WEBAPI_KEY_ID_FIELD_NUMBER = 25;
        public static final int WEBUI_AUTH_KEY_FIELD_NUMBER = 40;
        public static final int WG_TOKEN_FIELD_NUMBER = 39;
        private static final long serialVersionUID = 0;
        private long adminRequestSpoofingSteamid_;
        private boolean adminSpoofingUser_;
        private int authAccountFlags_;
        private int bitField0_;
        private int clientSessionid_;
        private int cmSysid_;
        private int debugSourceStringIndex_;
        private volatile Object debugSource_;
        private int eresult_;
        private volatile Object errorMessage_;
        private Internal.IntList excludeClientSessionids_;
        private Internal.IntList forwardToSysid_;
        private int ipAddrCase_;
        private Object ipAddr_;
        private boolean isFromExternalSource_;
        private boolean isValveds_;
        private long jobidSource_;
        private long jobidTarget_;
        private int launcherType_;
        private byte memoizedIsInitialized;
        private long messageid_;
        private int publisherGroupId_;
        private int realm_;
        private int routingAppid_;
        private CMsgGCRoutingProtoBufHeader routingGc_;
        private int seqNum_;
        private int sessionDisposition_;
        private long steamid_;
        private int sysid_;
        private volatile Object targetJobName_;
        private int timeoutMs_;
        private long tokenId_;
        private int tokenSource_;
        private long traceTag_;
        private int transportError_;
        private int webapiKeyId_;
        private volatile Object webuiAuthKey_;
        private volatile Object wgToken_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgProtoBufHeader.class.getName());
            DEFAULT_INSTANCE = new CMsgProtoBufHeader();
            PARSER = new AbstractParser<CMsgProtoBufHeader>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeader.1
                @Override // com.google.protobuf.Parser
                public CMsgProtoBufHeader parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgProtoBufHeader.newBuilder();
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

        private CMsgProtoBufHeader(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.ipAddrCase_ = 0;
            this.steamid_ = 0L;
            this.clientSessionid_ = 0;
            this.routingAppid_ = 0;
            this.jobidSource_ = -1L;
            this.jobidTarget_ = -1L;
            this.targetJobName_ = "";
            this.seqNum_ = 0;
            this.eresult_ = 2;
            this.errorMessage_ = "";
            this.authAccountFlags_ = 0;
            this.tokenSource_ = 0;
            this.adminSpoofingUser_ = false;
            this.transportError_ = 1;
            this.messageid_ = -1L;
            this.publisherGroupId_ = 0;
            this.sysid_ = 0;
            this.webapiKeyId_ = 0;
            this.isFromExternalSource_ = false;
            this.forwardToSysid_ = GeneratedMessage.emptyIntList();
            this.cmSysid_ = 0;
            this.launcherType_ = 0;
            this.realm_ = 0;
            this.timeoutMs_ = -1;
            this.debugSource_ = "";
            this.debugSourceStringIndex_ = 0;
            this.tokenId_ = 0L;
            this.sessionDisposition_ = 0;
            this.wgToken_ = "";
            this.webuiAuthKey_ = "";
            this.excludeClientSessionids_ = GeneratedMessage.emptyIntList();
            this.adminRequestSpoofingSteamid_ = 0L;
            this.isValveds_ = false;
            this.traceTag_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgProtoBufHeader() {
            this.ipAddrCase_ = 0;
            this.steamid_ = 0L;
            this.clientSessionid_ = 0;
            this.routingAppid_ = 0;
            this.jobidSource_ = -1L;
            this.jobidTarget_ = -1L;
            this.targetJobName_ = "";
            this.seqNum_ = 0;
            this.eresult_ = 2;
            this.errorMessage_ = "";
            this.authAccountFlags_ = 0;
            this.tokenSource_ = 0;
            this.adminSpoofingUser_ = false;
            this.transportError_ = 1;
            this.messageid_ = -1L;
            this.publisherGroupId_ = 0;
            this.sysid_ = 0;
            this.webapiKeyId_ = 0;
            this.isFromExternalSource_ = false;
            this.forwardToSysid_ = GeneratedMessage.emptyIntList();
            this.cmSysid_ = 0;
            this.launcherType_ = 0;
            this.realm_ = 0;
            this.timeoutMs_ = -1;
            this.debugSource_ = "";
            this.debugSourceStringIndex_ = 0;
            this.tokenId_ = 0L;
            this.sessionDisposition_ = 0;
            this.wgToken_ = "";
            this.webuiAuthKey_ = "";
            this.excludeClientSessionids_ = GeneratedMessage.emptyIntList();
            this.adminRequestSpoofingSteamid_ = 0L;
            this.isValveds_ = false;
            this.traceTag_ = 0L;
            this.memoizedIsInitialized = (byte) -1;
            this.jobidSource_ = -1L;
            this.jobidTarget_ = -1L;
            this.targetJobName_ = "";
            this.eresult_ = 2;
            this.errorMessage_ = "";
            this.transportError_ = 1;
            this.messageid_ = -1L;
            this.forwardToSysid_ = GeneratedMessage.emptyIntList();
            this.timeoutMs_ = -1;
            this.debugSource_ = "";
            this.sessionDisposition_ = 0;
            this.wgToken_ = "";
            this.webuiAuthKey_ = "";
            this.excludeClientSessionids_ = GeneratedMessage.emptyIntList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesBase.internal_static_CMsgProtoBufHeader_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesBase.internal_static_CMsgProtoBufHeader_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgProtoBufHeader.class, Builder.class);
        }

        public enum ESessionDisposition implements ProtocolMessageEnum {
            k_ESessionDispositionNormal(0),
            k_ESessionDispositionDisconnect(1);

            private static final ESessionDisposition[] VALUES;
            private static final Internal.EnumLiteMap<ESessionDisposition> internalValueMap;
            public static final int k_ESessionDispositionDisconnect_VALUE = 1;
            public static final int k_ESessionDispositionNormal_VALUE = 0;
            private final int value;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ESessionDisposition.class.getName());
                internalValueMap = new Internal.EnumLiteMap<ESessionDisposition>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeader.ESessionDisposition.1
                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    public ESessionDisposition findValueByNumber(int i) {
                        return ESessionDisposition.forNumber(i);
                    }
                };
                VALUES = values();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ESessionDisposition valueOf(int i) {
                return forNumber(i);
            }

            public static ESessionDisposition forNumber(int i) {
                if (i == 0) {
                    return k_ESessionDispositionNormal;
                }
                if (i != 1) {
                    return null;
                }
                return k_ESessionDispositionDisconnect;
            }

            public static Internal.EnumLiteMap<ESessionDisposition> internalGetValueMap() {
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
                return CMsgProtoBufHeader.getDescriptor().getEnumTypes().get(0);
            }

            public static ESessionDisposition valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            ESessionDisposition(int i) {
                this.value = i;
            }
        }

        public enum IpAddrCase implements Internal.EnumLite, AbstractMessageLite.InternalOneOfEnum {
            IP(15),
            IP_V6(29),
            IPADDR_NOT_SET(0);

            private final int value;

            IpAddrCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static IpAddrCase valueOf(int i) {
                return forNumber(i);
            }

            public static IpAddrCase forNumber(int i) {
                if (i == 0) {
                    return IPADDR_NOT_SET;
                }
                if (i == 15) {
                    return IP;
                }
                if (i != 29) {
                    return null;
                }
                return IP_V6;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public int getNumber() {
                return this.value;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public IpAddrCase getIpAddrCase() {
            return IpAddrCase.forNumber(this.ipAddrCase_);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasClientSessionid() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getClientSessionid() {
            return this.clientSessionid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasRoutingAppid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getRoutingAppid() {
            return this.routingAppid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasJobidSource() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public long getJobidSource() {
            return this.jobidSource_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasJobidTarget() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public long getJobidTarget() {
            return this.jobidTarget_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasTargetJobName() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public String getTargetJobName() {
            Object obj = this.targetJobName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetJobName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public ByteString getTargetJobNameBytes() {
            Object obj = this.targetJobName_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetJobName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasSeqNum() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getSeqNum() {
            return this.seqNum_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasErrorMessage() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public String getErrorMessage() {
            Object obj = this.errorMessage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.errorMessage_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public ByteString getErrorMessageBytes() {
            Object obj = this.errorMessage_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMessage_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasAuthAccountFlags() {
            return (this.bitField0_ & 512) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getAuthAccountFlags() {
            return this.authAccountFlags_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasTokenSource() {
            return (this.bitField0_ & 1024) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getTokenSource() {
            return this.tokenSource_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasAdminSpoofingUser() {
            return (this.bitField0_ & 2048) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean getAdminSpoofingUser() {
            return this.adminSpoofingUser_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasTransportError() {
            return (this.bitField0_ & 4096) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getTransportError() {
            return this.transportError_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasMessageid() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public long getMessageid() {
            return this.messageid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasPublisherGroupId() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getPublisherGroupId() {
            return this.publisherGroupId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasSysid() {
            return (this.bitField0_ & 32768) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getSysid() {
            return this.sysid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasWebapiKeyId() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getWebapiKeyId() {
            return this.webapiKeyId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasIsFromExternalSource() {
            return (this.bitField0_ & 131072) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean getIsFromExternalSource() {
            return this.isFromExternalSource_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public List<Integer> getForwardToSysidList() {
            return this.forwardToSysid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getForwardToSysidCount() {
            return this.forwardToSysid_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getForwardToSysid(int i) {
            return this.forwardToSysid_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasCmSysid() {
            return (this.bitField0_ & 262144) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getCmSysid() {
            return this.cmSysid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasLauncherType() {
            return (this.bitField0_ & 524288) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getLauncherType() {
            return this.launcherType_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasRealm() {
            return (this.bitField0_ & 1048576) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getRealm() {
            return this.realm_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasTimeoutMs() {
            return (this.bitField0_ & 2097152) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getTimeoutMs() {
            return this.timeoutMs_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasDebugSource() {
            return (this.bitField0_ & 4194304) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public String getDebugSource() {
            Object obj = this.debugSource_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.debugSource_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public ByteString getDebugSourceBytes() {
            Object obj = this.debugSource_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.debugSource_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasDebugSourceStringIndex() {
            return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getDebugSourceStringIndex() {
            return this.debugSourceStringIndex_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasTokenId() {
            return (this.bitField0_ & 16777216) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public long getTokenId() {
            return this.tokenId_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasRoutingGc() {
            return (this.bitField0_ & 33554432) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public CMsgGCRoutingProtoBufHeader getRoutingGc() {
            CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader = this.routingGc_;
            return cMsgGCRoutingProtoBufHeader == null ? CMsgGCRoutingProtoBufHeader.getDefaultInstance() : cMsgGCRoutingProtoBufHeader;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public CMsgGCRoutingProtoBufHeaderOrBuilder getRoutingGcOrBuilder() {
            CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader = this.routingGc_;
            return cMsgGCRoutingProtoBufHeader == null ? CMsgGCRoutingProtoBufHeader.getDefaultInstance() : cMsgGCRoutingProtoBufHeader;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasSessionDisposition() {
            return (this.bitField0_ & 67108864) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public ESessionDisposition getSessionDisposition() {
            ESessionDisposition eSessionDispositionForNumber = ESessionDisposition.forNumber(this.sessionDisposition_);
            return eSessionDispositionForNumber == null ? ESessionDisposition.k_ESessionDispositionNormal : eSessionDispositionForNumber;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasWgToken() {
            return (this.bitField0_ & 134217728) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public String getWgToken() {
            Object obj = this.wgToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.wgToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public ByteString getWgTokenBytes() {
            Object obj = this.wgToken_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.wgToken_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasWebuiAuthKey() {
            return (this.bitField0_ & 268435456) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public String getWebuiAuthKey() {
            Object obj = this.webuiAuthKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.webuiAuthKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public ByteString getWebuiAuthKeyBytes() {
            Object obj = this.webuiAuthKey_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.webuiAuthKey_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public List<Integer> getExcludeClientSessionidsList() {
            return this.excludeClientSessionids_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getExcludeClientSessionidsCount() {
            return this.excludeClientSessionids_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getExcludeClientSessionids(int i) {
            return this.excludeClientSessionids_.getInt(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasAdminRequestSpoofingSteamid() {
            return (this.bitField0_ & 536870912) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public long getAdminRequestSpoofingSteamid() {
            return this.adminRequestSpoofingSteamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasIsValveds() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean getIsValveds() {
            return this.isValveds_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasTraceTag() {
            return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public long getTraceTag() {
            return this.traceTag_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasIp() {
            return this.ipAddrCase_ == 15;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public int getIp() {
            if (this.ipAddrCase_ == 15) {
                return ((Integer) this.ipAddr_).intValue();
            }
            return 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public boolean hasIpV6() {
            return this.ipAddrCase_ == 29;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
        public ByteString getIpV6() {
            if (this.ipAddrCase_ == 29) {
                return (ByteString) this.ipAddr_;
            }
            return ByteString.EMPTY;
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
                codedOutputStream.writeInt32(2, this.clientSessionid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeUInt32(3, this.routingAppid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(10, this.jobidSource_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeFixed64(11, this.jobidTarget_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 12, this.targetJobName_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeInt32(13, this.eresult_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 14, this.errorMessage_);
            }
            if (this.ipAddrCase_ == 15) {
                codedOutputStream.writeUInt32(15, ((Integer) this.ipAddr_).intValue());
            }
            if ((this.bitField0_ & 512) != 0) {
                codedOutputStream.writeUInt32(16, this.authAccountFlags_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                codedOutputStream.writeInt32(17, this.transportError_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                codedOutputStream.writeUInt64(18, this.messageid_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                codedOutputStream.writeUInt32(19, this.publisherGroupId_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                codedOutputStream.writeUInt32(20, this.sysid_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                codedOutputStream.writeUInt32(22, this.tokenSource_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                codedOutputStream.writeBool(23, this.adminSpoofingUser_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeInt32(24, this.seqNum_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                codedOutputStream.writeUInt32(25, this.webapiKeyId_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                codedOutputStream.writeBool(26, this.isFromExternalSource_);
            }
            for (int i = 0; i < this.forwardToSysid_.size(); i++) {
                codedOutputStream.writeUInt32(27, this.forwardToSysid_.getInt(i));
            }
            if ((this.bitField0_ & 262144) != 0) {
                codedOutputStream.writeUInt32(28, this.cmSysid_);
            }
            if (this.ipAddrCase_ == 29) {
                codedOutputStream.writeBytes(29, (ByteString) this.ipAddr_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                codedOutputStream.writeUInt32(31, this.launcherType_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                codedOutputStream.writeUInt32(32, this.realm_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                codedOutputStream.writeInt32(33, this.timeoutMs_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 34, this.debugSource_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                codedOutputStream.writeUInt32(35, this.debugSourceStringIndex_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                codedOutputStream.writeUInt64(36, this.tokenId_);
            }
            if ((this.bitField0_ & 33554432) != 0) {
                codedOutputStream.writeMessage(37, getRoutingGc());
            }
            if ((this.bitField0_ & 67108864) != 0) {
                codedOutputStream.writeEnum(38, this.sessionDisposition_);
            }
            if ((this.bitField0_ & 134217728) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 39, this.wgToken_);
            }
            if ((this.bitField0_ & 268435456) != 0) {
                GeneratedMessage.writeString(codedOutputStream, 40, this.webuiAuthKey_);
            }
            for (int i2 = 0; i2 < this.excludeClientSessionids_.size(); i2++) {
                codedOutputStream.writeInt32(41, this.excludeClientSessionids_.getInt(i2));
            }
            if ((this.bitField0_ & 536870912) != 0) {
                codedOutputStream.writeFixed64(43, this.adminRequestSpoofingSteamid_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0) {
                codedOutputStream.writeBool(44, this.isValveds_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                codedOutputStream.writeFixed64(45, this.traceTag_);
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
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(2, this.clientSessionid_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(3, this.routingAppid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(10, this.jobidSource_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeFixed64Size(11, this.jobidTarget_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(12, this.targetJobName_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(13, this.eresult_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeFixed64Size += GeneratedMessage.computeStringSize(14, this.errorMessage_);
            }
            if (this.ipAddrCase_ == 15) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(15, ((Integer) this.ipAddr_).intValue());
            }
            if ((this.bitField0_ & 512) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(16, this.authAccountFlags_);
            }
            if ((this.bitField0_ & 4096) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(17, this.transportError_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt64Size(18, this.messageid_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(19, this.publisherGroupId_);
            }
            if ((this.bitField0_ & 32768) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(20, this.sysid_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(22, this.tokenSource_);
            }
            if ((this.bitField0_ & 2048) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(23, this.adminSpoofingUser_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeInt32Size(24, this.seqNum_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeUInt32Size(25, this.webapiKeyId_);
            }
            if ((this.bitField0_ & 131072) != 0) {
                iComputeFixed64Size += CodedOutputStream.computeBoolSize(26, this.isFromExternalSource_);
            }
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < this.forwardToSysid_.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(this.forwardToSysid_.getInt(i2));
            }
            int size = iComputeFixed64Size + iComputeUInt32SizeNoTag + (getForwardToSysidList().size() * 2);
            if ((this.bitField0_ & 262144) != 0) {
                size += CodedOutputStream.computeUInt32Size(28, this.cmSysid_);
            }
            if (this.ipAddrCase_ == 29) {
                size += CodedOutputStream.computeBytesSize(29, (ByteString) this.ipAddr_);
            }
            if ((this.bitField0_ & 524288) != 0) {
                size += CodedOutputStream.computeUInt32Size(31, this.launcherType_);
            }
            if ((this.bitField0_ & 1048576) != 0) {
                size += CodedOutputStream.computeUInt32Size(32, this.realm_);
            }
            if ((this.bitField0_ & 2097152) != 0) {
                size += CodedOutputStream.computeInt32Size(33, this.timeoutMs_);
            }
            if ((this.bitField0_ & 4194304) != 0) {
                size += GeneratedMessage.computeStringSize(34, this.debugSource_);
            }
            if ((this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0) {
                size += CodedOutputStream.computeUInt32Size(35, this.debugSourceStringIndex_);
            }
            if ((this.bitField0_ & 16777216) != 0) {
                size += CodedOutputStream.computeUInt64Size(36, this.tokenId_);
            }
            if ((this.bitField0_ & 33554432) != 0) {
                size += CodedOutputStream.computeMessageSize(37, getRoutingGc());
            }
            if ((this.bitField0_ & 67108864) != 0) {
                size += CodedOutputStream.computeEnumSize(38, this.sessionDisposition_);
            }
            if ((this.bitField0_ & 134217728) != 0) {
                size += GeneratedMessage.computeStringSize(39, this.wgToken_);
            }
            if ((this.bitField0_ & 268435456) != 0) {
                size += GeneratedMessage.computeStringSize(40, this.webuiAuthKey_);
            }
            int iComputeInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < this.excludeClientSessionids_.size(); i3++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.excludeClientSessionids_.getInt(i3));
            }
            int size2 = size + iComputeInt32SizeNoTag + (getExcludeClientSessionidsList().size() * 2);
            if ((this.bitField0_ & 536870912) != 0) {
                size2 += CodedOutputStream.computeFixed64Size(43, this.adminRequestSpoofingSteamid_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeShortcut_VALUE) != 0) {
                size2 += CodedOutputStream.computeBoolSize(44, this.isValveds_);
            }
            if ((this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                size2 += CodedOutputStream.computeFixed64Size(45, this.traceTag_);
            }
            int serializedSize = size2 + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CMsgProtoBufHeader)) {
                return super.equals(obj);
            }
            CMsgProtoBufHeader cMsgProtoBufHeader = (CMsgProtoBufHeader) obj;
            if (hasSteamid() != cMsgProtoBufHeader.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cMsgProtoBufHeader.getSteamid()) || hasClientSessionid() != cMsgProtoBufHeader.hasClientSessionid()) {
                return false;
            }
            if ((hasClientSessionid() && getClientSessionid() != cMsgProtoBufHeader.getClientSessionid()) || hasRoutingAppid() != cMsgProtoBufHeader.hasRoutingAppid()) {
                return false;
            }
            if ((hasRoutingAppid() && getRoutingAppid() != cMsgProtoBufHeader.getRoutingAppid()) || hasJobidSource() != cMsgProtoBufHeader.hasJobidSource()) {
                return false;
            }
            if ((hasJobidSource() && getJobidSource() != cMsgProtoBufHeader.getJobidSource()) || hasJobidTarget() != cMsgProtoBufHeader.hasJobidTarget()) {
                return false;
            }
            if ((hasJobidTarget() && getJobidTarget() != cMsgProtoBufHeader.getJobidTarget()) || hasTargetJobName() != cMsgProtoBufHeader.hasTargetJobName()) {
                return false;
            }
            if ((hasTargetJobName() && !getTargetJobName().equals(cMsgProtoBufHeader.getTargetJobName())) || hasSeqNum() != cMsgProtoBufHeader.hasSeqNum()) {
                return false;
            }
            if ((hasSeqNum() && getSeqNum() != cMsgProtoBufHeader.getSeqNum()) || hasEresult() != cMsgProtoBufHeader.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgProtoBufHeader.getEresult()) || hasErrorMessage() != cMsgProtoBufHeader.hasErrorMessage()) {
                return false;
            }
            if ((hasErrorMessage() && !getErrorMessage().equals(cMsgProtoBufHeader.getErrorMessage())) || hasAuthAccountFlags() != cMsgProtoBufHeader.hasAuthAccountFlags()) {
                return false;
            }
            if ((hasAuthAccountFlags() && getAuthAccountFlags() != cMsgProtoBufHeader.getAuthAccountFlags()) || hasTokenSource() != cMsgProtoBufHeader.hasTokenSource()) {
                return false;
            }
            if ((hasTokenSource() && getTokenSource() != cMsgProtoBufHeader.getTokenSource()) || hasAdminSpoofingUser() != cMsgProtoBufHeader.hasAdminSpoofingUser()) {
                return false;
            }
            if ((hasAdminSpoofingUser() && getAdminSpoofingUser() != cMsgProtoBufHeader.getAdminSpoofingUser()) || hasTransportError() != cMsgProtoBufHeader.hasTransportError()) {
                return false;
            }
            if ((hasTransportError() && getTransportError() != cMsgProtoBufHeader.getTransportError()) || hasMessageid() != cMsgProtoBufHeader.hasMessageid()) {
                return false;
            }
            if ((hasMessageid() && getMessageid() != cMsgProtoBufHeader.getMessageid()) || hasPublisherGroupId() != cMsgProtoBufHeader.hasPublisherGroupId()) {
                return false;
            }
            if ((hasPublisherGroupId() && getPublisherGroupId() != cMsgProtoBufHeader.getPublisherGroupId()) || hasSysid() != cMsgProtoBufHeader.hasSysid()) {
                return false;
            }
            if ((hasSysid() && getSysid() != cMsgProtoBufHeader.getSysid()) || hasWebapiKeyId() != cMsgProtoBufHeader.hasWebapiKeyId()) {
                return false;
            }
            if ((hasWebapiKeyId() && getWebapiKeyId() != cMsgProtoBufHeader.getWebapiKeyId()) || hasIsFromExternalSource() != cMsgProtoBufHeader.hasIsFromExternalSource()) {
                return false;
            }
            if ((hasIsFromExternalSource() && getIsFromExternalSource() != cMsgProtoBufHeader.getIsFromExternalSource()) || !getForwardToSysidList().equals(cMsgProtoBufHeader.getForwardToSysidList()) || hasCmSysid() != cMsgProtoBufHeader.hasCmSysid()) {
                return false;
            }
            if ((hasCmSysid() && getCmSysid() != cMsgProtoBufHeader.getCmSysid()) || hasLauncherType() != cMsgProtoBufHeader.hasLauncherType()) {
                return false;
            }
            if ((hasLauncherType() && getLauncherType() != cMsgProtoBufHeader.getLauncherType()) || hasRealm() != cMsgProtoBufHeader.hasRealm()) {
                return false;
            }
            if ((hasRealm() && getRealm() != cMsgProtoBufHeader.getRealm()) || hasTimeoutMs() != cMsgProtoBufHeader.hasTimeoutMs()) {
                return false;
            }
            if ((hasTimeoutMs() && getTimeoutMs() != cMsgProtoBufHeader.getTimeoutMs()) || hasDebugSource() != cMsgProtoBufHeader.hasDebugSource()) {
                return false;
            }
            if ((hasDebugSource() && !getDebugSource().equals(cMsgProtoBufHeader.getDebugSource())) || hasDebugSourceStringIndex() != cMsgProtoBufHeader.hasDebugSourceStringIndex()) {
                return false;
            }
            if ((hasDebugSourceStringIndex() && getDebugSourceStringIndex() != cMsgProtoBufHeader.getDebugSourceStringIndex()) || hasTokenId() != cMsgProtoBufHeader.hasTokenId()) {
                return false;
            }
            if ((hasTokenId() && getTokenId() != cMsgProtoBufHeader.getTokenId()) || hasRoutingGc() != cMsgProtoBufHeader.hasRoutingGc()) {
                return false;
            }
            if ((hasRoutingGc() && !getRoutingGc().equals(cMsgProtoBufHeader.getRoutingGc())) || hasSessionDisposition() != cMsgProtoBufHeader.hasSessionDisposition()) {
                return false;
            }
            if ((hasSessionDisposition() && this.sessionDisposition_ != cMsgProtoBufHeader.sessionDisposition_) || hasWgToken() != cMsgProtoBufHeader.hasWgToken()) {
                return false;
            }
            if ((hasWgToken() && !getWgToken().equals(cMsgProtoBufHeader.getWgToken())) || hasWebuiAuthKey() != cMsgProtoBufHeader.hasWebuiAuthKey()) {
                return false;
            }
            if ((hasWebuiAuthKey() && !getWebuiAuthKey().equals(cMsgProtoBufHeader.getWebuiAuthKey())) || !getExcludeClientSessionidsList().equals(cMsgProtoBufHeader.getExcludeClientSessionidsList()) || hasAdminRequestSpoofingSteamid() != cMsgProtoBufHeader.hasAdminRequestSpoofingSteamid()) {
                return false;
            }
            if ((hasAdminRequestSpoofingSteamid() && getAdminRequestSpoofingSteamid() != cMsgProtoBufHeader.getAdminRequestSpoofingSteamid()) || hasIsValveds() != cMsgProtoBufHeader.hasIsValveds()) {
                return false;
            }
            if ((hasIsValveds() && getIsValveds() != cMsgProtoBufHeader.getIsValveds()) || hasTraceTag() != cMsgProtoBufHeader.hasTraceTag()) {
                return false;
            }
            if ((hasTraceTag() && getTraceTag() != cMsgProtoBufHeader.getTraceTag()) || !getIpAddrCase().equals(cMsgProtoBufHeader.getIpAddrCase())) {
                return false;
            }
            int i = this.ipAddrCase_;
            if (i == 15) {
                if (getIp() != cMsgProtoBufHeader.getIp()) {
                    return false;
                }
            } else if (i == 29 && !getIpV6().equals(cMsgProtoBufHeader.getIpV6())) {
                return false;
            }
            return getUnknownFields().equals(cMsgProtoBufHeader.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i;
            int ip;
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasClientSessionid()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getClientSessionid();
            }
            if (hasRoutingAppid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getRoutingAppid();
            }
            if (hasJobidSource()) {
                iHashCode = (((iHashCode * 37) + 10) * 53) + Internal.hashLong(getJobidSource());
            }
            if (hasJobidTarget()) {
                iHashCode = (((iHashCode * 37) + 11) * 53) + Internal.hashLong(getJobidTarget());
            }
            if (hasTargetJobName()) {
                iHashCode = (((iHashCode * 37) + 12) * 53) + getTargetJobName().hashCode();
            }
            if (hasSeqNum()) {
                iHashCode = (((iHashCode * 37) + 24) * 53) + getSeqNum();
            }
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 13) * 53) + getEresult();
            }
            if (hasErrorMessage()) {
                iHashCode = (((iHashCode * 37) + 14) * 53) + getErrorMessage().hashCode();
            }
            if (hasAuthAccountFlags()) {
                iHashCode = (((iHashCode * 37) + 16) * 53) + getAuthAccountFlags();
            }
            if (hasTokenSource()) {
                iHashCode = (((iHashCode * 37) + 22) * 53) + getTokenSource();
            }
            if (hasAdminSpoofingUser()) {
                iHashCode = (((iHashCode * 37) + 23) * 53) + Internal.hashBoolean(getAdminSpoofingUser());
            }
            if (hasTransportError()) {
                iHashCode = (((iHashCode * 37) + 17) * 53) + getTransportError();
            }
            if (hasMessageid()) {
                iHashCode = (((iHashCode * 37) + 18) * 53) + Internal.hashLong(getMessageid());
            }
            if (hasPublisherGroupId()) {
                iHashCode = (((iHashCode * 37) + 19) * 53) + getPublisherGroupId();
            }
            if (hasSysid()) {
                iHashCode = (((iHashCode * 37) + 20) * 53) + getSysid();
            }
            if (hasWebapiKeyId()) {
                iHashCode = (((iHashCode * 37) + 25) * 53) + getWebapiKeyId();
            }
            if (hasIsFromExternalSource()) {
                iHashCode = (((iHashCode * 37) + 26) * 53) + Internal.hashBoolean(getIsFromExternalSource());
            }
            if (getForwardToSysidCount() > 0) {
                iHashCode = (((iHashCode * 37) + 27) * 53) + getForwardToSysidList().hashCode();
            }
            if (hasCmSysid()) {
                iHashCode = (((iHashCode * 37) + 28) * 53) + getCmSysid();
            }
            if (hasLauncherType()) {
                iHashCode = (((iHashCode * 37) + 31) * 53) + getLauncherType();
            }
            if (hasRealm()) {
                iHashCode = (((iHashCode * 37) + 32) * 53) + getRealm();
            }
            if (hasTimeoutMs()) {
                iHashCode = (((iHashCode * 37) + 33) * 53) + getTimeoutMs();
            }
            if (hasDebugSource()) {
                iHashCode = (((iHashCode * 37) + 34) * 53) + getDebugSource().hashCode();
            }
            if (hasDebugSourceStringIndex()) {
                iHashCode = (((iHashCode * 37) + 35) * 53) + getDebugSourceStringIndex();
            }
            if (hasTokenId()) {
                iHashCode = (((iHashCode * 37) + 36) * 53) + Internal.hashLong(getTokenId());
            }
            if (hasRoutingGc()) {
                iHashCode = (((iHashCode * 37) + 37) * 53) + getRoutingGc().hashCode();
            }
            if (hasSessionDisposition()) {
                iHashCode = (((iHashCode * 37) + 38) * 53) + this.sessionDisposition_;
            }
            if (hasWgToken()) {
                iHashCode = (((iHashCode * 37) + 39) * 53) + getWgToken().hashCode();
            }
            if (hasWebuiAuthKey()) {
                iHashCode = (((iHashCode * 37) + 40) * 53) + getWebuiAuthKey().hashCode();
            }
            if (getExcludeClientSessionidsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 41) * 53) + getExcludeClientSessionidsList().hashCode();
            }
            if (hasAdminRequestSpoofingSteamid()) {
                iHashCode = (((iHashCode * 37) + 43) * 53) + Internal.hashLong(getAdminRequestSpoofingSteamid());
            }
            if (hasIsValveds()) {
                iHashCode = (((iHashCode * 37) + 44) * 53) + Internal.hashBoolean(getIsValveds());
            }
            if (hasTraceTag()) {
                iHashCode = (((iHashCode * 37) + 45) * 53) + Internal.hashLong(getTraceTag());
            }
            int i3 = this.ipAddrCase_;
            if (i3 == 15) {
                i = ((iHashCode * 37) + 15) * 53;
                ip = getIp();
            } else {
                if (i3 == 29) {
                    i = ((iHashCode * 37) + 29) * 53;
                    ip = getIpV6().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }
            iHashCode = i + ip;
            int iHashCode22 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode22;
            return iHashCode22;
        }

        public static CMsgProtoBufHeader parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgProtoBufHeader parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgProtoBufHeader parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgProtoBufHeader parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgProtoBufHeader parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgProtoBufHeader parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgProtoBufHeader parseFrom(InputStream inputStream) throws IOException {
            return (CMsgProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgProtoBufHeader parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgProtoBufHeader parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgProtoBufHeader) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgProtoBufHeader parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgProtoBufHeader) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgProtoBufHeader parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgProtoBufHeader parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgProtoBufHeader) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgProtoBufHeader cMsgProtoBufHeader) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgProtoBufHeader);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgProtoBufHeaderOrBuilder {
            private long adminRequestSpoofingSteamid_;
            private boolean adminSpoofingUser_;
            private int authAccountFlags_;
            private int bitField0_;
            private int bitField1_;
            private int clientSessionid_;
            private int cmSysid_;
            private int debugSourceStringIndex_;
            private Object debugSource_;
            private int eresult_;
            private Object errorMessage_;
            private Internal.IntList excludeClientSessionids_;
            private Internal.IntList forwardToSysid_;
            private int ipAddrCase_;
            private Object ipAddr_;
            private boolean isFromExternalSource_;
            private boolean isValveds_;
            private long jobidSource_;
            private long jobidTarget_;
            private int launcherType_;
            private long messageid_;
            private int publisherGroupId_;
            private int realm_;
            private int routingAppid_;
            private SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> routingGcBuilder_;
            private CMsgGCRoutingProtoBufHeader routingGc_;
            private int seqNum_;
            private int sessionDisposition_;
            private long steamid_;
            private int sysid_;
            private Object targetJobName_;
            private int timeoutMs_;
            private long tokenId_;
            private int tokenSource_;
            private long traceTag_;
            private int transportError_;
            private int webapiKeyId_;
            private Object webuiAuthKey_;
            private Object wgToken_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesBase.internal_static_CMsgProtoBufHeader_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesBase.internal_static_CMsgProtoBufHeader_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgProtoBufHeader.class, Builder.class);
            }

            private Builder() {
                this.ipAddrCase_ = 0;
                this.jobidSource_ = -1L;
                this.jobidTarget_ = -1L;
                this.targetJobName_ = "";
                this.eresult_ = 2;
                this.errorMessage_ = "";
                this.transportError_ = 1;
                this.messageid_ = -1L;
                this.forwardToSysid_ = GeneratedMessage.emptyIntList();
                this.timeoutMs_ = -1;
                this.debugSource_ = "";
                this.sessionDisposition_ = 0;
                this.wgToken_ = "";
                this.webuiAuthKey_ = "";
                this.excludeClientSessionids_ = GeneratedMessage.emptyIntList();
                maybeForceBuilderInitialization();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ipAddrCase_ = 0;
                this.jobidSource_ = -1L;
                this.jobidTarget_ = -1L;
                this.targetJobName_ = "";
                this.eresult_ = 2;
                this.errorMessage_ = "";
                this.transportError_ = 1;
                this.messageid_ = -1L;
                this.forwardToSysid_ = GeneratedMessage.emptyIntList();
                this.timeoutMs_ = -1;
                this.debugSource_ = "";
                this.sessionDisposition_ = 0;
                this.wgToken_ = "";
                this.webuiAuthKey_ = "";
                this.excludeClientSessionids_ = GeneratedMessage.emptyIntList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    internalGetRoutingGcFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.bitField1_ = 0;
                this.steamid_ = 0L;
                this.clientSessionid_ = 0;
                this.routingAppid_ = 0;
                this.jobidSource_ = -1L;
                this.jobidTarget_ = -1L;
                this.targetJobName_ = "";
                this.seqNum_ = 0;
                this.eresult_ = 2;
                this.errorMessage_ = "";
                this.authAccountFlags_ = 0;
                this.tokenSource_ = 0;
                this.adminSpoofingUser_ = false;
                this.transportError_ = 1;
                this.messageid_ = -1L;
                this.publisherGroupId_ = 0;
                this.sysid_ = 0;
                this.webapiKeyId_ = 0;
                this.isFromExternalSource_ = false;
                this.forwardToSysid_ = GeneratedMessage.emptyIntList();
                this.cmSysid_ = 0;
                this.launcherType_ = 0;
                this.realm_ = 0;
                this.timeoutMs_ = -1;
                this.debugSource_ = "";
                this.debugSourceStringIndex_ = 0;
                this.tokenId_ = 0L;
                this.routingGc_ = null;
                SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.routingGcBuilder_ = null;
                }
                this.sessionDisposition_ = 0;
                this.wgToken_ = "";
                this.webuiAuthKey_ = "";
                this.excludeClientSessionids_ = GeneratedMessage.emptyIntList();
                this.adminRequestSpoofingSteamid_ = 0L;
                this.isValveds_ = false;
                this.traceTag_ = 0L;
                this.ipAddrCase_ = 0;
                this.ipAddr_ = null;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesBase.internal_static_CMsgProtoBufHeader_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgProtoBufHeader getDefaultInstanceForType() {
                return CMsgProtoBufHeader.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgProtoBufHeader build() {
                CMsgProtoBufHeader cMsgProtoBufHeaderBuildPartial = buildPartial();
                if (cMsgProtoBufHeaderBuildPartial.isInitialized()) {
                    return cMsgProtoBufHeaderBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgProtoBufHeaderBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgProtoBufHeader buildPartial() {
                CMsgProtoBufHeader cMsgProtoBufHeader = new CMsgProtoBufHeader(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgProtoBufHeader);
                }
                if (this.bitField1_ != 0) {
                    buildPartial1(cMsgProtoBufHeader);
                }
                buildPartialOneofs(cMsgProtoBufHeader);
                onBuilt();
                return cMsgProtoBufHeader;
            }

            private void buildPartial0(CMsgProtoBufHeader cMsgProtoBufHeader) {
                int i;
                CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgProtoBufHeader.steamid_ = this.steamid_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgProtoBufHeader.clientSessionid_ = this.clientSessionid_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgProtoBufHeader.routingAppid_ = this.routingAppid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgProtoBufHeader.jobidSource_ = this.jobidSource_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgProtoBufHeader.jobidTarget_ = this.jobidTarget_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgProtoBufHeader.targetJobName_ = this.targetJobName_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgProtoBufHeader.seqNum_ = this.seqNum_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgProtoBufHeader.eresult_ = this.eresult_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgProtoBufHeader.errorMessage_ = this.errorMessage_;
                    i |= 256;
                }
                if ((i2 & 512) != 0) {
                    cMsgProtoBufHeader.authAccountFlags_ = this.authAccountFlags_;
                    i |= 512;
                }
                if ((i2 & 1024) != 0) {
                    cMsgProtoBufHeader.tokenSource_ = this.tokenSource_;
                    i |= 1024;
                }
                if ((i2 & 2048) != 0) {
                    cMsgProtoBufHeader.adminSpoofingUser_ = this.adminSpoofingUser_;
                    i |= 2048;
                }
                if ((i2 & 4096) != 0) {
                    cMsgProtoBufHeader.transportError_ = this.transportError_;
                    i |= 4096;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0) {
                    cMsgProtoBufHeader.messageid_ = this.messageid_;
                    i |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0) {
                    cMsgProtoBufHeader.publisherGroupId_ = this.publisherGroupId_;
                    i |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                }
                if ((i2 & 32768) != 0) {
                    cMsgProtoBufHeader.sysid_ = this.sysid_;
                    i |= 32768;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0) {
                    cMsgProtoBufHeader.webapiKeyId_ = this.webapiKeyId_;
                    i |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                }
                if ((i2 & 131072) != 0) {
                    cMsgProtoBufHeader.isFromExternalSource_ = this.isFromExternalSource_;
                    i |= 131072;
                }
                if ((i2 & 262144) != 0) {
                    this.forwardToSysid_.makeImmutable();
                    cMsgProtoBufHeader.forwardToSysid_ = this.forwardToSysid_;
                }
                if ((i2 & 524288) != 0) {
                    cMsgProtoBufHeader.cmSysid_ = this.cmSysid_;
                    i |= 262144;
                }
                if ((i2 & 1048576) != 0) {
                    cMsgProtoBufHeader.launcherType_ = this.launcherType_;
                    i |= 524288;
                }
                if ((i2 & 2097152) != 0) {
                    cMsgProtoBufHeader.realm_ = this.realm_;
                    i |= 1048576;
                }
                if ((4194304 & i2) != 0) {
                    cMsgProtoBufHeader.timeoutMs_ = this.timeoutMs_;
                    i |= 2097152;
                }
                if ((8388608 & i2) != 0) {
                    cMsgProtoBufHeader.debugSource_ = this.debugSource_;
                    i |= 4194304;
                }
                if ((16777216 & i2) != 0) {
                    cMsgProtoBufHeader.debugSourceStringIndex_ = this.debugSourceStringIndex_;
                    i |= LZMA2Options.DICT_SIZE_DEFAULT;
                }
                if ((33554432 & i2) != 0) {
                    cMsgProtoBufHeader.tokenId_ = this.tokenId_;
                    i |= 16777216;
                }
                if ((67108864 & i2) != 0) {
                    SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                    if (singleFieldBuilder == null) {
                        cMsgGCRoutingProtoBufHeader = this.routingGc_;
                    } else {
                        cMsgGCRoutingProtoBufHeader = (CMsgGCRoutingProtoBufHeader) singleFieldBuilder.build();
                    }
                    cMsgProtoBufHeader.routingGc_ = cMsgGCRoutingProtoBufHeader;
                    i |= 33554432;
                }
                if ((134217728 & i2) != 0) {
                    cMsgProtoBufHeader.sessionDisposition_ = this.sessionDisposition_;
                    i |= 67108864;
                }
                if ((268435456 & i2) != 0) {
                    cMsgProtoBufHeader.wgToken_ = this.wgToken_;
                    i |= 134217728;
                }
                if ((536870912 & i2) != 0) {
                    cMsgProtoBufHeader.webuiAuthKey_ = this.webuiAuthKey_;
                    i |= 268435456;
                }
                if ((1073741824 & i2) != 0) {
                    this.excludeClientSessionids_.makeImmutable();
                    cMsgProtoBufHeader.excludeClientSessionids_ = this.excludeClientSessionids_;
                }
                if ((i2 & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0) {
                    cMsgProtoBufHeader.adminRequestSpoofingSteamid_ = this.adminRequestSpoofingSteamid_;
                    i |= 536870912;
                }
                cMsgProtoBufHeader.bitField0_ |= i;
            }

            private void buildPartial1(CMsgProtoBufHeader cMsgProtoBufHeader) {
                int i;
                int i2 = this.bitField1_;
                if ((i2 & 1) != 0) {
                    cMsgProtoBufHeader.isValveds_ = this.isValveds_;
                    i = Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgProtoBufHeader.traceTag_ = this.traceTag_;
                    i |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                }
                cMsgProtoBufHeader.bitField0_ |= i;
            }

            private void buildPartialOneofs(CMsgProtoBufHeader cMsgProtoBufHeader) {
                cMsgProtoBufHeader.ipAddrCase_ = this.ipAddrCase_;
                cMsgProtoBufHeader.ipAddr_ = this.ipAddr_;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgProtoBufHeader) {
                    return mergeFrom((CMsgProtoBufHeader) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgProtoBufHeader cMsgProtoBufHeader) {
                if (cMsgProtoBufHeader == CMsgProtoBufHeader.getDefaultInstance()) {
                    return this;
                }
                if (cMsgProtoBufHeader.hasSteamid()) {
                    setSteamid(cMsgProtoBufHeader.getSteamid());
                }
                if (cMsgProtoBufHeader.hasClientSessionid()) {
                    setClientSessionid(cMsgProtoBufHeader.getClientSessionid());
                }
                if (cMsgProtoBufHeader.hasRoutingAppid()) {
                    setRoutingAppid(cMsgProtoBufHeader.getRoutingAppid());
                }
                if (cMsgProtoBufHeader.hasJobidSource()) {
                    setJobidSource(cMsgProtoBufHeader.getJobidSource());
                }
                if (cMsgProtoBufHeader.hasJobidTarget()) {
                    setJobidTarget(cMsgProtoBufHeader.getJobidTarget());
                }
                if (cMsgProtoBufHeader.hasTargetJobName()) {
                    this.targetJobName_ = cMsgProtoBufHeader.targetJobName_;
                    this.bitField0_ |= 32;
                    onChanged();
                }
                if (cMsgProtoBufHeader.hasSeqNum()) {
                    setSeqNum(cMsgProtoBufHeader.getSeqNum());
                }
                if (cMsgProtoBufHeader.hasEresult()) {
                    setEresult(cMsgProtoBufHeader.getEresult());
                }
                if (cMsgProtoBufHeader.hasErrorMessage()) {
                    this.errorMessage_ = cMsgProtoBufHeader.errorMessage_;
                    this.bitField0_ |= 256;
                    onChanged();
                }
                if (cMsgProtoBufHeader.hasAuthAccountFlags()) {
                    setAuthAccountFlags(cMsgProtoBufHeader.getAuthAccountFlags());
                }
                if (cMsgProtoBufHeader.hasTokenSource()) {
                    setTokenSource(cMsgProtoBufHeader.getTokenSource());
                }
                if (cMsgProtoBufHeader.hasAdminSpoofingUser()) {
                    setAdminSpoofingUser(cMsgProtoBufHeader.getAdminSpoofingUser());
                }
                if (cMsgProtoBufHeader.hasTransportError()) {
                    setTransportError(cMsgProtoBufHeader.getTransportError());
                }
                if (cMsgProtoBufHeader.hasMessageid()) {
                    setMessageid(cMsgProtoBufHeader.getMessageid());
                }
                if (cMsgProtoBufHeader.hasPublisherGroupId()) {
                    setPublisherGroupId(cMsgProtoBufHeader.getPublisherGroupId());
                }
                if (cMsgProtoBufHeader.hasSysid()) {
                    setSysid(cMsgProtoBufHeader.getSysid());
                }
                if (cMsgProtoBufHeader.hasWebapiKeyId()) {
                    setWebapiKeyId(cMsgProtoBufHeader.getWebapiKeyId());
                }
                if (cMsgProtoBufHeader.hasIsFromExternalSource()) {
                    setIsFromExternalSource(cMsgProtoBufHeader.getIsFromExternalSource());
                }
                if (!cMsgProtoBufHeader.forwardToSysid_.isEmpty()) {
                    if (this.forwardToSysid_.isEmpty()) {
                        Internal.IntList intList = cMsgProtoBufHeader.forwardToSysid_;
                        this.forwardToSysid_ = intList;
                        intList.makeImmutable();
                        this.bitField0_ |= 262144;
                    } else {
                        ensureForwardToSysidIsMutable();
                        this.forwardToSysid_.addAll(cMsgProtoBufHeader.forwardToSysid_);
                    }
                    onChanged();
                }
                if (cMsgProtoBufHeader.hasCmSysid()) {
                    setCmSysid(cMsgProtoBufHeader.getCmSysid());
                }
                if (cMsgProtoBufHeader.hasLauncherType()) {
                    setLauncherType(cMsgProtoBufHeader.getLauncherType());
                }
                if (cMsgProtoBufHeader.hasRealm()) {
                    setRealm(cMsgProtoBufHeader.getRealm());
                }
                if (cMsgProtoBufHeader.hasTimeoutMs()) {
                    setTimeoutMs(cMsgProtoBufHeader.getTimeoutMs());
                }
                if (cMsgProtoBufHeader.hasDebugSource()) {
                    this.debugSource_ = cMsgProtoBufHeader.debugSource_;
                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                    onChanged();
                }
                if (cMsgProtoBufHeader.hasDebugSourceStringIndex()) {
                    setDebugSourceStringIndex(cMsgProtoBufHeader.getDebugSourceStringIndex());
                }
                if (cMsgProtoBufHeader.hasTokenId()) {
                    setTokenId(cMsgProtoBufHeader.getTokenId());
                }
                if (cMsgProtoBufHeader.hasRoutingGc()) {
                    mergeRoutingGc(cMsgProtoBufHeader.getRoutingGc());
                }
                if (cMsgProtoBufHeader.hasSessionDisposition()) {
                    setSessionDisposition(cMsgProtoBufHeader.getSessionDisposition());
                }
                if (cMsgProtoBufHeader.hasWgToken()) {
                    this.wgToken_ = cMsgProtoBufHeader.wgToken_;
                    this.bitField0_ |= 268435456;
                    onChanged();
                }
                if (cMsgProtoBufHeader.hasWebuiAuthKey()) {
                    this.webuiAuthKey_ = cMsgProtoBufHeader.webuiAuthKey_;
                    this.bitField0_ |= 536870912;
                    onChanged();
                }
                if (!cMsgProtoBufHeader.excludeClientSessionids_.isEmpty()) {
                    if (this.excludeClientSessionids_.isEmpty()) {
                        Internal.IntList intList2 = cMsgProtoBufHeader.excludeClientSessionids_;
                        this.excludeClientSessionids_ = intList2;
                        intList2.makeImmutable();
                        this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                    } else {
                        ensureExcludeClientSessionidsIsMutable();
                        this.excludeClientSessionids_.addAll(cMsgProtoBufHeader.excludeClientSessionids_);
                    }
                    onChanged();
                }
                if (cMsgProtoBufHeader.hasAdminRequestSpoofingSteamid()) {
                    setAdminRequestSpoofingSteamid(cMsgProtoBufHeader.getAdminRequestSpoofingSteamid());
                }
                if (cMsgProtoBufHeader.hasIsValveds()) {
                    setIsValveds(cMsgProtoBufHeader.getIsValveds());
                }
                if (cMsgProtoBufHeader.hasTraceTag()) {
                    setTraceTag(cMsgProtoBufHeader.getTraceTag());
                }
                int iOrdinal = cMsgProtoBufHeader.getIpAddrCase().ordinal();
                if (iOrdinal == 0) {
                    setIp(cMsgProtoBufHeader.getIp());
                } else if (iOrdinal == 1) {
                    setIpV6(cMsgProtoBufHeader.getIpV6());
                }
                mergeUnknownFields(cMsgProtoBufHeader.getUnknownFields());
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
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 1;
                                    break;
                                case 16:
                                    this.clientSessionid_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 2;
                                    break;
                                case 24:
                                    this.routingAppid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 4;
                                    break;
                                case 81:
                                    this.jobidSource_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 8;
                                    break;
                                case 89:
                                    this.jobidTarget_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 16;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.COUNTRY_OVERRIDE_FIELD_NUMBER /* 98 */:
                                    this.targetJobName_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 32;
                                    break;
                                case SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER /* 104 */:
                                    this.eresult_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 128;
                                    break;
                                case 114:
                                    this.errorMessage_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 256;
                                    break;
                                case 120:
                                    this.ipAddr_ = Integer.valueOf(codedInputStream.readUInt32());
                                    this.ipAddrCase_ = 15;
                                    break;
                                case 128:
                                    this.authAccountFlags_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 512;
                                    break;
                                case 136:
                                    this.transportError_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4096;
                                    break;
                                case 144:
                                    this.messageid_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                                    break;
                                case 152:
                                    this.publisherGroupId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                                    break;
                                case 160:
                                    this.sysid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32768;
                                    break;
                                case 176:
                                    this.tokenSource_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1024;
                                    break;
                                case 184:
                                    this.adminSpoofingUser_ = codedInputStream.readBool();
                                    this.bitField0_ |= 2048;
                                    break;
                                case BERTags.PRIVATE /* 192 */:
                                    this.seqNum_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 64;
                                    break;
                                case 200:
                                    this.webapiKeyId_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                                    break;
                                case 208:
                                    this.isFromExternalSource_ = codedInputStream.readBool();
                                    this.bitField0_ |= 131072;
                                    break;
                                case 216:
                                    int uInt32 = codedInputStream.readUInt32();
                                    ensureForwardToSysidIsMutable();
                                    this.forwardToSysid_.addInt(uInt32);
                                    break;
                                case 218:
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureForwardToSysidIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.forwardToSysid_.addInt(codedInputStream.readUInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                    break;
                                case BERTags.FLAGS /* 224 */:
                                    this.cmSysid_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 524288;
                                    break;
                                case 234:
                                    this.ipAddr_ = codedInputStream.readBytes();
                                    this.ipAddrCase_ = 29;
                                    break;
                                case 248:
                                    this.launcherType_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1048576;
                                    break;
                                case 256:
                                    this.realm_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2097152;
                                    break;
                                case 264:
                                    this.timeoutMs_ = codedInputStream.readInt32();
                                    this.bitField0_ |= 4194304;
                                    break;
                                case 274:
                                    this.debugSource_ = codedInputStream.readBytes();
                                    this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                                    break;
                                case 280:
                                    this.debugSourceStringIndex_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16777216;
                                    break;
                                case 288:
                                    this.tokenId_ = codedInputStream.readUInt64();
                                    this.bitField0_ |= 33554432;
                                    break;
                                case 298:
                                    codedInputStream.readMessage(internalGetRoutingGcFieldBuilder().getBuilder(), extensionRegistryLite);
                                    this.bitField0_ |= 67108864;
                                    break;
                                case 304:
                                    int i = codedInputStream.readEnum();
                                    if (ESessionDisposition.forNumber(i) == null) {
                                        mergeUnknownVarintField(38, i);
                                    } else {
                                        this.sessionDisposition_ = i;
                                        this.bitField0_ |= 134217728;
                                    }
                                    break;
                                case 314:
                                    this.wgToken_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 268435456;
                                    break;
                                case 322:
                                    this.webuiAuthKey_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 536870912;
                                    break;
                                case 328:
                                    int int32 = codedInputStream.readInt32();
                                    ensureExcludeClientSessionidsIsMutable();
                                    this.excludeClientSessionids_.addInt(int32);
                                    break;
                                case 330:
                                    int iPushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    ensureExcludeClientSessionidsIsMutable();
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.excludeClientSessionids_.addInt(codedInputStream.readInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit2);
                                    break;
                                case 345:
                                    this.adminRequestSpoofingSteamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                                    break;
                                case 352:
                                    this.isValveds_ = codedInputStream.readBool();
                                    this.bitField1_ |= 1;
                                    break;
                                case 361:
                                    this.traceTag_ = codedInputStream.readFixed64();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public IpAddrCase getIpAddrCase() {
                return IpAddrCase.forNumber(this.ipAddrCase_);
            }

            public Builder clearIpAddr() {
                this.ipAddrCase_ = 0;
                this.ipAddr_ = null;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasClientSessionid() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getClientSessionid() {
                return this.clientSessionid_;
            }

            public Builder setClientSessionid(int i) {
                this.clientSessionid_ = i;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearClientSessionid() {
                this.bitField0_ &= -3;
                this.clientSessionid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasRoutingAppid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getRoutingAppid() {
                return this.routingAppid_;
            }

            public Builder setRoutingAppid(int i) {
                this.routingAppid_ = i;
                this.bitField0_ |= 4;
                onChanged();
                return this;
            }

            public Builder clearRoutingAppid() {
                this.bitField0_ &= -5;
                this.routingAppid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasJobidSource() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public long getJobidSource() {
                return this.jobidSource_;
            }

            public Builder setJobidSource(long j) {
                this.jobidSource_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearJobidSource() {
                this.bitField0_ &= -9;
                this.jobidSource_ = -1L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasJobidTarget() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public long getJobidTarget() {
                return this.jobidTarget_;
            }

            public Builder setJobidTarget(long j) {
                this.jobidTarget_ = j;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearJobidTarget() {
                this.bitField0_ &= -17;
                this.jobidTarget_ = -1L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasTargetJobName() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public String getTargetJobName() {
                Object obj = this.targetJobName_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.targetJobName_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public ByteString getTargetJobNameBytes() {
                Object obj = this.targetJobName_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.targetJobName_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTargetJobName(String str) {
                str.getClass();
                this.targetJobName_ = str;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearTargetJobName() {
                this.targetJobName_ = CMsgProtoBufHeader.getDefaultInstance().getTargetJobName();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder setTargetJobNameBytes(ByteString byteString) {
                byteString.getClass();
                this.targetJobName_ = byteString;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasSeqNum() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getSeqNum() {
                return this.seqNum_;
            }

            public Builder setSeqNum(int i) {
                this.seqNum_ = i;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearSeqNum() {
                this.bitField0_ &= -65;
                this.seqNum_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getEresult() {
                return this.eresult_;
            }

            public Builder setEresult(int i) {
                this.eresult_ = i;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearEresult() {
                this.bitField0_ &= -129;
                this.eresult_ = 2;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasErrorMessage() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public String getErrorMessage() {
                Object obj = this.errorMessage_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.errorMessage_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public ByteString getErrorMessageBytes() {
                Object obj = this.errorMessage_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.errorMessage_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setErrorMessage(String str) {
                str.getClass();
                this.errorMessage_ = str;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearErrorMessage() {
                this.errorMessage_ = CMsgProtoBufHeader.getDefaultInstance().getErrorMessage();
                this.bitField0_ &= -257;
                onChanged();
                return this;
            }

            public Builder setErrorMessageBytes(ByteString byteString) {
                byteString.getClass();
                this.errorMessage_ = byteString;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasAuthAccountFlags() {
                return (this.bitField0_ & 512) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getAuthAccountFlags() {
                return this.authAccountFlags_;
            }

            public Builder setAuthAccountFlags(int i) {
                this.authAccountFlags_ = i;
                this.bitField0_ |= 512;
                onChanged();
                return this;
            }

            public Builder clearAuthAccountFlags() {
                this.bitField0_ &= -513;
                this.authAccountFlags_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasTokenSource() {
                return (this.bitField0_ & 1024) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getTokenSource() {
                return this.tokenSource_;
            }

            public Builder setTokenSource(int i) {
                this.tokenSource_ = i;
                this.bitField0_ |= 1024;
                onChanged();
                return this;
            }

            public Builder clearTokenSource() {
                this.bitField0_ &= -1025;
                this.tokenSource_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasAdminSpoofingUser() {
                return (this.bitField0_ & 2048) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean getAdminSpoofingUser() {
                return this.adminSpoofingUser_;
            }

            public Builder setAdminSpoofingUser(boolean z) {
                this.adminSpoofingUser_ = z;
                this.bitField0_ |= 2048;
                onChanged();
                return this;
            }

            public Builder clearAdminSpoofingUser() {
                this.bitField0_ &= -2049;
                this.adminSpoofingUser_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasTransportError() {
                return (this.bitField0_ & 4096) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getTransportError() {
                return this.transportError_;
            }

            public Builder setTransportError(int i) {
                this.transportError_ = i;
                this.bitField0_ |= 4096;
                onChanged();
                return this;
            }

            public Builder clearTransportError() {
                this.bitField0_ &= -4097;
                this.transportError_ = 1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasMessageid() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public long getMessageid() {
                return this.messageid_;
            }

            public Builder setMessageid(long j) {
                this.messageid_ = j;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE;
                onChanged();
                return this;
            }

            public Builder clearMessageid() {
                this.bitField0_ &= -8193;
                this.messageid_ = -1L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasPublisherGroupId() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getPublisherGroupId() {
                return this.publisherGroupId_;
            }

            public Builder setPublisherGroupId(int i) {
                this.publisherGroupId_ = i;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeSeries_VALUE;
                onChanged();
                return this;
            }

            public Builder clearPublisherGroupId() {
                this.bitField0_ &= -16385;
                this.publisherGroupId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasSysid() {
                return (this.bitField0_ & 32768) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getSysid() {
                return this.sysid_;
            }

            public Builder setSysid(int i) {
                this.sysid_ = i;
                this.bitField0_ |= 32768;
                onChanged();
                return this;
            }

            public Builder clearSysid() {
                this.bitField0_ &= -32769;
                this.sysid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasWebapiKeyId() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeBeta_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getWebapiKeyId() {
                return this.webapiKeyId_;
            }

            public Builder setWebapiKeyId(int i) {
                this.webapiKeyId_ = i;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                onChanged();
                return this;
            }

            public Builder clearWebapiKeyId() {
                this.bitField0_ &= -65537;
                this.webapiKeyId_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasIsFromExternalSource() {
                return (this.bitField0_ & 131072) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean getIsFromExternalSource() {
                return this.isFromExternalSource_;
            }

            public Builder setIsFromExternalSource(boolean z) {
                this.isFromExternalSource_ = z;
                this.bitField0_ |= 131072;
                onChanged();
                return this;
            }

            public Builder clearIsFromExternalSource() {
                this.bitField0_ &= -131073;
                this.isFromExternalSource_ = false;
                onChanged();
                return this;
            }

            private void ensureForwardToSysidIsMutable() {
                if (!this.forwardToSysid_.isModifiable()) {
                    this.forwardToSysid_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.forwardToSysid_);
                }
                this.bitField0_ |= 262144;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public List<Integer> getForwardToSysidList() {
                this.forwardToSysid_.makeImmutable();
                return this.forwardToSysid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getForwardToSysidCount() {
                return this.forwardToSysid_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getForwardToSysid(int i) {
                return this.forwardToSysid_.getInt(i);
            }

            public Builder setForwardToSysid(int i, int i2) {
                ensureForwardToSysidIsMutable();
                this.forwardToSysid_.setInt(i, i2);
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder addForwardToSysid(int i) {
                ensureForwardToSysidIsMutable();
                this.forwardToSysid_.addInt(i);
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder addAllForwardToSysid(Iterable<? extends Integer> iterable) {
                ensureForwardToSysidIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.forwardToSysid_);
                this.bitField0_ |= 262144;
                onChanged();
                return this;
            }

            public Builder clearForwardToSysid() {
                this.forwardToSysid_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -262145;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasCmSysid() {
                return (this.bitField0_ & 524288) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getCmSysid() {
                return this.cmSysid_;
            }

            public Builder setCmSysid(int i) {
                this.cmSysid_ = i;
                this.bitField0_ |= 524288;
                onChanged();
                return this;
            }

            public Builder clearCmSysid() {
                this.bitField0_ &= -524289;
                this.cmSysid_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasLauncherType() {
                return (this.bitField0_ & 1048576) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getLauncherType() {
                return this.launcherType_;
            }

            public Builder setLauncherType(int i) {
                this.launcherType_ = i;
                this.bitField0_ |= 1048576;
                onChanged();
                return this;
            }

            public Builder clearLauncherType() {
                this.bitField0_ &= -1048577;
                this.launcherType_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasRealm() {
                return (this.bitField0_ & 2097152) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getRealm() {
                return this.realm_;
            }

            public Builder setRealm(int i) {
                this.realm_ = i;
                this.bitField0_ |= 2097152;
                onChanged();
                return this;
            }

            public Builder clearRealm() {
                this.bitField0_ &= -2097153;
                this.realm_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasTimeoutMs() {
                return (this.bitField0_ & 4194304) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getTimeoutMs() {
                return this.timeoutMs_;
            }

            public Builder setTimeoutMs(int i) {
                this.timeoutMs_ = i;
                this.bitField0_ |= 4194304;
                onChanged();
                return this;
            }

            public Builder clearTimeoutMs() {
                this.bitField0_ &= -4194305;
                this.timeoutMs_ = -1;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasDebugSource() {
                return (this.bitField0_ & LZMA2Options.DICT_SIZE_DEFAULT) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public String getDebugSource() {
                Object obj = this.debugSource_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.debugSource_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public ByteString getDebugSourceBytes() {
                Object obj = this.debugSource_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.debugSource_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDebugSource(String str) {
                str.getClass();
                this.debugSource_ = str;
                this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                onChanged();
                return this;
            }

            public Builder clearDebugSource() {
                this.debugSource_ = CMsgProtoBufHeader.getDefaultInstance().getDebugSource();
                this.bitField0_ &= -8388609;
                onChanged();
                return this;
            }

            public Builder setDebugSourceBytes(ByteString byteString) {
                byteString.getClass();
                this.debugSource_ = byteString;
                this.bitField0_ |= LZMA2Options.DICT_SIZE_DEFAULT;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasDebugSourceStringIndex() {
                return (this.bitField0_ & 16777216) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getDebugSourceStringIndex() {
                return this.debugSourceStringIndex_;
            }

            public Builder setDebugSourceStringIndex(int i) {
                this.debugSourceStringIndex_ = i;
                this.bitField0_ |= 16777216;
                onChanged();
                return this;
            }

            public Builder clearDebugSourceStringIndex() {
                this.bitField0_ &= -16777217;
                this.debugSourceStringIndex_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasTokenId() {
                return (this.bitField0_ & 33554432) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasRoutingGc() {
                return (this.bitField0_ & 67108864) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public CMsgGCRoutingProtoBufHeader getRoutingGc() {
                SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                if (singleFieldBuilder == null) {
                    CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader = this.routingGc_;
                    return cMsgGCRoutingProtoBufHeader == null ? CMsgGCRoutingProtoBufHeader.getDefaultInstance() : cMsgGCRoutingProtoBufHeader;
                }
                return (CMsgGCRoutingProtoBufHeader) singleFieldBuilder.getMessage();
            }

            public Builder setRoutingGc(CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader) {
                SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                if (singleFieldBuilder == null) {
                    cMsgGCRoutingProtoBufHeader.getClass();
                    this.routingGc_ = cMsgGCRoutingProtoBufHeader;
                } else {
                    singleFieldBuilder.setMessage(cMsgGCRoutingProtoBufHeader);
                }
                this.bitField0_ |= 67108864;
                onChanged();
                return this;
            }

            public Builder setRoutingGc(CMsgGCRoutingProtoBufHeader.Builder builder) {
                SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                if (singleFieldBuilder == null) {
                    this.routingGc_ = builder.build();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 67108864;
                onChanged();
                return this;
            }

            public Builder mergeRoutingGc(CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader) {
                CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader2;
                SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 67108864) != 0 && (cMsgGCRoutingProtoBufHeader2 = this.routingGc_) != null && cMsgGCRoutingProtoBufHeader2 != CMsgGCRoutingProtoBufHeader.getDefaultInstance()) {
                        getRoutingGcBuilder().mergeFrom(cMsgGCRoutingProtoBufHeader);
                    } else {
                        this.routingGc_ = cMsgGCRoutingProtoBufHeader;
                    }
                } else {
                    singleFieldBuilder.mergeFrom(cMsgGCRoutingProtoBufHeader);
                }
                if (this.routingGc_ != null) {
                    this.bitField0_ |= 67108864;
                    onChanged();
                }
                return this;
            }

            public Builder clearRoutingGc() {
                this.bitField0_ &= -67108865;
                this.routingGc_ = null;
                SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                    this.routingGcBuilder_ = null;
                }
                onChanged();
                return this;
            }

            public CMsgGCRoutingProtoBufHeader.Builder getRoutingGcBuilder() {
                this.bitField0_ |= 67108864;
                onChanged();
                return (CMsgGCRoutingProtoBufHeader.Builder) internalGetRoutingGcFieldBuilder().getBuilder();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public CMsgGCRoutingProtoBufHeaderOrBuilder getRoutingGcOrBuilder() {
                SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> singleFieldBuilder = this.routingGcBuilder_;
                if (singleFieldBuilder != null) {
                    return (CMsgGCRoutingProtoBufHeaderOrBuilder) singleFieldBuilder.getMessageOrBuilder();
                }
                CMsgGCRoutingProtoBufHeader cMsgGCRoutingProtoBufHeader = this.routingGc_;
                return cMsgGCRoutingProtoBufHeader == null ? CMsgGCRoutingProtoBufHeader.getDefaultInstance() : cMsgGCRoutingProtoBufHeader;
            }

            private SingleFieldBuilder<CMsgGCRoutingProtoBufHeader, CMsgGCRoutingProtoBufHeader.Builder, CMsgGCRoutingProtoBufHeaderOrBuilder> internalGetRoutingGcFieldBuilder() {
                if (this.routingGcBuilder_ == null) {
                    this.routingGcBuilder_ = new SingleFieldBuilder<>(getRoutingGc(), getParentForChildren(), isClean());
                    this.routingGc_ = null;
                }
                return this.routingGcBuilder_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasSessionDisposition() {
                return (this.bitField0_ & 134217728) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public ESessionDisposition getSessionDisposition() {
                ESessionDisposition eSessionDispositionForNumber = ESessionDisposition.forNumber(this.sessionDisposition_);
                return eSessionDispositionForNumber == null ? ESessionDisposition.k_ESessionDispositionNormal : eSessionDispositionForNumber;
            }

            public Builder setSessionDisposition(ESessionDisposition eSessionDisposition) {
                eSessionDisposition.getClass();
                this.bitField0_ |= 134217728;
                this.sessionDisposition_ = eSessionDisposition.getNumber();
                onChanged();
                return this;
            }

            public Builder clearSessionDisposition() {
                this.bitField0_ &= -134217729;
                this.sessionDisposition_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasWgToken() {
                return (this.bitField0_ & 268435456) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public String getWgToken() {
                Object obj = this.wgToken_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.wgToken_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public ByteString getWgTokenBytes() {
                Object obj = this.wgToken_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.wgToken_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setWgToken(String str) {
                str.getClass();
                this.wgToken_ = str;
                this.bitField0_ |= 268435456;
                onChanged();
                return this;
            }

            public Builder clearWgToken() {
                this.wgToken_ = CMsgProtoBufHeader.getDefaultInstance().getWgToken();
                this.bitField0_ &= -268435457;
                onChanged();
                return this;
            }

            public Builder setWgTokenBytes(ByteString byteString) {
                byteString.getClass();
                this.wgToken_ = byteString;
                this.bitField0_ |= 268435456;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasWebuiAuthKey() {
                return (this.bitField0_ & 536870912) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public String getWebuiAuthKey() {
                Object obj = this.webuiAuthKey_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.webuiAuthKey_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public ByteString getWebuiAuthKeyBytes() {
                Object obj = this.webuiAuthKey_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.webuiAuthKey_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setWebuiAuthKey(String str) {
                str.getClass();
                this.webuiAuthKey_ = str;
                this.bitField0_ |= 536870912;
                onChanged();
                return this;
            }

            public Builder clearWebuiAuthKey() {
                this.webuiAuthKey_ = CMsgProtoBufHeader.getDefaultInstance().getWebuiAuthKey();
                this.bitField0_ &= -536870913;
                onChanged();
                return this;
            }

            public Builder setWebuiAuthKeyBytes(ByteString byteString) {
                byteString.getClass();
                this.webuiAuthKey_ = byteString;
                this.bitField0_ |= 536870912;
                onChanged();
                return this;
            }

            private void ensureExcludeClientSessionidsIsMutable() {
                if (!this.excludeClientSessionids_.isModifiable()) {
                    this.excludeClientSessionids_ = (Internal.IntList) GeneratedMessage.makeMutableCopy(this.excludeClientSessionids_);
                }
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public List<Integer> getExcludeClientSessionidsList() {
                this.excludeClientSessionids_.makeImmutable();
                return this.excludeClientSessionids_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getExcludeClientSessionidsCount() {
                return this.excludeClientSessionids_.size();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getExcludeClientSessionids(int i) {
                return this.excludeClientSessionids_.getInt(i);
            }

            public Builder setExcludeClientSessionids(int i, int i2) {
                ensureExcludeClientSessionidsIsMutable();
                this.excludeClientSessionids_.setInt(i, i2);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                onChanged();
                return this;
            }

            public Builder addExcludeClientSessionids(int i) {
                ensureExcludeClientSessionidsIsMutable();
                this.excludeClientSessionids_.addInt(i);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                onChanged();
                return this;
            }

            public Builder addAllExcludeClientSessionids(Iterable<? extends Integer> iterable) {
                ensureExcludeClientSessionidsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.excludeClientSessionids_);
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeShortcut_VALUE;
                onChanged();
                return this;
            }

            public Builder clearExcludeClientSessionids() {
                this.excludeClientSessionids_ = GeneratedMessage.emptyIntList();
                this.bitField0_ &= -1073741825;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasAdminRequestSpoofingSteamid() {
                return (this.bitField0_ & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public long getAdminRequestSpoofingSteamid() {
                return this.adminRequestSpoofingSteamid_;
            }

            public Builder setAdminRequestSpoofingSteamid(long j) {
                this.adminRequestSpoofingSteamid_ = j;
                this.bitField0_ |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
                onChanged();
                return this;
            }

            public Builder clearAdminRequestSpoofingSteamid() {
                this.bitField0_ &= Integer.MAX_VALUE;
                this.adminRequestSpoofingSteamid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasIsValveds() {
                return (this.bitField1_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean getIsValveds() {
                return this.isValveds_;
            }

            public Builder setIsValveds(boolean z) {
                this.isValveds_ = z;
                this.bitField1_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearIsValveds() {
                this.bitField1_ &= -2;
                this.isValveds_ = false;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasTraceTag() {
                return (this.bitField1_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public long getTraceTag() {
                return this.traceTag_;
            }

            public Builder setTraceTag(long j) {
                this.traceTag_ = j;
                this.bitField1_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearTraceTag() {
                this.bitField1_ &= -3;
                this.traceTag_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasIp() {
                return this.ipAddrCase_ == 15;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public int getIp() {
                if (this.ipAddrCase_ == 15) {
                    return ((Integer) this.ipAddr_).intValue();
                }
                return 0;
            }

            public Builder setIp(int i) {
                this.ipAddrCase_ = 15;
                this.ipAddr_ = Integer.valueOf(i);
                onChanged();
                return this;
            }

            public Builder clearIp() {
                if (this.ipAddrCase_ == 15) {
                    this.ipAddrCase_ = 0;
                    this.ipAddr_ = null;
                    onChanged();
                }
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public boolean hasIpV6() {
                return this.ipAddrCase_ == 29;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgProtoBufHeaderOrBuilder
            public ByteString getIpV6() {
                if (this.ipAddrCase_ == 29) {
                    return (ByteString) this.ipAddr_;
                }
                return ByteString.EMPTY;
            }

            public Builder setIpV6(ByteString byteString) {
                byteString.getClass();
                this.ipAddrCase_ = 29;
                this.ipAddr_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearIpV6() {
                if (this.ipAddrCase_ == 29) {
                    this.ipAddrCase_ = 0;
                    this.ipAddr_ = null;
                    onChanged();
                }
                return this;
            }
        }

        public static CMsgProtoBufHeader getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgProtoBufHeader> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgProtoBufHeader> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgProtoBufHeader getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgMulti extends GeneratedMessage implements CMsgMultiOrBuilder {
        private static final CMsgMulti DEFAULT_INSTANCE;
        public static final int MESSAGE_BODY_FIELD_NUMBER = 2;
        private static final Parser<CMsgMulti> PARSER;
        public static final int SIZE_UNZIPPED_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private ByteString messageBody_;
        private int sizeUnzipped_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgMulti.class.getName());
            DEFAULT_INSTANCE = new CMsgMulti();
            PARSER = new AbstractParser<CMsgMulti>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMulti.1
                @Override // com.google.protobuf.Parser
                public CMsgMulti parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgMulti.newBuilder();
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

        private CMsgMulti(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.sizeUnzipped_ = 0;
            this.messageBody_ = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgMulti() {
            this.sizeUnzipped_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.memoizedIsInitialized = (byte) -1;
            this.messageBody_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesBase.internal_static_CMsgMulti_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesBase.internal_static_CMsgMulti_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgMulti.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
        public boolean hasSizeUnzipped() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
        public int getSizeUnzipped() {
            return this.sizeUnzipped_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
        public boolean hasMessageBody() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
        public ByteString getMessageBody() {
            return this.messageBody_;
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
                codedOutputStream.writeUInt32(1, this.sizeUnzipped_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBytes(2, this.messageBody_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.sizeUnzipped_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(2, this.messageBody_);
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
            if (!(obj instanceof CMsgMulti)) {
                return super.equals(obj);
            }
            CMsgMulti cMsgMulti = (CMsgMulti) obj;
            if (hasSizeUnzipped() != cMsgMulti.hasSizeUnzipped()) {
                return false;
            }
            if ((!hasSizeUnzipped() || getSizeUnzipped() == cMsgMulti.getSizeUnzipped()) && hasMessageBody() == cMsgMulti.hasMessageBody()) {
                return (!hasMessageBody() || getMessageBody().equals(cMsgMulti.getMessageBody())) && getUnknownFields().equals(cMsgMulti.getUnknownFields());
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
            if (hasSizeUnzipped()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getSizeUnzipped();
            }
            if (hasMessageBody()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getMessageBody().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgMulti parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgMulti parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgMulti parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgMulti parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgMulti parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgMulti parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgMulti parseFrom(InputStream inputStream) throws IOException {
            return (CMsgMulti) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgMulti parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgMulti) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgMulti parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgMulti) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgMulti parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgMulti) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgMulti parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgMulti) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgMulti parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgMulti) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgMulti cMsgMulti) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgMulti);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgMultiOrBuilder {
            private int bitField0_;
            private ByteString messageBody_;
            private int sizeUnzipped_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesBase.internal_static_CMsgMulti_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesBase.internal_static_CMsgMulti_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgMulti.class, Builder.class);
            }

            private Builder() {
                this.messageBody_ = ByteString.EMPTY;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.messageBody_ = ByteString.EMPTY;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.sizeUnzipped_ = 0;
                this.messageBody_ = ByteString.EMPTY;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesBase.internal_static_CMsgMulti_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgMulti getDefaultInstanceForType() {
                return CMsgMulti.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgMulti build() {
                CMsgMulti cMsgMultiBuildPartial = buildPartial();
                if (cMsgMultiBuildPartial.isInitialized()) {
                    return cMsgMultiBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgMultiBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgMulti buildPartial() {
                CMsgMulti cMsgMulti = new CMsgMulti(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgMulti);
                }
                onBuilt();
                return cMsgMulti;
            }

            private void buildPartial0(CMsgMulti cMsgMulti) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgMulti.sizeUnzipped_ = this.sizeUnzipped_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgMulti.messageBody_ = this.messageBody_;
                    i |= 2;
                }
                cMsgMulti.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgMulti) {
                    return mergeFrom((CMsgMulti) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgMulti cMsgMulti) {
                if (cMsgMulti == CMsgMulti.getDefaultInstance()) {
                    return this;
                }
                if (cMsgMulti.hasSizeUnzipped()) {
                    setSizeUnzipped(cMsgMulti.getSizeUnzipped());
                }
                if (cMsgMulti.hasMessageBody()) {
                    setMessageBody(cMsgMulti.getMessageBody());
                }
                mergeUnknownFields(cMsgMulti.getUnknownFields());
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
                                    this.sizeUnzipped_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 18) {
                                    this.messageBody_ = codedInputStream.readBytes();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
            public boolean hasSizeUnzipped() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
            public int getSizeUnzipped() {
                return this.sizeUnzipped_;
            }

            public Builder setSizeUnzipped(int i) {
                this.sizeUnzipped_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearSizeUnzipped() {
                this.bitField0_ &= -2;
                this.sizeUnzipped_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
            public boolean hasMessageBody() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgMultiOrBuilder
            public ByteString getMessageBody() {
                return this.messageBody_;
            }

            public Builder setMessageBody(ByteString byteString) {
                byteString.getClass();
                this.messageBody_ = byteString;
                this.bitField0_ |= 2;
                onChanged();
                return this;
            }

            public Builder clearMessageBody() {
                this.bitField0_ &= -3;
                this.messageBody_ = CMsgMulti.getDefaultInstance().getMessageBody();
                onChanged();
                return this;
            }
        }

        public static CMsgMulti getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgMulti> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgMulti> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgMulti getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class CMsgAuthTicket extends GeneratedMessage implements CMsgAuthTicketOrBuilder {
        private static final CMsgAuthTicket DEFAULT_INSTANCE;
        public static final int ERESULT_FIELD_NUMBER = 2;
        public static final int ESTATE_FIELD_NUMBER = 1;
        public static final int GAMEID_FIELD_NUMBER = 4;
        public static final int H_STEAM_PIPE_FIELD_NUMBER = 5;
        private static final Parser<CMsgAuthTicket> PARSER;
        public static final int SERVER_SECRET_FIELD_NUMBER = 8;
        public static final int STEAMID_FIELD_NUMBER = 3;
        public static final int TICKET_CRC_FIELD_NUMBER = 6;
        public static final int TICKET_FIELD_NUMBER = 7;
        public static final int TICKET_TYPE_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int eresult_;
        private int estate_;
        private long gameid_;
        private int hSteamPipe_;
        private byte memoizedIsInitialized;
        private ByteString serverSecret_;
        private long steamid_;
        private int ticketCrc_;
        private int ticketType_;
        private ByteString ticket_;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", CMsgAuthTicket.class.getName());
            DEFAULT_INSTANCE = new CMsgAuthTicket();
            PARSER = new AbstractParser<CMsgAuthTicket>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicket.1
                @Override // com.google.protobuf.Parser
                public CMsgAuthTicket parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = CMsgAuthTicket.newBuilder();
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

        private CMsgAuthTicket(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.estate_ = 0;
            this.eresult_ = 2;
            this.steamid_ = 0L;
            this.gameid_ = 0L;
            this.hSteamPipe_ = 0;
            this.ticketCrc_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.ticket_ = byteString;
            this.serverSecret_ = byteString;
            this.ticketType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private CMsgAuthTicket() {
            this.estate_ = 0;
            this.eresult_ = 2;
            this.steamid_ = 0L;
            this.gameid_ = 0L;
            this.hSteamPipe_ = 0;
            this.ticketCrc_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.ticketType_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.eresult_ = 2;
            this.ticket_ = byteString;
            this.serverSecret_ = byteString;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesBase.internal_static_CMsgAuthTicket_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesBase.internal_static_CMsgAuthTicket_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgAuthTicket.class, Builder.class);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasEstate() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public int getEstate() {
            return this.estate_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasEresult() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public int getEresult() {
            return this.eresult_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasSteamid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public long getSteamid() {
            return this.steamid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasGameid() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public long getGameid() {
            return this.gameid_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasHSteamPipe() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public int getHSteamPipe() {
            return this.hSteamPipe_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasTicketCrc() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public int getTicketCrc() {
            return this.ticketCrc_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasTicket() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public ByteString getTicket() {
            return this.ticket_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasServerSecret() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public ByteString getServerSecret() {
            return this.serverSecret_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public boolean hasTicketType() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
        public int getTicketType() {
            return this.ticketType_;
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
                codedOutputStream.writeUInt32(1, this.estate_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(2, this.eresult_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeFixed64(3, this.steamid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeFixed64(4, this.gameid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeUInt32(5, this.hSteamPipe_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeUInt32(6, this.ticketCrc_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.writeBytes(7, this.ticket_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.writeBytes(8, this.serverSecret_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.writeUInt32(9, this.ticketType_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.estate_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.eresult_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(3, this.steamid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeFixed64Size(4, this.gameid_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(5, this.hSteamPipe_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(6, this.ticketCrc_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(7, this.ticket_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeBytesSize(8, this.serverSecret_);
            }
            if ((this.bitField0_ & 256) != 0) {
                iComputeUInt32Size += CodedOutputStream.computeUInt32Size(9, this.ticketType_);
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
            if (!(obj instanceof CMsgAuthTicket)) {
                return super.equals(obj);
            }
            CMsgAuthTicket cMsgAuthTicket = (CMsgAuthTicket) obj;
            if (hasEstate() != cMsgAuthTicket.hasEstate()) {
                return false;
            }
            if ((hasEstate() && getEstate() != cMsgAuthTicket.getEstate()) || hasEresult() != cMsgAuthTicket.hasEresult()) {
                return false;
            }
            if ((hasEresult() && getEresult() != cMsgAuthTicket.getEresult()) || hasSteamid() != cMsgAuthTicket.hasSteamid()) {
                return false;
            }
            if ((hasSteamid() && getSteamid() != cMsgAuthTicket.getSteamid()) || hasGameid() != cMsgAuthTicket.hasGameid()) {
                return false;
            }
            if ((hasGameid() && getGameid() != cMsgAuthTicket.getGameid()) || hasHSteamPipe() != cMsgAuthTicket.hasHSteamPipe()) {
                return false;
            }
            if ((hasHSteamPipe() && getHSteamPipe() != cMsgAuthTicket.getHSteamPipe()) || hasTicketCrc() != cMsgAuthTicket.hasTicketCrc()) {
                return false;
            }
            if ((hasTicketCrc() && getTicketCrc() != cMsgAuthTicket.getTicketCrc()) || hasTicket() != cMsgAuthTicket.hasTicket()) {
                return false;
            }
            if ((hasTicket() && !getTicket().equals(cMsgAuthTicket.getTicket())) || hasServerSecret() != cMsgAuthTicket.hasServerSecret()) {
                return false;
            }
            if ((!hasServerSecret() || getServerSecret().equals(cMsgAuthTicket.getServerSecret())) && hasTicketType() == cMsgAuthTicket.hasTicketType()) {
                return (!hasTicketType() || getTicketType() == cMsgAuthTicket.getTicketType()) && getUnknownFields().equals(cMsgAuthTicket.getUnknownFields());
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
            if (hasEstate()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getEstate();
            }
            if (hasEresult()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getEresult();
            }
            if (hasSteamid()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + Internal.hashLong(getSteamid());
            }
            if (hasGameid()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + Internal.hashLong(getGameid());
            }
            if (hasHSteamPipe()) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getHSteamPipe();
            }
            if (hasTicketCrc()) {
                iHashCode = (((iHashCode * 37) + 6) * 53) + getTicketCrc();
            }
            if (hasTicket()) {
                iHashCode = (((iHashCode * 37) + 7) * 53) + getTicket().hashCode();
            }
            if (hasServerSecret()) {
                iHashCode = (((iHashCode * 37) + 8) * 53) + getServerSecret().hashCode();
            }
            if (hasTicketType()) {
                iHashCode = (((iHashCode * 37) + 9) * 53) + getTicketType();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static CMsgAuthTicket parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static CMsgAuthTicket parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static CMsgAuthTicket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CMsgAuthTicket parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CMsgAuthTicket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CMsgAuthTicket parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CMsgAuthTicket parseFrom(InputStream inputStream) throws IOException {
            return (CMsgAuthTicket) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static CMsgAuthTicket parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgAuthTicket) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgAuthTicket parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CMsgAuthTicket) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CMsgAuthTicket parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgAuthTicket) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static CMsgAuthTicket parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CMsgAuthTicket) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static CMsgAuthTicket parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CMsgAuthTicket) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(CMsgAuthTicket cMsgAuthTicket) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(cMsgAuthTicket);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CMsgAuthTicketOrBuilder {
            private int bitField0_;
            private int eresult_;
            private int estate_;
            private long gameid_;
            private int hSteamPipe_;
            private ByteString serverSecret_;
            private long steamid_;
            private int ticketCrc_;
            private int ticketType_;
            private ByteString ticket_;

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesBase.internal_static_CMsgAuthTicket_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesBase.internal_static_CMsgAuthTicket_fieldAccessorTable.ensureFieldAccessorsInitialized(CMsgAuthTicket.class, Builder.class);
            }

            private Builder() {
                this.eresult_ = 2;
                ByteString byteString = ByteString.EMPTY;
                this.ticket_ = byteString;
                this.serverSecret_ = byteString;
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.eresult_ = 2;
                ByteString byteString = ByteString.EMPTY;
                this.ticket_ = byteString;
                this.serverSecret_ = byteString;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                this.estate_ = 0;
                this.eresult_ = 2;
                this.steamid_ = 0L;
                this.gameid_ = 0L;
                this.hSteamPipe_ = 0;
                this.ticketCrc_ = 0;
                ByteString byteString = ByteString.EMPTY;
                this.ticket_ = byteString;
                this.serverSecret_ = byteString;
                this.ticketType_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesBase.internal_static_CMsgAuthTicket_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CMsgAuthTicket getDefaultInstanceForType() {
                return CMsgAuthTicket.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgAuthTicket build() {
                CMsgAuthTicket cMsgAuthTicketBuildPartial = buildPartial();
                if (cMsgAuthTicketBuildPartial.isInitialized()) {
                    return cMsgAuthTicketBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cMsgAuthTicketBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CMsgAuthTicket buildPartial() {
                CMsgAuthTicket cMsgAuthTicket = new CMsgAuthTicket(this);
                if (this.bitField0_ != 0) {
                    buildPartial0(cMsgAuthTicket);
                }
                onBuilt();
                return cMsgAuthTicket;
            }

            private void buildPartial0(CMsgAuthTicket cMsgAuthTicket) {
                int i;
                int i2 = this.bitField0_;
                if ((i2 & 1) != 0) {
                    cMsgAuthTicket.estate_ = this.estate_;
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i2 & 2) != 0) {
                    cMsgAuthTicket.eresult_ = this.eresult_;
                    i |= 2;
                }
                if ((i2 & 4) != 0) {
                    cMsgAuthTicket.steamid_ = this.steamid_;
                    i |= 4;
                }
                if ((i2 & 8) != 0) {
                    cMsgAuthTicket.gameid_ = this.gameid_;
                    i |= 8;
                }
                if ((i2 & 16) != 0) {
                    cMsgAuthTicket.hSteamPipe_ = this.hSteamPipe_;
                    i |= 16;
                }
                if ((i2 & 32) != 0) {
                    cMsgAuthTicket.ticketCrc_ = this.ticketCrc_;
                    i |= 32;
                }
                if ((i2 & 64) != 0) {
                    cMsgAuthTicket.ticket_ = this.ticket_;
                    i |= 64;
                }
                if ((i2 & 128) != 0) {
                    cMsgAuthTicket.serverSecret_ = this.serverSecret_;
                    i |= 128;
                }
                if ((i2 & 256) != 0) {
                    cMsgAuthTicket.ticketType_ = this.ticketType_;
                    i |= 256;
                }
                cMsgAuthTicket.bitField0_ |= i;
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CMsgAuthTicket) {
                    return mergeFrom((CMsgAuthTicket) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CMsgAuthTicket cMsgAuthTicket) {
                if (cMsgAuthTicket == CMsgAuthTicket.getDefaultInstance()) {
                    return this;
                }
                if (cMsgAuthTicket.hasEstate()) {
                    setEstate(cMsgAuthTicket.getEstate());
                }
                if (cMsgAuthTicket.hasEresult()) {
                    setEresult(cMsgAuthTicket.getEresult());
                }
                if (cMsgAuthTicket.hasSteamid()) {
                    setSteamid(cMsgAuthTicket.getSteamid());
                }
                if (cMsgAuthTicket.hasGameid()) {
                    setGameid(cMsgAuthTicket.getGameid());
                }
                if (cMsgAuthTicket.hasHSteamPipe()) {
                    setHSteamPipe(cMsgAuthTicket.getHSteamPipe());
                }
                if (cMsgAuthTicket.hasTicketCrc()) {
                    setTicketCrc(cMsgAuthTicket.getTicketCrc());
                }
                if (cMsgAuthTicket.hasTicket()) {
                    setTicket(cMsgAuthTicket.getTicket());
                }
                if (cMsgAuthTicket.hasServerSecret()) {
                    setServerSecret(cMsgAuthTicket.getServerSecret());
                }
                if (cMsgAuthTicket.hasTicketType()) {
                    setTicketType(cMsgAuthTicket.getTicketType());
                }
                mergeUnknownFields(cMsgAuthTicket.getUnknownFields());
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
                                    this.estate_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 1;
                                } else if (tag == 16) {
                                    this.eresult_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 2;
                                } else if (tag == 25) {
                                    this.steamid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 4;
                                } else if (tag == 33) {
                                    this.gameid_ = codedInputStream.readFixed64();
                                    this.bitField0_ |= 8;
                                } else if (tag == 40) {
                                    this.hSteamPipe_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 16;
                                } else if (tag == 48) {
                                    this.ticketCrc_ = codedInputStream.readUInt32();
                                    this.bitField0_ |= 32;
                                } else if (tag == 58) {
                                    this.ticket_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                } else if (tag == 66) {
                                    this.serverSecret_ = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                } else if (tag == 72) {
                                    this.ticketType_ = codedInputStream.readUInt32();
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasEstate() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public int getEstate() {
                return this.estate_;
            }

            public Builder setEstate(int i) {
                this.estate_ = i;
                this.bitField0_ |= 1;
                onChanged();
                return this;
            }

            public Builder clearEstate() {
                this.bitField0_ &= -2;
                this.estate_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasEresult() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasSteamid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
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

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasGameid() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public long getGameid() {
                return this.gameid_;
            }

            public Builder setGameid(long j) {
                this.gameid_ = j;
                this.bitField0_ |= 8;
                onChanged();
                return this;
            }

            public Builder clearGameid() {
                this.bitField0_ &= -9;
                this.gameid_ = 0L;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasHSteamPipe() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public int getHSteamPipe() {
                return this.hSteamPipe_;
            }

            public Builder setHSteamPipe(int i) {
                this.hSteamPipe_ = i;
                this.bitField0_ |= 16;
                onChanged();
                return this;
            }

            public Builder clearHSteamPipe() {
                this.bitField0_ &= -17;
                this.hSteamPipe_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasTicketCrc() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public int getTicketCrc() {
                return this.ticketCrc_;
            }

            public Builder setTicketCrc(int i) {
                this.ticketCrc_ = i;
                this.bitField0_ |= 32;
                onChanged();
                return this;
            }

            public Builder clearTicketCrc() {
                this.bitField0_ &= -33;
                this.ticketCrc_ = 0;
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasTicket() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public ByteString getTicket() {
                return this.ticket_;
            }

            public Builder setTicket(ByteString byteString) {
                byteString.getClass();
                this.ticket_ = byteString;
                this.bitField0_ |= 64;
                onChanged();
                return this;
            }

            public Builder clearTicket() {
                this.bitField0_ &= -65;
                this.ticket_ = CMsgAuthTicket.getDefaultInstance().getTicket();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasServerSecret() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public ByteString getServerSecret() {
                return this.serverSecret_;
            }

            public Builder setServerSecret(ByteString byteString) {
                byteString.getClass();
                this.serverSecret_ = byteString;
                this.bitField0_ |= 128;
                onChanged();
                return this;
            }

            public Builder clearServerSecret() {
                this.bitField0_ &= -129;
                this.serverSecret_ = CMsgAuthTicket.getDefaultInstance().getServerSecret();
                onChanged();
                return this;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public boolean hasTicketType() {
                return (this.bitField0_ & 256) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.CMsgAuthTicketOrBuilder
            public int getTicketType() {
                return this.ticketType_;
            }

            public Builder setTicketType(int i) {
                this.ticketType_ = i;
                this.bitField0_ |= 256;
                onChanged();
                return this;
            }

            public Builder clearTicketType() {
                this.bitField0_ &= -257;
                this.ticketType_ = 0;
                onChanged();
                return this;
            }
        }

        public static CMsgAuthTicket getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CMsgAuthTicket> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CMsgAuthTicket> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CMsgAuthTicket getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class UserContentDescriptorPreferences extends GeneratedMessage implements UserContentDescriptorPreferencesOrBuilder {
        public static final int CONTENT_DESCRIPTORS_TO_EXCLUDE_FIELD_NUMBER = 1;
        private static final UserContentDescriptorPreferences DEFAULT_INSTANCE;
        private static final Parser<UserContentDescriptorPreferences> PARSER;
        private static final long serialVersionUID = 0;
        private List<ContentDescriptor> contentDescriptorsToExclude_;
        private byte memoizedIsInitialized;

        public interface ContentDescriptorOrBuilder extends MessageOrBuilder {
            int getContentDescriptorid();

            int getTimestampAdded();

            boolean hasContentDescriptorid();

            boolean hasTimestampAdded();
        }

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", UserContentDescriptorPreferences.class.getName());
            DEFAULT_INSTANCE = new UserContentDescriptorPreferences();
            PARSER = new AbstractParser<UserContentDescriptorPreferences>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.1
                @Override // com.google.protobuf.Parser
                public UserContentDescriptorPreferences parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    Builder builderNewBuilder = UserContentDescriptorPreferences.newBuilder();
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

        private UserContentDescriptorPreferences(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private UserContentDescriptorPreferences() {
            this.memoizedIsInitialized = (byte) -1;
            this.contentDescriptorsToExclude_ = Collections.emptyList();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SteammessagesBase.internal_static_UserContentDescriptorPreferences_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SteammessagesBase.internal_static_UserContentDescriptorPreferences_fieldAccessorTable.ensureFieldAccessorsInitialized(UserContentDescriptorPreferences.class, Builder.class);
        }

        public static final class ContentDescriptor extends GeneratedMessage implements ContentDescriptorOrBuilder {
            public static final int CONTENT_DESCRIPTORID_FIELD_NUMBER = 1;
            private static final ContentDescriptor DEFAULT_INSTANCE;
            private static final Parser<ContentDescriptor> PARSER;
            public static final int TIMESTAMP_ADDED_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private int contentDescriptorid_;
            private byte memoizedIsInitialized;
            private int timestampAdded_;

            static {
                RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", ContentDescriptor.class.getName());
                DEFAULT_INSTANCE = new ContentDescriptor();
                PARSER = new AbstractParser<ContentDescriptor>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptor.1
                    @Override // com.google.protobuf.Parser
                    public ContentDescriptor parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        Builder builderNewBuilder = ContentDescriptor.newBuilder();
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

            private ContentDescriptor(GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.contentDescriptorid_ = 0;
                this.timestampAdded_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            private ContentDescriptor() {
                this.contentDescriptorid_ = 0;
                this.timestampAdded_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesBase.internal_static_UserContentDescriptorPreferences_ContentDescriptor_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesBase.internal_static_UserContentDescriptorPreferences_ContentDescriptor_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentDescriptor.class, Builder.class);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
            public boolean hasContentDescriptorid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
            public int getContentDescriptorid() {
                return this.contentDescriptorid_;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
            public boolean hasTimestampAdded() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
            public int getTimestampAdded() {
                return this.timestampAdded_;
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
                    codedOutputStream.writeUInt32(1, this.contentDescriptorid_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    codedOutputStream.writeUInt32(2, this.timestampAdded_);
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeUInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeUInt32Size(1, this.contentDescriptorid_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    iComputeUInt32Size += CodedOutputStream.computeUInt32Size(2, this.timestampAdded_);
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
                if (!(obj instanceof ContentDescriptor)) {
                    return super.equals(obj);
                }
                ContentDescriptor contentDescriptor = (ContentDescriptor) obj;
                if (hasContentDescriptorid() != contentDescriptor.hasContentDescriptorid()) {
                    return false;
                }
                if ((!hasContentDescriptorid() || getContentDescriptorid() == contentDescriptor.getContentDescriptorid()) && hasTimestampAdded() == contentDescriptor.hasTimestampAdded()) {
                    return (!hasTimestampAdded() || getTimestampAdded() == contentDescriptor.getTimestampAdded()) && getUnknownFields().equals(contentDescriptor.getUnknownFields());
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
                if (hasContentDescriptorid()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getContentDescriptorid();
                }
                if (hasTimestampAdded()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getTimestampAdded();
                }
                int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static ContentDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static ContentDescriptor parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static ContentDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static ContentDescriptor parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static ContentDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static ContentDescriptor parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ContentDescriptor parseFrom(InputStream inputStream) throws IOException {
                return (ContentDescriptor) GeneratedMessage.parseWithIOException(PARSER, inputStream);
            }

            public static ContentDescriptor parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ContentDescriptor) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ContentDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ContentDescriptor) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ContentDescriptor parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ContentDescriptor) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ContentDescriptor parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ContentDescriptor) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
            }

            public static ContentDescriptor parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ContentDescriptor) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(ContentDescriptor contentDescriptor) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(contentDescriptor);
            }

            @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.google.protobuf.AbstractMessage
            public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessage.Builder<Builder> implements ContentDescriptorOrBuilder {
                private int bitField0_;
                private int contentDescriptorid_;
                private int timestampAdded_;

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SteammessagesBase.internal_static_UserContentDescriptorPreferences_ContentDescriptor_descriptor;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder
                public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SteammessagesBase.internal_static_UserContentDescriptorPreferences_ContentDescriptor_fieldAccessorTable.ensureFieldAccessorsInitialized(ContentDescriptor.class, Builder.class);
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
                    this.contentDescriptorid_ = 0;
                    this.timestampAdded_ = 0;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SteammessagesBase.internal_static_UserContentDescriptorPreferences_ContentDescriptor_descriptor;
                }

                @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ContentDescriptor getDefaultInstanceForType() {
                    return ContentDescriptor.getDefaultInstance();
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ContentDescriptor build() {
                    ContentDescriptor contentDescriptorBuildPartial = buildPartial();
                    if (contentDescriptorBuildPartial.isInitialized()) {
                        return contentDescriptorBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) contentDescriptorBuildPartial);
                }

                @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ContentDescriptor buildPartial() {
                    ContentDescriptor contentDescriptor = new ContentDescriptor(this);
                    if (this.bitField0_ != 0) {
                        buildPartial0(contentDescriptor);
                    }
                    onBuilt();
                    return contentDescriptor;
                }

                private void buildPartial0(ContentDescriptor contentDescriptor) {
                    int i;
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 0) {
                        contentDescriptor.contentDescriptorid_ = this.contentDescriptorid_;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if ((i2 & 2) != 0) {
                        contentDescriptor.timestampAdded_ = this.timestampAdded_;
                        i |= 2;
                    }
                    contentDescriptor.bitField0_ |= i;
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof ContentDescriptor) {
                        return mergeFrom((ContentDescriptor) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(ContentDescriptor contentDescriptor) {
                    if (contentDescriptor == ContentDescriptor.getDefaultInstance()) {
                        return this;
                    }
                    if (contentDescriptor.hasContentDescriptorid()) {
                        setContentDescriptorid(contentDescriptor.getContentDescriptorid());
                    }
                    if (contentDescriptor.hasTimestampAdded()) {
                        setTimestampAdded(contentDescriptor.getTimestampAdded());
                    }
                    mergeUnknownFields(contentDescriptor.getUnknownFields());
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
                                        this.contentDescriptorid_ = codedInputStream.readUInt32();
                                        this.bitField0_ |= 1;
                                    } else if (tag == 16) {
                                        this.timestampAdded_ = codedInputStream.readUInt32();
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

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
                public boolean hasContentDescriptorid() {
                    return (this.bitField0_ & 1) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
                public int getContentDescriptorid() {
                    return this.contentDescriptorid_;
                }

                public Builder setContentDescriptorid(int i) {
                    this.contentDescriptorid_ = i;
                    this.bitField0_ |= 1;
                    onChanged();
                    return this;
                }

                public Builder clearContentDescriptorid() {
                    this.bitField0_ &= -2;
                    this.contentDescriptorid_ = 0;
                    onChanged();
                    return this;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
                public boolean hasTimestampAdded() {
                    return (this.bitField0_ & 2) != 0;
                }

                @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferences.ContentDescriptorOrBuilder
                public int getTimestampAdded() {
                    return this.timestampAdded_;
                }

                public Builder setTimestampAdded(int i) {
                    this.timestampAdded_ = i;
                    this.bitField0_ |= 2;
                    onChanged();
                    return this;
                }

                public Builder clearTimestampAdded() {
                    this.bitField0_ &= -3;
                    this.timestampAdded_ = 0;
                    onChanged();
                    return this;
                }
            }

            public static ContentDescriptor getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ContentDescriptor> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<ContentDescriptor> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ContentDescriptor getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
        public List<ContentDescriptor> getContentDescriptorsToExcludeList() {
            return this.contentDescriptorsToExclude_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
        public List<? extends ContentDescriptorOrBuilder> getContentDescriptorsToExcludeOrBuilderList() {
            return this.contentDescriptorsToExclude_;
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
        public int getContentDescriptorsToExcludeCount() {
            return this.contentDescriptorsToExclude_.size();
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
        public ContentDescriptor getContentDescriptorsToExclude(int i) {
            return this.contentDescriptorsToExclude_.get(i);
        }

        @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
        public ContentDescriptorOrBuilder getContentDescriptorsToExcludeOrBuilder(int i) {
            return this.contentDescriptorsToExclude_.get(i);
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
            for (int i = 0; i < this.contentDescriptorsToExclude_.size(); i++) {
                codedOutputStream.writeMessage(1, this.contentDescriptorsToExclude_.get(i));
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
            for (int i2 = 0; i2 < this.contentDescriptorsToExclude_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.contentDescriptorsToExclude_.get(i2));
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
            if (!(obj instanceof UserContentDescriptorPreferences)) {
                return super.equals(obj);
            }
            UserContentDescriptorPreferences userContentDescriptorPreferences = (UserContentDescriptorPreferences) obj;
            return getContentDescriptorsToExcludeList().equals(userContentDescriptorPreferences.getContentDescriptorsToExcludeList()) && getUnknownFields().equals(userContentDescriptorPreferences.getUnknownFields());
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getContentDescriptorsToExcludeCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getContentDescriptorsToExcludeList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static UserContentDescriptorPreferences parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static UserContentDescriptorPreferences parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static UserContentDescriptorPreferences parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static UserContentDescriptorPreferences parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UserContentDescriptorPreferences parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static UserContentDescriptorPreferences parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UserContentDescriptorPreferences parseFrom(InputStream inputStream) throws IOException {
            return (UserContentDescriptorPreferences) GeneratedMessage.parseWithIOException(PARSER, inputStream);
        }

        public static UserContentDescriptorPreferences parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserContentDescriptorPreferences) GeneratedMessage.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static UserContentDescriptorPreferences parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserContentDescriptorPreferences) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UserContentDescriptorPreferences parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserContentDescriptorPreferences) GeneratedMessage.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static UserContentDescriptorPreferences parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UserContentDescriptorPreferences) GeneratedMessage.parseWithIOException(PARSER, codedInputStream);
        }

        public static UserContentDescriptorPreferences parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserContentDescriptorPreferences) GeneratedMessage.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(UserContentDescriptorPreferences userContentDescriptorPreferences) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(userContentDescriptorPreferences);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.google.protobuf.AbstractMessage
        public Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements UserContentDescriptorPreferencesOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> contentDescriptorsToExcludeBuilder_;
            private List<ContentDescriptor> contentDescriptorsToExclude_;

            private void buildPartial0(UserContentDescriptorPreferences userContentDescriptorPreferences) {
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SteammessagesBase.internal_static_UserContentDescriptorPreferences_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SteammessagesBase.internal_static_UserContentDescriptorPreferences_fieldAccessorTable.ensureFieldAccessorsInitialized(UserContentDescriptorPreferences.class, Builder.class);
            }

            private Builder() {
                this.contentDescriptorsToExclude_ = Collections.emptyList();
            }

            private Builder(AbstractMessage.BuilderParent builderParent) {
                super(builderParent);
                this.contentDescriptorsToExclude_ = Collections.emptyList();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bitField0_ = 0;
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.contentDescriptorsToExclude_ = Collections.emptyList();
                } else {
                    this.contentDescriptorsToExclude_ = null;
                    repeatedFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SteammessagesBase.internal_static_UserContentDescriptorPreferences_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public UserContentDescriptorPreferences getDefaultInstanceForType() {
                return UserContentDescriptorPreferences.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public UserContentDescriptorPreferences build() {
                UserContentDescriptorPreferences userContentDescriptorPreferencesBuildPartial = buildPartial();
                if (userContentDescriptorPreferencesBuildPartial.isInitialized()) {
                    return userContentDescriptorPreferencesBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) userContentDescriptorPreferencesBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public UserContentDescriptorPreferences buildPartial() {
                UserContentDescriptorPreferences userContentDescriptorPreferences = new UserContentDescriptorPreferences(this);
                buildPartialRepeatedFields(userContentDescriptorPreferences);
                if (this.bitField0_ != 0) {
                    buildPartial0(userContentDescriptorPreferences);
                }
                onBuilt();
                return userContentDescriptorPreferences;
            }

            private void buildPartialRepeatedFields(UserContentDescriptorPreferences userContentDescriptorPreferences) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.contentDescriptorsToExclude_ = Collections.unmodifiableList(this.contentDescriptorsToExclude_);
                        this.bitField0_ &= -2;
                    }
                    userContentDescriptorPreferences.contentDescriptorsToExclude_ = this.contentDescriptorsToExclude_;
                    return;
                }
                userContentDescriptorPreferences.contentDescriptorsToExclude_ = repeatedFieldBuilder.build();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof UserContentDescriptorPreferences) {
                    return mergeFrom((UserContentDescriptorPreferences) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(UserContentDescriptorPreferences userContentDescriptorPreferences) {
                if (userContentDescriptorPreferences == UserContentDescriptorPreferences.getDefaultInstance()) {
                    return this;
                }
                if (this.contentDescriptorsToExcludeBuilder_ == null) {
                    if (!userContentDescriptorPreferences.contentDescriptorsToExclude_.isEmpty()) {
                        if (this.contentDescriptorsToExclude_.isEmpty()) {
                            this.contentDescriptorsToExclude_ = userContentDescriptorPreferences.contentDescriptorsToExclude_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureContentDescriptorsToExcludeIsMutable();
                            this.contentDescriptorsToExclude_.addAll(userContentDescriptorPreferences.contentDescriptorsToExclude_);
                        }
                        onChanged();
                    }
                } else if (!userContentDescriptorPreferences.contentDescriptorsToExclude_.isEmpty()) {
                    if (this.contentDescriptorsToExcludeBuilder_.isEmpty()) {
                        this.contentDescriptorsToExcludeBuilder_.dispose();
                        this.contentDescriptorsToExcludeBuilder_ = null;
                        this.contentDescriptorsToExclude_ = userContentDescriptorPreferences.contentDescriptorsToExclude_;
                        this.bitField0_ &= -2;
                        this.contentDescriptorsToExcludeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? internalGetContentDescriptorsToExcludeFieldBuilder() : null;
                    } else {
                        this.contentDescriptorsToExcludeBuilder_.addAllMessages(userContentDescriptorPreferences.contentDescriptorsToExclude_);
                    }
                }
                mergeUnknownFields(userContentDescriptorPreferences.getUnknownFields());
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
                                    ContentDescriptor contentDescriptor = (ContentDescriptor) codedInputStream.readMessage(ContentDescriptor.parser(), extensionRegistryLite);
                                    RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                                    if (repeatedFieldBuilder == null) {
                                        ensureContentDescriptorsToExcludeIsMutable();
                                        this.contentDescriptorsToExclude_.add(contentDescriptor);
                                    } else {
                                        repeatedFieldBuilder.addMessage(contentDescriptor);
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

            private void ensureContentDescriptorsToExcludeIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.contentDescriptorsToExclude_ = new ArrayList(this.contentDescriptorsToExclude_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
            public List<ContentDescriptor> getContentDescriptorsToExcludeList() {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    return Collections.unmodifiableList(this.contentDescriptorsToExclude_);
                }
                return repeatedFieldBuilder.getMessageList();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
            public int getContentDescriptorsToExcludeCount() {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.contentDescriptorsToExclude_.size();
                }
                return repeatedFieldBuilder.getCount();
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
            public ContentDescriptor getContentDescriptorsToExclude(int i) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.contentDescriptorsToExclude_.get(i);
                }
                return (ContentDescriptor) repeatedFieldBuilder.getMessage(i);
            }

            public Builder setContentDescriptorsToExclude(int i, ContentDescriptor contentDescriptor) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    contentDescriptor.getClass();
                    ensureContentDescriptorsToExcludeIsMutable();
                    this.contentDescriptorsToExclude_.set(i, contentDescriptor);
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, contentDescriptor);
                }
                return this;
            }

            public Builder setContentDescriptorsToExclude(int i, ContentDescriptor.Builder builder) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureContentDescriptorsToExcludeIsMutable();
                    this.contentDescriptorsToExclude_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addContentDescriptorsToExclude(ContentDescriptor contentDescriptor) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    contentDescriptor.getClass();
                    ensureContentDescriptorsToExcludeIsMutable();
                    this.contentDescriptorsToExclude_.add(contentDescriptor);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(contentDescriptor);
                }
                return this;
            }

            public Builder addContentDescriptorsToExclude(int i, ContentDescriptor contentDescriptor) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    contentDescriptor.getClass();
                    ensureContentDescriptorsToExcludeIsMutable();
                    this.contentDescriptorsToExclude_.add(i, contentDescriptor);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, contentDescriptor);
                }
                return this;
            }

            public Builder addContentDescriptorsToExclude(ContentDescriptor.Builder builder) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureContentDescriptorsToExcludeIsMutable();
                    this.contentDescriptorsToExclude_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(builder.build());
                }
                return this;
            }

            public Builder addContentDescriptorsToExclude(int i, ContentDescriptor.Builder builder) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureContentDescriptorsToExcludeIsMutable();
                    this.contentDescriptorsToExclude_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilder.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllContentDescriptorsToExclude(Iterable<? extends ContentDescriptor> iterable) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureContentDescriptorsToExcludeIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.contentDescriptorsToExclude_);
                    onChanged();
                } else {
                    repeatedFieldBuilder.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearContentDescriptorsToExclude() {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    this.contentDescriptorsToExclude_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilder.clear();
                }
                return this;
            }

            public Builder removeContentDescriptorsToExclude(int i) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    ensureContentDescriptorsToExcludeIsMutable();
                    this.contentDescriptorsToExclude_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilder.remove(i);
                }
                return this;
            }

            public ContentDescriptor.Builder getContentDescriptorsToExcludeBuilder(int i) {
                return (ContentDescriptor.Builder) internalGetContentDescriptorsToExcludeFieldBuilder().getBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
            public ContentDescriptorOrBuilder getContentDescriptorsToExcludeOrBuilder(int i) {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder == null) {
                    return this.contentDescriptorsToExclude_.get(i);
                }
                return (ContentDescriptorOrBuilder) repeatedFieldBuilder.getMessageOrBuilder(i);
            }

            @Override // in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase.UserContentDescriptorPreferencesOrBuilder
            public List<? extends ContentDescriptorOrBuilder> getContentDescriptorsToExcludeOrBuilderList() {
                RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> repeatedFieldBuilder = this.contentDescriptorsToExcludeBuilder_;
                if (repeatedFieldBuilder != null) {
                    return repeatedFieldBuilder.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.contentDescriptorsToExclude_);
            }

            public ContentDescriptor.Builder addContentDescriptorsToExcludeBuilder() {
                return (ContentDescriptor.Builder) internalGetContentDescriptorsToExcludeFieldBuilder().addBuilder(ContentDescriptor.getDefaultInstance());
            }

            public ContentDescriptor.Builder addContentDescriptorsToExcludeBuilder(int i) {
                return (ContentDescriptor.Builder) internalGetContentDescriptorsToExcludeFieldBuilder().addBuilder(i, ContentDescriptor.getDefaultInstance());
            }

            public List<ContentDescriptor.Builder> getContentDescriptorsToExcludeBuilderList() {
                return internalGetContentDescriptorsToExcludeFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ContentDescriptor, ContentDescriptor.Builder, ContentDescriptorOrBuilder> internalGetContentDescriptorsToExcludeFieldBuilder() {
                if (this.contentDescriptorsToExcludeBuilder_ == null) {
                    this.contentDescriptorsToExcludeBuilder_ = new RepeatedFieldBuilder<>(this.contentDescriptorsToExclude_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.contentDescriptorsToExclude_ = null;
                }
                return this.contentDescriptorsToExcludeBuilder_;
            }
        }

        public static UserContentDescriptorPreferences getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UserContentDescriptorPreferences> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<UserContentDescriptorPreferences> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UserContentDescriptorPreferences getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
